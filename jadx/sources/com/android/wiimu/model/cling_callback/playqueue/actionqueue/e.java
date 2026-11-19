package com.android.wiimu.model.cling_callback.playqueue.actionqueue;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.android.wiimu.model.cling_callback.playqueue.browsequeue.d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f22349c;
    StringBuffer d;

    public e(String str) {
        super(str);
        this.f22349c = null;
        this.d = null;
        this.f22360b = new f();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.f22349c != null) {
            String str = new String(cArr, i2, i3);
            if (this.f22349c.equals("PresetName")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(com.android.wiimu.model.cling_callback.playqueue.xml.c.a(str));
                return;
            }
            if (this.f22349c.equals("Source")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22349c.equals("PresetKey")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22349c.equals("PressType")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22349c.equals("Volume")) {
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
            if (str3.equals("PresetName")) {
                StringBuffer stringBuffer2 = this.d;
                if (stringBuffer2 != null) {
                    ((f) this.f22360b).PresetName = com.android.wiimu.model.cling_callback.playqueue.xml.c.a(stringBuffer2.toString().trim());
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("PresetKey")) {
                StringBuffer stringBuffer3 = this.d;
                if (stringBuffer3 != null) {
                    ((f) this.f22360b).PresetKey = stringBuffer3.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Source")) {
                StringBuffer stringBuffer4 = this.d;
                if (stringBuffer4 != null) {
                    ((f) this.f22360b).Source = stringBuffer4.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("PressType")) {
                StringBuffer stringBuffer5 = this.d;
                if (stringBuffer5 != null) {
                    ((f) this.f22360b).PressType = stringBuffer5.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (!str3.equals("Volume") || (stringBuffer = this.d) == null) {
                return;
            }
            ((f) this.f22360b).f22350a = stringBuffer.toString().trim();
            this.d = new StringBuffer();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.f22349c = str3;
    }
}
