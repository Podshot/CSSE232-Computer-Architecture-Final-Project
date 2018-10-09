<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="reset" />
        <signal name="count(15:0)" />
        <signal name="debutton" />
        <signal name="XLXN_101" />
        <signal name="button" />
        <signal name="XLXN_152" />
        <signal name="XLXN_219" />
        <signal name="button_lo" />
        <signal name="XLXN_251" />
        <signal name="button_hi" />
        <signal name="XLXN_205" />
        <signal name="XLXN_265" />
        <signal name="XLXN_266" />
        <signal name="XLXN_268" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="count(15:0)" />
        <port polarity="Output" name="debutton" />
        <port polarity="Input" name="button" />
        <port polarity="Output" name="button_lo" />
        <port polarity="Output" name="button_hi" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="fdce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="debounce_counter">
            <timestamp>2013-9-25T0:11:9</timestamp>
            <rect width="256" x="32" y="32" height="240" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="176" y2="176" x1="0" />
            <line x2="32" y1="224" y2="224" x1="0" />
            <line x2="288" y1="128" y2="128" x1="320" />
            <line x2="288" y1="80" y2="80" style="linewidth:W" x1="320" />
        </blockdef>
        <block symbolname="fdc" name="XLXI_22">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="button" name="D" />
            <blockpin signalname="XLXN_219" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_45">
            <blockpin signalname="XLXN_219" name="I0" />
            <blockpin signalname="debutton" name="I1" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="fdce" name="XLXI_50">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_268" name="CE" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="XLXN_219" name="D" />
            <blockpin signalname="debutton" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_53">
            <blockpin signalname="button" name="I0" />
            <blockpin signalname="XLXN_219" name="I1" />
            <blockpin signalname="XLXN_152" name="O" />
        </block>
        <block symbolname="fdce" name="XLXI_81">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_266" name="CE" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="XLXN_251" name="D" />
            <blockpin signalname="button_lo" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_65">
            <blockpin signalname="XLXN_219" name="I0" />
            <blockpin signalname="debutton" name="I1" />
            <blockpin signalname="XLXN_251" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_83">
            <blockpin signalname="XLXN_268" name="I0" />
            <blockpin signalname="button_lo" name="I1" />
            <blockpin signalname="XLXN_266" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_82">
            <blockpin signalname="button_hi" name="I0" />
            <blockpin signalname="XLXN_268" name="I1" />
            <blockpin signalname="XLXN_265" name="O" />
        </block>
        <block symbolname="fdce" name="XLXI_80">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_265" name="CE" />
            <blockpin signalname="reset" name="CLR" />
            <blockpin signalname="XLXN_205" name="D" />
            <blockpin signalname="button_hi" name="Q" />
        </block>
        <block symbolname="and2b1" name="XLXI_13">
            <blockpin signalname="debutton" name="I0" />
            <blockpin signalname="XLXN_219" name="I1" />
            <blockpin signalname="XLXN_205" name="O" />
        </block>
        <block symbolname="debounce_counter" name="XLXI_85">
            <blockpin signalname="XLXN_152" name="sclr" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_101" name="ce" />
            <blockpin signalname="XLXN_268" name="thresh0" />
            <blockpin signalname="count(15:0)" name="q(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="count(15:0)">
            <wire x2="848" y1="768" y2="768" x1="608" />
            <wire x2="848" y1="768" y2="1664" x1="848" />
            <wire x2="1760" y1="1664" y2="1664" x1="848" />
        </branch>
        <branch name="reset">
            <wire x2="256" y1="368" y2="368" x1="160" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="160" y="864" type="branch" />
            <wire x2="288" y1="864" y2="864" x1="160" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="896" y="272" type="branch" />
            <wire x2="1056" y1="272" y2="272" x1="896" />
        </branch>
        <instance x="1056" y="400" name="XLXI_50" orien="R0" />
        <instance x="256" y="400" name="XLXI_22" orien="R0" />
        <iomarker fontsize="28" x="160" y="144" name="button" orien="R180" />
        <iomarker fontsize="28" x="160" y="272" name="clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="368" name="reset" orien="R180" />
        <branch name="button">
            <wire x2="208" y1="144" y2="144" x1="160" />
            <wire x2="256" y1="144" y2="144" x1="208" />
            <wire x2="208" y1="144" y2="464" x1="208" />
        </branch>
        <branch name="clk">
            <wire x2="256" y1="272" y2="272" x1="160" />
        </branch>
        <branch name="XLXN_152">
            <wire x2="240" y1="720" y2="768" x1="240" />
            <wire x2="288" y1="768" y2="768" x1="240" />
        </branch>
        <instance x="144" y="464" name="XLXI_53" orien="R90" />
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="368" type="branch" />
            <wire x2="1056" y1="368" y2="368" x1="880" />
        </branch>
        <branch name="debutton">
            <wire x2="784" y1="1136" y2="1136" x1="544" />
            <wire x2="784" y1="1136" y2="1344" x1="784" />
            <wire x2="896" y1="1344" y2="1344" x1="784" />
            <wire x2="1456" y1="432" y2="432" x1="784" />
            <wire x2="784" y1="432" y2="656" x1="784" />
            <wire x2="896" y1="656" y2="656" x1="784" />
            <wire x2="784" y1="656" y2="1136" x1="784" />
            <wire x2="1456" y1="144" y2="144" x1="1440" />
            <wire x2="1456" y1="144" y2="432" x1="1456" />
            <wire x2="1760" y1="144" y2="144" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1760" y="144" name="debutton" orien="R0" />
        <branch name="button_lo">
            <wire x2="1616" y1="1216" y2="1216" x1="1536" />
            <wire x2="1616" y1="1216" y2="1376" x1="1616" />
            <wire x2="1760" y1="1376" y2="1376" x1="1616" />
            <wire x2="1616" y1="1376" y2="1376" x1="1600" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1504" type="branch" />
            <wire x2="1216" y1="1504" y2="1504" x1="1040" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="1600" type="branch" />
            <wire x2="1216" y1="1600" y2="1600" x1="1056" />
        </branch>
        <instance x="1216" y="1632" name="XLXI_81" orien="R0" />
        <instance x="896" y="1472" name="XLXI_65" orien="R0" />
        <branch name="XLXN_251">
            <wire x2="1216" y1="1376" y2="1376" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1376" name="button_lo" orien="R0" />
        <instance x="1216" y="880" name="XLXI_80" orien="R0" />
        <iomarker fontsize="28" x="1744" y="624" name="button_hi" orien="R0" />
        <instance x="896" y="720" name="XLXI_13" orien="R0" />
        <branch name="button_hi">
            <wire x2="1616" y1="928" y2="928" x1="1536" />
            <wire x2="1616" y1="624" y2="624" x1="1600" />
            <wire x2="1744" y1="624" y2="624" x1="1616" />
            <wire x2="1616" y1="624" y2="928" x1="1616" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="848" type="branch" />
            <wire x2="1216" y1="848" y2="848" x1="1040" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="752" type="branch" />
            <wire x2="1216" y1="752" y2="752" x1="1040" />
        </branch>
        <branch name="XLXN_205">
            <wire x2="1216" y1="624" y2="624" x1="1152" />
        </branch>
        <instance x="1536" y="864" name="XLXI_82" orien="R180" />
        <instance x="1536" y="1088" name="XLXI_83" orien="R180" />
        <branch name="XLXN_265">
            <wire x2="1216" y1="688" y2="688" x1="1200" />
            <wire x2="1200" y1="688" y2="960" x1="1200" />
            <wire x2="1280" y1="960" y2="960" x1="1200" />
        </branch>
        <branch name="XLXN_266">
            <wire x2="1280" y1="1184" y2="1184" x1="1200" />
            <wire x2="1200" y1="1184" y2="1440" x1="1200" />
            <wire x2="1216" y1="1440" y2="1440" x1="1200" />
        </branch>
        <branch name="XLXN_268">
            <wire x2="720" y1="816" y2="816" x1="608" />
            <wire x2="720" y1="816" y2="1072" x1="720" />
            <wire x2="1616" y1="1072" y2="1072" x1="720" />
            <wire x2="1616" y1="1072" y2="1152" x1="1616" />
            <wire x2="720" y1="208" y2="816" x1="720" />
            <wire x2="1056" y1="208" y2="208" x1="720" />
            <wire x2="1616" y1="992" y2="992" x1="1536" />
            <wire x2="1616" y1="992" y2="1072" x1="1616" />
            <wire x2="1616" y1="1152" y2="1152" x1="1536" />
        </branch>
        <instance x="544" y="1008" name="XLXI_45" orien="R180" />
        <branch name="XLXN_219">
            <wire x2="272" y1="432" y2="464" x1="272" />
            <wire x2="656" y1="432" y2="432" x1="272" />
            <wire x2="656" y1="432" y2="592" x1="656" />
            <wire x2="896" y1="592" y2="592" x1="656" />
            <wire x2="656" y1="592" y2="1072" x1="656" />
            <wire x2="656" y1="1072" y2="1408" x1="656" />
            <wire x2="896" y1="1408" y2="1408" x1="656" />
            <wire x2="656" y1="1072" y2="1072" x1="544" />
            <wire x2="656" y1="144" y2="144" x1="640" />
            <wire x2="1056" y1="144" y2="144" x1="656" />
            <wire x2="656" y1="144" y2="432" x1="656" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="240" y1="912" y2="1104" x1="240" />
            <wire x2="288" y1="1104" y2="1104" x1="240" />
            <wire x2="288" y1="912" y2="912" x1="240" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1664" name="count(15:0)" orien="R0" />
        <instance x="288" y="688" name="XLXI_85" orien="R0">
        </instance>
    </sheet>
</drawing>