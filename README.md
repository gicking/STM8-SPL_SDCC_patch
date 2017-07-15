Patch for STM8 Standard Peripherals Library
-------------------------------------------

with the great support by the SDCC community I provide here a patch for SDCC of the STM8 Standard Peripheral Library available from the [STM homepage](http://www.st.com/web/en/catalog/tools/FM147/CL1794/SC1807/SS1754/PF258009). If link is broken search for "STSW-STM8069"

Technical status:
  - applied SDCC specific changes to headers and sources (changes marked with "SDCC patch“)
  - changed ISR headers in all examples to skip ISR declaration (see open points)
  - added flash r/w for 24b addresses via inline assembly (thanks Philipp!)
  - created a SDCC "template project“ (i.e. Makefile). See $(SPL)/Project/STM8S_StdPeriph_Template/
  - created Win, Linux, and MacOSX batch scripts to compile and upload via https://github.com/gicking/STM8_serial_flasher 
  - added Doxygen input for creating manual from sources, since provided UM is in Windows proprietary .chm format —> run Doxy to create HTML docu
  - all SPL examples should compile but require editing of Makefile. Functionality tested partly (see open points)

Open points / questions to you:
  - I only have access to a STM8 Discovery Board and a custom PCB, so I can't verify all functionality —> additional checking is required
  - since I am used to IDEs, the provided Makefile is far from perfect. For example it lacks automatic dependencies. Any help is appreciated!
  - in the same content: a template project for an IDE would be nice, but which one…?
  - acc. to UM flash block operations must be executed from RAM. How do I compile/link code for RAM execution?
  - SDCC requires the interrupt token AFTER the function name in ISR declaration. I have fixed all examples, but this requires a manual fix for other libs that rely on SPL (see [STM homepage](http://www.st.com)). However, according to Erik and Philipp this would require a change of the SDCC parser with associated risks —> not likely to be changed

Legal status (2017-07-15):
  - STM replied that they currently do not plan an official releases of the STM8-SPL —> SDCC will not be officially supported for the forseeable future 
  - SPL license prohibits distribution of sources original or modified —> need to publish this as patch
  - supposedly discussion inside STM is ongoing to relax the SPL license restictions to allow redistribution

For apply the patch:
 1) download [STM8 Standard Peripheral Library](http://www.st.com/web/en/catalog/tools/FM147/CL1794/SC1807/SS1754/PF258009). If link is broken search for "STSW-STM8069"
 2) unzip into this folder and (if required) rename to STM8S_StdPeriph_Lib 
 3) run script "apply_patch.sh" to apply the patch

Please let me know if you experience problems with the patch process or the changes to the SPL.

My impression of the SPL is quite mixed. It seems much more complicated than e.g. Wiring for Arduino. However, as said before the STM8 SPL is very similar to the STM32 SPL. And for the latter with 100x registers, a standard HW-lib is almost mandatory. In addition STM provides a lot of example programs on their homepage, which are all based on the SPL. So I guess it’s worth digging into… Let me know what you think!?

Any feedback and/or support on the above open points is highly welcome! 

Regards,
Georg Icking-Konert

