package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.media.offline.FileUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class XmlAlbumInfo {
    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[Catch: all -> 0x0033, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078 A[Catch: all -> 0x0033, Exception -> 0x0091, TRY_LEAVE, TryCatch #8 {Exception -> 0x0091, blocks: (B:23:0x0070, B:25:0x0078), top: B:99:0x0070 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00bb A[Catch: all -> 0x0033, Exception -> 0x00d3, TRY_LEAVE, TryCatch #6 {Exception -> 0x00d3, blocks: (B:31:0x00b3, B:33:0x00bb), top: B:97:0x00b3 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00dd A[Catch: all -> 0x0033, Exception -> 0x00f5, TRY_LEAVE, TryCatch #5 {Exception -> 0x00f5, blocks: (B:35:0x00d5, B:37:0x00dd), top: B:95:0x00d5 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00fd A[Catch: all -> 0x0033, Exception -> 0x0115, TRY_LEAVE, TryCatch #4 {Exception -> 0x0115, blocks: (B:38:0x00f5, B:40:0x00fd), top: B:93:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x011f A[Catch: all -> 0x0033, Exception -> 0x0137, TRY_LEAVE, TryCatch #2 {Exception -> 0x0137, blocks: (B:42:0x0117, B:44:0x011f), top: B:89:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x013f A[Catch: all -> 0x0033, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0160 A[Catch: all -> 0x0033, Exception -> 0x0179, TRY_LEAVE, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0183 A[Catch: all -> 0x0033, Exception -> 0x019a, TRY_LEAVE, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x01b1 A[Catch: all -> 0x0033, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x022e A[Catch: all -> 0x0033, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0243  */
    /* JADX WARN: Code duplicated, block: B:68:0x0245 A[Catch: all -> 0x0033, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x024b  */
    /* JADX WARN: Code duplicated, block: B:71:0x024c A[Catch: all -> 0x0033, TryCatch #9 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0183, B:57:0x019a, B:59:0x01b1, B:60:0x01bb, B:62:0x021d, B:65:0x022e, B:72:0x0250, B:71:0x024c, B:68:0x0245, B:64:0x0229, B:16:0x0037), top: B:101:0x0003, inners: #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x021d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized LPPlayItem convert2AlbumInfo(String str, LPPlayHeader lPPlayHeader) {
        String strReplace;
        String strReplace2;
        String strReplace3;
        String strReplace4;
        String strReplace5;
        String strGroup;
        String strGroup2;
        Matcher matcher;
        int i2;
        int i3;
        LPPlayItem lPPlayItem = new LPPlayItem();
        if (TextUtils.isEmpty(str)) {
            return lPPlayItem;
        }
        String strReplace6 = "";
        try {
            if (!str.contains("<song:description>")) {
                str = str.replaceAll("<upnp:artist\\s*[\\w\\W]*>(.*)</upnp:artist>", "<upnp:artist>$1</upnp:artist>");
                str = str.replaceAll("<upnp:albumArtURI\\s*[\\w\\W]*>(.*)</upnp:albumArtURI>", "<upnp:albumArtURI>$1</upnp:albumArtURI>");
                if (str.contains("<dc:title>")) {
                }
                strReplace = "";
                if (str.contains("<upnp:artist>")) {
                    strReplace = str.substring(str.indexOf("<upnp:artist>"), str.indexOf("</upnp:artist>")).replace("<upnp:artist>", "");
                }
                strReplace2 = "";
                if (str.contains("<upnp:album>")) {
                    strReplace2 = str.substring(str.indexOf("<upnp:album>"), str.indexOf("</upnp:album>")).replace("<upnp:album>", "");
                }
                strReplace3 = "";
                if (str.contains("<upnp:albumArtURI>")) {
                    strReplace3 = str.substring(str.indexOf("<upnp:albumArtURI>"), str.indexOf("</upnp:albumArtURI>")).replace("<upnp:albumArtURI>", "");
                }
                if (str.contains("<upnp:localAlbumArtURI>")) {
                    strReplace3 = str.substring(str.indexOf("<upnp:localAlbumArtURI>"), str.indexOf("</upnp:localAlbumArtURI>")).replace("<upnp:localAlbumArtURI>", "");
                }
                strReplace4 = "";
                if (str.contains("<song:id>")) {
                    strReplace4 = str.substring(str.indexOf("<song:id>"), str.indexOf("</song:id>")).replace("<song:id>", "");
                }
                if (str.contains("<song:subid>")) {
                    str.substring(str.indexOf("<song:subid>"), str.indexOf("</song:subid>")).replace("<song:subid>", "");
                }
                strReplace5 = "";
                if (str.contains("<song:quality>")) {
                    strReplace5 = str.substring(str.indexOf("<song:quality>"), str.indexOf("</song:quality>")).replace("<song:quality>", "");
                }
                if (str.contains("<song:skiplimit>")) {
                    str.substring(str.indexOf("<song:skiplimit>"), str.indexOf("</song:skiplimit>")).replace("<song:skiplimit>", "");
                }
                strGroup = "";
                strGroup2 = "";
                matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                i2 = 1;
                if (matcher.find()) {
                    strGroup = matcher.group(2);
                    strGroup2 = matcher.group(3);
                }
                lPPlayItem.setTrackName(LPXmlUtil.Decode(strReplace).replace("<![CDATA[", "").replace("]]>", ""));
                lPPlayItem.setTrackArtist(LPXmlUtil.Decode(strReplace).replace("<![CDATA[", "").replace("]]>", ""));
                lPPlayItem.setAlbumName(LPXmlUtil.Decode(strReplace2).replace("<![CDATA[", "").replace("]]>", ""));
                lPPlayItem.setTrackImage(LPXmlUtil.Decode(strReplace3).replace("<![CDATA[", "").replace("]]>", ""));
                if (!TextUtils.isEmpty(strReplace4)) {
                    lPPlayHeader.setDescribe(strReplace6);
                    lPPlayItem.setTrackDuration((int) praseLong(strGroup));
                    lPPlayItem.setTrackUrl(strGroup2);
                    if (TextUtils.isEmpty(strReplace5)) {
                        i3 = 0;
                    } else {
                        i3 = Integer.parseInt(strReplace5);
                    }
                    if (i3 == 0) {
                        i2 = Integer.parseInt(strReplace5);
                    }
                    lPPlayHeader.setQuality(String.valueOf(i2));
                    return lPPlayItem;
                }
                lPPlayItem.setTrackId(String.valueOf(Long.parseLong(strReplace4)));
                lPPlayHeader.setDescribe(strReplace6);
                lPPlayItem.setTrackDuration((int) praseLong(strGroup));
                lPPlayItem.setTrackUrl(strGroup2);
                if (TextUtils.isEmpty(strReplace5)) {
                    i3 = 0;
                } else {
                    i3 = Integer.parseInt(strReplace5);
                }
                if (i3 == 0) {
                    i2 = Integer.parseInt(strReplace5);
                }
                lPPlayHeader.setQuality(String.valueOf(i2));
                return lPPlayItem;
            }
            strReplace6 = str.substring(str.indexOf("<song:description>"), str.indexOf("</song:description>")).replace("<song:description>", "");
            try {
                str = str.replaceAll("<upnp:artist\\s*[\\w\\W]*>(.*)</upnp:artist>", "<upnp:artist>$1</upnp:artist>");
            } catch (Exception unused) {
            }
            try {
                str = str.replaceAll("<upnp:albumArtURI\\s*[\\w\\W]*>(.*)</upnp:albumArtURI>", "<upnp:albumArtURI>$1</upnp:albumArtURI>");
            } catch (Exception unused2) {
            }
            String strReplace7 = str.contains("<dc:title>") ? str.substring(str.indexOf("<dc:title>"), str.indexOf("</dc:title>")).replace("<dc:title>", "") : "";
            strReplace = "";
            try {
                try {
                    if (str.contains("<upnp:artist>")) {
                        strReplace = str.substring(str.indexOf("<upnp:artist>"), str.indexOf("</upnp:artist>")).replace("<upnp:artist>", "");
                    }
                } catch (Exception unused3) {
                }
            } catch (Exception unused4) {
                if (str.contains("<dc:creator>")) {
                    strReplace = str.substring(str.indexOf("<dc:creator>"), str.indexOf("</dc:creator>")).replace("<dc:creator>", "");
                }
            }
            strReplace2 = "";
            try {
                if (str.contains("<upnp:album>")) {
                    strReplace2 = str.substring(str.indexOf("<upnp:album>"), str.indexOf("</upnp:album>")).replace("<upnp:album>", "");
                }
            } catch (Exception unused5) {
            }
            strReplace3 = "";
            try {
                if (str.contains("<upnp:albumArtURI>")) {
                    strReplace3 = str.substring(str.indexOf("<upnp:albumArtURI>"), str.indexOf("</upnp:albumArtURI>")).replace("<upnp:albumArtURI>", "");
                }
            } catch (Exception unused6) {
            }
            try {
                if (str.contains("<upnp:localAlbumArtURI>")) {
                    strReplace3 = str.substring(str.indexOf("<upnp:localAlbumArtURI>"), str.indexOf("</upnp:localAlbumArtURI>")).replace("<upnp:localAlbumArtURI>", "");
                }
            } catch (Exception unused7) {
            }
            strReplace4 = "";
            try {
                if (str.contains("<song:id>")) {
                    strReplace4 = str.substring(str.indexOf("<song:id>"), str.indexOf("</song:id>")).replace("<song:id>", "");
                }
            } catch (Exception unused8) {
            }
            if (str.contains("<song:subid>")) {
                str.substring(str.indexOf("<song:subid>"), str.indexOf("</song:subid>")).replace("<song:subid>", "");
            }
            strReplace5 = "";
            try {
                if (str.contains("<song:quality>")) {
                    strReplace5 = str.substring(str.indexOf("<song:quality>"), str.indexOf("</song:quality>")).replace("<song:quality>", "");
                }
            } catch (Exception unused9) {
                strReplace5 = ContentTree.ROOT_ID;
            }
            try {
                if (str.contains("<song:skiplimit>")) {
                    str.substring(str.indexOf("<song:skiplimit>"), str.indexOf("</song:skiplimit>")).replace("<song:skiplimit>", "");
                }
            } catch (Exception unused10) {
            }
            strGroup = "";
            strGroup2 = "";
            matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
            i2 = 1;
            if (matcher.find()) {
                strGroup = matcher.group(2);
                strGroup2 = matcher.group(3);
            }
            lPPlayItem.setTrackName(LPXmlUtil.Decode(strReplace7).replace("<![CDATA[", "").replace("]]>", ""));
            lPPlayItem.setTrackArtist(LPXmlUtil.Decode(strReplace).replace("<![CDATA[", "").replace("]]>", ""));
            lPPlayItem.setAlbumName(LPXmlUtil.Decode(strReplace2).replace("<![CDATA[", "").replace("]]>", ""));
            lPPlayItem.setTrackImage(LPXmlUtil.Decode(strReplace3).replace("<![CDATA[", "").replace("]]>", ""));
            if (!TextUtils.isEmpty(strReplace4)) {
                lPPlayHeader.setDescribe(strReplace6);
                lPPlayItem.setTrackDuration((int) praseLong(strGroup));
                lPPlayItem.setTrackUrl(strGroup2);
                if (TextUtils.isEmpty(strReplace5)) {
                    i3 = 0;
                } else {
                    i3 = Integer.parseInt(strReplace5);
                }
                if (i3 == 0) {
                    i2 = Integer.parseInt(strReplace5);
                }
                lPPlayHeader.setQuality(String.valueOf(i2));
                return lPPlayItem;
            }
            try {
                lPPlayItem.setTrackId(String.valueOf(Long.parseLong(strReplace4)));
            } catch (Exception unused11) {
                lPPlayItem.setTrackId(ContentTree.ROOT_ID);
            }
            lPPlayHeader.setDescribe(strReplace6);
            lPPlayItem.setTrackDuration((int) praseLong(strGroup));
            lPPlayItem.setTrackUrl(strGroup2);
            if (TextUtils.isEmpty(strReplace5)) {
                i3 = 0;
            } else {
                i3 = Integer.parseInt(strReplace5);
            }
            if (i3 == 0) {
                i2 = Integer.parseInt(strReplace5);
            }
            lPPlayHeader.setQuality(String.valueOf(i2));
            return lPPlayItem;
        } catch (Exception e2) {
            e2.printStackTrace();
            strReplace6 = "";
        }
        throw th;
    }

    public static String convert2Xml(LPPlayItem lPPlayItem, boolean z) {
        String str;
        StringBuilder sbA = a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a(com.linkplay.lpmdpkit.a.a("<DIDL-Lite xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" ", "xmlns:song=\"www.wiimu.com/song/\" "), "xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"> "), "<upnp:class>object.item.audioItem.musicTrack</upnp:class> "), "<item> "), "<song:bitrate>0</song:bitrate> "), "<song:id>");
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
        StringBuilder sbA4 = a.a(string + "<res protocolInfo=\"http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;\" duration=\"" + str + "\">" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackUrl())) + "</res>", "<dc:title>");
        sbA4.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackName())));
        sbA4.append("</dc:title> ");
        StringBuilder sbA5 = a.a(sbA4.toString(), "<upnp:artist>");
        sbA5.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackArtist())));
        sbA5.append("</upnp:artist> ");
        StringBuilder sbA6 = a.a(sbA5.toString(), "<upnp:creator>");
        sbA6.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackArtist())));
        sbA6.append("</upnp:creator> ");
        StringBuilder sbA7 = a.a(sbA6.toString(), "<upnp:album>");
        sbA7.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getAlbumName())));
        sbA7.append("</upnp:album> ");
        StringBuilder sbA8 = a.a(sbA7.toString(), "<upnp:albumArtURI>");
        sbA8.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackImage() != null ? lPPlayItem.getTrackImage() : "")));
        sbA8.append("</upnp:albumArtURI> ");
        return LPXmlUtil.Encode(com.linkplay.lpmdpkit.a.a(sbA8.toString(), "</item> ") + "</DIDL-Lite> ");
    }

    public static synchronized LPPlayItem convertQplayMeta2AlbumInfo(String str) {
        LPPlayItem lPPlayItem;
        try {
            JSONObject jSONObject = new JSONObject(str);
            lPPlayItem = new LPPlayItem();
            if (jSONObject.has("songID")) {
                try {
                    lPPlayItem.setTrackId(String.valueOf(jSONObject.getLong("songID")));
                } catch (Exception unused) {
                }
            }
            if (jSONObject.has("duration")) {
                lPPlayItem.setTrackDuration((int) praseLong(jSONObject.getString("duration")));
            }
            if (jSONObject.has("title")) {
                lPPlayItem.setTrackName(jSONObject.getString("title"));
            }
            if (jSONObject.has("albumArtURI")) {
                lPPlayItem.setTrackImage(jSONObject.getString("albumArtURI"));
            }
            if (jSONObject.has("album")) {
                lPPlayItem.setAlbumName(jSONObject.getString("album"));
            }
            if (jSONObject.has("creator")) {
                lPPlayItem.setTrackArtist(jSONObject.getString("creator"));
            }
            if (jSONObject.has("trackURIs")) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray("trackURIs");
                    if (jSONArray.length() > 0) {
                        lPPlayItem.setTrackUrl(jSONArray.getString(0));
                    }
                } catch (Exception unused2) {
                }
            }
        } catch (Exception unused3) {
            return null;
        }
        return lPPlayItem;
    }

    public static long fromTimeString(String str) {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length <= 0) {
            return 0L;
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String strSubstring = strArrSplit[i2];
            if (strSubstring.contains(FileUtils.HIDDEN_PREFIX)) {
                strSubstring = strSubstring.substring(0, strSubstring.indexOf(FileUtils.HIDDEN_PREFIX));
            }
            strArrSplit[i2] = strSubstring;
        }
        if (strArrSplit.length == 3) {
            return (Long.parseLong(strArrSplit[0]) * 3600) + (Long.parseLong(strArrSplit[1]) * 60) + Long.parseLong(strArrSplit[2]);
        }
        if (strArrSplit.length != 2) {
            return 0L;
        }
        return Long.parseLong(strArrSplit[1]) + (Long.parseLong(strArrSplit[0]) * 60);
    }

    public static boolean isNumDigits(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt < '0' || cCharAt > '9') {
                return false;
            }
        }
        return true;
    }

    public static LPPlayItem parseQplayMetaData(String str) {
        LPPlayItem lPPlayItemConvertQplayMeta2AlbumInfo;
        try {
            Matcher matcher = Pattern.compile("<Metadata>\r?\n?(.*)\r?\n?</Metadata>\r?\n?", 41).matcher(str);
            String strGroup = matcher.find() ? matcher.group(1) : null;
            if (strGroup == null || (lPPlayItemConvertQplayMeta2AlbumInfo = convertQplayMeta2AlbumInfo(LPXmlUtil.Decode(strGroup))) == null || !TextUtils.isEmpty(lPPlayItemConvertQplayMeta2AlbumInfo.getTrackUrl())) {
                return null;
            }
            return lPPlayItemConvertQplayMeta2AlbumInfo;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static long praseLong(String str) {
        if (str != null && str.trim().length() > 0) {
            if (str.contains(":")) {
                return fromTimeString(str) * 1000;
            }
            try {
                if (isNumDigits(str)) {
                    return Long.parseLong(str);
                }
                return 0L;
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        return 0L;
    }
}
