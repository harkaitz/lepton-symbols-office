LEPTON SYMBOLS - OFFICE HARDWARE
================================

Office automation/hardware symbols for Lepton EDA.

## Installation

To install as usual.

    sudo make install PREFIX=/usr

You can also create a link in "/usr/share/lepton-eda" that points to
the working directory, good for development.

    sudo make link

## Style guide

Graphical symbols

    graphical=1
    device=none (non-visible)

Required attributes:

    device=NOMBRE (req)
    description=LONG_DESC
    author=AUTHOR_NAME
    comment=OTHER_INFO
    documentation=pdf|pdf-url (search-path: pwd,doc/lepton-eda)

Required attributes in pins:

    pinseq=1           : Unique number/sequence (Used by Spice)
    pinnumber=NAME     : The visible name of the pin.
    pinlabel=A0|DATA1|CLK (Make it green)
    pintype=CABLE-TYPE : 

pintypes:

- in|out|io|oc(open collector)|oe(open emitter)|pas(passive)
- tp(totem pole)|tri(tristate)|clk(clock)|pwr(power)

pintypes (office): Add new when required, will be used for calculating cables.

- Power: AC220V
- HDMI: hdmi_{A (standard),B,C (mini),D (micro),E}
- Ethernet: eth_{RJ45,M12}
- USB2: usb2_{A(standard),B,mini_A,mini_B,micro_A,micro_B}
- USB3: usb3_{A,B,micro_B,C}


## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
