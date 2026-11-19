package com.android.wiimu.model.cling_callback.playqueue.browsequeue.douban;

import com.android.wiimu.model.cling_callback.playqueue.browsequeue.d;
import com.android.wiimu.model.cling_callback.playqueue.browsequeue.f;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class a extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f22369c;
    StringBuffer d;

    public a(String str) {
        super(str);
        this.f22369c = null;
        this.d = null;
        this.f22360b = new b();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.f22369c != null) {
            String str = new String(cArr, i2, i3);
            if (this.f22369c.equals("Name")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Source")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("SearchUrl")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("PicUrl")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Quality")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("UpdateTime")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("LastPlayIndex")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("TrackNumber")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Login_username")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Login_password")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("AutoGenerate")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("StationLimit")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("MarkSearch")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("StationID")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Description")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Group_name")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Collected")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("MaxTrackNumber")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("CurrentPage")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("TotalPages")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Tracks")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("Icon")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("UserID")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("LikeNum")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("BannedNum")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
                return;
            }
            if (this.f22369c.equals("PlayedNum")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22369c.equals("ProStatus")) {
                if (this.d == null) {
                    this.d = new StringBuffer();
                }
                this.d.append(str);
            } else if (this.f22369c.equals("ProExprieDate")) {
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
            if (str3.equals("PicUrl")) {
                StringBuffer stringBuffer5 = this.d;
                if (stringBuffer5 != null) {
                    f fVar = this.f22360b;
                    if (fVar instanceof b) {
                        ((b) fVar).PicUrl = stringBuffer5.toString().trim();
                    }
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
            if (str3.equals("Login_username")) {
                StringBuffer stringBuffer10 = this.d;
                if (stringBuffer10 != null) {
                    f fVar2 = this.f22360b;
                    if (fVar2 instanceof b) {
                        ((b) fVar2).f22370a = stringBuffer10.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Login_password")) {
                StringBuffer stringBuffer11 = this.d;
                if (stringBuffer11 != null) {
                    f fVar3 = this.f22360b;
                    if (fVar3 instanceof b) {
                        ((b) fVar3).f22371b = stringBuffer11.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("AutoGenerate")) {
                StringBuffer stringBuffer12 = this.d;
                if (stringBuffer12 != null) {
                    f fVar4 = this.f22360b;
                    if (fVar4 instanceof b) {
                        ((b) fVar4).f22372c = stringBuffer12.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("StationLimit")) {
                StringBuffer stringBuffer13 = this.d;
                if (stringBuffer13 != null) {
                    f fVar5 = this.f22360b;
                    if (fVar5 instanceof b) {
                        ((b) fVar5).d = stringBuffer13.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("MarkSearch")) {
                StringBuffer stringBuffer14 = this.d;
                if (stringBuffer14 != null) {
                    f fVar6 = this.f22360b;
                    if (fVar6 instanceof b) {
                        ((b) fVar6).f22373e = stringBuffer14.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("StationID")) {
                StringBuffer stringBuffer15 = this.d;
                if (stringBuffer15 != null) {
                    f fVar7 = this.f22360b;
                    if (fVar7 instanceof b) {
                        ((b) fVar7).f22374f = stringBuffer15.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Description")) {
                StringBuffer stringBuffer16 = this.d;
                if (stringBuffer16 != null) {
                    f fVar8 = this.f22360b;
                    if (fVar8 instanceof b) {
                        ((b) fVar8).g = stringBuffer16.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Group_name")) {
                StringBuffer stringBuffer17 = this.d;
                if (stringBuffer17 != null) {
                    f fVar9 = this.f22360b;
                    if (fVar9 instanceof b) {
                        ((b) fVar9).f22375h = stringBuffer17.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Collected")) {
                StringBuffer stringBuffer18 = this.d;
                if (stringBuffer18 != null) {
                    f fVar10 = this.f22360b;
                    if (fVar10 instanceof b) {
                        ((b) fVar10).f22376i = stringBuffer18.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("MaxTrackNumber")) {
                StringBuffer stringBuffer19 = this.d;
                if (stringBuffer19 != null) {
                    f fVar11 = this.f22360b;
                    if (fVar11 instanceof b) {
                        ((b) fVar11).f22377j = stringBuffer19.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("CurrentPage")) {
                StringBuffer stringBuffer20 = this.d;
                if (stringBuffer20 != null) {
                    f fVar12 = this.f22360b;
                    if (fVar12 instanceof b) {
                        ((b) fVar12).f22378k = stringBuffer20.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("TotalPages")) {
                StringBuffer stringBuffer21 = this.d;
                if (stringBuffer21 != null) {
                    f fVar13 = this.f22360b;
                    if (fVar13 instanceof b) {
                        ((b) fVar13).l = stringBuffer21.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Tracks")) {
                StringBuffer stringBuffer22 = this.d;
                if (stringBuffer22 != null) {
                    f fVar14 = this.f22360b;
                    if (fVar14 instanceof b) {
                        ((b) fVar14).m = stringBuffer22.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("Icon")) {
                StringBuffer stringBuffer23 = this.d;
                if (stringBuffer23 != null) {
                    f fVar15 = this.f22360b;
                    if (fVar15 instanceof b) {
                        ((b) fVar15).n = stringBuffer23.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("UserID")) {
                StringBuffer stringBuffer24 = this.d;
                if (stringBuffer24 != null) {
                    f fVar16 = this.f22360b;
                    if (fVar16 instanceof b) {
                        ((b) fVar16).o = stringBuffer24.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("LikeNum")) {
                StringBuffer stringBuffer25 = this.d;
                if (stringBuffer25 != null) {
                    f fVar17 = this.f22360b;
                    if (fVar17 instanceof b) {
                        ((b) fVar17).p = stringBuffer25.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("BannedNum")) {
                StringBuffer stringBuffer26 = this.d;
                if (stringBuffer26 != null) {
                    f fVar18 = this.f22360b;
                    if (fVar18 instanceof b) {
                        ((b) fVar18).q = stringBuffer26.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("PlayedNum")) {
                StringBuffer stringBuffer27 = this.d;
                if (stringBuffer27 != null) {
                    f fVar19 = this.f22360b;
                    if (fVar19 instanceof b) {
                        ((b) fVar19).r = stringBuffer27.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (str3.equals("ProStatus")) {
                StringBuffer stringBuffer28 = this.d;
                if (stringBuffer28 != null) {
                    f fVar20 = this.f22360b;
                    if (fVar20 instanceof b) {
                        ((b) fVar20).s = stringBuffer28.toString().trim();
                    }
                    this.d = new StringBuffer();
                    return;
                }
                return;
            }
            if (!str3.equals("ProExprieDate") || (stringBuffer = this.d) == null) {
                return;
            }
            f fVar21 = this.f22360b;
            if (fVar21 instanceof b) {
                ((b) fVar21).t = stringBuffer.toString().trim();
            }
            this.d = new StringBuffer();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.f22369c = str3;
    }
}
