package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class LPXmlUtil {
    static final String ListRoot = "ListRoot";
    static final String ListRootEnd = "</ListRoot>";
    static final String ListRootStart = "<ListRoot>";

    public static String Decode(String str) {
        return TextUtils.isEmpty(str) ? str : str.replace("&lt;", "<").replace("&gt;", ">").replace("&apos;", "'").replace("&quot;", "\"").replace("&amp;", "&");
    }

    public static String Encode(String str) {
        return TextUtils.isEmpty(str) ? str : str.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("'", "&apos;").replace("\"", "&quot;");
    }

    public static LPPlayMusicList convert2CurrentQueueItem(String str) {
        LPPlayMusicList lPPlayMusicList = new LPPlayMusicList();
        LPPlayHeader lPPlayHeader = new LPPlayHeader();
        lPPlayMusicList.setHeader(lPPlayHeader);
        ArrayList arrayList = new ArrayList();
        lPPlayMusicList.setList(arrayList);
        Matcher matcher = Pattern.compile("<PlayList>\r?\n?<ListName>(.*)</ListName>\r?\n?<ListInfo>", 40).matcher(str);
        while (matcher.find()) {
            lPPlayHeader.setHeadTitle(matcher.group(1));
        }
        Matcher matcher2 = Pattern.compile("<LastPlayIndex>(.*)</LastPlayIndex>", 40).matcher(str);
        while (matcher2.find()) {
            lPPlayMusicList.setIndex(Integer.parseInt(matcher2.group(1)));
        }
        String strReplaceAll = str.replaceAll("<Track[0-9]+>", ListRootStart).replaceAll("</Track[0-9]+>", ListRootEnd);
        Matcher matcher3 = Pattern.compile("^<Tracks>(.*)</Tracks>$", 40).matcher(strReplaceAll);
        boolean zContains = strReplaceAll.contains("<Source>qplay");
        while (matcher3.find()) {
            String[] strArrSplit = matcher3.group(1).split(ListRootEnd);
            int length = strArrSplit.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (strArrSplit[i2].trim().length() > 0) {
                    String strR = n00.r(strArrSplit[i2], ListRootEnd, new StringBuilder());
                    String strSubstring = strR.substring(strR.indexOf("<Source>") + 8, strR.indexOf("</Source>"));
                    if (!TextUtils.isEmpty(strSubstring)) {
                        lPPlayHeader.setMediaSource(strSubstring);
                    }
                    if (zContains) {
                        LPPlayItem qplayMetaData = XmlAlbumInfo.parseQplayMetaData(strR);
                        if (qplayMetaData != null) {
                            arrayList.add(qplayMetaData);
                        }
                    } else {
                        LPPlayItem lPPlayItem = new AlbumHandler(strR, lPPlayHeader).parse();
                        if (lPPlayItem != null && !TextUtils.isEmpty(lPPlayItem.getTrackUrl())) {
                            arrayList.add(lPPlayItem);
                        }
                    }
                }
            }
        }
        return lPPlayMusicList;
    }

    public static String convert2Xml(LPPlayItem lPPlayItem) {
        String str;
        StringBuilder sbA = a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a("<DIDL-Lite xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" ", "xmlns:song=\"www.linkplay.com/song/\" "), "xmlns:custom=\"www.linkplay.com/custom/\" "), "xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"> "), "<upnp:class>object.item.audioItem.musicTrack</upnp:class> "), "<item> "), "<song:bitrate></song:bitrate> "), "<song:id>");
        sbA.append(lPPlayItem.getTrackId());
        sbA.append("</song:id>");
        StringBuilder sbA2 = a.a(sbA.toString(), "<song:singerid>");
        sbA2.append(lPPlayItem.getArtistId());
        sbA2.append("</song:singerid>");
        StringBuilder sbA3 = a.a(sbA2.toString(), "<song:albumid>");
        sbA3.append(lPPlayItem.getAlbumId());
        sbA3.append("</song:albumid>");
        String string = sbA3.toString();
        if (lPPlayItem.getTrackDuration() != 1) {
            str = lPPlayItem.getTrackDuration() + "";
        } else {
            str = ContentTree.ROOT_ID;
        }
        StringBuilder sbA4 = a.a(string + "<res protocolInfo=\"http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;\" duration=\"" + str + "\">" + getCommonStr(lPPlayItem.getTrackUrl()) + "</res>", "<dc:title>");
        sbA4.append(getCommonStr(lPPlayItem.getTrackName()));
        sbA4.append("</dc:title> ");
        StringBuilder sbA5 = a.a(sbA4.toString(), "<upnp:artist>");
        sbA5.append(getCommonStr(lPPlayItem.getTrackArtist()));
        sbA5.append("</upnp:artist> ");
        StringBuilder sbA6 = a.a(sbA5.toString(), "<upnp:creator>");
        sbA6.append(getCommonStr(lPPlayItem.getTrackArtist()));
        sbA6.append("</upnp:creator> ");
        StringBuilder sbA7 = a.a(sbA6.toString(), "<upnp:album>");
        sbA7.append(getCommonStr(lPPlayItem.getAlbumName()));
        sbA7.append("</upnp:album> ");
        StringBuilder sbA8 = a.a(sbA7.toString(), "<upnp:albumArtURI>");
        sbA8.append(getCommonStr(lPPlayItem.getTrackImage() != null ? lPPlayItem.getTrackImage() : ""));
        sbA8.append("</upnp:albumArtURI> ");
        return Encode(com.linkplay.lpmdpkit.a.a(sbA8.toString(), "</item> ") + "</DIDL-Lite> ");
    }

    public static String convertFromQueueContext(String str) {
        return TextUtils.isEmpty(str) ? str : str.replaceAll("<Key\\d{1,2}>", "<Key>").replaceAll("</Key\\d{1,2}>", "</Key>");
    }

    public static String getCommonStr(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        char[] charArray = str.toCharArray();
        boolean z = false;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c2 = charArray[i2];
            if (c2 > 0 && c2 < ' ') {
                charArray[i2] = ' ';
                z = true;
            }
        }
        return z ? new String(charArray).trim() : str;
    }

    public static String getMetadata(String str, LPPlayItem lPPlayItem) {
        String str2;
        if (lPPlayItem == null) {
            return "";
        }
        StringBuilder sbA = a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a("<DIDL-Lite xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" ", "xmlns:song=\"www.wiimu.com/song/\" "), "xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"> "), "<upnp:class>object.item.audioItem.musicTrack</upnp:class> "), "<item> "), "<song:bitrate>0</song:bitrate> "), "<song:id>");
        sbA.append(lPPlayItem.getTrackId());
        sbA.append("</song:id>");
        StringBuilder sbA2 = a.a(com.linkplay.lpmdpkit.a.a(sbA.toString(), "<song:singerid>0</song:singerid>"), "<song:albumid>");
        sbA2.append(lPPlayItem.getAlbumId());
        sbA2.append("</song:albumid>");
        String string = sbA2.toString();
        if (lPPlayItem.getTrackDuration() != 1) {
            str2 = lPPlayItem.getTrackDuration() + "";
        } else {
            str2 = ContentTree.ROOT_ID;
        }
        StringBuilder sbA3 = a.a(string + "<res protocolInfo=\"http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;\" duration=\"" + str2 + "\">" + Encode(getCommonStr(lPPlayItem.getTrackUrl())) + "</res>", "<dc:title>");
        sbA3.append(Encode(getCommonStr(lPPlayItem.getTrackName())));
        sbA3.append("</dc:title> ");
        StringBuilder sbA4 = a.a(sbA3.toString(), "<upnp:artist>");
        sbA4.append(Encode(getCommonStr(lPPlayItem.getTrackArtist())));
        sbA4.append("</upnp:artist> ");
        StringBuilder sbA5 = a.a(sbA4.toString(), "<upnp:creator>");
        sbA5.append(Encode(getCommonStr(str)));
        sbA5.append("</upnp:creator> ");
        StringBuilder sbA6 = a.a(sbA5.toString(), "<upnp:album>");
        sbA6.append(Encode(getCommonStr(lPPlayItem.getAlbumName())));
        sbA6.append("</upnp:album> ");
        StringBuilder sbA7 = a.a(sbA6.toString(), "<upnp:albumArtURI>");
        sbA7.append(Encode(getCommonStr(lPPlayItem.getTrackImage() != null ? lPPlayItem.getTrackImage() : "")));
        sbA7.append("</upnp:albumArtURI> ");
        return Encode(com.linkplay.lpmdpkit.a.a(sbA7.toString(), "</item> ") + "</DIDL-Lite> ");
    }

    public static String getMetadataByHeader(String str, LPPlayHeader lPPlayHeader) {
        if (lPPlayHeader == null) {
            return "";
        }
        StringBuilder sbA = a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a("<DIDL-Lite xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" ", "xmlns:song=\"www.wiimu.com/song/\" "), "xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"> "), "<upnp:class>object.item.audioItem.musicTrack</upnp:class> "), "<item> "), "<song:bitrate>0</song:bitrate> "), "<song:id>");
        sbA.append(lPPlayHeader.getHeadId());
        sbA.append("</song:id>");
        StringBuilder sbA2 = a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(sbA.toString(), "<song:singerid>0</song:singerid>"), "<song:albumid>0</song:albumid>"), "<res protocolInfo=\"http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;\" duration=\"0\">");
        sbA2.append(Encode(getCommonStr(lPPlayHeader.getSearchUrl())));
        sbA2.append("</res>");
        StringBuilder sbA3 = a.a(sbA2.toString(), "<dc:title>");
        sbA3.append(Encode(getCommonStr(lPPlayHeader.getHeadTitle())));
        sbA3.append("</dc:title> ");
        StringBuilder sbA4 = a.a(sbA3.toString(), "<upnp:artist>");
        sbA4.append(Encode(getCommonStr(lPPlayHeader.getMediaSource())));
        sbA4.append("</upnp:artist> ");
        StringBuilder sbA5 = a.a(sbA4.toString(), "<upnp:creator>");
        sbA5.append(Encode(getCommonStr(str)));
        sbA5.append("</upnp:creator> ");
        StringBuilder sbA6 = a.a(com.linkplay.lpmdpkit.a.a(sbA5.toString(), "<upnp:album></upnp:album> "), "<upnp:albumArtURI>");
        sbA6.append(Encode(getCommonStr(lPPlayHeader.getImageUrl() != null ? lPPlayHeader.getImageUrl() : "")));
        sbA6.append("</upnp:albumArtURI> ");
        return Encode(com.linkplay.lpmdpkit.a.a(sbA6.toString(), "</item> ") + "</DIDL-Lite> ");
    }

    public static Object getValue(Object obj, String str) {
        try {
            return obj.getClass().getDeclaredMethod(str, null).invoke(obj, null);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
