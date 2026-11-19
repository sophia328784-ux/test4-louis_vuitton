package com.android.wiimu.model.cling_callback.playqueue.xml;

import com.android.wiimu.model.cling_callback.playqueue.AlbumInfoXmlParse;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: com.android.wiimu.model.cling_callback.playqueue.xml.a$a, reason: collision with other inner class name */
    public static class C0033a extends DefaultHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f22405a = "TrackRoot";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f22406b = "<TrackRoot>";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f22407c = "</TrackRoot>";
        c.a d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c.b f22408e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        b.a f22409f = null;
        StringBuffer g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        StringBuffer f22410h = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        StringBuffer f22411i = null;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        String f22412j = null;

        public c.a a() {
            return this.d;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            if (this.f22412j != null) {
                String strTrim = new String(cArr, i2, i3).trim();
                if (this.f22412j.equals("PlayList")) {
                    this.d = new c.a();
                    this.f22411i = new StringBuffer();
                    return;
                }
                if (this.f22412j.equals("ListName")) {
                    this.f22411i.append(strTrim);
                    return;
                }
                if (this.f22412j.equals("ListInfo")) {
                    return;
                }
                if (this.f22412j.equals("SourceName")) {
                    this.f22408e.f21001c = strTrim;
                    return;
                }
                if (this.f22412j.equals("SearchUrl")) {
                    this.f22408e.d = strTrim;
                    return;
                }
                if (this.f22412j.equals("TrackNumber")) {
                    try {
                        this.f22408e.f21004h = Integer.parseInt(strTrim);
                        return;
                    } catch (Exception unused) {
                        this.f22408e.f21004h = 0;
                        return;
                    }
                }
                if (this.f22412j.equals("Quality")) {
                    try {
                        this.f22408e.f21002e = Integer.parseInt(strTrim);
                        return;
                    } catch (Exception unused2) {
                        this.f22408e.f21002e = 0;
                        return;
                    }
                }
                if (this.f22412j.equals("UpdateTime")) {
                    try {
                        this.f22408e.f21003f = Long.parseLong(strTrim);
                        return;
                    } catch (Exception unused3) {
                        this.f22408e.f21003f = 0L;
                        return;
                    }
                }
                if (this.f22412j.equals("LastPlayIndex")) {
                    try {
                        this.f22408e.g = Integer.parseInt(strTrim);
                        return;
                    } catch (Exception unused4) {
                        this.f22408e.g = 0;
                        return;
                    }
                }
                if (this.f22412j.equals("Tracks")) {
                    this.d.f20999a = new ArrayList();
                } else if (this.f22412j.equals("TrackRoot")) {
                    this.f22410h = new StringBuffer();
                    this.g = new StringBuffer();
                } else if (this.f22412j.equals("URL")) {
                    this.f22410h.append(strTrim);
                } else if (this.f22412j.equals("Metadata")) {
                    this.g.append(strTrim);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
            super.endDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            b.a aVar;
            super.endElement(str, str2, str3);
            String str4 = this.f22412j;
            if (str4 != null) {
                if (str4.equals("ListName")) {
                    c.b bVar = new c.b();
                    this.f22408e = bVar;
                    bVar.f21000b = this.f22411i.toString();
                }
                if (this.f22412j.equals("ListInfo")) {
                    this.d.getClass();
                    return;
                }
                if (!this.f22412j.equals("Metadata")) {
                    if (!this.f22412j.equals("TrackRoot") || (aVar = this.f22409f) == null) {
                        return;
                    }
                    this.d.f20999a.add(aVar);
                    return;
                }
                try {
                    b.a aVarA = AlbumInfoXmlParse.a(c.a(this.g.toString()));
                    this.f22409f = aVarA;
                    aVarA.g = this.f22410h.toString();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            super.startDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            this.f22412j = str3;
        }
    }

    public static c.a a(String str) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.replaceAll("<Track[0-9]+>", "<TrackRoot>").replaceAll("</Track[0-9]+>", "</TrackRoot>").getBytes("UTF-8"));
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            C0033a c0033a = new C0033a();
            sAXParserNewSAXParser.parse(byteArrayInputStream, c0033a);
            byteArrayInputStream.close();
            return c0033a.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
