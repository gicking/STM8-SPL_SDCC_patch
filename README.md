Patch for STM8 Standard Peripherals Library
-------------------------------------------

with the great support by the SDCC community I provide here a patch for SDCC of the available Standard Peripheral Libraries from the [STM homepage](http://www.st.com). For the respective device type, just search for:
  - STM8S/A: "STSW-STM8069" 
  - STM8L10x: "STSW-STM8012"
  - STM8L15x-16x-05x-AL31-L: "STSW-STM8016" 
  - STM8TL5x: "STSW-STM8030" 

Technical status:
  - applied SDCC specific changes to headers and sources (changes marked with "SDCC patch“)
  - changed ISR headers in all examples to skip ISR declaration (see open points)
  - added read/write-routines for >64kB memory space via inline assembly (thanks Philipp!)
  - created a SDCC "template project“ (i.e. Makefile). See $(SPL)/Project/STM8*_StdPeriph_Template/
  - created Win, Linux, and MacOSX batch scripts to compile and upload via [stm8gal](https://github.com/gicking/stm8gal)
  - added Doxygen input for creating manual from sources, since provided UM is in Windows proprietary .chm format —> run Doxy to create HTML docu
  - all SPL examples should compile but require editing of Makefile. Functionality tested partly (see open points)

Open points / questions to you:
  - I currently only have a STM8S Discovery Board and a custom PCB, so I haven't tested all functionalies —> additional checking is required
  - since I am used to IDEs, the provided Makefile is far from perfect. For example it lacks automatic dependencies. Any help is appreciated!
  - in the same content: a template project for an IDE would be nice, but which one…?
  - acc. to UM flash block operations must be executed from RAM. How do I compile/link code for RAM execution?
  - SDCC requires the interrupt token AFTER the function name in ISR declaration. I have fixed all examples, but this requires a manual fix for other libs that rely on SPL (see [STM homepage](http://www.st.com)). However, according to Erik and Philipp this would require a change of the SDCC parser with associated risks —> not likely to change

Update legal status (2017-11-19):
  - ST updated the SPL license in October 2017, see [here](http://www.st.com/en/embedded-software/stsw-stm8069.html) 
  - while it is more liberal than the old license, it still is not open-source. For a brief discussion see [here](https://github.com/gicking/STM8-SPL_SDCC_patch/issues/1)
  - please comply to the updated license in your OS projects, e.g. don't publish it under a license which violates the SPL license
  - to avoid legal issues, I decided to still only publish the patch, not the modified sources directly. 
  
Update legal status (2017-08-03):
  - linked SPL license on homepage prohibits distribution of sources, both original and modified
  - however, [ST support confirmed](https://github.com/gicking/STM8-SPL_SDCC_patch/blob/master/STM_support_licence.pdf) that this restrictive licence is no longer valid, and that the valid "Ultimate Liberty License" allows re-distribution of original and modified SPL sources
  - in the near future I plan to upload the modified sources directly (no need to patch). Until then... 
  
For apply the patch:
 1) download the respective STM8 Standard Peripheral Library from the [STM homepage](http://www.st.com) as described above
 2) unzip compressed SPL file 
 3) download respective patch file and script "apply_patch.sh" from here
 4) copy both files to same level as SPL directory
 5) set correct patchfile in "apply_patch.sh"
 6) run script "apply_patch.sh"

Please let me know if you experience problems with the patch process or the changes to the SPL.

My impression of the SPL is quite mixed. It seems much more complicated than e.g. Wiring for Arduino. However, as said before the STM8 SPL is very similar to the STM32 SPL. And for the latter with 100x registers, a standard HW-lib is almost mandatory. In addition STM provides a lot of example programs on their homepage, which are all based on the SPL. So I guess it’s worth digging into… Let me know what you think!?

Any feedback and/or support on the above open points is highly welcome! 

Regards,
Georg Icking-Konert

