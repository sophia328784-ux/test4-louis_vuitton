package com.linkplay.alarm;

import com.linkplay.lpmdpkit.bean.LPAlarmList;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class AlarmUtil {

    public static final class AlarmContextHandlerImpl extends DefaultHandler {
        private LPAlarmList alarmInfo = new LPAlarmList();
        private StringBuffer buf;

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            this.buf.append(cArr, i2, i3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            if (str3.equals("Time")) {
                this.alarmInfo.setTime(this.buf.toString().trim());
            } else if (str3.equals("Trigger")) {
                if (this.buf.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_ONCE)) {
                    this.alarmInfo.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_ONCE);
                } else if (this.buf.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYWEEK)) {
                    this.alarmInfo.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYWEEK);
                } else if (this.buf.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYDAY)) {
                    this.alarmInfo.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYDAY);
                }
            } else if (str3.equals("Enable")) {
                boolean zEquals = this.buf.toString().trim().toString().equals("1");
                LPAlarmList lPAlarmList = this.alarmInfo;
                if (zEquals) {
                    lPAlarmList.setEnable(true);
                } else {
                    lPAlarmList.setEnable(false);
                }
            } else if (str3.equals("DaysSpecial")) {
                this.alarmInfo.setRepeat(this.buf.toString().trim());
            } else if (str3.equals("Context")) {
                this.alarmInfo.setContext(this.buf.toString().trim());
            } else if (str3.equals("Volume")) {
                this.alarmInfo.setVolume(this.buf.toString().trim());
            } else if (str3.equals("Method")) {
                String string = this.buf.toString().trim().toString();
                if (string.equals("PlayQueue")) {
                    this.alarmInfo.setType("PlayQueue");
                } else if (string.equals(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP)) {
                    this.alarmInfo.setType(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP);
                }
            } else if (str3.equals("Name")) {
                this.alarmInfo.setAlarmName(this.buf.toString().trim());
            }
            StringBuffer stringBuffer = this.buf;
            stringBuffer.delete(0, stringBuffer.length());
        }

        public LPAlarmList getAlarmInfo() {
            return this.alarmInfo;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            this.buf = new StringBuffer();
        }
    }

    public static LPAlarmList covert2AlarmInfo(String str) {
        try {
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            AlarmContextHandlerImpl alarmContextHandlerImpl = new AlarmContextHandlerImpl();
            sAXParserNewSAXParser.parse(new InputSource(new StringReader(str)), alarmContextHandlerImpl);
            return alarmContextHandlerImpl.getAlarmInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String encode(String str) {
        return str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("'", "&apos;").replace("\"", "&quot;");
    }

    public static List<LPAlarmList> parse(String str) {
        LPAlarmList lPAlarmListCovert2AlarmInfo;
        ArrayList arrayList = new ArrayList();
        try {
            String[] strArrSplit = str.replaceAll("<(/?)Item\\d+>", "<SPLITE_ITEM>").split("<SPLITE_ITEM>");
            strArrSplit[0] = null;
            strArrSplit[strArrSplit.length - 1] = null;
            for (String str2 : strArrSplit) {
                if (str2 != null && str2.length() > 10 && (lPAlarmListCovert2AlarmInfo = covert2AlarmInfo(str2)) != null) {
                    arrayList.add(lPAlarmListCovert2AlarmInfo);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
