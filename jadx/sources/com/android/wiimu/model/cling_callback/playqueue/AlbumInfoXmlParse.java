package com.android.wiimu.model.cling_callback.playqueue;

import android.text.TextUtils;
import b.a;
import com.android.wiimu.model.IWiimuPlayQueueType;
import com.android.wiimu.model.cling_callback.playqueue.xml.c;
import com.linkplay.medialib.ContentTree;
import defpackage.n00;
import defpackage.o60;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.teleal.cling.model.ModelUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AlbumInfoXmlParse {

    public interface IAlbumInfoXmlConvert {
        void onFinish(a aVar);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0056 A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078 A[Catch: all -> 0x0033, Exception -> 0x0091, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x00bb A[Catch: all -> 0x0033, Exception -> 0x00d3, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00dd A[Catch: all -> 0x0033, Exception -> 0x00f5, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00fd A[Catch: all -> 0x0033, Exception -> 0x0115, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x011f A[Catch: all -> 0x0033, Exception -> 0x0137, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x013f A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0160 A[Catch: all -> 0x0033, Exception -> 0x0179, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0192 A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0205 A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0219  */
    /* JADX WARN: Code duplicated, block: B:66:0x021b A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0221  */
    /* JADX WARN: Code duplicated, block: B:69:0x0222 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0012, B:11:0x001a, B:17:0x003c, B:18:0x0044, B:19:0x004c, B:21:0x0056, B:23:0x0070, B:25:0x0078, B:27:0x0091, B:29:0x0099, B:31:0x00b3, B:33:0x00bb, B:35:0x00d5, B:37:0x00dd, B:38:0x00f5, B:40:0x00fd, B:42:0x0117, B:44:0x011f, B:45:0x0137, B:47:0x013f, B:49:0x0158, B:51:0x0160, B:54:0x017b, B:56:0x0192, B:57:0x019c, B:59:0x01fa, B:63:0x0205, B:69:0x0222, B:66:0x021b, B:62:0x0203, B:16:0x0037), top: B:81:0x0003, inners: #4, #9 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized a a(String str) throws Exception {
        String strReplace;
        String strReplace2;
        String strReplace3;
        String strReplace4;
        String strReplace5;
        String strGroup;
        String strGroup2;
        Matcher matcher;
        int i2;
        a aVar = new a();
        if (TextUtils.isEmpty(str)) {
            return aVar;
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
                strGroup = "";
                strGroup2 = "";
                matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
                if (matcher.find()) {
                    strGroup = matcher.group(2);
                    strGroup2 = matcher.group(3);
                }
                aVar.f20668b = c.a(strReplace).replace("<![CDATA[", "").replace("]]>", "");
                aVar.f20670e = c.a(strReplace).replace("<![CDATA[", "").replace("]]>", "");
                aVar.f20669c = c.a(strReplace2).replace("<![CDATA[", "").replace("]]>", "");
                aVar.f20671f = c.a(strReplace3).replace("<![CDATA[", "").replace("]]>", "");
                if (!TextUtils.isEmpty(strReplace4)) {
                    aVar.d = aVar.f20670e;
                    aVar.f20675k = strReplace6;
                    aVar.f20672h = c(strGroup);
                    aVar.g = strGroup2;
                    if (TextUtils.isEmpty(strReplace5)) {
                        i2 = 0;
                    } else {
                        i2 = Integer.parseInt(strReplace5);
                    }
                    if (i2 == 0) {
                        Integer.parseInt(strReplace5);
                    }
                    return aVar;
                }
                aVar.f20674j = Long.parseLong(strReplace4);
                aVar.d = aVar.f20670e;
                aVar.f20675k = strReplace6;
                aVar.f20672h = c(strGroup);
                aVar.g = strGroup2;
                if (TextUtils.isEmpty(strReplace5)) {
                    i2 = 0;
                } else {
                    i2 = Integer.parseInt(strReplace5);
                }
                if (i2 == 0) {
                    Integer.parseInt(strReplace5);
                }
                return aVar;
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
            strGroup = "";
            strGroup2 = "";
            matcher = Pattern.compile("<res protocolInfo=\"(.*)\" duration=\"(.*)\">(.*)</res>", 43).matcher(str);
            if (matcher.find()) {
                strGroup = matcher.group(2);
                strGroup2 = matcher.group(3);
            }
            aVar.f20668b = c.a(strReplace7).replace("<![CDATA[", "").replace("]]>", "");
            aVar.f20670e = c.a(strReplace).replace("<![CDATA[", "").replace("]]>", "");
            aVar.f20669c = c.a(strReplace2).replace("<![CDATA[", "").replace("]]>", "");
            aVar.f20671f = c.a(strReplace3).replace("<![CDATA[", "").replace("]]>", "");
            if (!TextUtils.isEmpty(strReplace4)) {
                aVar.d = aVar.f20670e;
                aVar.f20675k = strReplace6;
                aVar.f20672h = c(strGroup);
                aVar.g = strGroup2;
                if (TextUtils.isEmpty(strReplace5)) {
                    i2 = 0;
                } else {
                    i2 = Integer.parseInt(strReplace5);
                }
                if (i2 == 0) {
                    Integer.parseInt(strReplace5);
                }
                return aVar;
            }
            try {
                aVar.f20674j = Long.parseLong(strReplace4);
            } catch (Exception unused10) {
                aVar.f20674j = 0L;
            }
            aVar.d = aVar.f20670e;
            aVar.f20675k = strReplace6;
            aVar.f20672h = c(strGroup);
            aVar.g = strGroup2;
            if (TextUtils.isEmpty(strReplace5)) {
                i2 = 0;
            } else {
                i2 = Integer.parseInt(strReplace5);
            }
            if (i2 == 0) {
                Integer.parseInt(strReplace5);
            }
            return aVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            strReplace6 = "";
        }
        throw th;
    }

    public static synchronized a b(String str) {
        a aVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            aVar = new a();
            if (jSONObject.has("songID")) {
                try {
                    aVar.f20674j = jSONObject.getLong("songID");
                } catch (Exception unused) {
                }
            }
            if (jSONObject.has("duration")) {
                aVar.f20672h = c(jSONObject.getString("duration"));
            }
            if (jSONObject.has("title")) {
                aVar.f20668b = jSONObject.getString("title");
            }
            if (jSONObject.has("albumArtURI")) {
                aVar.f20671f = jSONObject.getString("albumArtURI");
            }
            if (jSONObject.has("album")) {
                aVar.f20669c = jSONObject.getString("album");
            }
            if (jSONObject.has("creator")) {
                String string = jSONObject.getString("creator");
                aVar.f20670e = string;
                aVar.d = string;
            }
            if (jSONObject.has("trackURIs")) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray("trackURIs");
                    if (jSONArray.length() > 0) {
                        aVar.g = jSONArray.getString(0);
                    }
                } catch (Exception unused2) {
                }
            }
        } catch (Exception unused3) {
            return null;
        }
        return aVar;
    }

    private static long c(String str) {
        if (str == null || str.trim().length() <= 0) {
            return 0L;
        }
        return str.contains(":") ? ModelUtil.a(str) * 1000 : Long.parseLong(str);
    }

    public static String a(a aVar, boolean z) {
        String strJ;
        String strConcat = "<DIDL-Lite ".concat("xmlns:dc=\"http://purl.org/dc/elements/1.1/\" ").concat("xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" ").concat("xmlns:song=\"www.wiimu.com/song/\" ").concat("xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\"> ").concat("<upnp:class>object.item.audioItem.musicTrack</upnp:class> ").concat("<item> ");
        aVar.getClass();
        StringBuilder sbU = n00.u(strConcat.concat("<song:bitrate>0</song:bitrate> "), "<song:id>");
        sbU.append(aVar.f20674j);
        sbU.append("</song:id>");
        String strConcat2 = sbU.toString().concat("<song:singerid>0</song:singerid>").concat("<song:albumid>0</song:albumid>");
        if (aVar.f20672h != 1) {
            strJ = o60.j(aVar.f20672h, "", new StringBuilder());
        } else {
            strJ = ContentTree.ROOT_ID;
        }
        StringBuilder sbU2 = n00.u(strConcat2 + "<res protocolInfo=\"http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;\" duration=\"" + strJ + "\">" + c.b(c.c(aVar.g)) + "</res>", "<dc:title>");
        sbU2.append(c.b(c.c(aVar.f20668b)));
        sbU2.append("</dc:title> ");
        StringBuilder sbU3 = n00.u(sbU2.toString(), "<upnp:artist>");
        sbU3.append(c.b(c.c(aVar.f20670e)));
        sbU3.append("</upnp:artist> ");
        StringBuilder sbU4 = n00.u(sbU3.toString(), "<upnp:creator>");
        sbU4.append(c.b(c.c(aVar.d)));
        sbU4.append("</upnp:creator> ");
        StringBuilder sbU5 = n00.u(sbU4.toString(), "<upnp:album>");
        sbU5.append(c.b(c.c(aVar.f20669c)));
        sbU5.append("</upnp:album> ");
        StringBuilder sbU6 = n00.u(sbU5.toString(), "<upnp:albumArtURI>");
        String str = aVar.f20671f;
        sbU6.append(c.b(c.c(str != null ? str : "")));
        sbU6.append("</upnp:albumArtURI> ");
        return c.b(sbU6.toString().concat("</item> ").concat("</DIDL-Lite> "));
    }

    public static a a(String str, String str2) {
        if (str != null && str2 != null && !str.endsWith(IWiimuPlayQueueType.ExtTianTianMusicSuffix)) {
            str.endsWith(IWiimuPlayQueueType.ExtTTPodSearchSuffix);
        }
        return null;
    }
}
