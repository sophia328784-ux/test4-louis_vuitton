package com.linkplay.lpmdpkit.utils;

import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import java.io.ByteArrayInputStream;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes2.dex */
public class AlbumHandler extends DefaultHandler {
    private final LPPlayHeader mHeader;
    String source;
    StringBuffer sbURL = null;
    StringBuffer sbSource = null;
    StringBuffer sbMetadata = null;
    String qName = null;
    StringBuffer sb = null;
    LPPlayItem mItem = new LPPlayItem();

    public AlbumHandler(String str, LPPlayHeader lPPlayHeader) {
        this.source = str;
        this.mHeader = lPPlayHeader;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i2, int i3) throws SAXException {
        super.characters(cArr, i2, i3);
        if (this.qName != null) {
            String str = new String(cArr, i2, i3);
            if (this.qName.equals("URL")) {
                if (this.sbURL == null) {
                    this.sbURL = new StringBuffer();
                }
                this.sbURL.append(str);
            } else if (this.qName.equals("Metadata")) {
                if (this.sbMetadata == null) {
                    this.sbMetadata = new StringBuffer();
                }
                this.sbMetadata.append(str);
            } else if (this.qName.equals("Source")) {
                if (this.sbSource == null) {
                    this.sbSource = new StringBuffer();
                }
                this.sbSource.append(str);
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
            this.mItem = XmlAlbumInfo.convert2AlbumInfo(LPXmlUtil.Decode(this.sbMetadata.toString()), this.mHeader);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.mItem.setTrackUrl(this.sbURL.toString());
        StringBuffer stringBuffer = this.sbSource;
        if (stringBuffer != null) {
            this.mHeader.setMediaSource(stringBuffer.toString());
        }
        this.sbMetadata = null;
        this.sbSource = null;
        this.sbURL = null;
    }

    public LPPlayItem parse() {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.source.getBytes("utf-8"));
            SAXParserFactory.newInstance().newSAXParser().parse(byteArrayInputStream, this);
            byteArrayInputStream.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return this.mItem;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        super.startElement(str, str2, str3, attributes);
        this.qName = str3;
    }
}
