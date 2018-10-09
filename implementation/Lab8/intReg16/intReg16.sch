<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Write" />
        <signal name="CLK" />
        <signal name="dataOut(15)" />
        <signal name="dataIn(0)" />
        <signal name="dataIn(1)" />
        <signal name="dataIn(2)" />
        <signal name="dataIn(3)" />
        <signal name="dataIn(4)" />
        <signal name="dataIn(5)" />
        <signal name="dataIn(6)" />
        <signal name="dataIn(7)" />
        <signal name="dataIn(8)" />
        <signal name="dataIn(9)" />
        <signal name="dataIn(10)" />
        <signal name="dataIn(11)" />
        <signal name="dataIn(12)" />
        <signal name="dataIn(13)" />
        <signal name="dataIn(14)" />
        <signal name="dataIn(15)" />
        <signal name="dataOut(15:0)" />
        <signal name="dataOut(0)" />
        <signal name="dataOut(1)" />
        <signal name="dataOut(2)" />
        <signal name="dataOut(3)" />
        <signal name="dataOut(4)" />
        <signal name="dataOut(5)" />
        <signal name="dataOut(6)" />
        <signal name="dataOut(7)" />
        <signal name="dataOut(8)" />
        <signal name="dataOut(10)" />
        <signal name="dataOut(11)" />
        <signal name="dataOut(12)" />
        <signal name="dataOut(13)" />
        <signal name="dataOut(14)" />
        <signal name="int0" />
        <signal name="int1" />
        <signal name="int2" />
        <signal name="int3" />
        <signal name="G" />
        <signal name="dataIn(15:0)" />
        <signal name="XLXN_170" />
        <signal name="XLXN_179" />
        <signal name="XLXN_181" />
        <signal name="XLXN_182" />
        <signal name="XLXN_184" />
        <signal name="intLvl1" />
        <signal name="RESET" />
        <signal name="intLvl0" />
        <signal name="XLXN_204" />
        <signal name="int" />
        <signal name="dataOut(9)" />
        <port polarity="Input" name="Write" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="dataOut(15:0)" />
        <port polarity="Input" name="int0" />
        <port polarity="Input" name="int1" />
        <port polarity="Input" name="int2" />
        <port polarity="Input" name="int3" />
        <port polarity="Input" name="dataIn(15:0)" />
        <port polarity="Input" name="intLvl1" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="intLvl0" />
        <port polarity="Output" name="int" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="fdrse">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-352" y2="-352" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-320" y2="-352" x1="192" />
            <line x2="64" y1="-352" y2="-352" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_38">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="dataOut(4)" name="I0" />
            <blockpin signalname="dataOut(0)" name="I1" />
            <blockpin signalname="XLXN_170" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_41">
            <blockpin signalname="dataOut(5)" name="I0" />
            <blockpin signalname="dataOut(1)" name="I1" />
            <blockpin signalname="XLXN_181" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_42">
            <blockpin signalname="dataOut(6)" name="I0" />
            <blockpin signalname="dataOut(2)" name="I1" />
            <blockpin signalname="XLXN_182" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="dataOut(7)" name="I0" />
            <blockpin signalname="dataOut(3)" name="I1" />
            <blockpin signalname="XLXN_179" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_44">
            <blockpin signalname="XLXN_179" name="I0" />
            <blockpin signalname="XLXN_182" name="I1" />
            <blockpin signalname="XLXN_181" name="I2" />
            <blockpin signalname="XLXN_170" name="I3" />
            <blockpin signalname="XLXN_184" name="O" />
        </block>
        <block symbolname="fdrse" name="XLXI_46">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="G" name="CE" />
            <blockpin signalname="dataIn(9)" name="D" />
            <blockpin signalname="XLXN_204" name="R" />
            <blockpin signalname="intLvl1" name="S" />
            <blockpin signalname="dataOut(9)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_47">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(0)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="int0" name="S" />
            <blockpin signalname="dataOut(0)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_48">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(1)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="int1" name="S" />
            <blockpin signalname="dataOut(1)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_49">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(2)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="int2" name="S" />
            <blockpin signalname="dataOut(2)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_50">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(3)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="int3" name="S" />
            <blockpin signalname="dataOut(3)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_51">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(4)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(4)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_52">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(5)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(5)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_53">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(6)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(6)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_54">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(7)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(7)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_55">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(8)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(8)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_56">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(10)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(10)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_57">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(11)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(11)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_58">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(12)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(12)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_59">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(13)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(13)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_60">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(14)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(14)" name="Q" />
        </block>
        <block symbolname="fdrse" name="XLXI_61">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="dataIn(15)" name="D" />
            <blockpin signalname="RESET" name="R" />
            <blockpin signalname="G" name="S" />
            <blockpin signalname="dataOut(15)" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_62">
            <blockpin signalname="RESET" name="I0" />
            <blockpin signalname="intLvl0" name="I1" />
            <blockpin signalname="XLXN_204" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_63">
            <blockpin signalname="XLXN_184" name="I0" />
            <blockpin signalname="dataOut(8)" name="I1" />
            <blockpin signalname="dataOut(9)" name="I2" />
            <blockpin signalname="int" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="int0">
            <wire x2="976" y1="144" y2="144" x1="880" />
        </branch>
        <branch name="dataIn(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="240" type="branch" />
            <wire x2="976" y1="240" y2="240" x1="880" />
        </branch>
        <branch name="Write">
            <wire x2="976" y1="304" y2="304" x1="880" />
        </branch>
        <branch name="CLK">
            <wire x2="976" y1="368" y2="368" x1="880" />
        </branch>
        <branch name="dataOut(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="240" type="branch" />
            <wire x2="1440" y1="240" y2="240" x1="1360" />
        </branch>
        <branch name="dataOut(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="640" type="branch" />
            <wire x2="1424" y1="640" y2="640" x1="1360" />
            <wire x2="1440" y1="640" y2="640" x1="1424" />
        </branch>
        <branch name="int2">
            <wire x2="976" y1="944" y2="944" x1="880" />
        </branch>
        <branch name="dataIn(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1040" type="branch" />
            <wire x2="976" y1="1040" y2="1040" x1="880" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1104" type="branch" />
            <wire x2="976" y1="1104" y2="1104" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1168" type="branch" />
            <wire x2="976" y1="1168" y2="1168" x1="880" />
        </branch>
        <branch name="dataOut(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="1040" type="branch" />
            <wire x2="1440" y1="1040" y2="1040" x1="1360" />
        </branch>
        <branch name="int3">
            <wire x2="976" y1="1344" y2="1344" x1="880" />
        </branch>
        <branch name="dataIn(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1440" type="branch" />
            <wire x2="976" y1="1440" y2="1440" x1="880" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1504" type="branch" />
            <wire x2="976" y1="1504" y2="1504" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1568" type="branch" />
            <wire x2="976" y1="1568" y2="1568" x1="880" />
        </branch>
        <branch name="dataOut(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="1440" type="branch" />
            <wire x2="1440" y1="1440" y2="1440" x1="1360" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1744" type="branch" />
            <wire x2="976" y1="1744" y2="1744" x1="880" />
        </branch>
        <branch name="dataIn(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1840" type="branch" />
            <wire x2="976" y1="1840" y2="1840" x1="880" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1904" type="branch" />
            <wire x2="976" y1="1904" y2="1904" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1968" type="branch" />
            <wire x2="976" y1="1968" y2="1968" x1="880" />
        </branch>
        <branch name="dataOut(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="1840" type="branch" />
            <wire x2="1440" y1="1840" y2="1840" x1="1360" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2144" type="branch" />
            <wire x2="976" y1="2144" y2="2144" x1="880" />
        </branch>
        <branch name="dataIn(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2240" type="branch" />
            <wire x2="976" y1="2240" y2="2240" x1="880" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2304" type="branch" />
            <wire x2="976" y1="2304" y2="2304" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2368" type="branch" />
            <wire x2="976" y1="2368" y2="2368" x1="880" />
        </branch>
        <branch name="dataOut(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="2240" type="branch" />
            <wire x2="1440" y1="2240" y2="2240" x1="1360" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2544" type="branch" />
            <wire x2="976" y1="2544" y2="2544" x1="880" />
        </branch>
        <branch name="dataIn(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2640" type="branch" />
            <wire x2="976" y1="2640" y2="2640" x1="880" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2704" type="branch" />
            <wire x2="976" y1="2704" y2="2704" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2768" type="branch" />
            <wire x2="976" y1="2768" y2="2768" x1="880" />
        </branch>
        <branch name="dataOut(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="2640" type="branch" />
            <wire x2="1440" y1="2640" y2="2640" x1="1360" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2944" type="branch" />
            <wire x2="976" y1="2944" y2="2944" x1="880" />
        </branch>
        <branch name="dataIn(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="3040" type="branch" />
            <wire x2="976" y1="3040" y2="3040" x1="880" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="3104" type="branch" />
            <wire x2="976" y1="3104" y2="3104" x1="880" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="3168" type="branch" />
            <wire x2="976" y1="3168" y2="3168" x1="880" />
        </branch>
        <branch name="dataOut(7)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="3040" type="branch" />
            <wire x2="1440" y1="3040" y2="3040" x1="1360" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="144" type="branch" />
            <wire x2="2176" y1="144" y2="144" x1="2080" />
        </branch>
        <branch name="dataIn(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="240" type="branch" />
            <wire x2="2176" y1="240" y2="240" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="304" type="branch" />
            <wire x2="2176" y1="304" y2="304" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="368" type="branch" />
            <wire x2="2176" y1="368" y2="368" x1="2080" />
        </branch>
        <branch name="dataOut(8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="240" type="branch" />
            <wire x2="2640" y1="240" y2="240" x1="2560" />
        </branch>
        <branch name="dataIn(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="640" type="branch" />
            <wire x2="2176" y1="640" y2="640" x1="2080" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="704" type="branch" />
            <wire x2="2176" y1="704" y2="704" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="768" type="branch" />
            <wire x2="2176" y1="768" y2="768" x1="2080" />
        </branch>
        <branch name="dataOut(9)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="640" type="branch" />
            <wire x2="2640" y1="640" y2="640" x1="2560" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="944" type="branch" />
            <wire x2="2176" y1="944" y2="944" x1="2080" />
        </branch>
        <branch name="dataIn(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1040" type="branch" />
            <wire x2="2176" y1="1040" y2="1040" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1104" type="branch" />
            <wire x2="2176" y1="1104" y2="1104" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1168" type="branch" />
            <wire x2="2176" y1="1168" y2="1168" x1="2080" />
        </branch>
        <branch name="dataOut(10)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="1040" type="branch" />
            <wire x2="2640" y1="1040" y2="1040" x1="2560" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1344" type="branch" />
            <wire x2="2176" y1="1344" y2="1344" x1="2080" />
        </branch>
        <branch name="dataIn(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1440" type="branch" />
            <wire x2="2176" y1="1440" y2="1440" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1504" type="branch" />
            <wire x2="2176" y1="1504" y2="1504" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1568" type="branch" />
            <wire x2="2176" y1="1568" y2="1568" x1="2080" />
        </branch>
        <branch name="dataOut(11)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="1440" type="branch" />
            <wire x2="2640" y1="1440" y2="1440" x1="2560" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1744" type="branch" />
            <wire x2="2176" y1="1744" y2="1744" x1="2080" />
        </branch>
        <branch name="dataIn(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1840" type="branch" />
            <wire x2="2176" y1="1840" y2="1840" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1904" type="branch" />
            <wire x2="2176" y1="1904" y2="1904" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1968" type="branch" />
            <wire x2="2176" y1="1968" y2="1968" x1="2080" />
        </branch>
        <branch name="dataOut(12)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="1840" type="branch" />
            <wire x2="2640" y1="1840" y2="1840" x1="2560" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2144" type="branch" />
            <wire x2="2176" y1="2144" y2="2144" x1="2080" />
        </branch>
        <branch name="dataIn(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2240" type="branch" />
            <wire x2="2176" y1="2240" y2="2240" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2304" type="branch" />
            <wire x2="2176" y1="2304" y2="2304" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2368" type="branch" />
            <wire x2="2176" y1="2368" y2="2368" x1="2080" />
        </branch>
        <branch name="dataOut(13)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="2240" type="branch" />
            <wire x2="2640" y1="2240" y2="2240" x1="2560" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2544" type="branch" />
            <wire x2="2176" y1="2544" y2="2544" x1="2080" />
        </branch>
        <branch name="dataIn(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2640" type="branch" />
            <wire x2="2176" y1="2640" y2="2640" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2704" type="branch" />
            <wire x2="2176" y1="2704" y2="2704" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2768" type="branch" />
            <wire x2="2176" y1="2768" y2="2768" x1="2080" />
        </branch>
        <branch name="dataOut(14)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="2640" type="branch" />
            <wire x2="2640" y1="2640" y2="2640" x1="2560" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2944" type="branch" />
            <wire x2="2176" y1="2944" y2="2944" x1="2080" />
        </branch>
        <branch name="dataIn(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="3040" type="branch" />
            <wire x2="2176" y1="3040" y2="3040" x1="2080" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="3104" type="branch" />
            <wire x2="2176" y1="3104" y2="3104" x1="2080" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="3168" type="branch" />
            <wire x2="2176" y1="3168" y2="3168" x1="2080" />
        </branch>
        <branch name="dataOut(15)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2640" y="3040" type="branch" />
            <wire x2="2640" y1="3040" y2="3040" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="880" y="304" name="Write" orien="R180" />
        <iomarker fontsize="28" x="880" y="368" name="CLK" orien="R180" />
        <branch name="dataOut(15:0)">
            <wire x2="3120" y1="240" y2="240" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3120" y="240" name="dataOut(15:0)" orien="R0" />
        <iomarker fontsize="28" x="880" y="144" name="int0" orien="R180" />
        <iomarker fontsize="28" x="880" y="544" name="int1" orien="R180" />
        <iomarker fontsize="28" x="880" y="944" name="int2" orien="R180" />
        <iomarker fontsize="28" x="880" y="1344" name="int3" orien="R180" />
        <branch name="dataIn(15:0)">
            <wire x2="480" y1="320" y2="320" x1="320" />
        </branch>
        <instance x="256" y="624" name="XLXI_38" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="480" y="480" type="branch" />
            <wire x2="480" y1="480" y2="480" x1="320" />
            <wire x2="320" y1="480" y2="496" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="320" name="dataIn(15:0)" orien="R180" />
        <instance x="3280" y="688" name="XLXI_40" orien="R0" />
        <branch name="dataOut(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="560" type="branch" />
            <wire x2="3280" y1="560" y2="560" x1="3200" />
        </branch>
        <branch name="dataOut(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="624" type="branch" />
            <wire x2="3280" y1="624" y2="624" x1="3200" />
        </branch>
        <branch name="XLXN_170">
            <wire x2="3600" y1="592" y2="592" x1="3536" />
            <wire x2="3760" y1="592" y2="592" x1="3600" />
            <wire x2="3760" y1="592" y2="736" x1="3760" />
        </branch>
        <instance x="3280" y="848" name="XLXI_41" orien="R0" />
        <branch name="dataOut(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="720" type="branch" />
            <wire x2="3280" y1="720" y2="720" x1="3200" />
        </branch>
        <branch name="dataOut(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="784" type="branch" />
            <wire x2="3280" y1="784" y2="784" x1="3200" />
        </branch>
        <instance x="3280" y="1008" name="XLXI_42" orien="R0" />
        <branch name="dataOut(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="880" type="branch" />
            <wire x2="3280" y1="880" y2="880" x1="3200" />
        </branch>
        <branch name="dataOut(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="944" type="branch" />
            <wire x2="3280" y1="944" y2="944" x1="3200" />
        </branch>
        <instance x="3280" y="1168" name="XLXI_43" orien="R0" />
        <branch name="dataOut(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="1040" type="branch" />
            <wire x2="3280" y1="1040" y2="1040" x1="3200" />
        </branch>
        <branch name="dataOut(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3200" y="1104" type="branch" />
            <wire x2="3280" y1="1104" y2="1104" x1="3200" />
        </branch>
        <branch name="XLXN_179">
            <wire x2="3600" y1="1072" y2="1072" x1="3536" />
            <wire x2="3760" y1="1072" y2="1072" x1="3600" />
            <wire x2="3760" y1="928" y2="1072" x1="3760" />
        </branch>
        <instance x="3760" y="992" name="XLXI_44" orien="R0" />
        <branch name="XLXN_181">
            <wire x2="3600" y1="752" y2="752" x1="3536" />
            <wire x2="3600" y1="752" y2="800" x1="3600" />
            <wire x2="3760" y1="800" y2="800" x1="3600" />
        </branch>
        <branch name="XLXN_182">
            <wire x2="3600" y1="912" y2="912" x1="3536" />
            <wire x2="3760" y1="864" y2="864" x1="3600" />
            <wire x2="3600" y1="864" y2="912" x1="3600" />
        </branch>
        <branch name="XLXN_184">
            <wire x2="4160" y1="832" y2="832" x1="4016" />
        </branch>
        <branch name="dataOut(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4080" y="768" type="branch" />
            <wire x2="4160" y1="768" y2="768" x1="4080" />
        </branch>
        <instance x="2176" y="896" name="XLXI_46" orien="R0" />
        <branch name="intLvl1">
            <wire x2="2176" y1="544" y2="544" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2080" y="544" name="intLvl1" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="768" type="branch" />
            <wire x2="896" y1="768" y2="768" x1="880" />
            <wire x2="976" y1="768" y2="768" x1="896" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="704" type="branch" />
            <wire x2="896" y1="704" y2="704" x1="880" />
            <wire x2="976" y1="704" y2="704" x1="896" />
        </branch>
        <branch name="dataIn(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="640" type="branch" />
            <wire x2="896" y1="640" y2="640" x1="880" />
            <wire x2="976" y1="640" y2="640" x1="896" />
        </branch>
        <branch name="int1">
            <wire x2="896" y1="544" y2="544" x1="880" />
            <wire x2="976" y1="544" y2="544" x1="896" />
        </branch>
        <instance x="976" y="896" name="XLXI_48" orien="R0" />
        <instance x="976" y="1696" name="XLXI_50" orien="R0" />
        <instance x="976" y="2896" name="XLXI_53" orien="R0" />
        <instance x="976" y="3296" name="XLXI_54" orien="R0" />
        <instance x="2176" y="1696" name="XLXI_57" orien="R0" />
        <instance x="2176" y="2096" name="XLXI_58" orien="R0" />
        <instance x="2176" y="2496" name="XLXI_59" orien="R0" />
        <instance x="2176" y="2896" name="XLXI_60" orien="R0" />
        <instance x="2176" y="3296" name="XLXI_61" orien="R0" />
        <instance x="976" y="496" name="XLXI_47" orien="R0" />
        <instance x="976" y="1296" name="XLXI_49" orien="R0" />
        <instance x="976" y="2096" name="XLXI_51" orien="R0" />
        <instance x="976" y="2496" name="XLXI_52" orien="R0" />
        <instance x="2176" y="1296" name="XLXI_56" orien="R0" />
        <instance x="2176" y="496" name="XLXI_55" orien="R0" />
        <branch name="RESET">
            <wire x2="976" y1="464" y2="464" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="864" type="branch" />
            <wire x2="976" y1="864" y2="864" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1264" type="branch" />
            <wire x2="976" y1="1264" y2="1264" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2464" type="branch" />
            <wire x2="976" y1="2464" y2="2464" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2864" type="branch" />
            <wire x2="976" y1="2864" y2="2864" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="3264" type="branch" />
            <wire x2="976" y1="3264" y2="3264" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="3264" type="branch" />
            <wire x2="2176" y1="3264" y2="3264" x1="2080" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2864" type="branch" />
            <wire x2="2176" y1="2864" y2="2864" x1="2080" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2464" type="branch" />
            <wire x2="2176" y1="2464" y2="2464" x1="2080" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1664" type="branch" />
            <wire x2="2176" y1="1664" y2="1664" x1="2080" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="464" type="branch" />
            <wire x2="2176" y1="464" y2="464" x1="2080" />
        </branch>
        <instance x="1904" y="960" name="XLXI_62" orien="R0" />
        <branch name="intLvl0">
            <wire x2="1888" y1="832" y2="832" x1="1840" />
            <wire x2="1904" y1="832" y2="832" x1="1888" />
        </branch>
        <branch name="XLXN_204">
            <wire x2="2176" y1="864" y2="864" x1="2160" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1840" y="896" type="branch" />
            <wire x2="1904" y1="896" y2="896" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1840" y="832" name="intLvl0" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="1664" type="branch" />
            <wire x2="976" y1="1664" y2="1664" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="2064" type="branch" />
            <wire x2="976" y1="2064" y2="2064" x1="880" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="2064" type="branch" />
            <wire x2="2176" y1="2064" y2="2064" x1="2080" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1264" type="branch" />
            <wire x2="2176" y1="1264" y2="1264" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="880" y="464" name="RESET" orien="R180" />
        <instance x="4160" y="896" name="XLXI_63" orien="R0" />
        <branch name="int">
            <wire x2="4480" y1="768" y2="768" x1="4416" />
        </branch>
        <iomarker fontsize="28" x="4480" y="768" name="int" orien="R0" />
        <branch name="dataOut(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4080" y="704" type="branch" />
            <wire x2="4160" y1="704" y2="704" x1="4080" />
        </branch>
    </sheet>
</drawing>