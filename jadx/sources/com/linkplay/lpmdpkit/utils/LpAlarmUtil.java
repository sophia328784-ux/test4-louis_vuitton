package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPAlarmList;
import com.linkplay.medialib.ContentTree;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class LpAlarmUtil {
    private static final String TAG = "LpAlarmUtil";

    public static final class AlarmContextHandlerImpl extends DefaultHandler {
        private StringBuffer buf;
        private LPAlarmList mLpAlarmList = new LPAlarmList();

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) {
            this.buf.append(cArr, i2, i3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            if (str3.equals("Time")) {
                this.mLpAlarmList.setTime(this.buf.toString().trim());
            } else if (str3.equals("Trigger")) {
                if (this.buf.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_ONCE)) {
                    this.mLpAlarmList.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_ONCE);
                } else if (this.buf.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYWEEK)) {
                    this.mLpAlarmList.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYWEEK);
                } else if (this.buf.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYDAY)) {
                    this.mLpAlarmList.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYDAY);
                }
            } else if (str3.equals("Enable")) {
                boolean zEquals = this.buf.toString().trim().toString().equals("1");
                LPAlarmList lPAlarmList = this.mLpAlarmList;
                if (zEquals) {
                    lPAlarmList.setEnable(true);
                } else {
                    lPAlarmList.setEnable(false);
                }
            } else if (str3.equals("DaysSpecial")) {
                this.mLpAlarmList.setRepeat(this.buf.toString().trim());
            } else if (str3.equals("Context")) {
                this.mLpAlarmList.setContext(this.buf.toString().trim());
            } else if (str3.equals("Volume")) {
                this.mLpAlarmList.setVolume(this.buf.toString().trim());
            } else if (str3.equals("Method")) {
                String string = this.buf.toString().trim().toString();
                if (string.equals("PlayQueue")) {
                    this.mLpAlarmList.setType("PlayQueue");
                } else if (string.equals(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP)) {
                    this.mLpAlarmList.setType(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP);
                }
            } else if (str3.equals("Name")) {
                this.mLpAlarmList.setAlarmName(this.buf.toString().trim());
            }
            StringBuffer stringBuffer = this.buf;
            stringBuffer.delete(0, stringBuffer.length());
        }

        public LPAlarmList getAlarmClockList() {
            return this.mLpAlarmList;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() {
            this.buf = new StringBuffer();
        }
    }

    public static LPAlarmList covert2AlarmInfo(String str) {
        try {
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            AlarmContextHandlerImpl alarmContextHandlerImpl = new AlarmContextHandlerImpl();
            sAXParserNewSAXParser.parse(new InputSource(new StringReader(str)), alarmContextHandlerImpl);
            return alarmContextHandlerImpl.getAlarmClockList();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String encode(String str) {
        return TextUtils.isEmpty(str) ? str : str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("'", "&apos;").replace("\"", "&quot;");
    }

    public static String getAlarmXml(LPAlarmList lPAlarmList) {
        if (lPAlarmList == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder("<AlarmInfo><Name>");
        sb.append(encode(lPAlarmList.getAlarmName()));
        sb.append("</Name><Time>");
        sb.append(lPAlarmList.getTime());
        sb.append("</Time><Trigger>");
        String repeat = lPAlarmList.getRepeat();
        if (LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYDAY.equals(lPAlarmList.getTrigger()) && repeat != null && repeat.contains(ContentTree.ROOT_ID)) {
            lPAlarmList.setTrigger(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYWEEK);
        }
        sb.append(lPAlarmList.getTrigger());
        sb.append("</Trigger><DaysSpecial>");
        sb.append(repeat);
        sb.append("</DaysSpecial><Method>");
        sb.append(lPAlarmList.getType());
        sb.append("</Method><Context>");
        sb.append(encode(lPAlarmList.getContext()));
        sb.append("</Context><Volume>");
        sb.append(lPAlarmList.getVolume());
        sb.append("</Volume><Enable>");
        sb.append(lPAlarmList.isEnable() ? 1 : 0);
        sb.append("</Enable></AlarmInfo>");
        return sb.toString();
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
            return arrayList;
        } catch (Exception e2) {
            e2.printStackTrace();
            return arrayList;
        }
    }
}
