package com.android.wiimu.model.cling_callback.playqueue.browsequeue.ttpod;

import com.android.wiimu.model.cling_callback.playqueue.browsequeue.d;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class b extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f22391c;
    StringBuffer d;

    public b(String str) {
        super(str);
        this.f22391c = null;
        this.d = null;
        this.f22360b = new a();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.f22391c != null) {
            String str = new String(cArr, i2, i3);
            if (this.f22391c.equals("Name")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22391c.equals("ListInfo")) {
                return;
            }
            if (this.f22391c.equals("Source")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22391c.equals("SearchUrl")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22391c.equals("Quality")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22391c.equals("UpdateTime")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22391c.equals("LastPlayIndex")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22391c.equals("TrackNumber")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        super.endDocument();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        StringBuffer stringBuffer;
        super.endElement(str, str2, str3);
        if (str3 != null) {
            if (str3.equals("Name")) {
                StringBuffer stringBuffer2 = this.d;
                if (stringBuffer2 != null) {
                    this.f22360b.Name = stringBuffer2.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("ListInfo")) {
                return;
            }
            if (str3.equals("Source")) {
                StringBuffer stringBuffer3 = this.d;
                if (stringBuffer3 != null) {
                    this.f22360b.Source = stringBuffer3.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("SearchUrl")) {
                StringBuffer stringBuffer4 = this.d;
                if (stringBuffer4 != null) {
                    this.f22360b.SearchUrl = stringBuffer4.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Quality")) {
                StringBuffer stringBuffer5 = this.d;
                if (stringBuffer5 != null) {
                    this.f22360b.Quality = stringBuffer5.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("UpdateTime")) {
                StringBuffer stringBuffer6 = this.d;
                if (stringBuffer6 != null) {
                    this.f22360b.UpdateTime = stringBuffer6.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("LastPlayIndex")) {
                StringBuffer stringBuffer7 = this.d;
                if (stringBuffer7 != null) {
                    this.f22360b.LastPlayIndex = stringBuffer7.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (!str3.equals("TrackNumber") || (stringBuffer = this.d) == null) {
                return;
            }
            this.f22360b.TrackNumber = stringBuffer.toString().trim();
            this.d = new StringBuffer();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.f22391c = str3;
    }
}
