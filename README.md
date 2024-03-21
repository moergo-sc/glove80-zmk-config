# MoErgo Glove80 Custom Configuration for ZMK

![MoErgo Logo](moergo_logo.png)

This repo is the official ZMK configuration of the MoErgo Glove80 wireless split contoured keyboard. Use it to develop your own keymap and easily build your own ZMK firmware to run on your Glove80.

**NOTE: You can also customize the layout of your Glove80 keyboard with the Glove80 Layout Editor webapp. For most users Glove80 Layout Editor is the recommended and simpler option. More information is available at the official MoErgo Glove80 Support site (see resources below).**

These steps will get you using your keymap on your keyboard in the fastest time possible. It uses the GitHub Actions feature to build your firmware online.

If you are looking to dig deeper into ZMK and develop new functionality, it is recommended to follow the steps of installing ZMK as found on the official ZMK documentation site (linked below).

## Resources
- The [official MoErgo Glove80 Support](https://moergo.com/glove80-support) web site. Glove80 documentation and other technical resources.
- The [official MoErgo Discord Server](https://moergo.com/discord). Instant conversations with other Glove80 users.

- The [official ZMK Documentation](https://zmk.dev/docs) web site. Find the answers to many of your questions about ZMK Firmware.
- The [official ZMK Discord Server](https://discord.gg/8cfMkQksSB). Instant conversations with other ZMK developers and users. Great technical resource!

- The [official Glove80 ZMK Distribution](https://github.com/moergo-sc/zmk). Repositiory for ZMK firmware customized for Glove80. 
 
## Instructions
1. Log into, or sign up for, your personal GitHub account.
2. Create your own repository using this repository as a template ([instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)) and check it out on your local computer.
3. Edit the keymap file(s) to suit your needs
4. Commit and push your changes to your personal repo. Upon pushing it, GitHub Actions will start building a new version of your firmware with the updated keymap.

## Firmware Files
To locate your firmware files and reflash your Glove80...
1. log into GitHub and navigate to your personal config repository you just uploaded your keymap changes to.
2. Click "Actions" in the main navigation, and in the left navigation click the "Build" link.
3. Select the desired workflow run in the centre area of the page (based on date and time of the build you wish to use). You can also start a new build from this page by clicking the "Run workflow" button.
4. After clicking the desired workflow run, you should be presented with a section at the bottom of the page called "Artifacts". This section contains the results of your build, in a file called "glove80.uf2"
5. Download the glove80.uf2
6. Flash the firmware to Glove80 according to the user documentation on the official Glove80 Glove80 Support website (linked above)

Your keyboard is now ready to use.

```
bindings = <
            &kp F1         &kp F2   &kp F3      &kp F4      &kp F5                                                                                            &kp F6  &kp F7      &kp F8      &kp F9      &kp F10
            &kp EQUAL      &kp N1   &kp N2      &kp N3      &kp N4      &kp N5                                                                     &kp N6     &kp N7  &kp N8      &kp N9      &kp N0      &kp MINUS
            &kp Q          &kp X    &kp W       &kp M       &kp G       &kp J                                                                      &kp BSLH   &kp DOT &kp FSLH    &kp EQUAL   &kp SQT     &kp BSLH
            &kp Z          &kp S    &kp C       &kp N       &kp T       &kp K                                                                      &kp COMMA  &kp A   &kp E       &kp I       &kp H       &kp Z
            &kp GRAVE      &kp B    &kp P       &kp L       &kp D       &kp V   &kp LSHFT   &kp LCTRL   &layer_td  &kp LGUI  &kp RCTRL &kp RSHFT   &kp MINUS  &kp U   &kp O       &kp Y       &kp F       &kp PG_UP
            &magic MAGIC 0 &kp HOME &kp END     &kp LEFT    &kp RIGHT           &kp R       &kp BSPC    &kp DEL    &kp RALT  &kp RET   &kp SPACE              &kp UP  &kp DOWN    &kp LBKT    &kp RBKT    &kp PG_DN
```