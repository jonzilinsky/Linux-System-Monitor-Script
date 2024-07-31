<h1>System Monitor Bash Script</h1>

<h2>Description</h2>
Experimenting with creating a Linux bash script to monitor system attributes.<br />
This follows my learnings from "The Linux Command Line" by William E. Shotts. <br />

<h2>Utilities Used</h2>
<ul>
  <li><b>Bash Shell </b></li>
  <li><b>Nano </b></li>
  <li><b>Firefox </b></li>
</ul>

<h2>Environments Used </h2>
<ul>
  <li><b>Ubuntu-24.04</b></li>
  <li><b>Oracle Virtual Box 7</b></li>
</ul>

<h2>Program walk-through:</h2>
<ol>
  <li>
    First I used nano to generate a text document "sys_info_page".
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/1.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    I then created a Bash script with the shebang #!/bin/bash and outlined a basic html format to build on.
    <br />   
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/2.png?raw=true" width="600px" alt="Step 2">
  </li>
<br />
 <li>
    Then I modified permissions to 755, making the file executable, and ran the script to make sure I could get output without errors.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/3.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
<li>
    Next I redirected the script output to sys_info_page.html and used firefox to view the output. 
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/4.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
 <li>
    Next I added variables to the script to make it unique to the user and time zone.
    <br />
    I also added a "here document" which will give me plenty headache in later steps.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/5%20variables.png?raw=true" height="300px" alt="Step 1">
  </li>
 <br />
  <li>
    To test, I directed the script output back to the html and opened it with firefox.
    <br />
    The generic user-VirtualBox and time zone showed it was successful. 
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/6%20variables%20ff.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    At this stage I added the placed holders for shell functions, the mini scripts inside of the larger one.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/7%20shell%20functions.png?raw=true" height="300px" alt="Step 1">
<img src="https://github.com/jonzilinsky/pictures/blob/main/report/7%20shell%20funtions.png?raw=true" height="300px" alt="Step 1">
  </li>
 <br />
  <li>
    Before adding commands to the shell functions, I wanted to make sure the format ran without errors.
    <br />
    I can see blank lines at the end of the script, letting me know the "returns" in the previous step are recognized.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/8%20shell%20functions%20space.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    Now the "here documents" reappear. At this point I tried to use "cat<<_EOF_" statements to direct the outputs.
    <br />
    I clearly did not understand the syntax and spent some time learning by trial and error how to get this working properly.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/9%20shell%20function%20trouble.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    Success! I ended up scrapping most of the script and putting it back together piece by piece this time. 
    <br />
    I'm sure this was a good lesson for me to learn for future scripts.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/10%20it%20works!.png?raw=true" height="300px" alt="Step 1">
  </li>
 <br />
  <li>
    I then put it back into firefox to see the system monitor results.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/10%20it%20works.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    With a working script now I just had some house keeping items to add.
    <br />
    I did not want have to manually redirect the output to html every time I ran the script.
    <br />
    I added a redirect to "sys_info_page.html"
    <br />
    Also when the script ran it locked out the terminal until the page was closed. 
    <br />
    This was remedied by adding the firefox command, redirecting the standard output/error
    <br /> 
    to the black hole (/dev/null) and adding & to run it in the backround.
    <br />
    I feel there is a cleaner way to fix this, but this patch works for me in this experiment.
    <br /> <img src="https://github.com/jonzilinsky/pictures/blob/main/report/Screenshot%202024-07-30%20221228.png?raw=true" width="600px" alt="Step 1">
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/11%20dev%20null.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    Test successful, I could use the terminal directly after running the script.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/11%20devnull%20works.png?raw=true" width="600px" alt="Step 1">
  </li>
 <br />
  <li>
    I then tinkered and tinkered with the color and font in html and css.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/12%20tinkering.png?raw=true" height="300px" alt="Step 1">
  </li>
  <br />
<li>
    The finished addition to the script looked like this.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/13%20colors.png?raw=true" height="500px" alt="Step 1">
  </li>
    <br /> 
    <li>
    Then I just needed to add an alias to ~/.bashrc.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/14%20bashrc.png?raw=true" width="600px" alt="Step 1">
 </li>
  <br />  
  <li>
    And here is the result of the script.
    <br />
    Another feature I looked into implementing was a page refresh.
    <br />
    I got the page to refresh with Java but the clock was not updating.
    <br />
    It started looking like the solution was a Python server.
    <br />
    Between Java and Python I was stepping outside the scope of my experiment and decided to leave out this feature.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/15%20pretty.png?raw=true" width="600px" alt="Step 1">
</li>
  <br /> 
  <li>
    Funnily enough I did think of an even more useful feature, making this a terminal script.
    <br />
    The flashy html was fun to learn how to make, but for practicality, I stripped the formating.
    <br />
    I then replaced the "cat<<_EOF_" statments with good old fashion echo,  with line breaks for clarity.
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/16%20backwards.png?raw=true" width="600px" alt="Step 1">
 </li>
  <br />
  <li>
    All that was left was to add a simple "2" on the end of my ~/.bashrc alias.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/17%20aliases%20again.png?raw=true" width="600px" alt="Step 1">
 </li>
  <br /> 
  <li>
    Finished experiment, my first command line script.
    <br />
    <img src="https://github.com/jonzilinsky/pictures/blob/main/report/18%20final.png?raw=true" width="600px" alt="Step 1">
  </li>
</ol>

<!--
 ```diff
- text in red
