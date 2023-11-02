# SECURE_VOTE-S1-T7

## Team Details
<details>
 <summary>Detail</summary>
 
 >Semester: 3rd Sem B.Tech. CSE


 >Member-1: GNANA JYOTHI, 221CS118, chinthagnanajyothi.221cs118@nitk.edu.in


 >Member-2: P. HASITHA, 221CS139, prathapachandanasaisrihasitha.221cs139@nitk.edu.in


 >Member-3: STHUTHI S, 221CS156, sthuthis.221cs156@nitk.edu.in


</details>

## Abstract
<details>
<summary>Detail</summary>

> In response to the pressing need for secure and efficient voting methods, our 
digital voting machine (DVM) mini project is dedicated to revolutionizing the 
way we conduct elections. Our mission is to design a tamper-free, user-friendly 
electronic voting system that addresses the shortcomings of traditional voting 
systems and contributes to the advancement of democratic processes.
 
> Traditional methods of verifying voter authenticity and authorization are prone 
to complications and human errors. To overcome these challenges, we propose a 
state-of-the-art password-protected voting system. This innovation simplifies 
voter verification, enhancing the security of the electoral process. 

> To build trust in the system's accuracy, we have incorporated a transparent LED 
indicator that offers real-time confirmation to voters. This visual cue is pivotal 
in boosting confidence among voters. Furthermore, our robust voter verification 
through the password system significantly reduces the risk of fraudulent voting, 
thus safeguarding the integrity of elections. Electronic voting not only ensures 
greater security but also streamlines the entire process, effectively reducing 
queues and wait times. This streamlined approach has the potential to increase 
voter turnout, making it a more accessible and convenient experience for all 
citizens. 

> In practical terms, our DVM is activated before voting commences. It swiftly 
verifies voters through the password system, with an audible beep sound 
indicating rejection of unauthorized voters. Voters can then cast their ballots by 
selecting their preferred candidate through a designated button. The system 
confirms the successful recording of the vote with the illumination of an LED 
bulb. Finally, the accumulated vote count and the election's winner are 
displayed on a screen or printed, ensuring complete transparency throughout the 
electoral process.

> Our digital voting machine project is a significant leap toward creating a more 
reliable, efficient, and secure voting experience. It empowers citizens and 
strengthens the democratic foundation of our society by making elections more 
accessible, inclusive, and trustworthy.

</details>

## Working 
<details>
 
 <summary>Detail</summary>

> ## Working

Comparator Module: This module is designed to compare two sets of 4-bit inputs, A and B, and produce an output 'e' based on the comparison results. For each bit (0 to 3) in A 
and B, it calculates the XNOR of the bits. The inverted XOR results for each bit 
are stored in a 4-bit wire 'x'. Finally, 'e' is set to 1 if all bits in 'x' are 1; 
otherwise, 'e' is set to 0. That is, e is one if all the corresponding bits in A are 
equal to the corresponding bits of B.

 
Password Module: The password module combines four instances of the comparator module to 
compare the full four digit password. The output o of this module is the logical 
AND of the e outputs from the four comparator modules. This means that o will 
be 1 if and only if all four comparators agree on the vote. Hence, output o will 
be 1 if the user enters the right password.

Voting_machine module: This module instantiates the password module to decide the votes based on the input password and valid password. We will be using four clock signals clk1, 
clk2, clk3, clk4 to ensure smooth voting process. When all the clk signals are set 
to 0 and display is set to zero, counters the votes for each candidates will be 
zero. Now if the user enters the right password , then o is 1. Now the variables 
count1, count2, count3, count4 store the number of votes for each candidate in 
previous state. When clock signal for one candidate is set to 1, rest of the clock 
 

> ## Functional Table

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

> ## Flowchart

![Screenshot 2023-11-02 194630](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/71cfb501-acfa-41f8-a887-3854ac5cebb9)

 
</details>


## Logisim Circuit Diagram:
<details>
 <summary>Detail</summary>
</details>

![image](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/544e4474-5bd1-4ae8-adcf-58a7f1793542)

Title: Creating a Secure Voting System with Logisim and Verilog



## Results 
![image](https://github.com/SthuthiS54/SECURE_VOTE-S1-T7/assets/127185339/5bd47400-7bc3-4c85-a6e1-7ffcab9b3efc)

 

