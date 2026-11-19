package com.android.wiimu.model.cling_callback.playqueue.actionqueue;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.android.wiimu.model.cling_callback.playqueue.browsequeue.d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f22351c;
    StringBuffer d;

    public g(String str) {
        super(str);
        this.f22351c = null;
        this.d = null;
        this.f22360b = new h();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.f22351c != null) {
            String str = new String(cArr, i2, i3);
            if (this.f22351c.equals("PresetName")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("Source")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("PresetKey")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("PressType")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("Volume")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("SearchUrl")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("Login_username")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("StationID")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("Group_name")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("SrcParent")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("AutoGenerate")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("StationLimit")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("MarkSearch")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("Quality")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("UpdateTime")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("LastPlayIndex")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22351c.equals("RealIndex")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22351c.equals("TrackNumber")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22351c.equals("SwitchPageMode")) {
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
            if (str3.equals("Source")) {
                StringBuffer stringBuffer2 = this.d;
                if (stringBuffer2 != null) {
                    ((h) this.f22360b).Source = stringBuffer2.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("PressType")) {
                StringBuffer stringBuffer3 = this.d;
                if (stringBuffer3 != null) {
                    ((h) this.f22360b).PressType = stringBuffer3.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Volume")) {
                StringBuffer stringBuffer4 = this.d;
                if (stringBuffer4 != null) {
                    ((h) this.f22360b).f22352a = stringBuffer4.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("SearchUrl")) {
                StringBuffer stringBuffer5 = this.d;
                if (stringBuffer5 != null) {
                    ((h) this.f22360b).SearchUrl = stringBuffer5.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Login_username")) {
                StringBuffer stringBuffer6 = this.d;
                if (stringBuffer6 != null) {
                    ((h) this.f22360b).f22353b = stringBuffer6.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("StationID")) {
                StringBuffer stringBuffer7 = this.d;
                if (stringBuffer7 != null) {
                    ((h) this.f22360b).f22354c = stringBuffer7.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Group_name")) {
                StringBuffer stringBuffer8 = this.d;
                if (stringBuffer8 != null) {
                    ((h) this.f22360b).d = stringBuffer8.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("SrcParent")) {
                StringBuffer stringBuffer9 = this.d;
                if (stringBuffer9 != null) {
                    ((h) this.f22360b).SrcParent = stringBuffer9.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("AutoGenerate")) {
                StringBuffer stringBuffer10 = this.d;
                if (stringBuffer10 != null) {
                    ((h) this.f22360b).f22355e = stringBuffer10.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("StationLimit")) {
                StringBuffer stringBuffer11 = this.d;
                if (stringBuffer11 != null) {
                    ((h) this.f22360b).f22356f = stringBuffer11.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("MarkSearch")) {
                StringBuffer stringBuffer12 = this.d;
                if (stringBuffer12 != null) {
                    ((h) this.f22360b).g = stringBuffer12.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Quality")) {
                StringBuffer stringBuffer13 = this.d;
                if (stringBuffer13 != null) {
                    ((h) this.f22360b).Quality = stringBuffer13.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("UpdateTime")) {
                StringBuffer stringBuffer14 = this.d;
                if (stringBuffer14 != null) {
                    ((h) this.f22360b).UpdateTime = stringBuffer14.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("LastPlayIndex")) {
                StringBuffer stringBuffer15 = this.d;
                if (stringBuffer15 != null) {
                    ((h) this.f22360b).LastPlayIndex = stringBuffer15.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("RealIndex")) {
                StringBuffer stringBuffer16 = this.d;
                if (stringBuffer16 != null) {
                    ((h) this.f22360b).f22357h = stringBuffer16.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("TrackNumber")) {
                StringBuffer stringBuffer17 = this.d;
                if (stringBuffer17 != null) {
                    ((h) this.f22360b).TrackNumber = stringBuffer17.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (!str3.equals("SwitchPageMode") || (stringBuffer = this.d) == null) {
                return;
            }
            ((h) this.f22360b).f22358i = stringBuffer.toString().trim();
            this.d = new StringBuffer();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.f22351c = str3;
    }
}
