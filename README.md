# LSDTopoTools as a Docker Container

How to use. Instructions assume a Windows 10 device:

1. Install Docker. If on Windows, get [Docker for
   Windows](https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe).

   You may need to restart at the end of the setup to enable
   [Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/).
   The Docker for Windows installer will take care of this.

2. Configure Docker for Windows to use up to 4GB of memory. Right click the
   Docker taskbar icon, and go to "Settings".

   ![Opening up the Docker Settings](https://github.com/AaronFriel/LSDTopoTools/raw/master/docs/Setup-1.png)

   Click on "Advanced" and move the slider for memory up to 4096 MB:

   ![Moving the memory slider to 4096 MB](https://github.com/AaronFriel/LSDTopoTools/raw/master/docs/Setup-2.png)

   Click Apply, and wait for Docker to stop updating the virtual machine. (This
   could take thirty seconds to a minute.)

3. Before running the following command, determine where you want to install the
   LSDTopoTools packages and put files you will work on using the tools. I will
   use, as an example, `C:\LSDTopoTools`.

   Run the LSDTopoTools package from a command line. Open up a command prompt or
   PowerShell prompt.

   ```bash
   docker run --rm -it -v C:\LSDTopoTools\:/LSDTopoTools afriel/lsdtopotools
   ```

4. You should get a prompt that looks like this, perhaps with some different
   letters and numbers after the `@`:

   ```
   root@9f73030d8598:/LSDTopoTools#
   ```

5. If this is your first time using the tools and your LSDTopoTools directory is
   empty, you will need to run the install script. In the prompt, enter:
   `install.sh` and hit enter.

6. You are done! Exit the command prompt at any time to quit using the tools.
   Docker will continue to use memory in the background, you may exit it by
   right clicking the taskbar icon. To start it again, run Docker for Windows.
