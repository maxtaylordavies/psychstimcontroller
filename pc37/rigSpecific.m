% The 5 computers involved must be defined for each rig
psychstimhost = 'localhost'; % runs PsychStimController
trackballhost = 'mps-pc24.cin.ucsf.edu'; %the computer running mouseListener
stimsynchost =  'localhost' ; % 'mps-pc21.cin.ucsf.edu' the Arduino or RPi that converts a UDP to a TTL out
runninghost = psychstimhost; % computer that receives running/still input to control visual stimulus, same as PSC
eyecamhost = 'localhost'; % computer running GrabCPP; receives times from PSC
intanhost = 'localhost;' % computer hosting the Intan, receives TTL input only for synchronization.
RPihost1 = 'mps-rpi2.cin.ucsf.edu'; %must be set to REAL Rpi name or IP address
RPihost2 = 'mps-rpi3.cin.ucsf.edu'; %must be set to REAL Rpi name or IP address

% The computer below is defined for mapping with ContImage
contImageHost = 'localhost'; % temporary redirect to matlab udpmon
tdtHost = 'localhost'; % changed 03/11/15 by MCD
shutterHost = 'localhost';

%Ports never need to be changed
stimsyncport = 8934;
runningport = 8938;
trackballport = 8940;
RPiSelfport = 8888;
RPiport1 = 8931;
RPiport2 = 8932;


%added MPS 2016Aug15 for sending UDP to the pupil camera both filename and
%times to snap picture.
eyecamport = '8935'  ;

contImagePort = 8936;
tdtPort = 8933;
shutterPort = 2424;

%changed MPS 2016Jan06.  Set to appropriate room
room = 'UCSF470A2';

%added MPS 2016Jan06 for Intan to allow different kinds of sync in different rigs
% 'LPT' is Maria's in 460A parallel port
% 'SER' is Shinya's at UCSC using a matlab toolbox
% 'UDP' is Michael's using an Arduino board like mps-pc21 using the program UDP2TTL
stimsync = 'UDP';
% stimsync = 'SER';
% stimsync = 'UDP';

trackballfolder = 'C:\data\Trackball\';

%added MPS 2016July05 to set folder for storing sync data
stimsyncfolder = 'C:\tmp\';

%added MPS 2016July05 selector for stimulus specificity test 
%runningexpt= 0 is normal; runningexpt=1 makes stimulus contingent on locomotion)
runningexpt = 1;
C=24737;  % circumference in ticks for new small mice used with RPi
tickspercm = C/(pi*20);  %%% ball is 20 cm diameter, so this is ticks/cm




