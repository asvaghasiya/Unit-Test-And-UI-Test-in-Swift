{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf400
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\froman\fcharset0 Times-Roman;\f2\fnil\fcharset0 LucidaGrande;
\f3\froman\fcharset0 Times-Bold;\f4\fnil\fcharset0 LucidaGrande-Bold;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;}
{\*\expandedcolortbl;;\cssrgb\c20000\c20000\c20000;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{square\}}{\leveltext\leveltemplateid1\'01\uc0\u9642 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{square\}}{\leveltext\leveltemplateid101\'01\uc0\u9642 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{none\}}{\leveltext\leveltemplateid201\'00;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid3}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}}
\margl1440\margr1440\vieww37900\viewh18980\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
\

\f1\fs34 \cf2 \expnd0\expndtw0\kerning0
Before writing any tests, it\'92s important to know the basics. What do you need to test?\
\pard\pardeftab720\sl400\partightenfactor0

\fs28 \cf2 Generally, tests should cover:\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl400\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	
\f2 \uc0\u9642 
\f1 	}\expnd0\expndtw0\kerning0
Core functionality: Model classes and methods and their interactions with the controller\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	
\f2 \uc0\u9642 
\f1 	}\expnd0\expndtw0\kerning0
The most common UI workflows\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	
\f2 \uc0\u9642 
\f1 	}\expnd0\expndtw0\kerning0
Boundary conditions\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	
\f2 \uc0\u9642 
\f1 	}\expnd0\expndtw0\kerning0
Bug fixes\
\pard\tx560\pardeftab720\sl400\partightenfactor0

\fs25\fsmilli12750 \cf2 \
\pard\pardeftab720\sl400\partightenfactor0

\fs34 \cf2 Effective unit tests criteria are:
\fs25\fsmilli12750 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl400\partightenfactor0
\ls2\ilvl0
\f3\b \cf2 \kerning1\expnd0\expndtw0 {\listtext	
\f4 \uc0\u9642 
\f3 	}
\fs28 \expnd0\expndtw0\kerning0
Fast
\f1\b0 : Tests should run quickly.\
\ls2\ilvl0
\f3\b \kerning1\expnd0\expndtw0 {\listtext	
\f4 \uc0\u9642 
\f3 	}\expnd0\expndtw0\kerning0
Independent/Isolated
\f1\b0 : Tests should not share state with each other.\
\ls2\ilvl0
\f3\b \kerning1\expnd0\expndtw0 {\listtext	
\f4 \uc0\u9642 
\f3 	}\expnd0\expndtw0\kerning0
Repeatable
\f1\b0 : You should obtain the same results every time you run a test. External data providers or concurrency issues could cause intermittent failures.\
\ls2\ilvl0
\f3\b \kerning1\expnd0\expndtw0 {\listtext	
\f4 \uc0\u9642 
\f3 	}\expnd0\expndtw0\kerning0
Self-validating
\f1\b0 : Tests should be fully automated. The output should be either \'93pass\'94 or \'93fail\'94, rather than rely on a programmer\'92s interpretation of a log file.\
\ls2\ilvl0
\f3\b \kerning1\expnd0\expndtw0 {\listtext	
\f4 \uc0\u9642 
\f3 	}\expnd0\expndtw0\kerning0
Timely
\f1\b0 : Ideally, tests should be written before you write the production code they test (Test-Driven Development).\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl400\partightenfactor0
\ls3\ilvl0
\fs25\fsmilli12750 \cf2 \kerning1\expnd0\expndtw0 		\expnd0\expndtw0\kerning0
\
\pard\pardeftab720\sl400\partightenfactor0
\cf2 \
\pard\pardeftab720\sl400\partightenfactor0

\fs34 \cf2 UI testing lets you test interactions with the User interface. UI testing works by finding an app\'92s UI objects with queries, synthesizing events, and then sending the events to those objects. The API enables you to examine a UI object\'92s properties and state in order to compare them against the expected state.}