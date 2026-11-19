package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
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
public class LPPresetUtil {

    public static class DefaultHandlerKeyItem extends DefaultHandler {
        LPPlayMusicList keyItem;
        LPPlayHeader playHeader;
        List<LPPlayMusicList> keyItems = new ArrayList();
        List<LPPlayItem> playItems = new ArrayList();
        StringBuffer sbName = new StringBuffer();
        StringBuffer sbUrl = new StringBuffer();
        StringBuffer sbPicUrl = new StringBuffer();
        StringBuffer sbMeta = new StringBuffer();
        StringBuffer sbSource = new StringBuffer();
        String qName = null;

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            super.characters(cArr, i2, i3);
            if (this.qName != null) {
                String str = new String(cArr, i2, i3);
                if (this.qName.equals("Key")) {
                    return;
                }
                if (this.qName.equals("Name")) {
                    this.sbName.append(str);
                    return;
                }
                if (this.qName.equals("Url")) {
                    this.sbUrl.append(str);
                    return;
                }
                if (this.qName.equals("Metadata")) {
                    this.sbMeta.append(str);
                } else if (this.qName.equals("PicUrl")) {
                    this.sbPicUrl.append(str);
                } else if (this.qName.equals("Source")) {
                    this.sbSource.append(str);
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
            if (str3 == null || this.keyItem == null) {
                return;
            }
            if (str3.equals("Key")) {
                this.keyItem.setHeader(this.playHeader);
                this.keyItems.add(this.keyItem);
                this.keyItem = null;
                this.playHeader = null;
                return;
            }
            if (str3.equals("Name")) {
                this.playHeader.setHeadTitle(LPXmlUtil.Decode(this.sbName.toString()));
                return;
            }
            if (str3.equals("Url")) {
                this.playHeader.setSearchUrl(LPXmlUtil.Decode(this.sbUrl.toString()));
                return;
            }
            if (str3.equals("Metadata")) {
                this.playItems.add(LPPresetUtil.parsePlayItem(this.sbMeta.toString()));
                this.keyItem.setList(this.playItems);
            } else if (str3.equals("PicUrl")) {
                this.playHeader.setImageUrl(LPXmlUtil.Decode(this.sbPicUrl.toString()));
            } else if (str3.equals("Source")) {
                this.playHeader.setMediaSource(this.sbSource.toString());
            }
        }

        public List<LPPlayMusicList> getKeyItems() {
            return this.keyItems;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            super.startDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            this.qName = str3;
            if (str3 != null) {
                if (str3.equals("Key")) {
                    this.keyItem = new LPPlayMusicList();
                    this.playHeader = new LPPlayHeader();
                    return;
                }
                if (str3.equals("Name")) {
                    this.sbName = new StringBuffer();
                    return;
                }
                if (str3.equals("Url")) {
                    this.sbUrl = new StringBuffer();
                    return;
                }
                if (str3.equals("Metadata")) {
                    this.sbMeta = new StringBuffer();
                } else if (str3.equals("PicUrl")) {
                    this.sbPicUrl = new StringBuffer();
                } else if (str3.equals("Source")) {
                    this.sbSource = new StringBuffer();
                }
            }
        }
    }

    public static class MediaDataHandler extends DefaultHandler {
        LPPlayItem playItem;
        StringBuffer sbRes = new StringBuffer();
        StringBuffer sbTitle = new StringBuffer();
        StringBuffer sbArtist = new StringBuffer();
        StringBuffer sbAlbum = new StringBuffer();
        StringBuffer sbAlbumArtURI = new StringBuffer();
        String qName = null;

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i2, int i3) throws SAXException {
            super.characters(cArr, i2, i3);
            if (this.qName != null) {
                String str = new String(cArr, i2, i3);
                if (this.qName.equals("res")) {
                    this.sbRes.append(str);
                    return;
                }
                if (this.qName.equals("dc:title")) {
                    this.sbTitle.append(str);
                    return;
                }
                if (this.qName.equals("upnp:artist")) {
                    this.sbArtist.append(str);
                } else if (this.qName.equals("upnp:album")) {
                    this.sbAlbum.append(str);
                } else if (this.qName.equals("upnp:albumArtURI")) {
                    this.sbAlbumArtURI.append(str);
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
            if (str3 != null) {
                if (str3.equals("res")) {
                    this.playItem.setTrackUrl(LPXmlUtil.Decode(this.sbRes.toString()));
                    return;
                }
                if (str3.equals("dc:title")) {
                    this.playItem.setTrackName(this.sbTitle.toString());
                    return;
                }
                if (str3.equals("upnp:artis")) {
                    this.playItem.setTrackArtist(this.sbArtist.toString());
                } else if (str3.equals("upnp:album")) {
                    this.playItem.setAlbumName(this.sbAlbum.toString());
                } else if (str3.equals("upnp:albumArtURI")) {
                    this.playItem.setTrackImage(this.sbAlbumArtURI.toString());
                }
            }
        }

        public LPPlayItem getPlayItem() {
            return this.playItem;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            super.startDocument();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            this.qName = str3;
            if (str3 != null) {
                if (str3.equals("res")) {
                    this.playItem = new LPPlayItem();
                    this.sbRes = new StringBuffer();
                    return;
                }
                if (str3.equals("dc:title")) {
                    this.sbTitle = new StringBuffer();
                    return;
                }
                if (str3.equals("upnp:artist")) {
                    this.sbArtist = new StringBuffer();
                } else if (str3.equals("upnp:album")) {
                    this.sbAlbum = new StringBuffer();
                } else if (str3.equals("upnp:albumArtURI")) {
                    this.sbAlbumArtURI = new StringBuffer();
                }
            }
        }
    }

    private static String getKeyMapping(List<LPPlayMusicList> list, LPPlayMusicList lPPlayMusicList, boolean z) {
        if (list == null) {
            return "";
        }
        list.set(lPPlayMusicList.getIndex(), lPPlayMusicList);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new LPPlayMusicList());
        if (list.size() < 21) {
            arrayList.addAll(list);
            int size = list.size();
            while (true) {
                size++;
                if (size >= 22) {
                    break;
                }
                arrayList.add(new LPPlayMusicList());
            }
        } else {
            arrayList.addAll(list.subList(0, 21));
        }
        StringBuilder sb = new StringBuilder("<?xml version=\"1.0\"?><KeyList><ListName>KeyMappingQueue</ListName><MaxNumber>21</MaxNumber>");
        if (!z) {
            sb.append("<ActionFlag>1</ActionFlag>");
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            sb.append("<Key");
            sb.append(i2);
            sb.append(">");
            sb.append(getKeyXml((LPPlayMusicList) arrayList.get(i2)));
            sb.append("</Key");
            sb.append(i2);
            sb.append(">");
        }
        sb.append("</KeyList>");
        return sb.toString();
    }

    private static String getKeyXml(LPPlayMusicList lPPlayMusicList) {
        if (lPPlayMusicList == null) {
            return "";
        }
        lPPlayMusicList.getList();
        LPPlayHeader header = lPPlayMusicList.getHeader();
        StringBuilder sb = new StringBuilder("");
        if (header == null || (TextUtils.isEmpty(header.getHeadTitle()) && !TextUtils.equals(header.getMediaSource(), "SPOTIFY"))) {
            return sb.toString();
        }
        sb.append("<Name>");
        sb.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getHeadTitle())));
        sb.append("</Name>");
        if (!TextUtils.isEmpty(header.getMediaSource())) {
            sb.append("<Source>");
            sb.append(header.getMediaSource());
            sb.append("</Source>");
        }
        if (!TextUtils.isEmpty(header.getImageUrl())) {
            sb.append("<PicUrl>");
            sb.append(LPXmlUtil.Encode(header.getImageUrl()));
            sb.append("</PicUrl>");
        }
        return sb.toString();
    }

    public static List<LPPlayMusicList> parse(String str) {
        try {
            String strConvertFromQueueContext = LPXmlUtil.convertFromQueueContext(str);
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            DefaultHandlerKeyItem defaultHandlerKeyItem = new DefaultHandlerKeyItem();
            sAXParserNewSAXParser.parse(new ByteArrayInputStream(strConvertFromQueueContext.getBytes()), defaultHandlerKeyItem);
            return defaultHandlerKeyItem.getKeyItems();
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (ParserConfigurationException e3) {
            e3.printStackTrace();
            return null;
        } catch (SAXException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LPPlayItem parsePlayItem(String str) {
        String strDecode = LPXmlUtil.Decode(str);
        try {
            SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
            MediaDataHandler mediaDataHandler = new MediaDataHandler();
            sAXParserNewSAXParser.parse(new ByteArrayInputStream(strDecode.getBytes()), mediaDataHandler);
            return mediaDataHandler.getPlayItem();
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (ParserConfigurationException e3) {
            e3.printStackTrace();
            return null;
        } catch (SAXException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String getKeyMapping(List<LPPlayMusicList> list, LPPlayMusicList lPPlayMusicList) {
        return getKeyMapping(list, lPPlayMusicList, true);
    }
}
