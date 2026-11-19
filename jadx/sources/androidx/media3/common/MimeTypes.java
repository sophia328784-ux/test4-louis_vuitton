package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class MimeTypes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList f13899a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f13900b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static final class CustomMimeType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f13901a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f13902b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13903c;

        public CustomMimeType(String str, String str2, int i2) {
            this.f13901a = str;
            this.f13902b = str2;
            this.f13903c = i2;
        }
    }

    public static final class Mp4aObjectType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13905b;

        public Mp4aObjectType(int i2, int i3) {
            this.f13904a = i2;
            this.f13905b = i3;
        }

        public final int a() {
            int i2 = this.f13905b;
            if (i2 == 2) {
                return 10;
            }
            if (i2 == 5) {
                return 11;
            }
            if (i2 == 29) {
                return 12;
            }
            if (i2 == 42) {
                return 16;
            }
            if (i2 != 22) {
                return i2 != 23 ? 0 : 15;
            }
            return 1073741824;
        }
    }

    public static boolean a(String str, String str2) {
        Mp4aObjectType mp4aObjectTypeG;
        int iA;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "application/vnd.dvb.ait":
            case "application/x-icy":
            case "application/x-camera-motion":
            case "application/id3":
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "application/meta":
            case "audio/ac3":
            case "audio/raw":
            case "application/x-media3-cues":
            case "application/x-itut-t35":
            case "application/x-emsg":
            case "video/apv":
            case "audio/eac3":
            case "audio/flac":
            case "audio/mpeg":
            case "application/x-scte35":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                return true;
            case "audio/mp4a-latm":
                return (str2 == null || (mp4aObjectTypeG = g(str2)) == null || (iA = mp4aObjectTypeG.a()) == 0 || iA == 16) ? false : true;
            default:
                return false;
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.c0(str)) {
            String strE = e(str2);
            if (strE != null && k(strE)) {
                return strE;
            }
        }
        return null;
    }

    public static String c(String str, String str2) {
        if (str != null && str2 != null) {
            String[] strArrC0 = Util.c0(str);
            StringBuilder sb = new StringBuilder();
            for (String str3 : strArrC0) {
                if (str2.equals(e(str3))) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(str3);
                }
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
        }
        return null;
    }

    public static int d(String str, String str2) {
        Mp4aObjectType mp4aObjectTypeG;
        str.getClass();
        switch (str) {
            case "audio/eac3-joc":
                return 18;
            case "audio/vnd.dts.hd;profile=lbr":
                return 8;
            case "audio/vnd.dts":
                return 7;
            case "audio/mp4a-latm":
                if (str2 == null || (mp4aObjectTypeG = g(str2)) == null) {
                    return 0;
                }
                return mp4aObjectTypeG.a();
            case "audio/ac3":
                return 5;
            case "audio/ac4":
                return 17;
            case "audio/dsd":
                return 31;
            case "audio/vnd.dts.uhd;profile=p2":
                return 30;
            case "audio/eac3":
                return 6;
            case "audio/mpeg":
                return 9;
            case "audio/opus":
                return 20;
            case "audio/vnd.dts.hd":
                return 8;
            case "audio/true-hd":
                return 14;
            default:
                return 0;
        }
    }

    public static String e(String str) {
        Mp4aObjectType mp4aObjectTypeG;
        String strF = null;
        if (str == null) {
            return null;
        }
        String strC = Ascii.c(str.trim());
        if (strC.startsWith("avc1") || strC.startsWith("avc3")) {
            return "video/avc";
        }
        if (strC.startsWith("hev1") || strC.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (strC.startsWith("vvc1") || strC.startsWith("vvi1")) {
            return "video/vvc";
        }
        if (strC.startsWith("dvav") || strC.startsWith("dva1") || strC.startsWith("dvhe") || strC.startsWith("dvh1") || strC.startsWith("dav1")) {
            return "video/dolby-vision";
        }
        if (strC.startsWith("av01")) {
            return "video/av01";
        }
        if (strC.startsWith("vp9") || strC.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (strC.startsWith("vp8") || strC.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (strC.startsWith("mp4a")) {
            if (strC.startsWith("mp4a.") && (mp4aObjectTypeG = g(strC)) != null) {
                strF = f(mp4aObjectTypeG.f13904a);
            }
            return strF == null ? "audio/mp4a-latm" : strF;
        }
        if (strC.startsWith("mha1")) {
            return "audio/mha1";
        }
        if (strC.startsWith("mhm1")) {
            return "audio/mhm1";
        }
        if (strC.startsWith("ac-3") || strC.startsWith("dac3")) {
            return "audio/ac3";
        }
        if (strC.startsWith("ec-3") || strC.startsWith("dec3")) {
            return "audio/eac3";
        }
        if (strC.startsWith("ec+3")) {
            return "audio/eac3-joc";
        }
        if (strC.startsWith("ac-4") || strC.startsWith("dac4")) {
            return "audio/ac4";
        }
        if (strC.startsWith("dtsc")) {
            return "audio/vnd.dts";
        }
        if (strC.startsWith("dtse")) {
            return "audio/vnd.dts.hd;profile=lbr";
        }
        if (strC.startsWith("dtsh") || strC.startsWith("dtsl")) {
            return "audio/vnd.dts.hd";
        }
        if (strC.startsWith("dtsx")) {
            return "audio/vnd.dts.uhd;profile=p2";
        }
        if (strC.startsWith("opus")) {
            return "audio/opus";
        }
        if (strC.startsWith("vorbis")) {
            return "audio/vorbis";
        }
        if (strC.startsWith("flac")) {
            return "audio/flac";
        }
        if (strC.startsWith("stpp")) {
            return "application/ttml+xml";
        }
        if (strC.startsWith("wvtt")) {
            return "text/vtt";
        }
        if (strC.contains("cea708")) {
            return "application/cea-708";
        }
        if (strC.contains("eia608") || strC.contains("cea608")) {
            return "application/cea-608";
        }
        ArrayList arrayList = f13899a;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            CustomMimeType customMimeType = (CustomMimeType) arrayList.get(i2);
            if (strC.startsWith(customMimeType.f13902b)) {
                return customMimeType.f13901a;
            }
        }
        return null;
    }

    public static String f(int i2) {
        if (i2 == 32) {
            return "video/mp4v-es";
        }
        if (i2 == 33) {
            return "video/avc";
        }
        if (i2 == 35) {
            return "video/hevc";
        }
        if (i2 == 64) {
            return "audio/mp4a-latm";
        }
        if (i2 == 163) {
            return "video/wvc1";
        }
        if (i2 == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i2 == 221) {
            return "audio/vorbis";
        }
        if (i2 == 165) {
            return "audio/ac3";
        }
        if (i2 == 166) {
            return "audio/eac3";
        }
        switch (i2) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            case 108:
                return "image/jpeg";
            default:
                switch (i2) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    public static Mp4aObjectType g(String str) {
        Matcher matcher = f13900b.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(1);
        strGroup.getClass();
        String strGroup2 = matcher.group(2);
        try {
            return new Mp4aObjectType(Integer.parseInt(strGroup, 16), strGroup2 != null ? Integer.parseInt(strGroup2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String h(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static int i(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (k(str)) {
            return 1;
        }
        if (o(str)) {
            return 2;
        }
        if (n(str)) {
            return 3;
        }
        if (m(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str) || "application/meta".equals(str) || "application/x-itut-t35".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = f13899a;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            CustomMimeType customMimeType = (CustomMimeType) arrayList.get(i2);
            if (str.equals(customMimeType.f13901a)) {
                return customMimeType.f13903c;
            }
        }
        return -1;
    }

    public static String j(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : Util.c0(str)) {
            String strE = e(str2);
            if (strE != null && o(strE)) {
                return strE;
            }
        }
        return null;
    }

    public static boolean k(String str) {
        return "audio".equals(h(str));
    }

    public static boolean l(String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("dvhe") || str.startsWith("dvh1") || str.startsWith("dav1")) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return (str2.startsWith("dvhe") && str.startsWith("hev1")) || (str2.startsWith("dvh1") && str.startsWith("hvc1")) || ((str2.startsWith("dvav") && str.startsWith("avc3")) || ((str2.startsWith("dva1") && str.startsWith("avc1")) || (str2.startsWith("dav1") && str.startsWith("av01"))));
    }

    public static boolean m(String str) {
        return "image".equals(h(str)) || "application/x-image-uri".equals(str);
    }

    public static boolean n(String str) {
        return "text".equals(h(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    public static boolean o(String str) {
        return "video".equals(h(str));
    }

    public static String p(String str) {
        if (str == null) {
            return null;
        }
        String strC = Ascii.c(str);
        strC.getClass();
        switch (strC) {
            case "video/x-mvhevc":
                return "video/mv-hevc";
            case "audio/x-flac":
                return "audio/flac";
            case "application/x-mpegurl":
                return "application/x-mpegURL";
            case "audio/x-wav":
                return "audio/wav";
            case "audio/mpeg-l1":
                return "audio/mpeg-L1";
            case "audio/mpeg-l2":
                return "audio/mpeg-L2";
            case "audio/mp3":
                return "audio/mpeg";
            default:
                return strC;
        }
    }
}
