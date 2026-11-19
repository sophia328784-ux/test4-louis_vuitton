package com.android.wiimu.model.cling_callback.renderingcontrol.alarm;

import com.linkplay.lpmdpkit.bean.LPAlarmList;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public class c {

    public static final class a extends DefaultHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private StringBuffer f22443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f22444b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f22445c = new b();

        public b a() {
            return this.f22445c;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            this.f22443a.append(cArr, i2, i3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            this.f22444b = this.f22443a.toString();
            if (str3.equals("Time")) {
                this.f22445c.d(this.f22443a.toString().trim());
            } else if (str3.equals("Trigger")) {
                boolean zEquals = this.f22443a.toString().trim().equals(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_ONCE);
                b bVar = this.f22445c;
                if (zEquals) {
                    bVar.a(b.c.Once);
                } else {
                    bVar.a(b.c.EveryDay);
                }
            } else if (str3.equals("Enable")) {
                boolean zEquals2 = this.f22443a.toString().trim().toString().equals("1");
                b bVar2 = this.f22445c;
                if (zEquals2) {
                    bVar2.a(b.a.Enable);
                } else {
                    bVar2.a(b.a.Disable);
                }
            } else if (str3.equals("DaysSpecial")) {
                this.f22445c.b(this.f22443a.toString().trim());
            } else if (str3.equals("Context")) {
                this.f22445c.a(this.f22443a.toString().trim());
            } else if (str3.equals("Volume")) {
                this.f22445c.a((int) Double.parseDouble(this.f22443a.toString().trim()));
            } else if (str3.equals("Method")) {
                String strTrim = this.f22443a.toString().trim();
                if (strTrim.equals("PlayUrl")) {
                    this.f22445c.a(b.EnumC0034b.PlayUrl);
                } else if (strTrim.equals("RunScript")) {
                    this.f22445c.a(b.EnumC0034b.RunScript);
                } else if (strTrim.equals("PlayQueue")) {
                    this.f22445c.a(b.EnumC0034b.PlayQueue);
                } else if (strTrim.equals("Stop")) {
                    this.f22445c.a(b.EnumC0034b.Stop);
                }
            } else if (str3.equals("Name")) {
                this.f22445c.c(this.f22443a.toString().trim());
            }
            StringBuffer stringBuffer = this.f22443a;
            stringBuffer.delete(0, stringBuffer.length());
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            this.f22443a = new StringBuffer();
        }
    }

    public static b a(String str) {
        try {
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            a aVar = new a();
            sAXParserNewSAXParser.parse(new InputSource(new StringReader(str)), aVar);
            return aVar.a();
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<b> b(String str) {
        b bVarA;
        ArrayList arrayList = new ArrayList();
        try {
            String[] strArrSplit = str.replaceAll("<(/?)Item\\d+>", "<SPLITE_ITEM>").split("<SPLITE_ITEM>");
            strArrSplit[0] = null;
            strArrSplit[strArrSplit.length - 1] = null;
            for (String str2 : strArrSplit) {
                if (str2 != null && str2.length() > 10 && (bVarA = a(str2)) != null && !bVarA.j().equals(com.android.wiimu.model.cling_callback.renderingcontrol.alarm.a.f22418a)) {
                    arrayList.add(bVarA);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
