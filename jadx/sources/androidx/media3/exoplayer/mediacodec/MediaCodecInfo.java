package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ParsableNalUnitBitArray;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import defpackage.fc;
import defpackage.pq0;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCodecInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15376c;
    public final android.media.MediaCodecInfo.CodecCapabilities d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15378f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f15379h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f15380i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15381j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f15382k;
    public float l;

    public MediaCodecInfo(String str, String str2, String str3, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        str.getClass();
        this.f15374a = str;
        this.f15375b = str2;
        this.f15376c = str3;
        this.d = codecCapabilities;
        this.g = z;
        this.f15377e = z4;
        this.f15378f = z5;
        this.f15379h = z6;
        this.f15380i = MimeTypes.o(str2);
        this.l = -3.4028235E38f;
        this.f15381j = -1;
        this.f15382k = -1;
    }

    public static boolean a(android.media.MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i3, double d) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        Point point = new Point(Util.g(i2, widthAlignment) * widthAlignment, Util.g(i3, heightAlignment) * heightAlignment);
        int i4 = point.x;
        int i5 = point.y;
        if (d == -1.0d || d < 1.0d) {
            return videoCapabilities.isSizeSupported(i4, i5);
        }
        double dFloor = Math.floor(d);
        if (!videoCapabilities.areSizeAndRateSupported(i4, i5, dFloor)) {
            return false;
        }
        Range<Double> achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i4, i5);
        return achievableFrameRatesFor == null || dFloor <= ((Double) achievableFrameRatesFor.getUpper()).doubleValue();
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006f  */
    public static MediaCodecInfo i(String str, String str2, String str3, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        boolean z6 = codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback");
        if (codecCapabilities != null) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        boolean z7 = z4 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"));
        if (Build.VERSION.SDK_INT < 35 || codecCapabilities == null || !codecCapabilities.isFeatureSupported("detached-surface")) {
            z5 = false;
        } else {
            String str4 = Build.MANUFACTURER;
            if (str4.equals("Xiaomi") || str4.equals(n.a.f38812e) || str4.equals("realme") || str4.equals("motorola") || str4.equals("LENOVO")) {
                z5 = false;
            } else {
                z5 = true;
            }
        }
        return new MediaCodecInfo(str, str2, str3, codecCapabilities, z, z2, z3, z6, z7, z5);
    }

    public final DecoderReuseEvaluation b(Format format, Format format2) {
        Format format3;
        Format format4;
        int i2;
        String str = format.o;
        ColorInfo colorInfo = format.E;
        String str2 = format2.o;
        ColorInfo colorInfo2 = format2.E;
        int i3 = !Objects.equals(str, str2) ? 8 : 0;
        if (this.f15380i) {
            if (format.A != format2.A) {
                i3 |= 1024;
            }
            boolean z = (format.v == format2.v && format.w == format2.w) ? false : true;
            if (!this.f15377e && z) {
                i3 |= 512;
            }
            if ((!ColorInfo.e(colorInfo) || !ColorInfo.e(colorInfo2)) && !Objects.equals(colorInfo, colorInfo2)) {
                i3 |= 2048;
            }
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(this.f15374a) && !format.b(format2)) {
                i3 |= 2;
            }
            int i4 = format.x;
            if (i4 != -1 && (i2 = format.y) != -1 && i4 == format2.x && i2 == format2.y && z) {
                i3 |= 2;
            }
            if (i3 == 0 && Objects.equals(format2.o, "video/dolby-vision")) {
                Pair pairB = CodecSpecificDataUtil.b(format);
                Pair pairB2 = CodecSpecificDataUtil.b(format2);
                if (pairB == null || pairB2 == null || !((Integer) pairB.first).equals(pairB2.first)) {
                    i3 |= 2;
                }
            }
            if (i3 == 0) {
                return new DecoderReuseEvaluation(this.f15374a, format, format2, format.b(format2) ? 3 : 2, 0);
            }
            format3 = format;
            format4 = format2;
        } else {
            format3 = format;
            format4 = format2;
            if (format3.G != format4.G) {
                i3 |= 4096;
            }
            if (format3.H != format4.H) {
                i3 |= 8192;
            }
            if (format3.I != format4.I) {
                i3 |= 16384;
            }
            String str3 = this.f15375b;
            if (i3 == 0 && (str3.equals("audio/mp4a-latm") || str3.equals("audio/ac4"))) {
                Pair pairB3 = CodecSpecificDataUtil.b(format3);
                Pair pairB4 = CodecSpecificDataUtil.b(format4);
                if (pairB3 != null && pairB4 != null) {
                    int iIntValue = ((Integer) pairB3.first).intValue();
                    int iIntValue2 = ((Integer) pairB4.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new DecoderReuseEvaluation(this.f15374a, format3, format4, 3, 0);
                    }
                    if (str3.equals("audio/ac4") && pairB3.equals(pairB4)) {
                        return new DecoderReuseEvaluation(this.f15374a, format3, format4, 3, 0);
                    }
                }
            }
            if (i3 == 0 && (str3.equals("audio/eac3-joc") || str3.equals("audio/eac3"))) {
                return new DecoderReuseEvaluation(this.f15374a, format3, format4, 3, 0);
            }
            if (!format3.b(format4)) {
                i3 |= 32;
            }
            if ("audio/opus".equals(str3)) {
                i3 |= 2;
            }
            if (i3 == 0) {
                return new DecoderReuseEvaluation(this.f15374a, format3, format4, 1, 0);
            }
        }
        return new DecoderReuseEvaluation(this.f15374a, format3, format4, 0, i3);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c5 A[PHI: r2
      0x00c5: PHI (r2v1 android.util.Pair) = (r2v0 android.util.Pair), (r2v0 android.util.Pair), (r2v0 android.util.Pair), (r2v14 android.util.Pair) binds: [B:3:0x000e, B:5:0x0016, B:10:0x002a, B:37:0x00c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean c(Context context, Format format, boolean z) {
        android.media.MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        android.media.MediaCodecInfo.AudioCapabilities audioCapabilities;
        Pair pair;
        String strA;
        Pair pairB = CodecSpecificDataUtil.b(format);
        String str = format.o;
        String str2 = this.f15376c;
        if (str != null && str.equals("video/mv-hevc")) {
            String strP = MimeTypes.p(str2);
            if (strP.equals("video/mv-hevc")) {
                return true;
            }
            if (strP.equals("video/hevc")) {
                HashMap map = MediaCodecUtil.f15393a;
                List list = format.r;
                int i2 = 0;
                loop0: while (true) {
                    if (i2 >= list.size()) {
                        pair = null;
                        strA = null;
                        break;
                    }
                    byte[] bArr = (byte[]) list.get(i2);
                    int length = bArr.length;
                    if (length > 3) {
                        boolean[] zArr = new boolean[3];
                        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                        ImmutableList.Builder builder = new ImmutableList.Builder();
                        int i3 = 0;
                        while (i3 < bArr.length) {
                            int iB = NalUnitUtil.b(bArr, i3, bArr.length, zArr);
                            if (iB != bArr.length) {
                                builder.e(Integer.valueOf(iB));
                            }
                            i3 = iB + 3;
                        }
                        ImmutableList immutableListJ = builder.j();
                        for (int i4 = 0; i4 < immutableListJ.size(); i4++) {
                            if (((Integer) immutableListJ.get(i4)).intValue() + 3 < length) {
                                ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, ((Integer) immutableListJ.get(i4)).intValue() + 3, length);
                                NalUnitUtil.H265NalHeader h265NalHeaderF = NalUnitUtil.f(parsableNalUnitBitArray);
                                if (h265NalHeaderF.f14291a == 33 && h265NalHeaderF.f14292b == 0) {
                                    parsableNalUnitBitArray.j(4);
                                    int iE = parsableNalUnitBitArray.e(3);
                                    parsableNalUnitBitArray.i();
                                    pair = null;
                                    NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevelG = NalUnitUtil.g(parsableNalUnitBitArray, true, iE, null);
                                    strA = CodecSpecificDataUtil.a(h265ProfileTierLevelG.f14294a, h265ProfileTierLevelG.f14295b, h265ProfileTierLevelG.f14296c, h265ProfileTierLevelG.d, h265ProfileTierLevelG.f14297e, h265ProfileTierLevelG.f14298f);
                                    break loop0;
                                }
                            }
                        }
                    }
                    i2++;
                }
                if (strA == null) {
                    pairB = pair;
                } else {
                    String strTrim = strA.trim();
                    String str3 = Util.f14242a;
                    pairB = CodecSpecificDataUtil.c(strA, strTrim.split("\\.", -1), format.E);
                }
            }
        }
        if (pairB == null) {
            return true;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        int iIntValue2 = ((Integer) pairB.second).intValue();
        boolean zEquals = "video/dolby-vision".equals(str);
        String str4 = this.f15375b;
        if (zEquals) {
            str4.getClass();
            switch (str4) {
                case "video/av01":
                case "video/hevc":
                    iIntValue = 2;
                    break;
                case "video/avc":
                    iIntValue = 8;
                    break;
            }
            iIntValue2 = 0;
        }
        if (!this.f15380i && !str4.equals("audio/ac4") && iIntValue != 42) {
            return true;
        }
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            codecProfileLevelArr = new android.media.MediaCodecInfo.CodecProfileLevel[0];
        }
        if (str4.equals("audio/ac4") && codecProfileLevelArr.length == 0) {
            int i5 = ((codecCapabilities == null || (audioCapabilities = codecCapabilities.getAudioCapabilities()) == null) ? 2 : audioCapabilities.getMaxInputChannelCount()) > 18 ? 16 : 8;
            codecProfileLevelArr = context.getPackageManager().hasSystemFeature("android.hardware.type.automotive") ? new android.media.MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.b(1026, i5)} : new android.media.MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.b(257, i5), MediaCodecUtil.b(513, i5), MediaCodecUtil.b(514, i5), MediaCodecUtil.b(1026, i5), MediaCodecUtil.b(1028, i5)};
        }
        for (android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
            if (codecProfileLevel.profile == iIntValue && (codecProfileLevel.level >= iIntValue2 || !z)) {
                if (!"video/hevc".equals(str4) || 2 != iIntValue) {
                    return true;
                }
                String str5 = Build.DEVICE;
                if (!"sailfish".equals(str5) && !"marlin".equals(str5)) {
                    return true;
                }
            }
        }
        h("codec.profileLevel, " + format.f13763k + ", " + str2);
        return false;
    }

    public final boolean d(Format format) {
        return (Objects.equals(format.o, "audio/flac") && format.I == 22 && Build.VERSION.SDK_INT < 34 && this.f15374a.equals("c2.android.flac.decoder")) ? false : true;
    }

    public final boolean e(Context context, Format format) {
        int i2;
        int i3;
        String str = format.o;
        String str2 = this.f15375b;
        if ((!str2.equals(str) && !str2.equals(MediaCodecUtil.c(format))) || !c(context, format, true) || !d(format)) {
            return false;
        }
        if (this.f15380i) {
            int i4 = format.v;
            if (i4 > 0 && (i3 = format.w) > 0) {
                return g(format.z, i4, i3);
            }
        } else {
            int i5 = format.H;
            android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
            if (i5 != -1) {
                if (codecCapabilities == null) {
                    h("sampleRate.caps");
                    return false;
                }
                android.media.MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    h("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i5)) {
                    h("sampleRate.support, " + i5);
                    return false;
                }
            }
            int i6 = format.G;
            if (i6 != -1) {
                if (codecCapabilities == null) {
                    h("channelCount.caps");
                    return false;
                }
                android.media.MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    h("channelCount.aCaps");
                    return false;
                }
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && maxInputChannelCount <= 0 && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2)) {
                    if ("audio/ac3".equals(str2)) {
                        i2 = 6;
                    } else {
                        i2 = "audio/eac3".equals(str2) ? 16 : 30;
                    }
                    StringBuilder sbR = fc.r(maxInputChannelCount, "AssumedMaxChannelAdjustment: ", this.f15374a, ", [", " to ");
                    sbR.append(i2);
                    sbR.append("]");
                    Log.g(sbR.toString());
                    maxInputChannelCount = i2;
                }
                if (maxInputChannelCount < i6) {
                    h("channelCount.support, " + i6);
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean f(Format format) {
        if (this.f15380i) {
            return this.f15377e;
        }
        Pair pairB = CodecSpecificDataUtil.b(format);
        return pairB != null && ((Integer) pairB.first).intValue() == 42;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    public final boolean g(double d, int i2, int i3) {
        List<android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
        char c2;
        boolean z;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            h("sizeAndRate.caps");
            return false;
        }
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            h("sizeAndRate.vCaps");
            return false;
        }
        Boolean bool = MediaCodecPerformancePointCoverageProvider.f15383a;
        if ((bool != null && bool.booleanValue()) || (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) == null || supportedPerformancePoints.isEmpty()) {
            c2 = 0;
        } else {
            android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint(i2, i3, (int) d);
            int i4 = 0;
            while (true) {
                if (i4 >= supportedPerformancePoints.size()) {
                    c2 = 1;
                    break;
                }
                if (supportedPerformancePoints.get(i4).covers(performancePoint)) {
                    c2 = 2;
                    break;
                }
                i4++;
            }
            if (c2 == 1 && MediaCodecPerformancePointCoverageProvider.f15383a == null) {
                int i5 = Build.VERSION.SDK_INT;
                if (i5 >= 37) {
                    z = false;
                } else {
                    int iA = MediaCodecPerformancePointCoverageProvider.Api29.a(true);
                    if (i5 < 35 ? MediaCodecPerformancePointCoverageProvider.Api29.a(false) != 2 || iA == 1 : iA == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                MediaCodecPerformancePointCoverageProvider.f15383a = Boolean.valueOf(z);
                if (z) {
                    c2 = 0;
                }
            }
        }
        if (c2 != 2) {
            if (c2 == 1) {
                StringBuilder sbP = fc.p(i2, i3, "sizeAndRate.cover, ", "x", "@");
                sbP.append(d);
                h(sbP.toString());
                return false;
            }
            if (!a(videoCapabilities, i2, i3, d)) {
                if (i2 < i3) {
                    String str = this.f15374a;
                    if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && a(videoCapabilities, i3, i2, d)) {
                        StringBuilder sbP2 = fc.p(i2, i3, "sizeAndRate.rotated, ", "x", "@");
                        sbP2.append(d);
                        StringBuilder sbS = fc.s("AssumedSupport [", sbP2.toString(), "] [", str, ", ");
                        sbS.append(this.f15375b);
                        sbS.append("] [");
                        sbS.append(Util.f14242a);
                        sbS.append("]");
                        Log.b(sbS.toString());
                        return true;
                    }
                }
                StringBuilder sbP3 = fc.p(i2, i3, "sizeAndRate.support, ", "x", "@");
                sbP3.append(d);
                h(sbP3.toString());
                return false;
            }
        }
        return true;
    }

    public final void h(String str) {
        StringBuilder sbR = pq0.r("NoSupport [", str, "] [");
        sbR.append(this.f15374a);
        sbR.append(", ");
        sbR.append(this.f15375b);
        sbR.append("] [");
        sbR.append(Util.f14242a);
        sbR.append("]");
        Log.b(sbR.toString());
    }

    public final String toString() {
        return this.f15374a;
    }
}
