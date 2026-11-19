package com.android.wiimu.model.cling_callback.playqueue.keymappingqueue;

import com.android.wiimu.model.cling_callback.playqueue.xml.c;
import com.linkplay.log.LinkplayLog;
import defpackage.n00;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f22397a = "KeyMappingQueue";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f22398b = 20;

    /* JADX INFO: loaded from: classes.dex */
    public static class a extends DefaultHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a f22400b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a> f22399a = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        StringBuffer f22401c = new StringBuffer();
        StringBuffer d = new StringBuffer();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        StringBuffer f22402e = new StringBuffer();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        StringBuffer f22403f = new StringBuffer();
        StringBuffer g = new StringBuffer();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f22404h = null;

        public List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a> a() {
            return this.f22399a;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            super.characters(cArr, i2, i3);
            if (this.f22404h != null) {
                String str = new String(cArr, i2, i3);
                if (this.f22404h.equals("Key")) {
                    return;
                }
                if (this.f22404h.equals("Name")) {
                    this.f22401c.append(str);
                    return;
                }
                if (this.f22404h.equals("Url")) {
                    this.d.append(str);
                    return;
                }
                if (this.f22404h.equals("Metadata")) {
                    this.f22403f.append(str);
                } else if (this.f22404h.equals("PicUrl")) {
                    this.f22402e.append(str);
                } else if (this.f22404h.equals("Source")) {
                    this.g.append(str);
                }
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endDocument() throws SAXException {
            super.endDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            if (str3 == null || this.f22400b == null) {
                return;
            }
            if (str3.equals("Key")) {
                String str4 = this.f22400b.f22393b;
                if (str4 != null && str4.length() > 0) {
                    this.f22400b.f22396f = true;
                }
                this.f22399a.add(this.f22400b);
                this.f22400b = null;
                return;
            }
            if (str3.equals("Name")) {
                this.f22400b.f22392a = c.a(this.f22401c.toString());
                return;
            }
            if (str3.equals("Url")) {
                this.f22400b.f22393b = c.a(this.d.toString());
                return;
            }
            if (str3.equals("Metadata")) {
                this.f22400b.d = this.f22403f.toString();
            } else if (str3.equals("PicUrl")) {
                this.f22400b.f22394c = this.f22402e.toString();
            } else if (str3.equals("Source")) {
                this.f22400b.f22395e = this.g.toString();
            }
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            super.startDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            this.f22404h = str3;
            if (str3 != null) {
                if (str3.equals("Key")) {
                    this.f22400b = new com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a();
                    return;
                }
                if (str3.equals("Name")) {
                    this.f22401c = new StringBuffer();
                    return;
                }
                if (str3.equals("Url")) {
                    this.d = new StringBuffer();
                    return;
                }
                if (str3.equals("Metadata")) {
                    this.f22403f = new StringBuffer();
                } else if (str3.equals("PicUrl")) {
                    this.f22402e = new StringBuffer();
                } else if (str3.equals("Source")) {
                    this.g = new StringBuffer();
                }
            }
        }
    }

    private b() {
    }

    public static String a(List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a> list) {
        StringBuilder sbU = n00.u("<?xml version=\"1.0\"?>".concat("<KeyList> "), "<ListName>");
        sbU.append(c.b(f22397a));
        sbU.append("</ListName>");
        String strConcat = sbU.toString().concat("<MaxNumber>20</MaxNumber> ");
        if (list != null) {
            int i2 = 0;
            while (i2 < list.size()) {
                int i3 = i2 + 1;
                strConcat = strConcat + "<Key" + i3 + ">" + list.get(i2).a() + "</Key" + i3 + ">";
                i2 = i3;
            }
        }
        return strConcat.concat("</KeyList>");
    }

    public static String b(List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a> list) {
        StringBuilder sbU = n00.u("<?xml version=\"1.0\"?>".concat("<KeyList> "), "<ListName>");
        sbU.append(c.b(f22397a));
        sbU.append("</ListName>");
        String strConcat = sbU.toString().concat("<ActionFlag>1</ActionFlag>").concat("<MaxNumber>20</MaxNumber> ");
        if (list != null) {
            int i2 = 0;
            while (i2 < list.size()) {
                int i3 = i2 + 1;
                strConcat = strConcat + "<Key" + i3 + ">" + list.get(i2).a() + "</Key" + i3 + ">";
                i2 = i3;
            }
        }
        return strConcat.concat("</KeyList>");
    }

    public static String a() {
        return a((List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a>) null);
    }

    public static synchronized List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a> a(String str) throws Exception {
        String strReplaceAll;
        strReplaceAll = str.replaceAll("<Key\\d{1,2}>", "<Key>").replaceAll("</Key\\d{1,2}>", "</Key>");
        LinkplayLog.i("UPNP-SEARCH", "keymapping xmlContext: " + strReplaceAll);
        return b(strReplaceAll);
    }

    private static List<com.android.wiimu.model.cling_callback.playqueue.keymappingqueue.a> b(String str) throws ParserConfigurationException, SAXException, IOException {
        SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
        a aVar = new a();
        sAXParserNewSAXParser.parse(new ByteArrayInputStream(str.getBytes()), aVar);
        return aVar.a();
    }
}
