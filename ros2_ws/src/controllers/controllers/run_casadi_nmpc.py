import rclpy # type: ignore 
import time
import sys
import numpy as np # type: ignore
import os 

np.set_printoptions(threshold=sys.maxsize)
dir_path = os.path.dirname(os.path.realpath(__file__))
sys.path.append(dir_path + '/../../../../python_scripts/controllers/acados')
sys.path.append(dir_path + '/../../../../python_scripts/controllers')
sys.path.append(dir_path)

from casadi_nmpc import Casadi_NMPC 
from base_controller import Base_Controller

class Controller(Base_Controller):
    def __init__(self):
        super().__init__('Casadi_NMPC')

        self.create_timer(self.dt, self.controller_callback)
        self.horizon = 30
        self.controller = Casadi_NMPC(N=self.horizon, dt=self.dt)
        

    def controller_callback(self):
        if(self.enableSyncMode.data == False or self.simStep_done):
            print("###############")
            print("state robot: ", self.state_robot)
            start_time = time.time()

            torques = self.controller.compute_control(self.state_robot, self.state_d)
            
            print("control time: ", time.time()-start_time)

            self.publish_command(torques)


        # Trigger next step Simulation ---------------------------------------
        self.triggerNextStep_Sim()

def main(args=None):
    rclpy.init(args=args)
    print("###### Casadi NMPC Controller started ######")

    controller_node = Controller()

    rclpy.spin(controller_node)
    controller_node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
