# SECURE_VOTE-S1-T7

In response to the pressing need for secure and efficient voting methods, our 
digital voting machine (DVM) mini project is dedicated to revolutionizing the 
way we conduct elections. Our mission is to design a tamper-free, user-friendly 
electronic voting system that addresses the shortcomings of traditional voting 
systems and contributes to the advancement of democratic processes.
Traditional methods of verifying voter authenticity and authorization are prone 
to complications and human errors. To overcome these challenges, we propose a 
state-of-the-art password-protected voting system. This innovation simplifies 
voter verification, enhancing the security of the electoral process. 
To build trust in the system's accuracy, we have incorporated a transparent LED 
indicator that offers real-time confirmation to voters. This visual cue is pivotal 
in boosting confidence among voters. Furthermore, our robust voter verification 
through the password system significantly reduces the risk of fraudulent voting, 
thus safeguarding the integrity of elections. Electronic voting not only ensures 
greater security but also streamlines the entire process, effectively reducing 
queues and wait times. This streamlined approach has the potential to increase 
voter turnout, making it a more accessible and convenient experience for all 
citizens. 
In practical terms, our DVM is activated before voting commences. It swiftly 
verifies voters through the password system, with an audible beep sound 
indicating rejection of unauthorized voters. Voters can then cast their ballots by 
selecting their preferred candidate through a designated button. The system 
confirms the successful recording of the vote with the illumination of an LED 
bulb. Finally, the accumulated vote count and the election's winner are 
displayed on a screen or printed, ensuring complete transparency throughout the 
electoral process.
Our digital voting machine project is a significant leap toward creating a more 
reliable, efficient, and secure voting experience. It empowers citizens and 
strengthens the democratic foundation of our society by making elections more 
accessible, inclusive, and trustworthy.

# Functional Table
|   A   |   B   |   O   | clk1 | clk2 | clk3 | clk4 | counter1 | counter2 | counter3 | counter4 |
|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:-------:|:-------:|:-------:|:-------:|
| 2987 | 2987 |  1  |  0  |  0  |  0  |  0  |    0    |    0    |    0    |    0    |
| 2987 | 2987 |  1  |  1  |  0  |  0  |  0  |    1    |    0    |    0    |    0    |
| 8421 | 8420 |  0  |  0  |  0  |  1  |  0  |    1    |    0    |    0    |    0    |
| 2345 | 2345 |  1  |  0  |  0  |  0  |  1  |    1    |    0    |    0    |    1    |
| 2987 | 2987 |  1  |  0  |  0  |  1  |  0  |    1    |    0    |    1    |    1    |
| 3217 | 2987 |  0  |  0  |  1  |  0  |  0  |    1    |    0    |    1    |    1    |
| 2987 | 3597 |  0  |  1  |  0  |  0  |  0  |    1    |    0    |    1    |    1    |
| 8421 | 8421 |  1  |  0  |  0  |  1  |  0  |    1    |    0    |    2    |    1    |
| 2345 | 9745 |  0  |  0  |  0  |  0  |  1  |    1    |    0    |    2    |    1    |
| 2987 | 3687 |  0  |  0  |  0  |  1  |  0  |    1    |    0    |    2    |    1    |
| 1122 | 1122 |  1  |  0  |  1  |  0  |  0  |    1    |    1    |    2    |    1    |
| 1122 | 1122 |  1  |  0  |  1  |  0  |  0  |    1    |    1    |    2    |    1    |
| 2987 | 2987 |  1  |  1  |  0  |  0  |  0  |    2    |    1    |    2    |    1    |
| 8421 | 8240 |  0  |  0  |  0  |  1  |  0  |    2    |    1    |    2    |    1    |
| 2345 | 2345 |  1  |  0  |  0  |  0  |  1  |    2    |    1    |    2    |    2    |
| 2987 | 2987 |  1  |  0  |  0  |  1  |  0  |    2    |    1    |    3    |    2    |
| 3217 | 2987 |  0  |  0  |  1  |  0  |  0  |    2    |    1    |    3    |    2    |
| 2987 | 3597 |  0  |  1  |  0  |  0  |  0  |    2    |    1    |    3    |    2    |
| 8421 | 8421 |  1  |  0  |  0  |  1  |  0  |    2    |    1    |    4    |    2    |
| 2345 | 8745 |  0  |  0  |  0  |  0  |  1  |    2    |    1    |    4    |    2    |
| 2987 | 3687 |  0  |  0  |  0  |  1  |  0  |    2    |    1    |    4    |    2    |
| 1122 | 1122 |  1  |  0  |  1  |  0  |  0  |    2    |    2    |    4    |    2    |

# Logisim and Verilog(Flow of Execution):

![image](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/544e4474-5bd1-4ae8-adcf-58a7f1793542)

## LOGISIM

1. Open the logisim software and open the file project.circ.
2. Press the reset button and enter the valid password.
3. Now take the input password from the voter. If the voter enters the right password, he will allowed to caste the vote.
4. Now the once, the vote is casted the entire machine gets deactivated for further voting, to avoid multiple votes.
5. Finally, once the entire voting process is completeted, the results will be displayed.

Verilog

1. Set the reset to one so that all counters start at 0.
2. Set the clocks to 0 as well. We keep flipping it every 10 seconds ,ie. every 10 seconds the clocks go (0->1->0->1->0)
3. We give all the inputs in the testbench for the candidate that has been voted, the password and the correct password.
4. After every iteration that is every 10 seconds we display the change in the output if there is any.
5. In terminal write the command iverilog <file_name>.v
6. Then write the command vvp a.out.

# Results 
![image](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/5bd47400-7bc3-4c85-a6e1-7ffcab9b3efc)

 

