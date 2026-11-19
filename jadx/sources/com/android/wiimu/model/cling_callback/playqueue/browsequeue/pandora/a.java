package com.android.wiimu.model.cling_callback.playqueue.browsequeue.pandora;

import com.android.wiimu.model.cling_callback.playqueue.browsequeue.d;
import com.android.wiimu.model.cling_callback.playqueue.browsequeue.f;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class a extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f22386c;
    StringBuffer d;

    public a(String str) {
        super(str);
        this.f22386c = null;
        this.d = null;
        this.f22360b = new c();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.f22386c != null) {
            String str = new String(cArr, i2, i3);
            if (this.f22386c.equals("Name")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("ListName")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("ListInfo")) {
                return;
            }
            if (this.f22386c.equals("Source")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("SearchUrl")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("Quality")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("UpdateTime")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("LastPlayIndex")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("TrackNumber")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("Http_proxy")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("Login_username")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("Login_password")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22386c.equals("StationID")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22386c.equals("MarkSearch")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22386c.equals("PicUrl")) {
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
            if (str3.equals("ListName")) {
                StringBuffer stringBuffer3 = this.d;
                if (stringBuffer3 != null) {
                    this.f22360b.Name = stringBuffer3.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("ListInfo")) {
                return;
            }
            if (str3.equals("Source")) {
                StringBuffer stringBuffer4 = this.d;
                if (stringBuffer4 != null) {
                    this.f22360b.Source = stringBuffer4.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("SearchUrl")) {
                StringBuffer stringBuffer5 = this.d;
                if (stringBuffer5 != null) {
                    this.f22360b.SearchUrl = stringBuffer5.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Quality")) {
                StringBuffer stringBuffer6 = this.d;
                if (stringBuffer6 != null) {
                    this.f22360b.Quality = stringBuffer6.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("UpdateTime")) {
                StringBuffer stringBuffer7 = this.d;
                if (stringBuffer7 != null) {
                    this.f22360b.UpdateTime = stringBuffer7.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("LastPlayIndex")) {
                StringBuffer stringBuffer8 = this.d;
                if (stringBuffer8 != null) {
                    this.f22360b.LastPlayIndex = stringBuffer8.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("TrackNumber")) {
                StringBuffer stringBuffer9 = this.d;
                if (stringBuffer9 != null) {
                    this.f22360b.TrackNumber = stringBuffer9.toString().trim();
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Http_proxy")) {
                StringBuffer stringBuffer10 = this.d;
                if (stringBuffer10 != null) {
                    f fVar = this.f22360b;
                    if (fVar instanceof c) {
                        ((c) fVar).f22387a = stringBuffer10.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Login_username")) {
                StringBuffer stringBuffer11 = this.d;
                if (stringBuffer11 != null) {
                    f fVar2 = this.f22360b;
                    if (fVar2 instanceof c) {
                        ((c) fVar2).f22388b = stringBuffer11.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Login_password")) {
                StringBuffer stringBuffer12 = this.d;
                if (stringBuffer12 != null) {
                    f fVar3 = this.f22360b;
                    if (fVar3 instanceof c) {
                        ((c) fVar3).f22389c = stringBuffer12.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("StationID")) {
                StringBuffer stringBuffer13 = this.d;
                if (stringBuffer13 != null) {
                    f fVar4 = this.f22360b;
                    if (fVar4 instanceof c) {
                        ((c) fVar4).d = stringBuffer13.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("MarkSearch")) {
                StringBuffer stringBuffer14 = this.d;
                if (stringBuffer14 != null) {
                    f fVar5 = this.f22360b;
                    if (fVar5 instanceof c) {
                        ((c) fVar5).f22390e = stringBuffer14.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (!str3.equals("PicUrl") || (stringBuffer = this.d) == null) {
                return;
            }
            f fVar6 = this.f22360b;
            if (fVar6 instanceof c) {
                ((c) fVar6).PicUrl = stringBuffer.toString().trim();
            }
            this.d = new StringBuffer();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.f22386c = str3;
    }
}
