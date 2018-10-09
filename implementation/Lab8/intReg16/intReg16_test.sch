<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="dataIn(15:0)" />
        <signal name="dataOut(15:0)" />
        <signal name="CLK" />
        <signal name="s_button" />
        <signal name="w_button" />
        <signal name="e_button" />
        <signal name="n_button" />
        <signal name="r_button" />
        <signal name="a_button" />
        <signal name="b_button" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="G" />
        <signal name="XLXN_97" />
        <signal name="inten" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="intLvl0" />
        <signal name="intLvl1" />
        <signal name="XLXN_139" />
        <signal name="switch0" />
        <signal name="switch1" />
        <signal name="switch2" />
        <signal name="switch3" />
        <signal name="int1" />
        <signal name="intMask0" />
        <signal name="intMask1" />
        <signal name="int0" />
        <signal name="G,G,G,G,G,G,G,inten,G,G,intMask1,intMask0,G,G,int1,int0" />
        <signal name="led0" />
        <signal name="led2" />
        <signal name="led3" />
        <signal name="led4" />
        <signal name="led5" />
        <signal name="led6" />
        <signal name="led1" />
        <signal name="led7" />
        <signal name="dataOut(0)" />
        <signal name="dataOut(1)" />
        <signal name="dataOut(4)" />
        <signal name="dataOut(5)" />
        <signal name="dataOut(8)" />
        <signal name="dataOut(9)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="s_button" />
        <port polarity="Input" name="w_button" />
        <port polarity="Input" name="e_button" />
        <port polarity="Input" name="n_button" />
        <port polarity="Input" name="r_button" />
        <port polarity="Input" name="a_button" />
        <port polarity="Input" name="b_button" />
        <port polarity="Input" name="switch0" />
        <port polarity="Input" name="switch1" />
        <port polarity="Input" name="switch2" />
        <port polarity="Input" name="switch3" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <port polarity="Output" name="led4" />
        <port polarity="Output" name="led5" />
        <port polarity="Output" name="led6" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led7" />
        <blockdef name="intReg16">
            <timestamp>2010-10-11T12:15:23</timestamp>
            <rect width="288" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-620" height="24" />
            <line x2="416" y1="-608" y2="-608" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="debouncer">
            <timestamp>2010-10-1T20:10:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="debounceRotary">
            <timestamp>2009-9-3T20:35:3</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="buf16">
            <timestamp>2010-10-10T23:31:36</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="intReg16" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_95" name="int0" />
            <blockpin signalname="XLXN_96" name="int1" />
            <blockpin signalname="G" name="int2" />
            <blockpin signalname="G" name="int3" />
            <blockpin signalname="dataIn(15:0)" name="dataIn(15:0)" />
            <blockpin signalname="intLvl1" name="intLvl1" />
            <blockpin signalname="XLXN_94" name="RESET" />
            <blockpin signalname="intLvl0" name="intLvl0" />
            <blockpin signalname="dataOut(15:0)" name="dataOut(15:0)" />
            <blockpin signalname="XLXN_139" name="int" />
        </block>
        <block symbolname="debouncer" name="XLXI_5">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="s_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="XLXN_1" name="button_hi" />
        </block>
        <block symbolname="debouncer" name="XLXI_10">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="w_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="XLXN_95" name="button_hi" />
        </block>
        <block symbolname="debouncer" name="XLXI_11">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="e_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="XLXN_96" name="button_hi" />
        </block>
        <block symbolname="debouncer" name="XLXI_12">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="n_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="XLXN_94" name="button_hi" />
        </block>
        <block symbolname="debouncer" name="XLXI_13">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="G" name="reset" />
            <blockpin signalname="r_button" name="button" />
            <blockpin name="debutton" />
            <blockpin name="button_lo" />
            <blockpin signalname="XLXN_111" name="button_hi" />
        </block>
        <block symbolname="debounceRotary" name="XLXI_14">
            <blockpin signalname="a_button" name="A" />
            <blockpin signalname="b_button" name="B" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="G" name="RESET" />
            <blockpin signalname="XLXN_97" name="rot_event" />
            <blockpin name="rot_event_delay" />
            <blockpin name="rot_left" />
        </block>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="ftc" name="XLXI_17">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="G" name="CLR" />
            <blockpin signalname="XLXN_111" name="T" />
            <blockpin signalname="XLXN_109" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_15">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="G" name="CLR" />
            <blockpin signalname="XLXN_97" name="T" />
            <blockpin signalname="inten" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_109" name="I" />
            <blockpin signalname="XLXN_110" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="XLXN_109" name="I0" />
            <blockpin signalname="XLXN_111" name="I1" />
            <blockpin signalname="intLvl0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="XLXN_111" name="I0" />
            <blockpin signalname="XLXN_110" name="I1" />
            <blockpin signalname="intLvl1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_30">
            <blockpin signalname="switch0" name="I" />
            <blockpin signalname="int0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="switch1" name="I" />
            <blockpin signalname="int1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="switch2" name="I" />
            <blockpin signalname="intMask0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_33">
            <blockpin signalname="switch3" name="I" />
            <blockpin signalname="intMask1" name="O" />
        </block>
        <block symbolname="buf16" name="XLXI_34">
            <blockpin signalname="G,G,G,G,G,G,G,inten,G,G,intMask1,intMask0,G,G,int1,int0" name="I(15:0)" />
            <blockpin signalname="dataIn(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_22">
            <blockpin signalname="dataOut(0)" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_23">
            <blockpin signalname="dataOut(1)" name="I" />
            <blockpin signalname="led1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="dataOut(5)" name="I" />
            <blockpin signalname="led3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_27">
            <blockpin signalname="dataOut(8)" name="I" />
            <blockpin signalname="led5" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_28">
            <blockpin signalname="dataOut(9)" name="I" />
            <blockpin signalname="led6" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_29">
            <blockpin signalname="XLXN_139" name="I" />
            <blockpin signalname="led7" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="dataOut(4)" name="I" />
            <blockpin signalname="led2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="led4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="928" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1296" y1="320" y2="320" x1="800" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1200" y="384" type="branch" />
            <wire x2="1296" y1="384" y2="384" x1="1200" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1200" y="576" type="branch" />
            <wire x2="1296" y1="576" y2="576" x1="1200" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1200" y="640" type="branch" />
            <wire x2="1296" y1="640" y2="640" x1="1200" />
        </branch>
        <branch name="dataIn(15:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1200" y="704" type="branch" />
            <wire x2="1296" y1="704" y2="704" x1="1200" />
        </branch>
        <branch name="intLvl1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1200" y="768" type="branch" />
            <wire x2="1296" y1="768" y2="768" x1="1200" />
        </branch>
        <branch name="intLvl0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1200" y="896" type="branch" />
            <wire x2="1296" y1="896" y2="896" x1="1200" />
        </branch>
        <branch name="dataOut(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1840" y="320" type="branch" />
            <wire x2="1840" y1="320" y2="320" x1="1712" />
        </branch>
        <instance x="416" y="352" name="XLXI_5" orien="R0">
        </instance>
        <instance x="416" y="672" name="XLXI_10" orien="R0">
        </instance>
        <instance x="416" y="992" name="XLXI_11" orien="R0">
        </instance>
        <instance x="416" y="1632" name="XLXI_13" orien="R0">
        </instance>
        <instance x="416" y="1312" name="XLXI_12" orien="R0">
        </instance>
        <instance x="416" y="2016" name="XLXI_14" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="416" y1="192" y2="192" x1="320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="256" type="branch" />
            <wire x2="416" y1="256" y2="256" x1="320" />
        </branch>
        <branch name="s_button">
            <wire x2="416" y1="320" y2="320" x1="320" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="512" type="branch" />
            <wire x2="416" y1="512" y2="512" x1="320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="576" type="branch" />
            <wire x2="416" y1="576" y2="576" x1="320" />
        </branch>
        <branch name="w_button">
            <wire x2="416" y1="640" y2="640" x1="320" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="832" type="branch" />
            <wire x2="416" y1="832" y2="832" x1="320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="896" type="branch" />
            <wire x2="416" y1="896" y2="896" x1="320" />
        </branch>
        <branch name="e_button">
            <wire x2="416" y1="960" y2="960" x1="320" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1152" type="branch" />
            <wire x2="416" y1="1152" y2="1152" x1="320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1216" type="branch" />
            <wire x2="416" y1="1216" y2="1216" x1="320" />
        </branch>
        <branch name="n_button">
            <wire x2="416" y1="1280" y2="1280" x1="320" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1472" type="branch" />
            <wire x2="416" y1="1472" y2="1472" x1="320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1536" type="branch" />
            <wire x2="416" y1="1536" y2="1536" x1="320" />
        </branch>
        <branch name="r_button">
            <wire x2="416" y1="1600" y2="1600" x1="320" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1792" type="branch" />
            <wire x2="416" y1="1792" y2="1792" x1="320" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="320" y="1856" type="branch" />
            <wire x2="416" y1="1856" y2="1856" x1="320" />
        </branch>
        <branch name="a_button">
            <wire x2="416" y1="1920" y2="1920" x1="320" />
        </branch>
        <branch name="b_button">
            <wire x2="416" y1="1984" y2="1984" x1="320" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="1040" y1="1280" y2="1280" x1="800" />
            <wire x2="1296" y1="832" y2="832" x1="1040" />
            <wire x2="1040" y1="832" y2="1280" x1="1040" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="912" y1="640" y2="640" x1="800" />
            <wire x2="912" y1="448" y2="640" x1="912" />
            <wire x2="1296" y1="448" y2="448" x1="912" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="976" y1="960" y2="960" x1="800" />
            <wire x2="976" y1="512" y2="960" x1="976" />
            <wire x2="1296" y1="512" y2="512" x1="976" />
        </branch>
        <instance x="256" y="2544" name="XLXI_16" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="400" y="2400" type="branch" />
            <wire x2="400" y1="2400" y2="2400" x1="320" />
            <wire x2="320" y1="2400" y2="2416" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="320" name="s_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="640" name="w_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="960" name="e_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="1280" name="n_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="1600" name="r_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="1920" name="a_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="1984" name="b_button" orien="R180" />
        <iomarker fontsize="28" x="320" y="192" name="CLK" orien="R180" />
        <instance x="976" y="2320" name="XLXI_15" orien="R0" />
        <branch name="XLXN_97">
            <wire x2="880" y1="1856" y2="1856" x1="800" />
            <wire x2="880" y1="1856" y2="2064" x1="880" />
            <wire x2="976" y1="2064" y2="2064" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="896" y="2192" type="branch" />
            <wire x2="976" y1="2192" y2="2192" x1="896" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="896" y="2288" type="branch" />
            <wire x2="976" y1="2288" y2="2288" x1="896" />
        </branch>
        <branch name="inten">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="2064" type="branch" />
            <wire x2="1440" y1="2064" y2="2064" x1="1360" />
        </branch>
        <instance x="1056" y="1856" name="XLXI_17" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="1728" type="branch" />
            <wire x2="1056" y1="1728" y2="1728" x1="960" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="960" y="1824" type="branch" />
            <wire x2="1056" y1="1824" y2="1824" x1="960" />
        </branch>
        <branch name="XLXN_109">
            <wire x2="1504" y1="1600" y2="1600" x1="1440" />
            <wire x2="1504" y1="1600" y2="1760" x1="1504" />
            <wire x2="1520" y1="1760" y2="1760" x1="1504" />
            <wire x2="1840" y1="1600" y2="1600" x1="1504" />
        </branch>
        <instance x="1520" y="1792" name="XLXI_19" orien="R0" />
        <instance x="1840" y="1664" name="XLXI_20" orien="R0" />
        <instance x="1840" y="1888" name="XLXI_21" orien="R0" />
        <branch name="XLXN_110">
            <wire x2="1840" y1="1760" y2="1760" x1="1744" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="960" y1="1600" y2="1600" x1="800" />
            <wire x2="1056" y1="1600" y2="1600" x1="960" />
            <wire x2="960" y1="1440" y2="1600" x1="960" />
            <wire x2="1760" y1="1440" y2="1440" x1="960" />
            <wire x2="1760" y1="1440" y2="1536" x1="1760" />
            <wire x2="1760" y1="1536" y2="1824" x1="1760" />
            <wire x2="1840" y1="1824" y2="1824" x1="1760" />
            <wire x2="1840" y1="1536" y2="1536" x1="1760" />
        </branch>
        <branch name="intLvl0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2160" y="1568" type="branch" />
            <wire x2="2160" y1="1568" y2="1568" x1="2096" />
        </branch>
        <branch name="intLvl1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2160" y="1792" type="branch" />
            <wire x2="2160" y1="1792" y2="1792" x1="2096" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="1728" y1="896" y2="896" x1="1712" />
            <wire x2="2736" y1="896" y2="896" x1="1728" />
        </branch>
        <branch name="switch0">
            <wire x2="1600" y1="1040" y2="1040" x1="1440" />
        </branch>
        <branch name="switch1">
            <wire x2="1600" y1="1120" y2="1120" x1="1440" />
        </branch>
        <branch name="switch2">
            <wire x2="1600" y1="1200" y2="1200" x1="1440" />
        </branch>
        <branch name="switch3">
            <wire x2="1600" y1="1280" y2="1280" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1040" name="switch0" orien="R180" />
        <iomarker fontsize="28" x="1440" y="1120" name="switch1" orien="R180" />
        <iomarker fontsize="28" x="1440" y="1200" name="switch2" orien="R180" />
        <iomarker fontsize="28" x="1440" y="1280" name="switch3" orien="R180" />
        <instance x="1600" y="1072" name="XLXI_30" orien="R0" />
        <instance x="1600" y="1152" name="XLXI_31" orien="R0" />
        <instance x="1600" y="1232" name="XLXI_32" orien="R0" />
        <instance x="1600" y="1312" name="XLXI_33" orien="R0" />
        <branch name="int1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="1120" type="branch" />
            <wire x2="1920" y1="1120" y2="1120" x1="1824" />
        </branch>
        <branch name="intMask0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="1200" type="branch" />
            <wire x2="1920" y1="1200" y2="1200" x1="1824" />
        </branch>
        <branch name="intMask1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="1280" type="branch" />
            <wire x2="1920" y1="1280" y2="1280" x1="1824" />
        </branch>
        <branch name="int0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="1040" type="branch" />
            <wire x2="1920" y1="1040" y2="1040" x1="1824" />
        </branch>
        <instance x="2656" y="1392" name="XLXI_34" orien="R0">
        </instance>
        <branch name="dataIn(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3120" y="1360" type="branch" />
            <wire x2="3120" y1="1360" y2="1360" x1="3040" />
        </branch>
        <branch name="G,G,G,G,G,G,G,inten,G,G,intMask1,intMask0,G,G,int1,int0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2560" y="1360" type="branch" />
            <wire x2="2656" y1="1360" y2="1360" x1="2560" />
        </branch>
        <branch name="led0">
            <wire x2="3120" y1="336" y2="336" x1="2960" />
        </branch>
        <branch name="led2">
            <wire x2="3120" y1="496" y2="496" x1="2960" />
        </branch>
        <branch name="led3">
            <wire x2="3120" y1="576" y2="576" x1="2960" />
        </branch>
        <branch name="led4">
            <wire x2="3120" y1="656" y2="656" x1="2960" />
        </branch>
        <branch name="led5">
            <wire x2="3120" y1="736" y2="736" x1="2960" />
        </branch>
        <branch name="led6">
            <wire x2="3120" y1="816" y2="816" x1="2960" />
        </branch>
        <branch name="led1">
            <wire x2="3120" y1="416" y2="416" x1="2960" />
        </branch>
        <branch name="led7">
            <wire x2="3120" y1="896" y2="896" x1="2960" />
        </branch>
        <instance x="2736" y="368" name="XLXI_22" orien="R0" />
        <instance x="2736" y="448" name="XLXI_23" orien="R0" />
        <instance x="2736" y="608" name="XLXI_25" orien="R0" />
        <instance x="2736" y="768" name="XLXI_27" orien="R0" />
        <instance x="2736" y="848" name="XLXI_28" orien="R0" />
        <instance x="2736" y="928" name="XLXI_29" orien="R0" />
        <instance x="2736" y="528" name="XLXI_24" orien="R0" />
        <instance x="2736" y="688" name="XLXI_26" orien="R0" />
        <branch name="dataOut(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="336" type="branch" />
            <wire x2="2736" y1="336" y2="336" x1="2640" />
        </branch>
        <branch name="dataOut(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="416" type="branch" />
            <wire x2="2736" y1="416" y2="416" x1="2640" />
        </branch>
        <branch name="dataOut(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="496" type="branch" />
            <wire x2="2736" y1="496" y2="496" x1="2640" />
        </branch>
        <branch name="dataOut(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="576" type="branch" />
            <wire x2="2736" y1="576" y2="576" x1="2640" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="656" type="branch" />
            <wire x2="2736" y1="656" y2="656" x1="2640" />
        </branch>
        <branch name="dataOut(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="736" type="branch" />
            <wire x2="2736" y1="736" y2="736" x1="2640" />
        </branch>
        <branch name="dataOut(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2640" y="816" type="branch" />
            <wire x2="2736" y1="816" y2="816" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="3120" y="336" name="led0" orien="R0" />
        <iomarker fontsize="28" x="3120" y="416" name="led1" orien="R0" />
        <iomarker fontsize="28" x="3120" y="496" name="led2" orien="R0" />
        <iomarker fontsize="28" x="3120" y="576" name="led3" orien="R0" />
        <iomarker fontsize="28" x="3120" y="656" name="led4" orien="R0" />
        <iomarker fontsize="28" x="3120" y="736" name="led5" orien="R0" />
        <iomarker fontsize="28" x="3120" y="816" name="led6" orien="R0" />
        <iomarker fontsize="28" x="3120" y="896" name="led7" orien="R0" />
    </sheet>
</drawing>