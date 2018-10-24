<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="addra(9:0)" />
        <signal name="dina(15:0)" />
        <signal name="wea(0:0)" />
        <signal name="clka" />
        <signal name="ALUSrc" />
        <signal name="MemtoReg" />
        <signal name="RegDst" />
        <signal name="RegWrite" />
        <signal name="MemRead" />
        <signal name="MemWrite" />
        <signal name="Branch" />
        <signal name="Reset" />
        <signal name="CLK" />
        <signal name="douta(15:0)">
        </signal>
        <signal name="douta(5:0)" />
        <port polarity="Input" name="addra(9:0)" />
        <port polarity="Input" name="dina(15:0)" />
        <port polarity="Input" name="wea(0:0)" />
        <port polarity="Input" name="clka" />
        <port polarity="Output" name="ALUSrc" />
        <port polarity="Output" name="MemtoReg" />
        <port polarity="Output" name="RegDst" />
        <port polarity="Output" name="RegWrite" />
        <port polarity="Output" name="MemRead" />
        <port polarity="Output" name="MemWrite" />
        <port polarity="Output" name="Branch" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="CLK" />
        <blockdef name="blockmemory16kx1">
            <timestamp>2018-10-19T18:32:59</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="MIPS_control_unit">
            <timestamp>2018-10-19T12:1:49</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="blockmemory16kx1" name="XLXI_1">
            <blockpin signalname="addra(9:0)" name="addra(9:0)" />
            <blockpin signalname="dina(15:0)" name="dina(15:0)" />
            <blockpin signalname="wea(0:0)" name="wea(0:0)" />
            <blockpin signalname="clka" name="clka" />
            <blockpin signalname="douta(15:0)" name="douta(15:0)" />
        </block>
        <block symbolname="MIPS_control_unit" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="douta(5:0)" name="Opcode(5:0)" />
            <blockpin signalname="ALUSrc" name="ALUSrc" />
            <blockpin signalname="MemtoReg" name="MemtoReg" />
            <blockpin signalname="RegDst" name="RegDst" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="MemRead" name="MemRead" />
            <blockpin signalname="MemWrite" name="MemWrite" />
            <blockpin signalname="Branch" name="Branch" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="1120" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1616" y="1600" name="XLXI_2" orien="R0">
        </instance>
        <branch name="addra(9:0)">
            <wire x2="752" y1="1200" y2="1200" x1="688" />
        </branch>
        <branch name="dina(15:0)">
            <wire x2="752" y1="1232" y2="1232" x1="688" />
        </branch>
        <branch name="wea(0:0)">
            <wire x2="752" y1="1328" y2="1328" x1="688" />
        </branch>
        <branch name="clka">
            <wire x2="752" y1="1392" y2="1392" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="1200" name="addra(9:0)" orien="R180" />
        <iomarker fontsize="28" x="688" y="1232" name="dina(15:0)" orien="R180" />
        <iomarker fontsize="28" x="688" y="1328" name="wea(0:0)" orien="R180" />
        <iomarker fontsize="28" x="688" y="1392" name="clka" orien="R180" />
        <branch name="ALUSrc">
            <wire x2="2032" y1="1184" y2="1184" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1184" name="ALUSrc" orien="R0" />
        <branch name="MemtoReg">
            <wire x2="2032" y1="1248" y2="1248" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1248" name="MemtoReg" orien="R0" />
        <branch name="RegDst">
            <wire x2="2032" y1="1312" y2="1312" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1312" name="RegDst" orien="R0" />
        <branch name="RegWrite">
            <wire x2="2032" y1="1376" y2="1376" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1376" name="RegWrite" orien="R0" />
        <branch name="MemRead">
            <wire x2="2032" y1="1440" y2="1440" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1440" name="MemRead" orien="R0" />
        <branch name="MemWrite">
            <wire x2="2032" y1="1504" y2="1504" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1504" name="MemWrite" orien="R0" />
        <branch name="Branch">
            <wire x2="2032" y1="1568" y2="1568" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1568" name="Branch" orien="R0" />
        <branch name="Reset">
            <wire x2="1616" y1="1376" y2="1376" x1="1488" />
        </branch>
        <branch name="CLK">
            <wire x2="1616" y1="1184" y2="1184" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1376" name="Reset" orien="R180" />
        <iomarker fontsize="28" x="1488" y="1184" name="CLK" orien="R180" />
        <branch name="douta(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1264" type="branch" />
            <wire x2="1360" y1="1200" y2="1200" x1="1328" />
            <wire x2="1360" y1="1200" y2="1264" x1="1360" />
            <wire x2="1392" y1="1264" y2="1264" x1="1360" />
        </branch>
        <branch name="douta(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="1568" type="branch" />
            <wire x2="1616" y1="1568" y2="1568" x1="1552" />
        </branch>
    </sheet>
</drawing>