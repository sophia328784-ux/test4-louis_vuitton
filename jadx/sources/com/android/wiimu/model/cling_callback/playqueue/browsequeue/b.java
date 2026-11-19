package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import com.android.wiimu.model.cling_callback.playqueue.AlbumInfoXmlParse;
import java.io.ByteArrayInputStream;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public class b extends DefaultHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f22364e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    StringBuffer f22362b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    StringBuffer f22363c = null;
    StringBuffer d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f22365f = null;
    StringBuffer g = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b.a f22361a = new b.a();

    public b(String str) {
        this.f22364e = str;
    }

    public b.a a() {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.f22364e.getBytes("utf-8"));
            SAXParserFactory.newInstance().newSAXParser().parse(byteArrayInputStream, this);
            byteArrayInputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.f22361a;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.f22365f != null) {
            String str = new String(cArr, i2, i3);
            if (this.f22365f.equals("URL")) {
                if (this.f22362b == null) {
                    this.f22362b = new StringBuffer();
                }
                this.f22362b.append(str);
            } else if (this.f22365f.equals("Metadata")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22365f.equals("Source")) {
                if (this.f22363c == null) {
                    this.f22363c = new StringBuffer();
                }
                this.f22363c.append(str);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        super.endElement(str, str2, str3);
        if (str3 == null || !str3.equals("ListRoot")) {
            return;
        }
        try {
            this.f22361a.a(AlbumInfoXmlParse.a(com.android.wiimu.model.cling_callback.playqueue.xml.c.a(this.d.toString())));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f22361a.g = this.f22362b.toString();
        StringBuffer stringBuffer = this.f22363c;
        if (stringBuffer != null) {
            this.f22361a.f20673i = stringBuffer.toString();
        }
        this.d = null;
        this.f22363c = null;
        this.f22362b = null;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.f22365f = str3;
    }
}
