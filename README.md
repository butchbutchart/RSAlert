# RSAlert

This is an unofficial and unsupported script provided without gurantee, please use it to inform your own scripting and asses before any production use.

It will run continuously to detect the starting of the Remote Support Customer Client, it will store started services in a dictionary so that the sound file is only played once per instance of the Customer Client

Performance impact has not been extensively assessed. (testing suggests sub 40MB Memory consumption)

You will need to provide your own .wav file and input the path

Will not sound for customer initiated session unless elevated or at point of elevation
