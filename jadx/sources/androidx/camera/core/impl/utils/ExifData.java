package androidx.camera.core.impl.utils;

import android.os.Build;
import android.util.Pair;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData$FlashState;
import androidx.core.util.Preconditions;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.n00;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.rtccloud.sdk.internal.Constants;

/* JADX INFO: loaded from: classes.dex */
public class ExifData {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExifTag[] f2400c;
    public static final ExifTag[][] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final HashSet f2401e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f2402f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ByteOrder f2404b;

    /* JADX INFO: renamed from: androidx.camera.core.impl.utils.ExifData$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2405a;

        static {
            int[] iArr = new int[CameraCaptureMetaData$FlashState.values().length];
            f2405a = iArr;
            try {
                iArr[CameraCaptureMetaData$FlashState.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2405a[CameraCaptureMetaData$FlashState.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2405a[CameraCaptureMetaData$FlashState.FIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Pattern f2406c = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
        public static final Pattern d = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Pattern f2407e = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final ArrayList f2408f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f2409a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ByteOrder f2410b;

        /* JADX INFO: renamed from: androidx.camera.core.impl.utils.ExifData$Builder$1, reason: invalid class name */
        public class AnonymousClass1 implements Enumeration<HashMap<String, ExifTag>> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2411a;

            @Override // java.util.Enumeration
            public final boolean hasMoreElements() {
                int i2 = this.f2411a;
                ExifTag[] exifTagArr = ExifData.f2400c;
                return i2 < 4;
            }

            @Override // java.util.Enumeration
            public final HashMap<String, ExifTag> nextElement() {
                HashMap<String, ExifTag> map = new HashMap<>();
                for (ExifTag exifTag : ExifData.d[this.f2411a]) {
                    map.put(exifTag.f2420b, exifTag);
                }
                this.f2411a++;
                return map;
            }
        }

        /* JADX INFO: renamed from: androidx.camera.core.impl.utils.ExifData$Builder$2, reason: invalid class name */
        public class AnonymousClass2 implements Enumeration<Map<String, ExifAttribute>> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2412a;

            @Override // java.util.Enumeration
            public final boolean hasMoreElements() {
                int i2 = this.f2412a;
                ExifTag[] exifTagArr = ExifData.f2400c;
                return i2 < 4;
            }

            @Override // java.util.Enumeration
            public final Map<String, ExifAttribute> nextElement() {
                this.f2412a++;
                return new HashMap();
            }
        }

        static {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1();
            anonymousClass1.f2411a = 0;
            f2408f = Collections.list(anonymousClass1);
        }

        public Builder() {
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            anonymousClass2.f2412a = 0;
            this.f2409a = Collections.list(anonymousClass2);
            this.f2410b = byteOrder;
        }

        public static Pair a(String str) {
            if (str.contains(",")) {
                String[] strArrSplit = str.split(",", -1);
                Pair pairA = a(strArrSplit[0]);
                if (((Integer) pairA.first).intValue() == 2) {
                    return pairA;
                }
                for (int i2 = 1; i2 < strArrSplit.length; i2++) {
                    Pair pairA2 = a(strArrSplit[i2]);
                    int iIntValue = (((Integer) pairA2.first).equals(pairA.first) || ((Integer) pairA2.second).equals(pairA.first)) ? ((Integer) pairA.first).intValue() : -1;
                    int iIntValue2 = (((Integer) pairA.second).intValue() == -1 || !(((Integer) pairA2.first).equals(pairA.second) || ((Integer) pairA2.second).equals(pairA.second))) ? -1 : ((Integer) pairA.second).intValue();
                    if (iIntValue == -1 && iIntValue2 == -1) {
                        return new Pair(2, -1);
                    }
                    if (iIntValue == -1) {
                        pairA = new Pair(Integer.valueOf(iIntValue2), -1);
                    } else if (iIntValue2 == -1) {
                        pairA = new Pair(Integer.valueOf(iIntValue), -1);
                    }
                }
                return pairA;
            }
            if (!str.contains("/")) {
                try {
                    try {
                        long j2 = Long.parseLong(str);
                        if (j2 < 0 || j2 > 65535) {
                            return j2 < 0 ? new Pair(9, -1) : new Pair(4, -1);
                        }
                        return new Pair(3, 4);
                    } catch (NumberFormatException unused) {
                        return new Pair(2, -1);
                    }
                } catch (NumberFormatException unused2) {
                    Double.parseDouble(str);
                    return new Pair(12, -1);
                }
            }
            String[] strArrSplit2 = str.split("/", -1);
            if (strArrSplit2.length == 2) {
                try {
                    long j3 = (long) Double.parseDouble(strArrSplit2[0]);
                    long j4 = (long) Double.parseDouble(strArrSplit2[1]);
                    if (j3 >= 0 && j4 >= 0) {
                        if (j3 <= 2147483647L && j4 <= 2147483647L) {
                            return new Pair(10, 5);
                        }
                        return new Pair(5, -1);
                    }
                    return new Pair(10, -1);
                } catch (NumberFormatException unused3) {
                }
            }
            return new Pair(2, -1);
        }

        public final void b(String str, String str2, ArrayList arrayList) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((Map) it.next()).containsKey(str)) {
                    return;
                }
            }
            c(str, str2, arrayList);
        }

        /* JADX WARN: Code duplicated, block: B:61:0x0143  */
        public final void c(String str, String str2, List list) {
            int i2;
            int i3;
            int i4;
            ExifAttribute exifAttribute;
            int i5;
            boolean z;
            int i6;
            int i7;
            boolean z2;
            String str3 = str;
            String strReplaceAll = str2;
            int i8 = 5;
            if (("DateTime".equals(str3) || "DateTimeOriginal".equals(str3) || "DateTimeDigitized".equals(str3)) && strReplaceAll != null) {
                boolean zFind = d.matcher(strReplaceAll).find();
                boolean zFind2 = f2407e.matcher(strReplaceAll).find();
                if (strReplaceAll.length() != 19 || (!zFind && !zFind2)) {
                    Logger.c(5, "ExifData");
                    return;
                } else if (zFind2) {
                    strReplaceAll = strReplaceAll.replaceAll("-", ":");
                }
            }
            if ("ISOSpeedRatings".equals(str3)) {
                str3 = "PhotographicSensitivity";
            }
            int i9 = 2;
            int i10 = 1;
            if (strReplaceAll != null && ExifData.f2401e.contains(str3)) {
                if (str3.equals("GPSTimeStamp")) {
                    Matcher matcher = f2406c.matcher(strReplaceAll);
                    if (!matcher.find()) {
                        Logger.c(5, "ExifData");
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    String strGroup = matcher.group(1);
                    strGroup.getClass();
                    sb.append(Integer.parseInt(strGroup));
                    sb.append("/1,");
                    String strGroup2 = matcher.group(2);
                    strGroup2.getClass();
                    sb.append(Integer.parseInt(strGroup2));
                    sb.append("/1,");
                    String strGroup3 = matcher.group(3);
                    strGroup3.getClass();
                    sb.append(Integer.parseInt(strGroup3));
                    sb.append("/1");
                    strReplaceAll = sb.toString();
                } else {
                    try {
                        strReplaceAll = new LongRational((long) (Double.parseDouble(strReplaceAll) * 10000.0d), 10000L).toString();
                    } catch (NumberFormatException unused) {
                        Logger.c(5, "ExifData");
                        return;
                    }
                }
            }
            int i11 = 0;
            while (true) {
                ExifTag[] exifTagArr = ExifData.f2400c;
                if (i11 >= 4) {
                    return;
                }
                ExifTag exifTag = (ExifTag) ((HashMap) f2408f.get(i11)).get(str3);
                if (exifTag != null) {
                    int i12 = exifTag.d;
                    int i13 = exifTag.f2421c;
                    if (strReplaceAll != null) {
                        Pair pairA = a(strReplaceAll);
                        int i14 = -1;
                        if (i13 == ((Integer) pairA.first).intValue() || i13 == ((Integer) pairA.second).intValue()) {
                            i12 = i13;
                        } else if (i12 == -1 || (i12 != ((Integer) pairA.first).intValue() && i12 != ((Integer) pairA.second).intValue())) {
                            if (i13 == i10 || i13 == 7 || i13 == i9) {
                                i12 = i13;
                            }
                            i2 = i8;
                            i3 = i9;
                            i4 = i10;
                        }
                        String str4 = "/";
                        ByteOrder byteOrder = this.f2410b;
                        switch (i12) {
                            case 1:
                                i2 = i8;
                                i3 = i9;
                                Map map = (Map) list.get(i11);
                                Charset charset = ExifAttribute.d;
                                i4 = i10;
                                if (strReplaceAll.length() != i4 || strReplaceAll.charAt(0) < '0' || strReplaceAll.charAt(0) > '1') {
                                    byte[] bytes = strReplaceAll.getBytes(ExifAttribute.d);
                                    exifAttribute = new ExifAttribute(i4, bytes.length, bytes);
                                } else {
                                    byte[] bArr = new byte[i4];
                                    bArr[0] = (byte) (strReplaceAll.charAt(0) - '0');
                                    exifAttribute = new ExifAttribute(i4, i4, bArr);
                                }
                                map.put(str3, exifAttribute);
                                break;
                            case 2:
                            case 7:
                                i2 = i8;
                                Map map2 = (Map) list.get(i11);
                                Charset charset2 = ExifAttribute.d;
                                byte[] bytes2 = strReplaceAll.concat("\u0000").getBytes(ExifAttribute.d);
                                i3 = 2;
                                map2.put(str3, new ExifAttribute(2, bytes2.length, bytes2));
                                i4 = i10;
                                break;
                            case 3:
                                i2 = i8;
                                i5 = i10;
                                z = false;
                                String[] strArrSplit = strReplaceAll.split(",", -1);
                                int length = strArrSplit.length;
                                int[] iArr = new int[length];
                                for (int i15 = 0; i15 < strArrSplit.length; i15++) {
                                    iArr[i15] = Integer.parseInt(strArrSplit[i15]);
                                }
                                Map map3 = (Map) list.get(i11);
                                ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifAttribute.f2396f[3] * length]);
                                byteBufferWrap.order(byteOrder);
                                for (int i16 = 0; i16 < length; i16++) {
                                    byteBufferWrap.putShort((short) iArr[i16]);
                                }
                                map3.put(str3, new ExifAttribute(3, length, byteBufferWrap.array()));
                                i4 = i5;
                                i3 = 2;
                                break;
                            case 4:
                                i2 = i8;
                                i5 = i10;
                                z = false;
                                String[] strArrSplit2 = strReplaceAll.split(",", -1);
                                long[] jArr = new long[strArrSplit2.length];
                                for (int i17 = 0; i17 < strArrSplit2.length; i17++) {
                                    jArr[i17] = Long.parseLong(strArrSplit2[i17]);
                                }
                                ((Map) list.get(i11)).put(str3, ExifAttribute.b(jArr, byteOrder));
                                i4 = i5;
                                i3 = 2;
                                break;
                            case 5:
                                int i18 = i8;
                                i5 = i10;
                                int i19 = -1;
                                z = false;
                                String[] strArrSplit3 = strReplaceAll.split(",", -1);
                                int length2 = strArrSplit3.length;
                                LongRational[] longRationalArr = new LongRational[length2];
                                int i20 = 0;
                                while (i20 < strArrSplit3.length) {
                                    String[] strArrSplit4 = strArrSplit3[i20].split(str4, i19);
                                    int i21 = i20;
                                    longRationalArr[i21] = new LongRational((long) Double.parseDouble(strArrSplit4[0]), (long) Double.parseDouble(strArrSplit4[i5]));
                                    i20 = i21 + 1;
                                    str4 = str4;
                                    i19 = -1;
                                }
                                Map map4 = (Map) list.get(i11);
                                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(new byte[ExifAttribute.f2396f[i18] * length2]);
                                byteBufferWrap2.order(byteOrder);
                                for (int i22 = 0; i22 < length2; i22++) {
                                    LongRational longRational = longRationalArr[i22];
                                    byteBufferWrap2.putInt((int) longRational.f2422a);
                                    byteBufferWrap2.putInt((int) longRational.f2423b);
                                }
                                i2 = i18;
                                map4.put(str3, new ExifAttribute(i2, length2, byteBufferWrap2.array()));
                                i4 = i5;
                                i3 = 2;
                                break;
                            case 6:
                            case 8:
                            case 11:
                            default:
                                i2 = i8;
                                i3 = i9;
                                i4 = i10;
                                break;
                            case 9:
                                i6 = i8;
                                i7 = i10;
                                z2 = false;
                                String[] strArrSplit5 = strReplaceAll.split(",", -1);
                                int length3 = strArrSplit5.length;
                                int[] iArr2 = new int[length3];
                                for (int i23 = 0; i23 < strArrSplit5.length; i23++) {
                                    iArr2[i23] = Integer.parseInt(strArrSplit5[i23]);
                                }
                                Map map5 = (Map) list.get(i11);
                                ByteBuffer byteBufferWrap3 = ByteBuffer.wrap(new byte[ExifAttribute.f2396f[9] * length3]);
                                byteBufferWrap3.order(byteOrder);
                                for (int i24 = 0; i24 < length3; i24++) {
                                    byteBufferWrap3.putInt(iArr2[i24]);
                                }
                                map5.put(str3, new ExifAttribute(9, length3, byteBufferWrap3.array()));
                                i4 = i7;
                                i2 = i6;
                                i3 = 2;
                                break;
                            case 10:
                                i7 = i10;
                                String[] strArrSplit6 = strReplaceAll.split(",", -1);
                                int length4 = strArrSplit6.length;
                                LongRational[] longRationalArr2 = new LongRational[length4];
                                int i25 = 0;
                                while (i25 < strArrSplit6.length) {
                                    String[] strArrSplit7 = strArrSplit6[i25].split("/", i14);
                                    int i26 = i25;
                                    longRationalArr2[i26] = new LongRational((long) Double.parseDouble(strArrSplit7[0]), (long) Double.parseDouble(strArrSplit7[i7]));
                                    i25 = i26 + 1;
                                    i8 = i8;
                                    strArrSplit6 = strArrSplit6;
                                    i14 = -1;
                                }
                                i6 = i8;
                                z2 = false;
                                Map map6 = (Map) list.get(i11);
                                ByteBuffer byteBufferWrap4 = ByteBuffer.wrap(new byte[ExifAttribute.f2396f[10] * length4]);
                                byteBufferWrap4.order(byteOrder);
                                for (int i27 = 0; i27 < length4; i27++) {
                                    LongRational longRational2 = longRationalArr2[i27];
                                    byteBufferWrap4.putInt((int) longRational2.f2422a);
                                    byteBufferWrap4.putInt((int) longRational2.f2423b);
                                }
                                map6.put(str3, new ExifAttribute(10, length4, byteBufferWrap4.array()));
                                i4 = i7;
                                i2 = i6;
                                i3 = 2;
                                break;
                            case 12:
                                String[] strArrSplit8 = strReplaceAll.split(",", -1);
                                int length5 = strArrSplit8.length;
                                double[] dArr = new double[length5];
                                for (int i28 = 0; i28 < strArrSplit8.length; i28++) {
                                    dArr[i28] = Double.parseDouble(strArrSplit8[i28]);
                                }
                                Map map7 = (Map) list.get(i11);
                                ByteBuffer byteBufferWrap5 = ByteBuffer.wrap(new byte[ExifAttribute.f2396f[12] * length5]);
                                byteBufferWrap5.order(byteOrder);
                                int i29 = 0;
                                while (i29 < length5) {
                                    byteBufferWrap5.putDouble(dArr[i29]);
                                    i29++;
                                    i10 = i10;
                                }
                                map7.put(str3, new ExifAttribute(12, length5, byteBufferWrap5.array()));
                                i4 = i10;
                                i2 = i8;
                                i3 = 2;
                                break;
                        }
                    } else {
                        ((Map) list.get(i11)).remove(str3);
                    }
                    i2 = i8;
                    i3 = i9;
                    i4 = i10;
                } else {
                    i2 = i8;
                    i3 = i9;
                    i4 = i10;
                }
                i11++;
                i10 = i4;
                i8 = i2;
                i9 = i3;
            }
        }

        public final void d(CameraCaptureMetaData$FlashState cameraCaptureMetaData$FlashState) {
            int i2;
            if (cameraCaptureMetaData$FlashState == CameraCaptureMetaData$FlashState.UNKNOWN) {
                return;
            }
            int i3 = AnonymousClass1.f2405a[cameraCaptureMetaData$FlashState.ordinal()];
            if (i3 == 1) {
                i2 = 0;
            } else if (i3 == 2) {
                i2 = 32;
            } else {
                if (i3 != 3) {
                    cameraCaptureMetaData$FlashState.toString();
                    Logger.c(5, "ExifData");
                    return;
                }
                i2 = 1;
            }
            int i4 = i2 & 1;
            ArrayList arrayList = this.f2409a;
            if (i4 == 1) {
                c("LightSource", String.valueOf(4), arrayList);
            }
            c("Flash", String.valueOf(i2), arrayList);
        }

        public final void e(float f2) {
            c("FocalLength", new LongRational((long) (f2 * 1000.0f), 1000L).toString(), this.f2409a);
        }

        public final void f(int i2) {
            int i3;
            if (i2 == 0) {
                i3 = 1;
            } else if (i2 == 90) {
                i3 = 6;
            } else if (i2 == 180) {
                i3 = 3;
            } else if (i2 != 270) {
                Logger.c(5, "ExifData");
                i3 = 0;
            } else {
                i3 = 8;
            }
            c("Orientation", String.valueOf(i3), this.f2409a);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class WhiteBalanceMode {
        private static final /* synthetic */ WhiteBalanceMode[] $VALUES;
        public static final WhiteBalanceMode AUTO;
        public static final WhiteBalanceMode MANUAL;

        static {
            WhiteBalanceMode whiteBalanceMode = new WhiteBalanceMode("AUTO", 0);
            AUTO = whiteBalanceMode;
            WhiteBalanceMode whiteBalanceMode2 = new WhiteBalanceMode("MANUAL", 1);
            MANUAL = whiteBalanceMode2;
            $VALUES = new WhiteBalanceMode[]{whiteBalanceMode, whiteBalanceMode2};
        }

        public static WhiteBalanceMode valueOf(String str) {
            return (WhiteBalanceMode) Enum.valueOf(WhiteBalanceMode.class, str);
        }

        public static WhiteBalanceMode[] values() {
            return (WhiteBalanceMode[]) $VALUES.clone();
        }
    }

    static {
        ExifTag[] exifTagArr = {new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", 257, 3, 4), new ExifTag("Make", 271, 2), new ExifTag(m.n, 272, 2), new ExifTag("Orientation", 274, 3), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4)};
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("SensitivityType", 34864, 3), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("ShutterSpeedValue", Constants.Direction.SEND, 10), new ExifTag("ApertureValue", Constants.Direction.RECV, 5), new ExifTag("BrightnessValue", Constants.Direction.BOTH, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3)};
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestDistanceRef", 25, 2)};
        f2400c = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4)};
        d = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, new ExifTag[]{new ExifTag("InteroperabilityIndex", 1, 2)}};
        f2401e = new HashSet(Arrays.asList("FNumber", "ExposureTime", "GPSTimeStamp"));
        f2402f = new String(new byte[]{1, 2, 3, 0}, StandardCharsets.UTF_8);
    }

    public ExifData(ByteOrder byteOrder, ArrayList arrayList) {
        Preconditions.f("Malformed attributes list. Number of IFDs mismatch.", arrayList.size() == 4);
        this.f2404b = byteOrder;
        this.f2403a = arrayList;
    }

    public static ExifData a(ImageProxy imageProxy, int i2) {
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        Builder builder = new Builder();
        String strValueOf = String.valueOf(1);
        ArrayList arrayList = builder.f2409a;
        builder.c("Orientation", strValueOf, arrayList);
        builder.c("XResolution", "72/1", arrayList);
        builder.c("YResolution", "72/1", arrayList);
        builder.c("ResolutionUnit", String.valueOf(2), arrayList);
        builder.c("YCbCrPositioning", String.valueOf(1), arrayList);
        builder.c("Make", Build.MANUFACTURER, arrayList);
        builder.c(m.n, Build.MODEL, arrayList);
        if (imageProxy.p1() != null) {
            imageProxy.p1().b(builder);
        }
        builder.f(i2);
        builder.c("ImageWidth", String.valueOf(imageProxy.getWidth()), arrayList);
        builder.c("ImageLength", String.valueOf(imageProxy.getHeight()), arrayList);
        ArrayList list = Collections.list(new Enumeration<Map<String, ExifAttribute>>(builder) { // from class: androidx.camera.core.impl.utils.ExifData.Builder.3

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Enumeration f2413a;

            {
                this.f2413a = Collections.enumeration(builder.f2409a);
            }

            @Override // java.util.Enumeration
            public final boolean hasMoreElements() {
                return this.f2413a.hasMoreElements();
            }

            @Override // java.util.Enumeration
            public final Map<String, ExifAttribute> nextElement() {
                return new HashMap((Map) this.f2413a.nextElement());
            }
        });
        if (!((Map) list.get(1)).isEmpty()) {
            builder.b("ExposureProgram", String.valueOf(0), list);
            builder.b("ExifVersion", "0230", list);
            builder.b("ComponentsConfiguration", f2402f, list);
            builder.b("MeteringMode", String.valueOf(0), list);
            builder.b("LightSource", String.valueOf(0), list);
            builder.b("FlashpixVersion", "0100", list);
            builder.b("FocalPlaneResolutionUnit", String.valueOf(2), list);
            builder.b("FileSource", String.valueOf(3), list);
            builder.b("SceneType", String.valueOf(1), list);
            builder.b("CustomRendered", String.valueOf(0), list);
            builder.b("SceneCaptureType", String.valueOf(0), list);
            builder.b("Contrast", String.valueOf(0), list);
            builder.b("Saturation", String.valueOf(0), list);
            builder.b("Sharpness", String.valueOf(0), list);
        }
        if (!((Map) list.get(2)).isEmpty()) {
            builder.b("GPSVersionID", "2300", list);
            builder.b("GPSSpeedRef", "K", list);
            builder.b("GPSTrackRef", "T", list);
            builder.b("GPSImgDirectionRef", "T", list);
            builder.b("GPSDestBearingRef", "T", list);
            builder.b("GPSDestDistanceRef", "K", list);
        }
        return new ExifData(builder.f2410b, list);
    }

    public final Map b(int i2) {
        Preconditions.c(i2, 0, 4, n00.m(i2, "Invalid IFD index: ", ". Index should be between [0, EXIF_TAGS.length] "));
        return (Map) this.f2403a.get(i2);
    }
}
