# SECURE_VOTE-S1-T7
## Abstract
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

## Functional Table
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

## Logisim and Verilog(Flow of Execution):

![image](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/544e4474-5bd1-4ae8-adcf-58a7f1793542)

Title: Creating a Secure Voting System with Logisim and Verilog

## Logisim Setup:

1. Open Logisim software.
2. Load the project by opening the file "project.circ."
3. Press the reset button to initialize the system.
4. Enter a valid password for authentication.

**Voter Authentication:**

1. Collect the voter's input password.
2. If the voter enters the correct password, allow them to cast their vote.

**Preventing Multiple Votes:**

1. After a vote is cast, deactivate the entire voting machine to prevent multiple votes.
2. This ensures the integrity of the voting process.

**Displaying Results:**

1. Once the entire voting process is completed, display the election results to the users.

## Verilog Setup:

1. Set the reset signal to '1' to initialize all counters to zero.
2. Initialize the clocks to '0,' and flip them every 10 seconds (0 -> 1 -> 0 -> 1 -> 0).

**Testbench Inputs:**

1. Provide inputs in the testbench, including the candidate voted for, the password, and the correct password.

**Displaying Output:**

1. At each 10-second interval, display any changes in the system's output.

**Running Verilog:**

1. In the terminal, run the command: `iverilog <file_name>.v`.
2. Execute the simulation with: `vvp a.out`.

In summary, this system is designed to **authenticate** each voter, allow them to cast their votes, **prevent multiple voting**, and **display the election winners**. The combination of Logisim and Verilog provides a secure and efficient voting solution.

## Results 
![image](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/5bd47400-7bc3-4c85-a6e1-7ffcab9b3efc)

 

