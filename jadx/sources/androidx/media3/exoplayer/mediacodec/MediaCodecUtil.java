package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaCodecUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f15393a = new HashMap();

    public static final class CodecKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f15394a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15395b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f15396c;

        public CodecKey(String str, boolean z, boolean z2) {
            this.f15394a = str;
            this.f15395b = z;
            this.f15396c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == CodecKey.class) {
                CodecKey codecKey = (CodecKey) obj;
                if (TextUtils.equals(this.f15394a, codecKey.f15394a) && this.f15395b == codecKey.f15395b && this.f15396c == codecKey.f15396c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return ((fc.b(31, 31, this.f15394a) + (this.f15395b ? 1231 : 1237)) * 31) + (this.f15396c ? 1231 : 1237);
        }
    }

    public static class DecoderQueryException extends Exception {
    }

    public interface MediaCodecListCompat {
    }

    public static final class MediaCodecListCompatV21 implements MediaCodecListCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.media.MediaCodecInfo[] f15398b;

        public MediaCodecListCompatV21(boolean z, boolean z2, boolean z3) {
            this.f15397a = (z || z2 || z3) ? 1 : 0;
        }
    }

    public interface ScoreProvider<T> {
        int a(Object obj);
    }

    public static void a(String str, ArrayList arrayList) {
        if ("audio/raw".equals(str)) {
            Collections.sort(arrayList, new g(new f()));
        }
        if (Build.VERSION.SDK_INT >= 32 || arrayList.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((MediaCodecInfo) arrayList.get(0)).f15374a)) {
            return;
        }
        arrayList.add((MediaCodecInfo) arrayList.remove(0));
    }

    public static android.media.MediaCodecInfo.CodecProfileLevel b(int i2, int i3) {
        android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel = new android.media.MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = i2;
        codecProfileLevel.level = i3;
        return codecProfileLevel;
    }

    public static String c(Format format) {
        Pair pairB;
        String str = format.o;
        String str2 = format.o;
        if ("audio/eac3-joc".equals(str)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(str2) && (pairB = CodecSpecificDataUtil.b(format)) != null) {
            int iIntValue = ((Integer) pairB.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return "video/hevc";
            }
            if (iIntValue == 512) {
                return "video/avc";
            }
            if (iIntValue == 1024) {
                ColorInfo colorInfo = format.E;
                if (colorInfo != null && colorInfo.f13727c == 6 && colorInfo.f13726b == 1) {
                    return null;
                }
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(str2)) {
            return "video/hevc";
        }
        return null;
    }

    public static String d(android.media.MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static synchronized List e(String str, boolean z, boolean z2) {
        try {
            CodecKey codecKey = new CodecKey(str, z, z2);
            HashMap map = f15393a;
            List list = (List) map.get(codecKey);
            if (list != null) {
                return list;
            }
            ArrayList arrayListF = f(codecKey, new MediaCodecListCompatV21(z, z2, str.equals("video/mv-hevc")));
            if (z) {
                arrayListF.isEmpty();
            }
            a(str, arrayListF);
            ImmutableList immutableListT = ImmutableList.t(arrayListF);
            map.put(codecKey, immutableListT);
            return immutableListT;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006f  */
    public static ArrayList f(CodecKey codecKey, MediaCodecListCompatV21 mediaCodecListCompatV21) throws DecoderQueryException {
        int i2;
        String strD;
        String str;
        MediaCodecListCompatV21 mediaCodecListCompatV22 = mediaCodecListCompatV21;
        int i3 = mediaCodecListCompatV22.f15397a;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = codecKey.f15394a;
            boolean z = codecKey.f15395b;
            if (mediaCodecListCompatV22.f15398b == null) {
                mediaCodecListCompatV22.f15398b = new MediaCodecList(i3).getCodecInfos();
            }
            int length = mediaCodecListCompatV22.f15398b.length;
            int i4 = 0;
            while (i4 < length) {
                if (mediaCodecListCompatV22.f15398b == null) {
                    mediaCodecListCompatV22.f15398b = new MediaCodecList(i3).getCodecInfos();
                }
                android.media.MediaCodecInfo mediaCodecInfo = mediaCodecListCompatV22.f15398b[i4];
                if (mediaCodecInfo.isAlias()) {
                    i2 = i4;
                } else {
                    int i5 = i4;
                    String name = mediaCodecInfo.getName();
                    if (mediaCodecInfo.isEncoder() || (strD = d(mediaCodecInfo, name, str2)) == null) {
                        i2 = i5;
                    } else {
                        try {
                            android.media.MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(strD);
                            boolean zIsFeatureSupported = capabilitiesForType.isFeatureSupported("tunneled-playback");
                            boolean zIsFeatureRequired = capabilitiesForType.isFeatureRequired("tunneled-playback");
                            boolean z2 = codecKey.f15396c;
                            if ((z2 || !zIsFeatureRequired) && (!z2 || zIsFeatureSupported)) {
                                boolean zIsFeatureSupported2 = capabilitiesForType.isFeatureSupported("secure-playback");
                                boolean zIsFeatureRequired2 = capabilitiesForType.isFeatureRequired("secure-playback");
                                if ((z || !zIsFeatureRequired2) && (!z || zIsFeatureSupported2)) {
                                    str = strD;
                                    try {
                                        boolean zIsHardwareAccelerated = mediaCodecInfo.isHardwareAccelerated();
                                        boolean zIsSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
                                        boolean zIsVendor = mediaCodecInfo.isVendor();
                                        if (z != zIsFeatureSupported2) {
                                            i2 = i5;
                                        } else {
                                            i2 = i5;
                                            arrayList.add(MediaCodecInfo.i(name, str2, str, capabilitiesForType, zIsHardwareAccelerated, zIsSoftwareOnly, zIsVendor, false));
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        Log.d("Failed to query codec " + name + " (" + str + ")");
                                        throw e;
                                    }
                                } else {
                                    i2 = i5;
                                }
                            } else {
                                i2 = i5;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str = strD;
                        }
                    }
                }
                i4 = i2 + 1;
                mediaCodecListCompatV22 = mediaCodecListCompatV21;
            }
            return arrayList;
        } catch (Exception e4) {
            throw new DecoderQueryException("Failed to query underlying media codecs", e4);
        }
    }

    public static List g(MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) {
        List listC = mediaCodecSelector.c(format.o, z, z2);
        String strC = c(format);
        List listX = strC == null ? ImmutableList.x() : mediaCodecSelector.c(strC, z, z2);
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.g(listC);
        builder.g(listX);
        return builder.j();
    }
}
