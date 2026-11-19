package com.android.wiimu.model.cling_callback.playqueue.xml;

import com.android.wiimu.model.IWiimuPlayQueueType;
import java.io.ByteArrayInputStream;
import java.util.LinkedHashMap;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public class b {

    public static class a extends DefaultHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f22413a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c.c f22414b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f22415c = -1;
        c.b d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final String f22416e = "ListRoot";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f22417f = "<ListRoot>";
        final String g = "</ListRoot>";

        public c.c a() {
            return this.f22414b;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            if (this.f22413a != null) {
                String strTrim = new String(cArr, i2, i3).trim();
                if (this.f22413a.equals("PlayQueue")) {
                    this.f22414b = new c.c();
                    return;
                }
                if (this.f22413a.equals(IWiimuPlayQueueType.ExtTotalQueue)) {
                    c.c cVar = this.f22414b;
                    Integer.parseInt(strTrim);
                    cVar.getClass();
                    return;
                }
                if (this.f22413a.equals("CurrentPlayList")) {
                    this.f22415c = 0;
                    return;
                }
                if (this.f22413a.equals("Name")) {
                    int i4 = this.f22415c;
                    if (i4 == 0) {
                        this.f22414b.getClass();
                        this.f22415c = i4 + 1;
                        return;
                    } else {
                        c.b bVar = this.d;
                        if (bVar != null) {
                            bVar.f21000b = strTrim;
                            return;
                        }
                        return;
                    }
                }
                if (this.f22413a.equals("ListRoot")) {
                    this.d = new c.b();
                    return;
                }
                if (this.f22413a.equals("ListInfo")) {
                    return;
                }
                if (this.f22413a.equals("Source")) {
                    this.d.f21001c = strTrim;
                    return;
                }
                if (this.f22413a.equals("SearchUrl")) {
                    this.d.d = strTrim;
                    return;
                }
                if (this.f22413a.equals("Quality")) {
                    this.d.f21002e = Integer.parseInt(strTrim);
                    return;
                }
                if (this.f22413a.equals("UpdateTime")) {
                    this.d.f21003f = Long.parseLong(strTrim);
                } else if (this.f22413a.equals("LastPlayIndex")) {
                    this.d.g = Integer.parseInt(strTrim);
                } else if (this.f22413a.equals("TrackNumber")) {
                    this.d.f21004h = Integer.parseInt(strTrim);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            this.f22413a = str3;
            if (str3.equals("ListRoot")) {
                LinkedHashMap linkedHashMap = this.f22414b.f21005a;
                c.b bVar = this.d;
                linkedHashMap.put(bVar.f21000b, bVar);
            }
            this.f22413a = null;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            this.f22413a = str3;
        }
    }

    public static synchronized c.c a(String str) {
        a aVar;
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.replaceAll("<List[0-9]+>", "<ListRoot>").replaceAll("</List[0-9]+>", "</ListRoot>").getBytes("utf-8"));
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            aVar = new a();
            sAXParserNewSAXParser.parse(byteArrayInputStream, aVar);
            byteArrayInputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
        return aVar.a();
    }
}
