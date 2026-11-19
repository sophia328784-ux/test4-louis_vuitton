package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import android.util.Pair;
import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b;
import com.batch.android.x0.h;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.a;
import defpackage.az;
import defpackage.d20;
import defpackage.lc0;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import defpackage.pq0;
import defpackage.r81;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public class ExifInterface {
    public static final ExifTag W;
    public static final ExifTag[][] X;
    public static final ExifTag[] Y;
    public static final HashMap[] Z;
    public static final HashMap[] a0;
    public static final Set b0;
    public static final HashMap c0;
    public static final Charset d0;
    public static final byte[] e0;
    public static final byte[] f0;
    public static final Pattern g0;
    public static final Pattern h0;
    public static final Pattern i0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FileDescriptor f13153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AssetManager.AssetInputStream f13154c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f13155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap[] f13156f;
    public final HashSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ByteOrder f13157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13158i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13159j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13160k;
    public int l;
    public int m;
    public byte[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public ExifAttribute t;
    public boolean u;
    public static final boolean v = Log.isLoggable("ExifInterface", 3);
    public static final List w = Arrays.asList(1, 6, 3, 8);
    public static final List x = Arrays.asList(2, 7, 4, 5);
    public static final int[] y = {8, 8, 8};
    public static final int[] z = {8};
    public static final byte[] A = {-1, h.a.C, -1};
    public static final byte[] B = {102, 116, 121, 112};
    public static final byte[] C = {109, 105, 102, 49};
    public static final byte[] D = {104, 101, 105, 99};
    public static final byte[] E = {97, 118, 105, 102};
    public static final byte[] F = {97, 118, 105, 115};
    public static final byte[] G = {79, 76, 89, 77, 80, 0};
    public static final byte[] H = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
    public static final byte[] I = {-119, 80, 78, 71, 13, 10, 26, 10};
    public static final byte[] J = "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000".getBytes(StandardCharsets.UTF_8);
    public static final byte[] K = {82, 73, 70, 70};
    public static final byte[] L = {87, 69, 66, 80};
    public static final byte[] M = {69, 88, 73, 70};
    public static final byte[] N = {-99, 1, 42};
    public static final byte[] O = "VP8X".getBytes(Charset.defaultCharset());
    public static final byte[] P = "VP8L".getBytes(Charset.defaultCharset());
    public static final byte[] Q = "VP8 ".getBytes(Charset.defaultCharset());
    public static final byte[] R = "ANIM".getBytes(Charset.defaultCharset());
    public static final byte[] S = "ANMF".getBytes(Charset.defaultCharset());
    public static final String[] T = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    public static final int[] U = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    public static final byte[] V = {65, 83, 67, 73, 73, 0, 0, 0};

    @Retention(RetentionPolicy.SOURCE)
    public @interface ExifStreamType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IfdType {
    }

    public static class Rational {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f13175a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f13176b;

        public Rational(long j2, long j3) {
            if (j3 == 0) {
                this.f13175a = 0L;
                this.f13176b = 1L;
            } else {
                this.f13175a = j2;
                this.f13176b = j3;
            }
        }

        public final String toString() {
            return this.f13175a + "/" + this.f13176b;
        }
    }

    static {
        ExifTag[] exifTagArr = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", Sink.ORIENTATION_270, 2), new ExifTag("Make", 271, 2), new ExifTag(m.n, 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7), new ExifTag("Xmp", 700, 1)};
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag("PhotographicSensitivity", 34855, 3), new ExifTag("OECF", 34856, 7), new ExifTag("SensitivityType", 34864, 3), new ExifTag("StandardOutputSensitivity", 34865, 4), new ExifTag("RecommendedExposureIndex", 34866, 4), new ExifTag("ISOSpeed", 34867, 4), new ExifTag("ISOSpeedLatitudeyyy", 34868, 4), new ExifTag("ISOSpeedLatitudezzz", 34869, 4), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("OffsetTime", 36880, 2), new ExifTag("OffsetTimeOriginal", 36881, 2), new ExifTag("OffsetTimeDigitized", 36882, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", Constants.Direction.SEND, 10), new ExifTag("ApertureValue", Constants.Direction.RECV, 5), new ExifTag("BrightnessValue", Constants.Direction.BOTH, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("CameraOwnerName", 42032, 2), new ExifTag("BodySerialNumber", 42033, 2), new ExifTag("LensSpecification", 42034, 5), new ExifTag("LensMake", 42035, 2), new ExifTag("LensModel", 42036, 2), new ExifTag("Gamma", 42240, 5), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5, 10), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5, 10), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3), new ExifTag("GPSHPositioningError", 31, 5)};
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        ExifTag[] exifTagArr5 = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ThumbnailImageWidth", 256, 3, 4), new ExifTag("ThumbnailImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", Sink.ORIENTATION_270, 2), new ExifTag("Make", 271, 2), new ExifTag(m.n, 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("ThumbnailOrientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", 278, 3, 4), new ExifTag("StripByteCounts", 279, 3, 4), new ExifTag("XResolution", 282, 5), new ExifTag("YResolution", 283, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", 318, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag("SubIFDPointer", 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", 532, 5), new ExifTag("Copyright", 33432, 2), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        W = new ExifTag("StripOffsets", 273, 3);
        X = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, new ExifTag[]{new ExifTag("ThumbnailImage", 256, 7), new ExifTag("CameraSettingsIFDPointer", 8224, 4), new ExifTag("ImageProcessingIFDPointer", 8256, 4)}, new ExifTag[]{new ExifTag("PreviewImageStart", 257, 4), new ExifTag("PreviewImageLength", 258, 4)}, new ExifTag[]{new ExifTag("AspectFrame", 4371, 3)}, new ExifTag[]{new ExifTag("ColorSpace", 55, 3)}};
        Y = new ExifTag[]{new ExifTag("SubIFDPointer", 330, 4), new ExifTag("ExifIFDPointer", 34665, 4), new ExifTag("GPSInfoIFDPointer", 34853, 4), new ExifTag("InteroperabilityIFDPointer", 40965, 4), new ExifTag("CameraSettingsIFDPointer", 8224, 1), new ExifTag("ImageProcessingIFDPointer", 8256, 1)};
        Z = new HashMap[10];
        a0 = new HashMap[10];
        b0 = Collections.unmodifiableSet(new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance")));
        c0 = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        d0 = charsetForName;
        e0 = "Exif\u0000\u0000".getBytes(charsetForName);
        f0 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat(b.f22423j, locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i2 = 0;
        while (true) {
            ExifTag[][] exifTagArr6 = X;
            if (i2 >= exifTagArr6.length) {
                HashMap map = c0;
                ExifTag[] exifTagArr7 = Y;
                map.put(Integer.valueOf(exifTagArr7[0].f13172a), 5);
                map.put(Integer.valueOf(exifTagArr7[1].f13172a), 1);
                map.put(Integer.valueOf(exifTagArr7[2].f13172a), 2);
                map.put(Integer.valueOf(exifTagArr7[3].f13172a), 3);
                map.put(Integer.valueOf(exifTagArr7[4].f13172a), 7);
                map.put(Integer.valueOf(exifTagArr7[5].f13172a), 8);
                Pattern.compile(".*[1-9].*");
                g0 = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                h0 = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                i0 = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            Z[i2] = new HashMap();
            a0[i2] = new HashMap();
            for (ExifTag exifTag : exifTagArr6[i2]) {
                Z[i2].put(Integer.valueOf(exifTag.f13172a), exifTag);
                a0[i2].put(exifTag.f13173b, exifTag);
            }
            i2++;
        }
    }

    public ExifInterface(InputStream inputStream, int i2) throws Throwable {
        ExifTag[][] exifTagArr = X;
        this.f13156f = new HashMap[exifTagArr.length];
        this.g = new HashSet(exifTagArr.length);
        this.f13157h = ByteOrder.BIG_ENDIAN;
        if (inputStream == null) {
            r81.d("inputStream cannot be null");
            throw null;
        }
        this.f13152a = null;
        boolean z2 = i2 == 1;
        this.f13155e = z2;
        if (z2) {
            this.f13154c = null;
            this.f13153b = null;
        } else if (inputStream instanceof AssetManager.AssetInputStream) {
            this.f13154c = (AssetManager.AssetInputStream) inputStream;
            this.f13153b = null;
        } else if (inputStream instanceof FileInputStream) {
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            try {
                Os.lseek(fileInputStream.getFD(), 0L, OsConstants.SEEK_CUR);
                this.f13154c = null;
                this.f13153b = fileInputStream.getFD();
            } catch (Exception unused) {
                this.f13154c = null;
                this.f13153b = null;
            }
        } else {
            this.f13154c = null;
            this.f13153b = null;
        }
        w(inputStream);
    }

    public static double b(String str, String str2) {
        try {
            String[] strArrSplit = str.split(",", -1);
            String[] strArrSplit2 = strArrSplit[0].split("/", -1);
            double d = Double.parseDouble(strArrSplit2[0].trim()) / Double.parseDouble(strArrSplit2[1].trim());
            String[] strArrSplit3 = strArrSplit[1].split("/", -1);
            double d2 = Double.parseDouble(strArrSplit3[0].trim()) / Double.parseDouble(strArrSplit3[1].trim());
            String[] strArrSplit4 = strArrSplit[2].split("/", -1);
            double d3 = ((Double.parseDouble(strArrSplit4[0].trim()) / Double.parseDouble(strArrSplit4[1].trim())) / 3600.0d) + (d2 / 60.0d) + d;
            if (!str2.equals("S") && !str2.equals("W")) {
                if (!str2.equals("N") && !str2.equals("E")) {
                    throw new IllegalArgumentException();
                }
                return d3;
            }
            return -d3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException e2) {
            lc0.u(e2);
            return 0.0d;
        }
    }

    public static Pair s(String str) {
        if (str.contains(",")) {
            String[] strArrSplit = str.split(",", -1);
            Pair pairS = s(strArrSplit[0]);
            if (((Integer) pairS.first).intValue() == 2) {
                return pairS;
            }
            for (int i2 = 1; i2 < strArrSplit.length; i2++) {
                Pair pairS2 = s(strArrSplit[i2]);
                int iIntValue = (((Integer) pairS2.first).equals(pairS.first) || ((Integer) pairS2.second).equals(pairS.first)) ? ((Integer) pairS.first).intValue() : -1;
                int iIntValue2 = (((Integer) pairS.second).intValue() == -1 || !(((Integer) pairS2.first).equals(pairS.second) || ((Integer) pairS2.second).equals(pairS.second))) ? -1 : ((Integer) pairS.second).intValue();
                if (iIntValue == -1 && iIntValue2 == -1) {
                    return new Pair(2, -1);
                }
                if (iIntValue == -1) {
                    pairS = new Pair(Integer.valueOf(iIntValue2), -1);
                } else if (iIntValue2 == -1) {
                    pairS = new Pair(Integer.valueOf(iIntValue), -1);
                }
            }
            return pairS;
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

    public static ByteOrder z(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        short s = byteOrderedDataInputStream.readShort();
        if (s == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        az.y(Integer.toHexString(s), "Invalid byte order: ");
        return null;
    }

    public final void A(int i2, byte[] bArr) throws IOException {
        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(bArr);
        x(seekableByteOrderedDataInputStream);
        B(seekableByteOrderedDataInputStream, i2);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x019c  */
    /* JADX WARN: Code duplicated, block: B:19:0x0077  */
    public final void B(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i2) throws IOException {
        boolean z2;
        HashMap[] mapArr;
        HashMap[] mapArr2;
        ExifTag exifTag;
        long j2;
        int i3;
        boolean z3;
        HashMap[] mapArr3;
        ExifTag exifTag2;
        int unsignedShort;
        long j3;
        int i4;
        Integer numValueOf = Integer.valueOf(seekableByteOrderedDataInputStream.f13164c);
        HashSet hashSet = this.g;
        hashSet.add(numValueOf);
        short s = seekableByteOrderedDataInputStream.readShort();
        if (s <= 0) {
            return;
        }
        short s2 = 0;
        while (true) {
            z2 = v;
            mapArr = this.f13156f;
            if (s2 >= s) {
                break;
            }
            int unsignedShort2 = seekableByteOrderedDataInputStream.readUnsignedShort();
            int unsignedShort3 = seekableByteOrderedDataInputStream.readUnsignedShort();
            int i5 = seekableByteOrderedDataInputStream.readInt();
            short s3 = s2;
            long j4 = ((long) seekableByteOrderedDataInputStream.f13164c) + 4;
            ExifTag exifTag3 = (ExifTag) Z[i2].get(Integer.valueOf(unsignedShort2));
            if (z2) {
                String.format("ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d", Integer.valueOf(i2), Integer.valueOf(unsignedShort2), exifTag3 != null ? exifTag3.f13173b : null, Integer.valueOf(unsignedShort3), Integer.valueOf(i5));
            }
            if (exifTag3 != null && unsignedShort3 > 0) {
                int[] iArr = U;
                if (unsignedShort3 < iArr.length) {
                    int i6 = exifTag3.f13174c;
                    if (i6 == 7 || unsignedShort3 == 7 || i6 == unsignedShort3 || (i3 = exifTag3.d) == unsignedShort3 || (((i6 == 4 || i3 == 4) && unsignedShort3 == 3) || (((i6 == 9 || i3 == 9) && unsignedShort3 == 8) || ((i6 == 12 || i3 == 12) && unsignedShort3 == 11)))) {
                        if (unsignedShort3 == 7) {
                            unsignedShort3 = i6;
                        }
                        mapArr2 = mapArr;
                        exifTag = exifTag3;
                        j2 = ((long) i5) * ((long) iArr[unsignedShort3]);
                        z3 = j2 >= 0 && j2 <= 2147483647L;
                    } else {
                        if (z2 != 0) {
                            String str = T[unsignedShort3];
                        }
                        exifTag = exifTag3;
                        mapArr2 = mapArr;
                        j2 = 0;
                    }
                } else {
                    exifTag = exifTag3;
                    mapArr2 = mapArr;
                    j2 = 0;
                }
            } else {
                exifTag = exifTag3;
                mapArr2 = mapArr;
                j2 = 0;
            }
            if (z3) {
                if (j2 > 4) {
                    int i7 = seekableByteOrderedDataInputStream.readInt();
                    if (this.d == 7) {
                        mapArr3 = mapArr2;
                        exifTag2 = exifTag;
                        if ("MakerNote".equals(exifTag2.f13173b)) {
                            this.q = i7;
                        } else {
                            if (i2 == 6 && "ThumbnailImage".equals(exifTag2.f13173b)) {
                                this.r = i7;
                                this.s = i5;
                                ExifAttribute exifAttributeF = ExifAttribute.f(6, this.f13157h);
                                unsignedShort2 = unsignedShort2;
                                ExifAttribute exifAttributeC = ExifAttribute.c(this.r, this.f13157h);
                                ExifAttribute exifAttributeC2 = ExifAttribute.c(this.s, this.f13157h);
                                mapArr3[4].put("Compression", exifAttributeF);
                                mapArr3[4].put("JPEGInterchangeFormat", exifAttributeC);
                                mapArr3[4].put("JPEGInterchangeFormatLength", exifAttributeC2);
                            }
                            seekableByteOrderedDataInputStream.d(i7);
                        }
                    } else {
                        mapArr3 = mapArr2;
                        exifTag2 = exifTag;
                    }
                    seekableByteOrderedDataInputStream.d(i7);
                } else {
                    mapArr3 = mapArr2;
                    unsignedShort2 = unsignedShort2;
                    exifTag2 = exifTag;
                    i5 = i5;
                }
                Integer num = (Integer) c0.get(Integer.valueOf(unsignedShort2));
                if (num != null) {
                    if (unsignedShort3 != 3) {
                        if (unsignedShort3 == 4) {
                            j3 = ((long) seekableByteOrderedDataInputStream.readInt()) & BodyPartID.bodyIdMax;
                        } else if (unsignedShort3 == 8) {
                            unsignedShort = seekableByteOrderedDataInputStream.readShort();
                        } else if (unsignedShort3 == 9 || unsignedShort3 == 13) {
                            unsignedShort = seekableByteOrderedDataInputStream.readInt();
                        } else {
                            j3 = -1;
                        }
                        if (z2) {
                            String.format("Offset: %d, tagName: %s", Long.valueOf(j3), exifTag2.f13173b);
                        }
                        if (j3 > 0 && (((i4 = seekableByteOrderedDataInputStream.f13166f) == -1 || j3 < i4) && !hashSet.contains(Integer.valueOf((int) j3)))) {
                            seekableByteOrderedDataInputStream.d(j3);
                            B(seekableByteOrderedDataInputStream, num.intValue());
                        }
                        seekableByteOrderedDataInputStream.d(j4);
                    } else {
                        unsignedShort = seekableByteOrderedDataInputStream.readUnsignedShort();
                    }
                    j3 = unsignedShort;
                    if (z2) {
                        String.format("Offset: %d, tagName: %s", Long.valueOf(j3), exifTag2.f13173b);
                    }
                    if (j3 > 0) {
                        seekableByteOrderedDataInputStream.d(j3);
                        B(seekableByteOrderedDataInputStream, num.intValue());
                    }
                    seekableByteOrderedDataInputStream.d(j4);
                } else {
                    int i8 = seekableByteOrderedDataInputStream.f13164c + this.p;
                    byte[] bArr = new byte[(int) j2];
                    seekableByteOrderedDataInputStream.readFully(bArr);
                    ExifAttribute exifAttribute = new ExifAttribute(i8, bArr, unsignedShort3, i5);
                    HashMap map = mapArr3[i2];
                    String str2 = exifTag2.f13173b;
                    map.put(str2, exifAttribute);
                    if ("DNGVersion".equals(str2)) {
                        this.d = 3;
                    }
                    if ((("Make".equals(str2) || m.n.equals(str2)) && exifAttribute.j(this.f13157h).contains("PENTAX")) || ("Compression".equals(str2) && exifAttribute.i(this.f13157h) == 65535)) {
                        this.d = 8;
                    }
                    if (seekableByteOrderedDataInputStream.f13164c != j4) {
                        seekableByteOrderedDataInputStream.d(j4);
                    }
                }
            } else {
                seekableByteOrderedDataInputStream.d(j4);
            }
            s2 = (short) (s3 + 1);
            s = s;
        }
        int i9 = seekableByteOrderedDataInputStream.readInt();
        if (z2) {
            String.format("nextIfdOffset: %d", Integer.valueOf(i9));
        }
        long j5 = i9;
        if (j5 <= 0 || hashSet.contains(Integer.valueOf(i9))) {
            return;
        }
        seekableByteOrderedDataInputStream.d(j5);
        if (mapArr[4].isEmpty()) {
            B(seekableByteOrderedDataInputStream, 4);
        } else if (mapArr[5].isEmpty()) {
            B(seekableByteOrderedDataInputStream, 5);
        }
    }

    public final void C(String str) {
        for (int i2 = 0; i2 < X.length; i2++) {
            this.f13156f[i2].remove(str);
        }
    }

    public final void D(int i2, String str, String str2) {
        HashMap[] mapArr = this.f13156f;
        if (mapArr[i2].isEmpty() || mapArr[i2].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i2];
        map.put(str2, (ExifAttribute) map.get(str));
        mapArr[i2].remove(str);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x014b  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f3 A[Catch: all -> 0x00fc, Exception -> 0x00ff, TryCatch #15 {Exception -> 0x00ff, all -> 0x00fc, blocks: (B:79:0x00ef, B:81:0x00f3, B:88:0x0111, B:87:0x0102), top: B:134:0x00ef }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0102 A[Catch: all -> 0x00fc, Exception -> 0x00ff, TryCatch #15 {Exception -> 0x00ff, all -> 0x00fc, blocks: (B:79:0x00ef, B:81:0x00f3, B:88:0x0111, B:87:0x0102), top: B:134:0x00ef }] */
    public final void E() {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream3;
        Object obj;
        int i2 = this.d;
        if (i2 != 4 && i2 != 13 && i2 != 14) {
            az.o("ExifInterface only supports saving attributes for JPEG, PNG, and WebP formats.");
            return;
        }
        if (this.f13153b == null && this.f13152a == null) {
            az.o("ExifInterface does not support saving attributes for the current input.");
            return;
        }
        if (this.f13158i && this.f13159j && !this.f13160k) {
            az.o("ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips");
            return;
        }
        int i3 = this.o;
        Closeable closeable = null;
        this.n = (i3 == 6 || i3 == 7) ? q() : null;
        try {
            File fileCreateTempFile = File.createTempFile("temp", "tmp");
            if (this.f13152a != null) {
                fileInputStream = new FileInputStream(this.f13152a);
            } else {
                Os.lseek(this.f13153b, 0L, OsConstants.SEEK_SET);
                fileInputStream = new FileInputStream(this.f13153b);
            }
            try {
                fileOutputStream = new FileOutputStream(fileCreateTempFile);
                try {
                    ExifInterfaceUtils.c(fileInputStream, fileOutputStream);
                    ExifInterfaceUtils.a(fileInputStream);
                    ExifInterfaceUtils.a(fileOutputStream);
                    try {
                        try {
                            try {
                                FileInputStream fileInputStream3 = new FileInputStream(fileCreateTempFile);
                                try {
                                    if (this.f13152a != null) {
                                        fileOutputStream2 = new FileOutputStream(this.f13152a);
                                    } else {
                                        Os.lseek(this.f13153b, 0L, OsConstants.SEEK_SET);
                                        fileOutputStream2 = new FileOutputStream(this.f13153b);
                                    }
                                    try {
                                        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream3);
                                        try {
                                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream2);
                                            try {
                                                int i4 = this.d;
                                                if (i4 == 4) {
                                                    F(bufferedInputStream, bufferedOutputStream);
                                                } else if (i4 == 13) {
                                                    G(bufferedInputStream, bufferedOutputStream);
                                                } else if (i4 == 14) {
                                                    H(bufferedInputStream, bufferedOutputStream);
                                                }
                                                ExifInterfaceUtils.a(bufferedInputStream);
                                                ExifInterfaceUtils.a(bufferedOutputStream);
                                                fileCreateTempFile.delete();
                                                this.n = null;
                                            } catch (Exception e2) {
                                                e = e2;
                                                closeable = fileInputStream3;
                                                try {
                                                    try {
                                                        fileInputStream2 = new FileInputStream(fileCreateTempFile);
                                                        try {
                                                            if (this.f13152a != null) {
                                                                fileOutputStream3 = new FileOutputStream(this.f13152a);
                                                            } else {
                                                                Os.lseek(this.f13153b, 0L, OsConstants.SEEK_SET);
                                                                fileOutputStream3 = new FileOutputStream(this.f13153b);
                                                            }
                                                            fileOutputStream2 = fileOutputStream3;
                                                            ExifInterfaceUtils.c(fileInputStream2, fileOutputStream2);
                                                            ExifInterfaceUtils.a(fileInputStream2);
                                                            ExifInterfaceUtils.a(fileOutputStream2);
                                                            throw new IOException("Failed to save new file", e);
                                                        } catch (Exception e3) {
                                                            e = e3;
                                                            closeable = fileInputStream2;
                                                            throw new IOException("Failed to save new file. Original file is stored in " + fileCreateTempFile.getAbsolutePath(), e);
                                                        } catch (Throwable th) {
                                                            th = th;
                                                            closeable = fileInputStream2;
                                                            ExifInterfaceUtils.a(closeable);
                                                            ExifInterfaceUtils.a(fileOutputStream2);
                                                            throw th;
                                                        }
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                    }
                                                } catch (Exception e4) {
                                                    e = e4;
                                                }
                                            }
                                        } catch (Exception e5) {
                                            e = e5;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            closeable = bufferedInputStream;
                                            ExifInterfaceUtils.a(closeable);
                                            ExifInterfaceUtils.a(0);
                                            if (0 == 0) {
                                                fileCreateTempFile.delete();
                                            }
                                            throw th;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                        obj = null;
                                        closeable = fileInputStream3;
                                        fileInputStream2 = new FileInputStream(fileCreateTempFile);
                                        if (this.f13152a != null) {
                                            fileOutputStream3 = new FileOutputStream(this.f13152a);
                                        } else {
                                            Os.lseek(this.f13153b, 0L, OsConstants.SEEK_SET);
                                            fileOutputStream3 = new FileOutputStream(this.f13153b);
                                        }
                                        fileOutputStream2 = fileOutputStream3;
                                        ExifInterfaceUtils.c(fileInputStream2, fileOutputStream2);
                                        ExifInterfaceUtils.a(fileInputStream2);
                                        ExifInterfaceUtils.a(fileOutputStream2);
                                        throw new IOException("Failed to save new file", e);
                                    }
                                } catch (Exception e7) {
                                    e = e7;
                                    fileOutputStream2 = null;
                                    obj = null;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            ExifInterfaceUtils.a(closeable);
                            ExifInterfaceUtils.a(0);
                            if (0 == 0) {
                                fileCreateTempFile.delete();
                            }
                            throw th;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        fileOutputStream2 = null;
                    }
                } catch (Exception e9) {
                    e = e9;
                    closeable = fileInputStream;
                    try {
                        throw new IOException("Failed to copy original file to temp file", e);
                    } catch (Throwable th6) {
                        th = th6;
                        ExifInterfaceUtils.a(closeable);
                        ExifInterfaceUtils.a(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    closeable = fileInputStream;
                    ExifInterfaceUtils.a(closeable);
                    ExifInterfaceUtils.a(fileOutputStream);
                    throw th;
                }
            } catch (Exception e10) {
                e = e10;
                fileOutputStream = null;
            } catch (Throwable th8) {
                th = th8;
                fileOutputStream = null;
            }
        } catch (Exception e11) {
            e = e11;
            fileOutputStream = null;
        } catch (Throwable th9) {
            th = th9;
            fileOutputStream = null;
        }
    }

    public final void F(BufferedInputStream bufferedInputStream, BufferedOutputStream bufferedOutputStream) throws IOException {
        byte b2;
        byte[] bArr;
        if (v) {
            Objects.toString(bufferedInputStream);
            Objects.toString(bufferedOutputStream);
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bufferedInputStream);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(bufferedOutputStream, ByteOrder.BIG_ENDIAN);
        if (byteOrderedDataInputStream.readByte() != -1) {
            az.o("Invalid marker");
            return;
        }
        byteOrderedDataOutputStream.c(-1);
        if (byteOrderedDataInputStream.readByte() != -40) {
            az.o("Invalid marker");
            return;
        }
        byteOrderedDataOutputStream.c(-40);
        byteOrderedDataOutputStream.c(-1);
        byteOrderedDataOutputStream.c(-31);
        this.p = N(byteOrderedDataOutputStream);
        ExifAttribute exifAttribute = this.t;
        byte[] bArr2 = f0;
        if (exifAttribute != null) {
            byteOrderedDataOutputStream.write(-1);
            byteOrderedDataOutputStream.c(-31);
            byteOrderedDataOutputStream.h(bArr2.length + 2 + this.t.d.length);
            byteOrderedDataOutputStream.write(bArr2);
            byteOrderedDataOutputStream.write(this.t.d);
            this.u = true;
        }
        byte[] bArr3 = new byte[4096];
        while (byteOrderedDataInputStream.readByte() == -1) {
            do {
                b2 = byteOrderedDataInputStream.readByte();
            } while (b2 == -1);
            if (b2 == -39 || b2 == -38) {
                byteOrderedDataOutputStream.c(-1);
                byteOrderedDataOutputStream.c(b2);
                ExifInterfaceUtils.c(byteOrderedDataInputStream, byteOrderedDataOutputStream);
                return;
            }
            if (b2 != -31) {
                byteOrderedDataOutputStream.c(-1);
                byteOrderedDataOutputStream.c(b2);
                int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                byteOrderedDataOutputStream.h(unsignedShort);
                int i2 = unsignedShort - 2;
                if (i2 < 0) {
                    az.o("Invalid length");
                    return;
                }
                while (i2 > 0) {
                    int i3 = byteOrderedDataInputStream.read(bArr3, 0, Math.min(i2, 4096));
                    if (i3 < 0) {
                        break;
                    }
                    byteOrderedDataOutputStream.write(bArr3, 0, i3);
                    i2 -= i3;
                }
            } else {
                int unsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
                int length = unsignedShort2 - 2;
                if (length < 0) {
                    az.o("Invalid length");
                    return;
                }
                int length2 = bArr2.length;
                byte[] bArr4 = e0;
                if (length >= length2) {
                    bArr = new byte[bArr2.length];
                } else {
                    bArr = length >= bArr4.length ? new byte[bArr4.length] : null;
                }
                if (bArr != null) {
                    byteOrderedDataInputStream.readFully(bArr);
                    if (ExifInterfaceUtils.e(bArr, bArr4) || ExifInterfaceUtils.e(bArr, bArr2)) {
                        byteOrderedDataInputStream.c(length - bArr.length);
                    }
                }
                byteOrderedDataOutputStream.c(-1);
                byteOrderedDataOutputStream.c(b2);
                byteOrderedDataOutputStream.h(unsignedShort2);
                if (bArr != null) {
                    length -= bArr.length;
                    byteOrderedDataOutputStream.write(bArr);
                }
                while (length > 0) {
                    int i4 = byteOrderedDataInputStream.read(bArr3, 0, Math.min(length, 4096));
                    if (i4 < 0) {
                        break;
                    }
                    byteOrderedDataOutputStream.write(bArr3, 0, i4);
                    length -= i4;
                }
            }
        }
        az.o("Invalid marker");
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0029 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:19:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0062 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:32:0x0073  */
    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0093  */
    /* JADX WARN: Code duplicated, block: B:42:0x005d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0054 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x003d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x006e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0088 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0078 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0027 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005b -> B:10:0x0027). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:10:0x0027
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final void G(java.io.BufferedInputStream r9, java.io.BufferedOutputStream r10) {
        /*
            r8 = this;
            boolean r0 = androidx.exifinterface.media.ExifInterface.v
            if (r0 == 0) goto La
            java.util.Objects.toString(r9)
            java.util.Objects.toString(r10)
        La:
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream r0 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream
            r0.<init>(r9)
            androidx.exifinterface.media.ExifInterface$ByteOrderedDataOutputStream r9 = new androidx.exifinterface.media.ExifInterface$ByteOrderedDataOutputStream
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            r9.<init>(r10, r1)
            byte[] r10 = androidx.exifinterface.media.ExifInterface.I
            int r10 = r10.length
            androidx.exifinterface.media.ExifInterfaceUtils.d(r0, r9, r10)
            androidx.exifinterface.media.ExifInterface$ExifAttribute r10 = r8.t
            r1 = 1
            r2 = 0
            if (r10 != 0) goto L26
            boolean r10 = r8.u
            if (r10 == 0) goto L5b
        L26:
            r10 = r1
        L27:
            if (r1 != 0) goto L30
            if (r10 == 0) goto L2c
            goto L30
        L2c:
            androidx.exifinterface.media.ExifInterfaceUtils.c(r0, r9)
            return
        L30:
            int r3 = r0.readInt()
            int r4 = r0.readInt()
            r5 = 1229472850(0x49484452, float:820293.1)
            if (r4 != r5) goto L5d
            r9.d(r3)
            r9.d(r4)
            int r3 = r3 + 4
            androidx.exifinterface.media.ExifInterfaceUtils.d(r0, r9, r3)
            int r3 = r8.p
            if (r3 != 0) goto L50
            r8.O(r9)
            r1 = r2
        L50:
            androidx.exifinterface.media.ExifInterface$ExifAttribute r3 = r8.t
            if (r3 == 0) goto L27
            boolean r3 = r8.u
            if (r3 != 0) goto L27
            r8.P(r9)
        L5b:
            r10 = r2
            goto L27
        L5d:
            r5 = 1700284774(0x65584966, float:6.383657E22)
            if (r4 != r5) goto L6e
            if (r1 == 0) goto L6e
            r8.O(r9)
            int r3 = r3 + 4
            r0.c(r3)
            r1 = r2
            goto L27
        L6e:
            r5 = 1767135348(0x69545874, float:1.6044374E25)
            if (r4 != r5) goto La0
            byte[] r5 = androidx.exifinterface.media.ExifInterface.J
            int r6 = r5.length
            if (r3 < r6) goto La0
            int r6 = r5.length
            byte[] r7 = new byte[r6]
            r0.readFully(r7)
            int r6 = r3 - r6
            int r6 = r6 + 4
            boolean r5 = java.util.Arrays.equals(r7, r5)
            if (r5 == 0) goto L93
            androidx.exifinterface.media.ExifInterface$ExifAttribute r10 = r8.t
            if (r10 == 0) goto L8f
            r8.P(r9)
        L8f:
            r0.c(r6)
            goto L5b
        L93:
            r9.d(r3)
            r9.d(r4)
            r9.write(r7)
            androidx.exifinterface.media.ExifInterfaceUtils.d(r0, r9, r6)
            goto L27
        La0:
            r9.d(r3)
            r9.d(r4)
            int r3 = r3 + 4
            androidx.exifinterface.media.ExifInterfaceUtils.d(r0, r9, r3)
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.G(java.io.BufferedInputStream, java.io.BufferedOutputStream):void");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 6681. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public final void H(java.io.BufferedInputStream r23, java.io.BufferedOutputStream r24) {
        /*
            Method dump skipped, instruction units count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.H(java.io.BufferedInputStream, java.io.BufferedOutputStream):void");
    }

    /* JADX WARN: Code duplicated, block: B:125:0x021e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0229  */
    /* JADX WARN: Code duplicated, block: B:133:0x0234 A[LOOP:2: B:131:0x0231->B:133:0x0234, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:136:0x0252 A[LOOP:3: B:135:0x0250->B:136:0x0252, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:139:0x0272  */
    /* JADX WARN: Code duplicated, block: B:142:0x0280 A[LOOP:4: B:140:0x027d->B:142:0x0280, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:145:0x02c4 A[LOOP:5: B:144:0x02c2->B:145:0x02c4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:147:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:150:0x02f3 A[LOOP:6: B:148:0x02f0->B:150:0x02f3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:153:0x0312 A[LOOP:7: B:152:0x0310->B:153:0x0312, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:155:0x032a  */
    /* JADX WARN: Code duplicated, block: B:158:0x033a A[LOOP:8: B:156:0x0337->B:158:0x033a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:160:0x036a  */
    /* JADX WARN: Code duplicated, block: B:163:0x037c A[LOOP:9: B:161:0x0379->B:163:0x037c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:165:0x0393  */
    /* JADX WARN: Code duplicated, block: B:168:0x03a5 A[LOOP:10: B:166:0x03a2->B:168:0x03a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:170:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:171:0x03cb  */
    public final void I(String str, String str2) {
        ExifTag exifTag;
        int[] iArr;
        int i2;
        int i3;
        String[] strArrSplit;
        int[] iArr2;
        int i4;
        String[] strArrSplit2;
        long[] jArr;
        int i5;
        int i6;
        String[] strArrSplit3;
        Rational[] rationalArr;
        int i7;
        String[] strArrSplit4;
        int length;
        int[] iArr3;
        ByteBuffer byteBufferWrap;
        int i8;
        String[] strArrSplit5;
        int length2;
        Rational[] rationalArr2;
        int i9;
        ByteBuffer byteBufferWrap2;
        int i10;
        String[] strArrSplit6;
        int length3;
        double[] dArr;
        int i11;
        ByteBuffer byteBufferWrap3;
        int i12;
        Rational rational;
        long j2;
        long j3;
        double d;
        String strReplaceAll = str2;
        String str3 = "ISOSpeedRatings".equals(str) ? "PhotographicSensitivity" : str;
        if (strReplaceAll != null) {
            if (b0.contains(str3) && !strReplaceAll.contains("/")) {
                try {
                    double d2 = Double.parseDouble(strReplaceAll);
                    long j4 = 1;
                    if (d2 >= 9.223372036854776E18d || d2 <= -9.223372036854776E18d) {
                        rational = new Rational(d2 > 0.0d ? Long.MAX_VALUE : Long.MIN_VALUE, 1L);
                    } else {
                        double dAbs = Math.abs(d2);
                        long j5 = 0;
                        long j6 = 1;
                        double d3 = dAbs;
                        long j7 = 0;
                        while (true) {
                            double d4 = d3 % 1.0d;
                            long j8 = (long) (d3 - d4);
                            j2 = (j8 * j4) + j7;
                            j3 = (j8 * j5) + j6;
                            d3 = 1.0d / d4;
                            d = d2;
                            if (Math.abs(dAbs - (j2 / j3)) <= 1.0E-8d * dAbs) {
                                break;
                            }
                            d2 = d;
                            j7 = j4;
                            j6 = j5;
                            j4 = j2;
                            j5 = j3;
                        }
                        if (d < 0.0d) {
                            j2 = -j2;
                        }
                        rational = new Rational(j2, j3);
                    }
                    strReplaceAll = rational.toString();
                } catch (NumberFormatException unused) {
                    return;
                }
            } else if (str3.equals("GPSTimeStamp")) {
                Matcher matcher = g0.matcher(strReplaceAll);
                if (!matcher.find()) {
                    return;
                }
                strReplaceAll = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else if ("DateTime".equals(str3) || "DateTimeOriginal".equals(str3) || "DateTimeDigitized".equals(str3)) {
                boolean zFind = h0.matcher(strReplaceAll).find();
                boolean zFind2 = i0.matcher(strReplaceAll).find();
                if (strReplaceAll.length() != 19) {
                    return;
                }
                if (!zFind && !zFind2) {
                    return;
                }
                if (zFind2) {
                    strReplaceAll = strReplaceAll.replaceAll("-", ":");
                }
            }
        }
        boolean zEquals = "Xmp".equals(str3);
        int i13 = 12;
        int i14 = 9;
        int i15 = 4;
        HashMap[] mapArr = this.f13156f;
        int i16 = 0;
        if (zEquals) {
            boolean z2 = mapArr[0].containsKey("Xmp") || mapArr[5].containsKey("Xmp");
            int i17 = this.d;
            char c2 = i17 != 4 ? (i17 == 9 || i17 == 15 || i17 == 12 || i17 == 13) ? (char) 2 : (char) 1 : (char) 3;
            if ((c2 == 2 && (this.t != null || !z2)) || (c2 == 3 && !z2)) {
                this.t = strReplaceAll != null ? ExifAttribute.a(strReplaceAll) : null;
                return;
            }
        }
        int i18 = 0;
        while (i18 < X.length) {
            if ((i18 != i15 || this.f13158i) && (exifTag = (ExifTag) a0[i18].get(str3)) != null) {
                int i19 = exifTag.d;
                int i20 = exifTag.f13174c;
                if (strReplaceAll != null) {
                    Pair pairS = s(strReplaceAll);
                    int i21 = -1;
                    if (i20 != ((Integer) pairS.first).intValue() && i20 != ((Integer) pairS.second).intValue()) {
                        if (i19 == -1 || (i19 != ((Integer) pairS.first).intValue() && i19 != ((Integer) pairS.second).intValue())) {
                            if (i20 != 1 && i20 != 7) {
                                if (i20 != 2) {
                                    if (v) {
                                        String[] strArr = T;
                                        String str4 = strArr[i20];
                                        if (i19 != -1) {
                                            String str5 = strArr[i19];
                                        }
                                        String str6 = strArr[((Integer) pairS.first).intValue()];
                                        if (((Integer) pairS.second).intValue() != -1) {
                                            String str7 = strArr[((Integer) pairS.second).intValue()];
                                        }
                                    }
                                }
                            }
                            i19 = i20;
                            iArr = U;
                            switch (i19) {
                                case 1:
                                    i2 = i16;
                                    i3 = i14;
                                    mapArr[i18].put(str3, ExifAttribute.a(strReplaceAll));
                                    continue;
                                    continue;
                                    continue;
                                case 2:
                                case 7:
                                    i2 = i16;
                                    i3 = i14;
                                    mapArr[i18].put(str3, ExifAttribute.b(strReplaceAll));
                                    continue;
                                    continue;
                                    continue;
                                case 3:
                                    i2 = i16;
                                    i3 = i14;
                                    strArrSplit = strReplaceAll.split(",", -1);
                                    iArr2 = new int[strArrSplit.length];
                                    while (i4 < strArrSplit.length) {
                                        iArr2[i4] = Integer.parseInt(strArrSplit[i4]);
                                    }
                                    mapArr[i18].put(str3, ExifAttribute.g(iArr2, this.f13157h));
                                    continue;
                                    continue;
                                    continue;
                                case 4:
                                    i2 = i16;
                                    i3 = i14;
                                    strArrSplit2 = strReplaceAll.split(",", -1);
                                    jArr = new long[strArrSplit2.length];
                                    while (i5 < strArrSplit2.length) {
                                        jArr[i5] = Long.parseLong(strArrSplit2[i5]);
                                    }
                                    mapArr[i18].put(str3, ExifAttribute.d(jArr, this.f13157h));
                                    continue;
                                    continue;
                                    continue;
                                case 5:
                                    i2 = i16;
                                    i6 = -1;
                                    i3 = i14;
                                    strArrSplit3 = strReplaceAll.split(",", -1);
                                    rationalArr = new Rational[strArrSplit3.length];
                                    i7 = i2;
                                    while (i7 < strArrSplit3.length) {
                                        String[] strArrSplit7 = strArrSplit3[i7].split("/", i6);
                                        rationalArr[i7] = new Rational((long) Double.parseDouble(strArrSplit7[i2]), (long) Double.parseDouble(strArrSplit7[1]));
                                        i7++;
                                        i6 = -1;
                                    }
                                    mapArr[i18].put(str3, ExifAttribute.e(rationalArr, this.f13157h));
                                    continue;
                                    continue;
                                    continue;
                                case 9:
                                    int i22 = i14;
                                    i2 = i16;
                                    strArrSplit4 = strReplaceAll.split(",", -1);
                                    length = strArrSplit4.length;
                                    iArr3 = new int[length];
                                    while (i16 < strArrSplit4.length) {
                                        iArr3[i16] = Integer.parseInt(strArrSplit4[i16]);
                                        i16++;
                                    }
                                    HashMap map = mapArr[i18];
                                    ByteOrder byteOrder = this.f13157h;
                                    byteBufferWrap = ByteBuffer.wrap(new byte[iArr[i22] * length]);
                                    byteBufferWrap.order(byteOrder);
                                    while (i8 < length) {
                                        byteBufferWrap.putInt(iArr3[i8]);
                                    }
                                    i3 = i22;
                                    map.put(str3, new ExifAttribute(i3, length, byteBufferWrap.array()));
                                    break;
                                case 10:
                                    i2 = i16;
                                    strArrSplit5 = strReplaceAll.split(",", -1);
                                    length2 = strArrSplit5.length;
                                    rationalArr2 = new Rational[length2];
                                    i9 = i2;
                                    while (i9 < strArrSplit5.length) {
                                        String[] strArrSplit8 = strArrSplit5[i9].split("/", i21);
                                        rationalArr2[i9] = new Rational((long) Double.parseDouble(strArrSplit8[i2]), (long) Double.parseDouble(strArrSplit8[1]));
                                        i9++;
                                        i14 = i14;
                                        strArrSplit5 = strArrSplit5;
                                        i21 = -1;
                                    }
                                    int i23 = i14;
                                    HashMap map2 = mapArr[i18];
                                    ByteOrder byteOrder2 = this.f13157h;
                                    byteBufferWrap2 = ByteBuffer.wrap(new byte[iArr[10] * length2]);
                                    byteBufferWrap2.order(byteOrder2);
                                    while (i10 < length2) {
                                        Rational rational2 = rationalArr2[i10];
                                        byteBufferWrap2.putInt((int) rational2.f13175a);
                                        byteBufferWrap2.putInt((int) rational2.f13176b);
                                    }
                                    map2.put(str3, new ExifAttribute(10, length2, byteBufferWrap2.array()));
                                    i3 = i23;
                                    break;
                                case 12:
                                    strArrSplit6 = strReplaceAll.split(",", -1);
                                    length3 = strArrSplit6.length;
                                    dArr = new double[length3];
                                    while (i11 < strArrSplit6.length) {
                                        dArr[i11] = Double.parseDouble(strArrSplit6[i11]);
                                    }
                                    HashMap map3 = mapArr[i18];
                                    ByteOrder byteOrder3 = this.f13157h;
                                    byteBufferWrap3 = ByteBuffer.wrap(new byte[iArr[i13] * length3]);
                                    byteBufferWrap3.order(byteOrder3);
                                    i12 = i16;
                                    while (i12 < length3) {
                                        int i24 = i12;
                                        byteBufferWrap3.putDouble(dArr[i24]);
                                        i12 = i24 + 1;
                                        i16 = i16;
                                    }
                                    i2 = i16;
                                    map3.put(str3, new ExifAttribute(i13, length3, byteBufferWrap3.array()));
                                    i3 = i14;
                                    break;
                            }
                        } else {
                            iArr = U;
                            switch (i19) {
                                case 1:
                                    i2 = i16;
                                    i3 = i14;
                                    mapArr[i18].put(str3, ExifAttribute.a(strReplaceAll));
                                    continue;
                                    continue;
                                    continue;
                                case 2:
                                case 7:
                                    i2 = i16;
                                    i3 = i14;
                                    mapArr[i18].put(str3, ExifAttribute.b(strReplaceAll));
                                    continue;
                                    continue;
                                    continue;
                                case 3:
                                    i2 = i16;
                                    i3 = i14;
                                    strArrSplit = strReplaceAll.split(",", -1);
                                    iArr2 = new int[strArrSplit.length];
                                    for (i4 = i2; i4 < strArrSplit.length; i4++) {
                                        iArr2[i4] = Integer.parseInt(strArrSplit[i4]);
                                    }
                                    mapArr[i18].put(str3, ExifAttribute.g(iArr2, this.f13157h));
                                    continue;
                                    continue;
                                    continue;
                                case 4:
                                    i2 = i16;
                                    i3 = i14;
                                    strArrSplit2 = strReplaceAll.split(",", -1);
                                    jArr = new long[strArrSplit2.length];
                                    for (i5 = i2; i5 < strArrSplit2.length; i5++) {
                                        jArr[i5] = Long.parseLong(strArrSplit2[i5]);
                                    }
                                    mapArr[i18].put(str3, ExifAttribute.d(jArr, this.f13157h));
                                    continue;
                                    continue;
                                    continue;
                                case 5:
                                    i2 = i16;
                                    i6 = -1;
                                    i3 = i14;
                                    strArrSplit3 = strReplaceAll.split(",", -1);
                                    rationalArr = new Rational[strArrSplit3.length];
                                    i7 = i2;
                                    while (i7 < strArrSplit3.length) {
                                        String[] strArrSplit9 = strArrSplit3[i7].split("/", i6);
                                        rationalArr[i7] = new Rational((long) Double.parseDouble(strArrSplit9[i2]), (long) Double.parseDouble(strArrSplit9[1]));
                                        i7++;
                                        i6 = -1;
                                    }
                                    mapArr[i18].put(str3, ExifAttribute.e(rationalArr, this.f13157h));
                                    continue;
                                    continue;
                                    continue;
                                case 9:
                                    int i25 = i14;
                                    i2 = i16;
                                    strArrSplit4 = strReplaceAll.split(",", -1);
                                    length = strArrSplit4.length;
                                    iArr3 = new int[length];
                                    while (i16 < strArrSplit4.length) {
                                        iArr3[i16] = Integer.parseInt(strArrSplit4[i16]);
                                        i16++;
                                    }
                                    HashMap map4 = mapArr[i18];
                                    ByteOrder byteOrder4 = this.f13157h;
                                    byteBufferWrap = ByteBuffer.wrap(new byte[iArr[i25] * length]);
                                    byteBufferWrap.order(byteOrder4);
                                    for (i8 = i2; i8 < length; i8++) {
                                        byteBufferWrap.putInt(iArr3[i8]);
                                    }
                                    i3 = i25;
                                    map4.put(str3, new ExifAttribute(i3, length, byteBufferWrap.array()));
                                    break;
                                case 10:
                                    i2 = i16;
                                    strArrSplit5 = strReplaceAll.split(",", -1);
                                    length2 = strArrSplit5.length;
                                    rationalArr2 = new Rational[length2];
                                    i9 = i2;
                                    while (i9 < strArrSplit5.length) {
                                        String[] strArrSplit10 = strArrSplit5[i9].split("/", i21);
                                        rationalArr2[i9] = new Rational((long) Double.parseDouble(strArrSplit10[i2]), (long) Double.parseDouble(strArrSplit10[1]));
                                        i9++;
                                        i14 = i14;
                                        strArrSplit5 = strArrSplit5;
                                        i21 = -1;
                                    }
                                    int i26 = i14;
                                    HashMap map5 = mapArr[i18];
                                    ByteOrder byteOrder5 = this.f13157h;
                                    byteBufferWrap2 = ByteBuffer.wrap(new byte[iArr[10] * length2]);
                                    byteBufferWrap2.order(byteOrder5);
                                    for (i10 = i2; i10 < length2; i10++) {
                                        Rational rational3 = rationalArr2[i10];
                                        byteBufferWrap2.putInt((int) rational3.f13175a);
                                        byteBufferWrap2.putInt((int) rational3.f13176b);
                                    }
                                    map5.put(str3, new ExifAttribute(10, length2, byteBufferWrap2.array()));
                                    i3 = i26;
                                    break;
                                case 12:
                                    strArrSplit6 = strReplaceAll.split(",", -1);
                                    length3 = strArrSplit6.length;
                                    dArr = new double[length3];
                                    for (i11 = i16; i11 < strArrSplit6.length; i11++) {
                                        dArr[i11] = Double.parseDouble(strArrSplit6[i11]);
                                    }
                                    HashMap map6 = mapArr[i18];
                                    ByteOrder byteOrder6 = this.f13157h;
                                    byteBufferWrap3 = ByteBuffer.wrap(new byte[iArr[i13] * length3]);
                                    byteBufferWrap3.order(byteOrder6);
                                    i12 = i16;
                                    while (i12 < length3) {
                                        int i27 = i12;
                                        byteBufferWrap3.putDouble(dArr[i27]);
                                        i12 = i27 + 1;
                                        i16 = i16;
                                    }
                                    i2 = i16;
                                    map6.put(str3, new ExifAttribute(i13, length3, byteBufferWrap3.array()));
                                    i3 = i14;
                                    break;
                            }
                        }
                    } else {
                        i19 = i20;
                        iArr = U;
                        switch (i19) {
                            case 1:
                                i2 = i16;
                                i3 = i14;
                                mapArr[i18].put(str3, ExifAttribute.a(strReplaceAll));
                                continue;
                                continue;
                                continue;
                            case 2:
                            case 7:
                                i2 = i16;
                                i3 = i14;
                                mapArr[i18].put(str3, ExifAttribute.b(strReplaceAll));
                                continue;
                                continue;
                                continue;
                            case 3:
                                i2 = i16;
                                i3 = i14;
                                strArrSplit = strReplaceAll.split(",", -1);
                                iArr2 = new int[strArrSplit.length];
                                while (i4 < strArrSplit.length) {
                                    iArr2[i4] = Integer.parseInt(strArrSplit[i4]);
                                }
                                mapArr[i18].put(str3, ExifAttribute.g(iArr2, this.f13157h));
                                continue;
                                continue;
                                continue;
                            case 4:
                                i2 = i16;
                                i3 = i14;
                                strArrSplit2 = strReplaceAll.split(",", -1);
                                jArr = new long[strArrSplit2.length];
                                while (i5 < strArrSplit2.length) {
                                    jArr[i5] = Long.parseLong(strArrSplit2[i5]);
                                }
                                mapArr[i18].put(str3, ExifAttribute.d(jArr, this.f13157h));
                                continue;
                                continue;
                                continue;
                            case 5:
                                i2 = i16;
                                i6 = -1;
                                i3 = i14;
                                strArrSplit3 = strReplaceAll.split(",", -1);
                                rationalArr = new Rational[strArrSplit3.length];
                                i7 = i2;
                                while (i7 < strArrSplit3.length) {
                                    String[] strArrSplit11 = strArrSplit3[i7].split("/", i6);
                                    rationalArr[i7] = new Rational((long) Double.parseDouble(strArrSplit11[i2]), (long) Double.parseDouble(strArrSplit11[1]));
                                    i7++;
                                    i6 = -1;
                                }
                                mapArr[i18].put(str3, ExifAttribute.e(rationalArr, this.f13157h));
                                continue;
                                continue;
                                continue;
                            case 9:
                                int i28 = i14;
                                i2 = i16;
                                strArrSplit4 = strReplaceAll.split(",", -1);
                                length = strArrSplit4.length;
                                iArr3 = new int[length];
                                while (i16 < strArrSplit4.length) {
                                    iArr3[i16] = Integer.parseInt(strArrSplit4[i16]);
                                    i16++;
                                }
                                HashMap map7 = mapArr[i18];
                                ByteOrder byteOrder7 = this.f13157h;
                                byteBufferWrap = ByteBuffer.wrap(new byte[iArr[i28] * length]);
                                byteBufferWrap.order(byteOrder7);
                                while (i8 < length) {
                                    byteBufferWrap.putInt(iArr3[i8]);
                                }
                                i3 = i28;
                                map7.put(str3, new ExifAttribute(i3, length, byteBufferWrap.array()));
                                break;
                            case 10:
                                i2 = i16;
                                strArrSplit5 = strReplaceAll.split(",", -1);
                                length2 = strArrSplit5.length;
                                rationalArr2 = new Rational[length2];
                                i9 = i2;
                                while (i9 < strArrSplit5.length) {
                                    String[] strArrSplit12 = strArrSplit5[i9].split("/", i21);
                                    rationalArr2[i9] = new Rational((long) Double.parseDouble(strArrSplit12[i2]), (long) Double.parseDouble(strArrSplit12[1]));
                                    i9++;
                                    i14 = i14;
                                    strArrSplit5 = strArrSplit5;
                                    i21 = -1;
                                }
                                int i29 = i14;
                                HashMap map8 = mapArr[i18];
                                ByteOrder byteOrder8 = this.f13157h;
                                byteBufferWrap2 = ByteBuffer.wrap(new byte[iArr[10] * length2]);
                                byteBufferWrap2.order(byteOrder8);
                                while (i10 < length2) {
                                    Rational rational4 = rationalArr2[i10];
                                    byteBufferWrap2.putInt((int) rational4.f13175a);
                                    byteBufferWrap2.putInt((int) rational4.f13176b);
                                }
                                map8.put(str3, new ExifAttribute(10, length2, byteBufferWrap2.array()));
                                i3 = i29;
                                break;
                            case 12:
                                strArrSplit6 = strReplaceAll.split(",", -1);
                                length3 = strArrSplit6.length;
                                dArr = new double[length3];
                                while (i11 < strArrSplit6.length) {
                                    dArr[i11] = Double.parseDouble(strArrSplit6[i11]);
                                }
                                HashMap map9 = mapArr[i18];
                                ByteOrder byteOrder9 = this.f13157h;
                                byteBufferWrap3 = ByteBuffer.wrap(new byte[iArr[i13] * length3]);
                                byteBufferWrap3.order(byteOrder9);
                                i12 = i16;
                                while (i12 < length3) {
                                    int i210 = i12;
                                    byteBufferWrap3.putDouble(dArr[i210]);
                                    i12 = i210 + 1;
                                    i16 = i16;
                                }
                                i2 = i16;
                                map9.put(str3, new ExifAttribute(i13, length3, byteBufferWrap3.array()));
                                i3 = i14;
                                break;
                        }
                    }
                } else {
                    mapArr[i18].remove(str3);
                }
                i2 = i16;
                i3 = i14;
                continue;
                continue;
                continue;
            } else {
                i2 = i16;
                i3 = i14;
                continue;
                continue;
                continue;
            }
            i18++;
            i14 = i3;
            i13 = 12;
            i15 = 4;
            i16 = i2;
        }
    }

    public final void J(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        ExifAttribute exifAttribute;
        HashMap map = this.f13156f[4];
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get("Compression");
        if (exifAttribute2 == null) {
            this.o = 6;
            t(byteOrderedDataInputStream, map);
            return;
        }
        int i2 = exifAttribute2.i(this.f13157h);
        this.o = i2;
        if (i2 != 1) {
            if (i2 == 6) {
                t(byteOrderedDataInputStream, map);
                return;
            } else if (i2 != 7) {
                return;
            }
        }
        ExifAttribute exifAttribute3 = (ExifAttribute) map.get("BitsPerSample");
        if (exifAttribute3 != null) {
            int[] iArr = (int[]) exifAttribute3.k(this.f13157h);
            int[] iArr2 = y;
            if (!Arrays.equals(iArr2, iArr)) {
                if (this.d != 3 || (exifAttribute = (ExifAttribute) map.get("PhotometricInterpretation")) == null) {
                    return;
                }
                int i3 = exifAttribute.i(this.f13157h);
                if ((i3 != 1 || !Arrays.equals(iArr, z)) && (i3 != 6 || !Arrays.equals(iArr, iArr2))) {
                    return;
                }
            }
            ExifAttribute exifAttribute4 = (ExifAttribute) map.get("StripOffsets");
            ExifAttribute exifAttribute5 = (ExifAttribute) map.get("StripByteCounts");
            if (exifAttribute4 == null || exifAttribute5 == null) {
                return;
            }
            long[] jArrB = ExifInterfaceUtils.b(exifAttribute4.k(this.f13157h));
            long[] jArrB2 = ExifInterfaceUtils.b(exifAttribute5.k(this.f13157h));
            if (jArrB == null || jArrB.length == 0 || jArrB2 == null || jArrB2.length == 0 || jArrB.length != jArrB2.length) {
                return;
            }
            long j2 = 0;
            for (long j3 : jArrB2) {
                j2 += j3;
            }
            int i4 = (int) j2;
            byte[] bArr = new byte[i4];
            this.f13160k = true;
            this.f13159j = true;
            this.f13158i = true;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < jArrB.length; i7++) {
                int i8 = (int) jArrB[i7];
                int i9 = (int) jArrB2[i7];
                if (i7 < jArrB.length - 1 && i8 + i9 != jArrB[i7 + 1]) {
                    this.f13160k = false;
                }
                int i10 = i8 - i5;
                if (i10 < 0) {
                    return;
                }
                try {
                    byteOrderedDataInputStream.c(i10);
                    int i11 = i5 + i10;
                    byte[] bArr2 = new byte[i9];
                    byteOrderedDataInputStream.readFully(bArr2);
                    i5 = i11 + i9;
                    System.arraycopy(bArr2, 0, bArr, i6, i9);
                    i6 += i9;
                } catch (EOFException unused) {
                    return;
                }
            }
            this.n = bArr;
            if (this.f13160k) {
                this.l = (int) jArrB[0];
                this.m = i4;
            }
        }
    }

    public final void K(int i2, int i3) throws Throwable {
        HashMap[] mapArr = this.f13156f;
        if (mapArr[i2].isEmpty() || mapArr[i3].isEmpty()) {
            return;
        }
        ExifAttribute exifAttribute = (ExifAttribute) mapArr[i2].get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) mapArr[i2].get("ImageWidth");
        ExifAttribute exifAttribute3 = (ExifAttribute) mapArr[i3].get("ImageLength");
        ExifAttribute exifAttribute4 = (ExifAttribute) mapArr[i3].get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null) {
            return;
        }
        int i4 = exifAttribute.i(this.f13157h);
        int i5 = exifAttribute2.i(this.f13157h);
        int i6 = exifAttribute3.i(this.f13157h);
        int i7 = exifAttribute4.i(this.f13157h);
        if (i4 >= i6 || i5 >= i7) {
            return;
        }
        HashMap map = mapArr[i2];
        mapArr[i2] = mapArr[i3];
        mapArr[i3] = map;
    }

    public final void L(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i2) throws Throwable {
        ExifAttribute exifAttributeF;
        ExifAttribute exifAttributeF2;
        HashMap[] mapArr = this.f13156f;
        ExifAttribute exifAttribute = (ExifAttribute) mapArr[i2].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = (ExifAttribute) mapArr[i2].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = (ExifAttribute) mapArr[i2].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = (ExifAttribute) mapArr[i2].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = (ExifAttribute) mapArr[i2].get("SensorRightBorder");
        if (exifAttribute != null) {
            int i3 = exifAttribute.f13169a;
            ByteOrder byteOrder = this.f13157h;
            if (i3 == 5) {
                Rational[] rationalArr = (Rational[]) exifAttribute.k(byteOrder);
                if (rationalArr == null || rationalArr.length != 2) {
                    Arrays.toString(rationalArr);
                    return;
                }
                exifAttributeF = ExifAttribute.e(new Rational[]{rationalArr[0]}, this.f13157h);
                exifAttributeF2 = ExifAttribute.e(new Rational[]{rationalArr[1]}, this.f13157h);
            } else {
                int[] iArr = (int[]) exifAttribute.k(byteOrder);
                if (iArr == null || iArr.length != 2) {
                    Arrays.toString(iArr);
                    return;
                } else {
                    exifAttributeF = ExifAttribute.f(iArr[0], this.f13157h);
                    exifAttributeF2 = ExifAttribute.f(iArr[1], this.f13157h);
                }
            }
            mapArr[i2].put("ImageWidth", exifAttributeF);
            mapArr[i2].put("ImageLength", exifAttributeF2);
            return;
        }
        if (exifAttribute2 != null && exifAttribute3 != null && exifAttribute4 != null && exifAttribute5 != null) {
            int i4 = exifAttribute2.i(this.f13157h);
            int i5 = exifAttribute4.i(this.f13157h);
            int i6 = exifAttribute5.i(this.f13157h);
            int i7 = exifAttribute3.i(this.f13157h);
            if (i5 <= i4 || i6 <= i7) {
                return;
            }
            ExifAttribute exifAttributeF3 = ExifAttribute.f(i5 - i4, this.f13157h);
            ExifAttribute exifAttributeF4 = ExifAttribute.f(i6 - i7, this.f13157h);
            mapArr[i2].put("ImageLength", exifAttributeF3);
            mapArr[i2].put("ImageWidth", exifAttributeF4);
            return;
        }
        ExifAttribute exifAttribute6 = (ExifAttribute) mapArr[i2].get("ImageLength");
        ExifAttribute exifAttribute7 = (ExifAttribute) mapArr[i2].get("ImageWidth");
        if (exifAttribute6 == null || exifAttribute7 == null) {
            ExifAttribute exifAttribute8 = (ExifAttribute) mapArr[i2].get("JPEGInterchangeFormat");
            ExifAttribute exifAttribute9 = (ExifAttribute) mapArr[i2].get("JPEGInterchangeFormatLength");
            if (exifAttribute8 == null || exifAttribute9 == null) {
                return;
            }
            int i8 = exifAttribute8.i(this.f13157h);
            int i9 = exifAttribute8.i(this.f13157h);
            seekableByteOrderedDataInputStream.d(i8);
            byte[] bArr = new byte[i9];
            seekableByteOrderedDataInputStream.readFully(bArr);
            h(new ByteOrderedDataInputStream(bArr), i8, i2);
        }
    }

    public final void M() throws Throwable {
        K(0, 5);
        K(0, 4);
        K(5, 4);
        HashMap[] mapArr = this.f13156f;
        ExifAttribute exifAttribute = (ExifAttribute) mapArr[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = (ExifAttribute) mapArr[1].get("PixelYDimension");
        if (exifAttribute != null && exifAttribute2 != null) {
            mapArr[0].put("ImageWidth", exifAttribute);
            mapArr[0].put("ImageLength", exifAttribute2);
        }
        if (mapArr[4].isEmpty() && v(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        v(mapArr[4]);
        D(0, "ThumbnailOrientation", "Orientation");
        D(0, "ThumbnailImageLength", "ImageLength");
        D(0, "ThumbnailImageWidth", "ImageWidth");
        D(5, "ThumbnailOrientation", "Orientation");
        D(5, "ThumbnailImageLength", "ImageLength");
        D(5, "ThumbnailImageWidth", "ImageWidth");
        D(4, "Orientation", "ThumbnailOrientation");
        D(4, "ImageLength", "ThumbnailImageLength");
        D(4, "ImageWidth", "ThumbnailImageWidth");
    }

    public final int N(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        HashMap[] mapArr;
        int i2;
        int[] iArr;
        int i3;
        ExifTag[][] exifTagArr = X;
        int[] iArr2 = new int[exifTagArr.length];
        int[] iArr3 = new int[exifTagArr.length];
        ExifTag[] exifTagArr2 = Y;
        for (ExifTag exifTag : exifTagArr2) {
            C(exifTag.f13173b);
        }
        if (this.f13158i) {
            if (this.f13159j) {
                C("StripOffsets");
                C("StripByteCounts");
            } else {
                C("JPEGInterchangeFormat");
                C("JPEGInterchangeFormatLength");
            }
        }
        int i4 = 0;
        while (true) {
            int length = exifTagArr.length;
            mapArr = this.f13156f;
            if (i4 >= length) {
                break;
            }
            Iterator it = mapArr[i4].entrySet().iterator();
            while (it.hasNext()) {
                if (((Map.Entry) it.next()).getValue() == null) {
                    it.remove();
                }
            }
            i4++;
        }
        if (mapArr[1].isEmpty()) {
            i2 = 1;
        } else {
            i2 = 1;
            mapArr[0].put(exifTagArr2[1].f13173b, ExifAttribute.c(0L, this.f13157h));
        }
        if (!mapArr[2].isEmpty()) {
            mapArr[r7].put(exifTagArr2[2].f13173b, ExifAttribute.c(0L, this.f13157h));
        }
        if (!mapArr[3].isEmpty()) {
            mapArr[i2].put(exifTagArr2[3].f13173b, ExifAttribute.c(0L, this.f13157h));
        }
        int i5 = 4;
        if (this.f13158i) {
            if (this.f13159j) {
                mapArr[4].put("StripOffsets", ExifAttribute.f(0, this.f13157h));
                mapArr[4].put("StripByteCounts", ExifAttribute.f(this.m, this.f13157h));
            } else {
                mapArr[4].put("JPEGInterchangeFormat", ExifAttribute.c(0L, this.f13157h));
                mapArr[4].put("JPEGInterchangeFormatLength", ExifAttribute.c(this.m, this.f13157h));
            }
        }
        int i6 = 0;
        while (true) {
            int length2 = exifTagArr.length;
            iArr = U;
            if (i6 >= length2) {
                break;
            }
            Iterator it2 = mapArr[i6].entrySet().iterator();
            int i7 = 0;
            while (it2.hasNext()) {
                ExifAttribute exifAttribute = (ExifAttribute) ((Map.Entry) it2.next()).getValue();
                exifAttribute.getClass();
                int i8 = iArr[exifAttribute.f13169a] * exifAttribute.f13170b;
                if (i8 > 4) {
                    i7 += i8;
                }
            }
            iArr3[i6] = iArr3[i6] + i7;
            i6++;
        }
        int size = 8;
        for (int i9 = 0; i9 < exifTagArr.length; i9++) {
            if (!mapArr[i9].isEmpty()) {
                iArr2[i9] = size;
                size = (mapArr[i9].size() * 12) + 6 + iArr3[i9] + size;
            }
        }
        if (this.f13158i) {
            if (this.f13159j) {
                mapArr[4].put("StripOffsets", ExifAttribute.f(size, this.f13157h));
            } else {
                mapArr[4].put("JPEGInterchangeFormat", ExifAttribute.c(size, this.f13157h));
            }
            this.l = size;
            size += this.m;
        }
        if (this.d == 4) {
            size += 8;
        }
        if (v) {
            for (int i10 = 0; i10 < exifTagArr.length; i10++) {
                String.format("index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d", Integer.valueOf(i10), Integer.valueOf(iArr2[i10]), Integer.valueOf(mapArr[i10].size()), Integer.valueOf(iArr3[i10]), Integer.valueOf(size));
            }
        }
        if (!mapArr[i2].isEmpty()) {
            mapArr[0].put(exifTagArr2[i2].f13173b, ExifAttribute.c(iArr2[i2], this.f13157h));
        }
        if (!mapArr[r6].isEmpty()) {
            mapArr[0].put(exifTagArr2[r6].f13173b, ExifAttribute.c(iArr2[2], this.f13157h));
        }
        if (!mapArr[r6].isEmpty()) {
            mapArr[i2].put(exifTagArr2[r6].f13173b, ExifAttribute.c(iArr2[3], this.f13157h));
        }
        int i11 = this.d;
        if (i11 == 4) {
            if (size > 65535) {
                md.k(n00.m(size, "Size of exif data (", " bytes) exceeds the max size of a JPEG APP1 segment (65536 bytes)"));
                return 0;
            }
            byteOrderedDataOutputStream.h(size);
            byteOrderedDataOutputStream.write(e0);
        } else if (i11 == 13) {
            byteOrderedDataOutputStream.d(size);
            byteOrderedDataOutputStream.d(1700284774);
        } else if (i11 == 14) {
            byteOrderedDataOutputStream.write(M);
            byteOrderedDataOutputStream.d(size);
        }
        int size2 = byteOrderedDataOutputStream.f13167b.size();
        byteOrderedDataOutputStream.e(this.f13157h == ByteOrder.BIG_ENDIAN ? (short) 19789 : (short) 18761);
        byteOrderedDataOutputStream.f13168c = this.f13157h;
        byteOrderedDataOutputStream.h(42);
        byteOrderedDataOutputStream.g(8L);
        int i12 = 0;
        while (i12 < exifTagArr.length) {
            if (mapArr[i12].isEmpty()) {
                i3 = i5;
            } else {
                byteOrderedDataOutputStream.h(mapArr[i12].size());
                int size3 = (mapArr[i12].size() * 12) + iArr2[i12] + 2 + i5;
                for (Map.Entry entry : mapArr[i12].entrySet()) {
                    int i13 = ((ExifTag) a0[i12].get(entry.getKey())).f13172a;
                    ExifAttribute exifAttribute2 = (ExifAttribute) entry.getValue();
                    exifAttribute2.getClass();
                    int i14 = exifAttribute2.f13170b;
                    int i15 = exifAttribute2.f13169a;
                    int i16 = iArr[i15] * i14;
                    byteOrderedDataOutputStream.h(i13);
                    byteOrderedDataOutputStream.h(i15);
                    byteOrderedDataOutputStream.d(i14);
                    if (i16 > 4) {
                        byteOrderedDataOutputStream.g(size3);
                        size3 += i16;
                    } else {
                        byteOrderedDataOutputStream.write(exifAttribute2.d);
                        if (i16 < 4) {
                            while (i16 < 4) {
                                byteOrderedDataOutputStream.c(0);
                                i16++;
                            }
                        }
                    }
                    i5 = 4;
                }
                int i17 = i5;
                if (i12 != 0 || mapArr[i17].isEmpty()) {
                    byteOrderedDataOutputStream.g(0L);
                } else {
                    byteOrderedDataOutputStream.g(iArr2[i17]);
                }
                Iterator it3 = mapArr[i12].entrySet().iterator();
                while (it3.hasNext()) {
                    byte[] bArr = ((ExifAttribute) ((Map.Entry) it3.next()).getValue()).d;
                    if (bArr.length > 4) {
                        byteOrderedDataOutputStream.write(bArr, 0, bArr.length);
                    }
                }
                i3 = 4;
            }
            i12++;
            i5 = i3;
        }
        if (this.f13158i) {
            byteOrderedDataOutputStream.write(q());
        }
        if (this.d == 14 && size % 2 == i2) {
            byteOrderedDataOutputStream.c(0);
        }
        byteOrderedDataOutputStream.f13168c = ByteOrder.BIG_ENDIAN;
        return size2;
    }

    public final void O(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.p = byteOrderedDataOutputStream.f13167b.size() + N(new ByteOrderedDataOutputStream(byteArrayOutputStream, ByteOrder.BIG_ENDIAN));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteOrderedDataOutputStream.write(byteArray);
        CRC32 crc32 = new CRC32();
        crc32.update(byteArray, 4, byteArray.length - 4);
        byteOrderedDataOutputStream.d((int) crc32.getValue());
    }

    public final void P(ByteOrderedDataOutputStream byteOrderedDataOutputStream) throws IOException {
        byteOrderedDataOutputStream.d(this.t.d.length + 22);
        CRC32 crc32 = new CRC32();
        byteOrderedDataOutputStream.d(1767135348);
        crc32.update(105);
        crc32.update(26964);
        crc32.update(6902872);
        crc32.update(1767135348);
        byte[] bArr = J;
        byteOrderedDataOutputStream.write(bArr);
        crc32.update(bArr);
        byteOrderedDataOutputStream.write(this.t.d);
        crc32.update(this.t.d);
        byteOrderedDataOutputStream.d((int) crc32.getValue());
        this.u = true;
    }

    public final void a() {
        String strC = c("DateTimeOriginal");
        HashMap[] mapArr = this.f13156f;
        if (strC != null && c("DateTime") == null) {
            mapArr[0].put("DateTime", ExifAttribute.b(strC));
        }
        if (c("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", ExifAttribute.c(0L, this.f13157h));
        }
        if (c("ImageLength") == null) {
            mapArr[0].put("ImageLength", ExifAttribute.c(0L, this.f13157h));
        }
        if (c("Orientation") == null) {
            mapArr[0].put("Orientation", ExifAttribute.c(0L, this.f13157h));
        }
        if (c("LightSource") == null) {
            mapArr[1].put("LightSource", ExifAttribute.c(0L, this.f13157h));
        }
    }

    public final String c(String str) {
        if (str == null) {
            r81.d("tag shouldn't be null");
            return null;
        }
        ExifAttribute exifAttributeF = f(str);
        if (exifAttributeF != null) {
            if (str.equals("GPSTimeStamp")) {
                int i2 = exifAttributeF.f13169a;
                if (i2 == 5 || i2 == 10) {
                    Rational[] rationalArr = (Rational[]) exifAttributeF.k(this.f13157h);
                    if (rationalArr == null || rationalArr.length != 3) {
                        Arrays.toString(rationalArr);
                        return null;
                    }
                    Rational rational = rationalArr[0];
                    Integer numValueOf = Integer.valueOf((int) (rational.f13175a / rational.f13176b));
                    Rational rational2 = rationalArr[1];
                    Integer numValueOf2 = Integer.valueOf((int) (rational2.f13175a / rational2.f13176b));
                    Rational rational3 = rationalArr[2];
                    return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (rational3.f13175a / rational3.f13176b)));
                }
            } else {
                boolean zContains = b0.contains(str);
                ByteOrder byteOrder = this.f13157h;
                if (!zContains) {
                    return exifAttributeF.j(byteOrder);
                }
                try {
                    return Double.toString(exifAttributeF.h(byteOrder));
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public final double d(String str, double d) {
        ExifAttribute exifAttributeF = f(str);
        if (exifAttributeF != null) {
            try {
                return exifAttributeF.h(this.f13157h);
            } catch (NumberFormatException unused) {
            }
        }
        return d;
    }

    public final int e(int i2, String str) {
        ExifAttribute exifAttributeF = f(str);
        if (exifAttributeF != null) {
            try {
                return exifAttributeF.i(this.f13157h);
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public final ExifAttribute f(String str) {
        ExifAttribute exifAttribute;
        int i2;
        ExifAttribute exifAttribute2;
        if (str == null) {
            r81.d("tag shouldn't be null");
            return null;
        }
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        if ("Xmp".equals(str) && (i2 = this.d) != 4 && ((i2 == 9 || i2 == 15 || i2 == 12 || i2 == 13) && (exifAttribute2 = this.t) != null)) {
            return exifAttribute2;
        }
        for (int i3 = 0; i3 < X.length; i3++) {
            ExifAttribute exifAttribute3 = (ExifAttribute) this.f13156f[i3].get(str);
            if (exifAttribute3 != null) {
                return exifAttribute3;
            }
        }
        if (!"Xmp".equals(str) || (exifAttribute = this.t) == null) {
            return null;
        }
        return exifAttribute;
    }

    public final void g(final SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream, int i2) {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        int i3;
        if (i2 == 15 && Build.VERSION.SDK_INT < 31) {
            mt.i("Reading EXIF from AVIF files is supported from SDK 31 and above");
            return;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(new MediaDataSource() { // from class: androidx.exifinterface.media.ExifInterface.1

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public long f13161b;

                    @Override // java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }

                    @Override // android.media.MediaDataSource
                    public final long getSize() {
                        return -1L;
                    }

                    @Override // android.media.MediaDataSource
                    public final int readAt(long j2, byte[] bArr, int i4, int i5) {
                        SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = seekableByteOrderedDataInputStream;
                        DataInputStream dataInputStream = seekableByteOrderedDataInputStream2.f13163b;
                        if (i5 == 0) {
                            return 0;
                        }
                        if (j2 >= 0) {
                            try {
                                long j3 = this.f13161b;
                                if (j3 != j2) {
                                    if (j3 < 0 || j2 < j3 + ((long) dataInputStream.available())) {
                                        seekableByteOrderedDataInputStream2.d(j2);
                                        this.f13161b = j2;
                                    }
                                }
                                if (i5 > dataInputStream.available()) {
                                    i5 = dataInputStream.available();
                                }
                                int i6 = seekableByteOrderedDataInputStream2.read(bArr, i4, i5);
                                if (i6 >= 0) {
                                    this.f13161b += (long) i6;
                                    return i6;
                                }
                            } catch (IOException unused) {
                            }
                            this.f13161b = -1L;
                            return -1;
                        }
                        return -1;
                    }
                });
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.f13156f;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", ExifAttribute.f(Integer.parseInt(strExtractMetadata), this.f13157h));
                }
                if (strExtractMetadata3 != null) {
                    mapArr[0].put("ImageLength", ExifAttribute.f(Integer.parseInt(strExtractMetadata3), this.f13157h));
                }
                if (strExtractMetadata2 != null) {
                    int i4 = Integer.parseInt(strExtractMetadata2);
                    if (i4 == 90) {
                        i3 = 6;
                    } else if (i4 != 180) {
                        i3 = i4 != 270 ? 1 : 8;
                    } else {
                        i3 = 3;
                    }
                    mapArr[0].put("Orientation", ExifAttribute.f(i3, this.f13157h));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i5 = Integer.parseInt(strExtractMetadata4);
                    int i6 = Integer.parseInt(strExtractMetadata5);
                    if (i6 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    seekableByteOrderedDataInputStream.d(i5);
                    byte[] bArr = new byte[6];
                    seekableByteOrderedDataInputStream.readFully(bArr);
                    int i7 = i5 + 6;
                    int i8 = i6 - 6;
                    if (!Arrays.equals(bArr, e0)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i8];
                    seekableByteOrderedDataInputStream.readFully(bArr2);
                    this.p = i7;
                    A(0, bArr2);
                }
                String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(41);
                String strExtractMetadata9 = mediaMetadataRetriever.extractMetadata(42);
                if (strExtractMetadata8 != null && strExtractMetadata9 != null) {
                    int i9 = Integer.parseInt(strExtractMetadata8);
                    int i10 = Integer.parseInt(strExtractMetadata9);
                    long j2 = i9;
                    seekableByteOrderedDataInputStream.d(j2);
                    byte[] bArr3 = new byte[i10];
                    seekableByteOrderedDataInputStream.readFully(bArr3);
                    this.t = new ExifAttribute(j2, bArr3, 1, i10);
                    this.u = true;
                }
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
            } catch (RuntimeException e2) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.", e2);
            }
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
                throw th;
            } catch (IOException unused2) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x006e A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:37:0x0076  */
    /* JADX WARN: Code duplicated, block: B:38:0x0079  */
    /* JADX WARN: Code duplicated, block: B:41:0x008d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0090  */
    /* JADX WARN: Code duplicated, block: B:56:0x010c A[LOOP:0: B:10:0x0023->B:56:0x010c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x0112 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0060. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x0063. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0066. Please report as an issue. */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1060)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    public final void h(androidx.exifinterface.media.ExifInterface.ByteOrderedDataInputStream r20, int r21, int r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.h(androidx.exifinterface.media.ExifInterface$ByteOrderedDataInputStream, int, int):void");
    }

    public final int i(BufferedInputStream bufferedInputStream) throws Throwable {
        int i2;
        ByteOrderedDataInputStream byteOrderedDataInputStream;
        int i3;
        ByteOrderedDataInputStream byteOrderedDataInputStream2;
        int i4;
        int i5;
        long j2;
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        int i6 = 0;
        while (true) {
            byte[] bArr2 = A;
            if (i6 >= bArr2.length) {
                return 4;
            }
            if (bArr[i6] != bArr2[i6]) {
                byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
                for (int i7 = 0; i7 < bytes.length; i7++) {
                    if (bArr[i7] != bytes[i7]) {
                        ByteOrderedDataInputStream byteOrderedDataInputStream3 = null;
                        try {
                            byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
                            try {
                                try {
                                    long j3 = byteOrderedDataInputStream.readInt();
                                    byte[] bArr3 = new byte[4];
                                    byteOrderedDataInputStream.readFully(bArr3);
                                    if (Arrays.equals(bArr3, B)) {
                                        if (j3 == 1) {
                                            j3 = byteOrderedDataInputStream.readLong();
                                            j2 = 16;
                                            if (j3 < 16) {
                                            }
                                            byteOrderedDataInputStream.close();
                                            i2 = 0;
                                            i3 = 0;
                                        } else {
                                            j2 = 8;
                                        }
                                        if (j3 > LiveTranslationEntity.DefaultSentenceTimeOut) {
                                            j3 = 5000;
                                        }
                                        long j4 = j3 - j2;
                                        if (j4 < 8) {
                                            byteOrderedDataInputStream.close();
                                            i2 = 0;
                                            i3 = 0;
                                        } else {
                                            byte[] bArr4 = new byte[4];
                                            long j5 = 0;
                                            boolean z2 = false;
                                            boolean z3 = false;
                                            boolean z4 = false;
                                            while (true) {
                                                if (j5 < j4 / 4) {
                                                    try {
                                                        byteOrderedDataInputStream.readFully(bArr4);
                                                        if (j5 != 1) {
                                                            i2 = 0;
                                                            try {
                                                                if (Arrays.equals(bArr4, C)) {
                                                                    z2 = true;
                                                                } else if (Arrays.equals(bArr4, D)) {
                                                                    z3 = true;
                                                                } else if (Arrays.equals(bArr4, E) || Arrays.equals(bArr4, F)) {
                                                                    z4 = true;
                                                                }
                                                                if (!z2) {
                                                                    continue;
                                                                } else if (z3) {
                                                                    byteOrderedDataInputStream.close();
                                                                    i3 = 12;
                                                                } else if (z4) {
                                                                    byteOrderedDataInputStream.close();
                                                                    i3 = 15;
                                                                }
                                                            } catch (Exception unused) {
                                                                if (byteOrderedDataInputStream != null) {
                                                                    byteOrderedDataInputStream.close();
                                                                }
                                                                i3 = i2;
                                                            }
                                                        }
                                                        j5++;
                                                    } catch (EOFException unused2) {
                                                        i2 = 0;
                                                        byteOrderedDataInputStream.close();
                                                        i3 = i2;
                                                    }
                                                } else {
                                                    i2 = 0;
                                                }
                                                byteOrderedDataInputStream.close();
                                                i3 = i2;
                                            }
                                        }
                                    } else {
                                        byteOrderedDataInputStream.close();
                                        i2 = 0;
                                        i3 = 0;
                                    }
                                } catch (Exception unused3) {
                                    i2 = 0;
                                }
                            } catch (Throwable th) {
                                th = th;
                                byteOrderedDataInputStream3 = byteOrderedDataInputStream;
                                if (byteOrderedDataInputStream3 != null) {
                                    byteOrderedDataInputStream3.close();
                                }
                                throw th;
                            }
                        } catch (Exception unused4) {
                            i2 = 0;
                            byteOrderedDataInputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                        if (i3 != 0) {
                            return i3;
                        }
                        try {
                            byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(bArr);
                            try {
                                ByteOrder byteOrderZ = z(byteOrderedDataInputStream2);
                                this.f13157h = byteOrderZ;
                                byteOrderedDataInputStream2.d = byteOrderZ;
                                short s = byteOrderedDataInputStream2.readShort();
                                i4 = (s == 20306 || s == 21330) ? 1 : i2;
                                byteOrderedDataInputStream2.close();
                            } catch (Exception unused5) {
                                if (byteOrderedDataInputStream2 != null) {
                                    byteOrderedDataInputStream2.close();
                                }
                                i4 = i2;
                            } catch (Throwable th3) {
                                th = th3;
                                byteOrderedDataInputStream3 = byteOrderedDataInputStream2;
                                if (byteOrderedDataInputStream3 != null) {
                                    byteOrderedDataInputStream3.close();
                                }
                                throw th;
                            }
                        } catch (Exception unused6) {
                            byteOrderedDataInputStream2 = null;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                        if (i4 != 0) {
                            return 7;
                        }
                        try {
                            ByteOrderedDataInputStream byteOrderedDataInputStream4 = new ByteOrderedDataInputStream(bArr);
                            try {
                                ByteOrder byteOrderZ2 = z(byteOrderedDataInputStream4);
                                this.f13157h = byteOrderZ2;
                                byteOrderedDataInputStream4.d = byteOrderZ2;
                                i5 = byteOrderedDataInputStream4.readShort() != 85 ? i2 : 1;
                                byteOrderedDataInputStream4.close();
                            } catch (Exception unused7) {
                                byteOrderedDataInputStream3 = byteOrderedDataInputStream4;
                                if (byteOrderedDataInputStream3 != null) {
                                    byteOrderedDataInputStream3.close();
                                }
                                i5 = i2;
                            } catch (Throwable th5) {
                                th = th5;
                                byteOrderedDataInputStream3 = byteOrderedDataInputStream4;
                                if (byteOrderedDataInputStream3 != null) {
                                    byteOrderedDataInputStream3.close();
                                }
                                throw th;
                            }
                        } catch (Exception unused8) {
                        } catch (Throwable th6) {
                            th = th6;
                        }
                        if (i5 != 0) {
                            return 10;
                        }
                        int i8 = i2;
                        while (true) {
                            byte[] bArr5 = I;
                            if (i8 >= bArr5.length) {
                                return 13;
                            }
                            if (bArr[i8] != bArr5[i8]) {
                                int i9 = i2;
                                while (true) {
                                    byte[] bArr6 = K;
                                    if (i9 >= bArr6.length) {
                                        int i10 = i2;
                                        while (true) {
                                            byte[] bArr7 = L;
                                            if (i10 >= bArr7.length) {
                                                return 14;
                                            }
                                            if (bArr[bArr6.length + i10 + 4] != bArr7[i10]) {
                                                break;
                                            }
                                            i10++;
                                        }
                                    } else {
                                        if (bArr[i9] != bArr6[i9]) {
                                            break;
                                        }
                                        i9++;
                                    }
                                }
                                return i2;
                            }
                            i8++;
                        }
                    }
                }
                return 9;
            }
            i6++;
        }
    }

    public final void j(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws Throwable {
        int i2;
        int i3;
        m(seekableByteOrderedDataInputStream);
        HashMap[] mapArr = this.f13156f;
        ExifAttribute exifAttribute = (ExifAttribute) mapArr[1].get("MakerNote");
        if (exifAttribute != null) {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.d);
            seekableByteOrderedDataInputStream2.d = this.f13157h;
            byte[] bArr = G;
            byte[] bArr2 = new byte[bArr.length];
            seekableByteOrderedDataInputStream2.readFully(bArr2);
            seekableByteOrderedDataInputStream2.d(0L);
            byte[] bArr3 = H;
            byte[] bArr4 = new byte[bArr3.length];
            seekableByteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                seekableByteOrderedDataInputStream2.d(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                seekableByteOrderedDataInputStream2.d(12L);
            }
            B(seekableByteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = (ExifAttribute) mapArr[7].get("PreviewImageStart");
            ExifAttribute exifAttribute3 = (ExifAttribute) mapArr[7].get("PreviewImageLength");
            if (exifAttribute2 != null && exifAttribute3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", exifAttribute2);
                mapArr[5].put("JPEGInterchangeFormatLength", exifAttribute3);
            }
            ExifAttribute exifAttribute4 = (ExifAttribute) mapArr[8].get("AspectFrame");
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.k(this.f13157h);
                if (iArr == null || iArr.length != 4) {
                    Arrays.toString(iArr);
                    return;
                }
                int i4 = iArr[2];
                int i5 = iArr[0];
                if (i4 <= i5 || (i2 = iArr[3]) <= (i3 = iArr[1])) {
                    return;
                }
                int i6 = (i4 - i5) + 1;
                int i7 = (i2 - i3) + 1;
                if (i6 < i7) {
                    int i8 = i6 + i7;
                    i7 = i8 - i7;
                    i6 = i8 - i7;
                }
                ExifAttribute exifAttributeF = ExifAttribute.f(i6, this.f13157h);
                ExifAttribute exifAttributeF2 = ExifAttribute.f(i7, this.f13157h);
                mapArr[0].put("ImageWidth", exifAttributeF);
                mapArr[0].put("ImageLength", exifAttributeF2);
            }
        }
    }

    public final void k(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        if (v) {
            Objects.toString(byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.d = ByteOrder.BIG_ENDIAN;
        int i2 = byteOrderedDataInputStream.f13164c;
        byteOrderedDataInputStream.c(I.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            if (z2 && z3) {
                break;
            }
            try {
                int i3 = byteOrderedDataInputStream.readInt();
                int i4 = byteOrderedDataInputStream.readInt();
                int i5 = byteOrderedDataInputStream.f13164c;
                int i6 = i5 + i3 + 4;
                int i7 = i5 - i2;
                if (i7 == 16 && i4 != 1229472850) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appear as the first chunk");
                }
                if (i4 == 1229278788) {
                    break;
                }
                if (i4 == 1700284774 && !z2) {
                    this.p = i7;
                    byte[] bArr = new byte[i3];
                    byteOrderedDataInputStream.readFully(bArr);
                    int i8 = byteOrderedDataInputStream.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(i4 >>> 24);
                    crc32.update(i4 >>> 16);
                    crc32.update(i4 >>> 8);
                    crc32.update(i4);
                    crc32.update(bArr);
                    if (((int) crc32.getValue()) != i8) {
                        throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i8 + ", calculated CRC value: " + crc32.getValue());
                    }
                    A(0, bArr);
                    M();
                    J(new ByteOrderedDataInputStream(bArr));
                    z2 = true;
                } else if (i4 == 1767135348 && !z3) {
                    byte[] bArr2 = J;
                    if (i3 >= bArr2.length) {
                        int length = bArr2.length;
                        byte[] bArr3 = new byte[length];
                        byteOrderedDataInputStream.readFully(bArr3);
                        if (Arrays.equals(bArr3, bArr2)) {
                            int i9 = byteOrderedDataInputStream.f13164c - i2;
                            int i10 = i3 - length;
                            byte[] bArr4 = new byte[i10];
                            byteOrderedDataInputStream.readFully(bArr4);
                            this.t = new ExifAttribute(i9, bArr4, 1, i10);
                            z3 = true;
                        }
                    }
                }
                byteOrderedDataInputStream.c(i6 - byteOrderedDataInputStream.f13164c);
            } catch (EOFException e2) {
                throw new IOException("Encountered corrupt PNG file.", e2);
            }
        }
        this.u = z3;
    }

    public final void l(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        if (v) {
            Objects.toString(byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.c(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        byteOrderedDataInputStream.readFully(bArr);
        byteOrderedDataInputStream.readFully(bArr2);
        byteOrderedDataInputStream.readFully(bArr3);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        int i4 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i3];
        byteOrderedDataInputStream.c(i2 - byteOrderedDataInputStream.f13164c);
        byteOrderedDataInputStream.readFully(bArr4);
        h(new ByteOrderedDataInputStream(bArr4), i2, 5);
        byteOrderedDataInputStream.c(i4 - byteOrderedDataInputStream.f13164c);
        byteOrderedDataInputStream.d = ByteOrder.BIG_ENDIAN;
        int i5 = byteOrderedDataInputStream.readInt();
        for (int i6 = 0; i6 < i5; i6++) {
            int unsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int unsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (unsignedShort == W.f13172a) {
                short s = byteOrderedDataInputStream.readShort();
                short s2 = byteOrderedDataInputStream.readShort();
                ExifAttribute exifAttributeF = ExifAttribute.f(s, this.f13157h);
                ExifAttribute exifAttributeF2 = ExifAttribute.f(s2, this.f13157h);
                HashMap[] mapArr = this.f13156f;
                mapArr[0].put("ImageLength", exifAttributeF);
                mapArr[0].put("ImageWidth", exifAttributeF2);
                return;
            }
            byteOrderedDataInputStream.c(unsignedShort2);
        }
    }

    public final void m(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws Throwable {
        x(seekableByteOrderedDataInputStream);
        B(seekableByteOrderedDataInputStream, 0);
        L(seekableByteOrderedDataInputStream, 0);
        L(seekableByteOrderedDataInputStream, 5);
        L(seekableByteOrderedDataInputStream, 4);
        M();
        if (this.d == 8) {
            HashMap[] mapArr = this.f13156f;
            ExifAttribute exifAttribute = (ExifAttribute) mapArr[1].get("MakerNote");
            if (exifAttribute != null) {
                SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream2 = new SeekableByteOrderedDataInputStream(exifAttribute.d);
                seekableByteOrderedDataInputStream2.d = this.f13157h;
                seekableByteOrderedDataInputStream2.c(6);
                B(seekableByteOrderedDataInputStream2, 9);
                ExifAttribute exifAttribute2 = (ExifAttribute) mapArr[9].get("ColorSpace");
                if (exifAttribute2 != null) {
                    mapArr[1].put("ColorSpace", exifAttribute2);
                }
            }
        }
    }

    public final int n() {
        switch (e(1, "Orientation")) {
            case 3:
            case 4:
                return Sink.ORIENTATION_180;
            case 5:
            case 8:
                return Sink.ORIENTATION_270;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }

    public final void o(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws Throwable {
        if (v) {
            Objects.toString(seekableByteOrderedDataInputStream);
        }
        m(seekableByteOrderedDataInputStream);
        HashMap[] mapArr = this.f13156f;
        ExifAttribute exifAttribute = (ExifAttribute) mapArr[0].get("JpgFromRaw");
        if (exifAttribute != null) {
            h(new ByteOrderedDataInputStream(exifAttribute.d), (int) exifAttribute.f13171c, 5);
        }
        ExifAttribute exifAttribute2 = (ExifAttribute) mapArr[0].get("ISO");
        ExifAttribute exifAttribute3 = (ExifAttribute) mapArr[1].get("PhotographicSensitivity");
        if (exifAttribute2 == null || exifAttribute3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", exifAttribute2);
    }

    public final boolean p(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws IOException {
        byte[] bArr = e0;
        byte[] bArr2 = new byte[bArr.length];
        seekableByteOrderedDataInputStream.readFully(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            return false;
        }
        byte[] bArrCopyOf = new byte[1024];
        int i2 = 0;
        while (true) {
            if (i2 == bArrCopyOf.length) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length * 2);
            }
            int i3 = seekableByteOrderedDataInputStream.f13163b.read(bArrCopyOf, i2, bArrCopyOf.length - i2);
            if (i3 == -1) {
                byte[] bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, i2);
                this.p = bArr.length;
                A(0, bArrCopyOf2);
                return true;
            }
            i2 += i3;
            seekableByteOrderedDataInputStream.f13164c += i3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final byte[] q() throws Throwable {
        FileDescriptor fileDescriptor;
        InputStream fileInputStream;
        InputStream inputStream = null;
        if (this.f13158i) {
            byte[] bArr = this.n;
            if (bArr != null) {
                return bArr;
            }
            try {
                fileInputStream = this.f13154c;
                if (fileInputStream != null) {
                    try {
                        if (!fileInputStream.markSupported()) {
                            ExifInterfaceUtils.a(fileInputStream);
                            return null;
                        }
                        fileInputStream.reset();
                        fileDescriptor = null;
                        try {
                            ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(fileInputStream);
                            byteOrderedDataInputStream.c(this.l + this.p);
                            byte[] bArr2 = new byte[this.m];
                            byteOrderedDataInputStream.readFully(bArr2);
                            this.n = bArr2;
                            ExifInterfaceUtils.a(fileInputStream);
                            if (fileDescriptor != null) {
                                try {
                                    Os.close(fileDescriptor);
                                } catch (ErrnoException unused) {
                                }
                            }
                            return bArr2;
                        } catch (Exception unused2) {
                        } catch (Throwable th) {
                            th = th;
                            inputStream = fileInputStream;
                            ExifInterfaceUtils.a(inputStream);
                            if (fileDescriptor != null) {
                                try {
                                    Os.close(fileDescriptor);
                                } catch (ErrnoException unused3) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception unused4) {
                        fileDescriptor = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileDescriptor = null;
                        inputStream = fileInputStream;
                        ExifInterfaceUtils.a(inputStream);
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        throw th;
                    }
                    ExifInterfaceUtils.a(fileInputStream);
                    if (fileDescriptor != null) {
                        try {
                            Os.close(fileDescriptor);
                        } catch (ErrnoException unused5) {
                        }
                    }
                } else {
                    if (this.f13152a != null) {
                        fileInputStream = new FileInputStream(this.f13152a);
                        fileDescriptor = null;
                        ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(fileInputStream);
                        byteOrderedDataInputStream2.c(this.l + this.p);
                        byte[] bArr3 = new byte[this.m];
                        byteOrderedDataInputStream2.readFully(bArr3);
                        this.n = bArr3;
                        ExifInterfaceUtils.a(fileInputStream);
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        return bArr3;
                    }
                    FileDescriptor fileDescriptorDup = Os.dup(this.f13153b);
                    try {
                        Os.lseek(fileDescriptorDup, 0L, OsConstants.SEEK_SET);
                        fileDescriptor = fileDescriptorDup;
                        fileInputStream = new FileInputStream(fileDescriptorDup);
                        ByteOrderedDataInputStream byteOrderedDataInputStream3 = new ByteOrderedDataInputStream(fileInputStream);
                        byteOrderedDataInputStream3.c(this.l + this.p);
                        byte[] bArr4 = new byte[this.m];
                        byteOrderedDataInputStream3.readFully(bArr4);
                        this.n = bArr4;
                        ExifInterfaceUtils.a(fileInputStream);
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        return bArr4;
                    } catch (Exception unused6) {
                        fileDescriptor = fileDescriptorDup;
                        fileInputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        fileDescriptor = fileDescriptorDup;
                        ExifInterfaceUtils.a(inputStream);
                        if (fileDescriptor != null) {
                            Os.close(fileDescriptor);
                        }
                        throw th;
                    }
                }
            } catch (Exception unused7) {
                fileInputStream = null;
                fileDescriptor = null;
            } catch (Throwable th4) {
                th = th4;
                fileDescriptor = null;
            }
        }
        return null;
    }

    public final void r(ByteOrderedDataInputStream byteOrderedDataInputStream) throws Throwable {
        if (v) {
            Objects.toString(byteOrderedDataInputStream);
        }
        byteOrderedDataInputStream.d = ByteOrder.LITTLE_ENDIAN;
        byteOrderedDataInputStream.c(K.length);
        int i2 = byteOrderedDataInputStream.readInt() + 8;
        byte[] bArr = L;
        byteOrderedDataInputStream.c(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                byteOrderedDataInputStream.readFully(bArr2);
                int i3 = byteOrderedDataInputStream.readInt();
                int i4 = length + 8;
                if (Arrays.equals(M, bArr2)) {
                    byte[] bArrCopyOfRange = new byte[i3];
                    byteOrderedDataInputStream.readFully(bArrCopyOfRange);
                    byte[] bArr3 = e0;
                    if (ExifInterfaceUtils.e(bArrCopyOfRange, bArr3)) {
                        bArrCopyOfRange = Arrays.copyOfRange(bArrCopyOfRange, bArr3.length, i3);
                    }
                    this.p = i4;
                    A(0, bArrCopyOfRange);
                    J(new ByteOrderedDataInputStream(bArrCopyOfRange));
                    return;
                }
                if (i3 % 2 == 1) {
                    i3++;
                }
                length = i4 + i3;
                if (length == i2) {
                    return;
                }
                if (length > i2) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                byteOrderedDataInputStream.c(i3);
            } catch (EOFException e2) {
                throw new IOException("Encountered corrupt WebP file.", e2);
            }
        }
    }

    public final void t(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap map) throws Throwable {
        ExifAttribute exifAttribute = (ExifAttribute) map.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get("JPEGInterchangeFormatLength");
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        int i2 = exifAttribute.i(this.f13157h);
        int i3 = exifAttribute2.i(this.f13157h);
        if (this.d == 7) {
            i2 += this.q;
        }
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        this.f13158i = true;
        if (this.f13152a == null && this.f13154c == null && this.f13153b == null) {
            byte[] bArr = new byte[i3];
            byteOrderedDataInputStream.c(i2);
            byteOrderedDataInputStream.readFully(bArr);
            this.n = bArr;
        }
        this.l = i2;
        this.m = i3;
    }

    public final void u(String str) throws Throwable {
        boolean z2;
        if (str == null) {
            r81.d("filename cannot be null");
            return;
        }
        FileInputStream fileInputStream = null;
        this.f13154c = null;
        this.f13152a = str;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                try {
                    Os.lseek(fileInputStream2.getFD(), 0L, OsConstants.SEEK_CUR);
                    z2 = true;
                } catch (Exception unused) {
                    z2 = false;
                }
                if (z2) {
                    this.f13153b = fileInputStream2.getFD();
                } else {
                    this.f13153b = null;
                }
                w(fileInputStream2);
                ExifInterfaceUtils.a(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                ExifInterfaceUtils.a(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final boolean v(HashMap map) {
        ExifAttribute exifAttribute = (ExifAttribute) map.get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) map.get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null) {
            return false;
        }
        return exifAttribute.i(this.f13157h) <= 512 && exifAttribute2.i(this.f13157h) <= 512;
    }

    public final void w(InputStream inputStream) throws Throwable {
        boolean z2 = v;
        for (int i2 = 0; i2 < X.length; i2++) {
            try {
                try {
                    this.f13156f[i2] = new HashMap();
                } catch (IOException | UnsupportedOperationException unused) {
                    a();
                    if (z2) {
                        y();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                a();
                if (z2) {
                    y();
                }
                throw th;
            }
        }
        boolean z3 = this.f13155e;
        if (!z3) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.d = i(bufferedInputStream);
            inputStream = bufferedInputStream;
        }
        int i3 = this.d;
        if (i3 == 4 || i3 == 9 || i3 == 13 || i3 == 14) {
            ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(inputStream);
            int i4 = this.d;
            if (i4 == 4) {
                h(byteOrderedDataInputStream, 0, 0);
            } else if (i4 == 13) {
                k(byteOrderedDataInputStream);
            } else if (i4 == 9) {
                l(byteOrderedDataInputStream);
            } else if (i4 == 14) {
                r(byteOrderedDataInputStream);
            }
        } else {
            SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream = new SeekableByteOrderedDataInputStream(inputStream);
            if (!z3) {
                int i5 = this.d;
                if (i5 == 12 || i5 == 15) {
                    g(seekableByteOrderedDataInputStream, i5);
                } else if (i5 == 7) {
                    j(seekableByteOrderedDataInputStream);
                } else if (i5 == 10) {
                    o(seekableByteOrderedDataInputStream);
                } else {
                    m(seekableByteOrderedDataInputStream);
                }
            } else if (!p(seekableByteOrderedDataInputStream)) {
                a();
                if (z2) {
                    y();
                    return;
                }
                return;
            }
            seekableByteOrderedDataInputStream.d(this.p);
            J(seekableByteOrderedDataInputStream);
        }
        a();
        if (z2) {
            y();
        }
    }

    public final void x(SeekableByteOrderedDataInputStream seekableByteOrderedDataInputStream) throws IOException {
        ByteOrder byteOrderZ = z(seekableByteOrderedDataInputStream);
        this.f13157h = byteOrderZ;
        seekableByteOrderedDataInputStream.d = byteOrderZ;
        int unsignedShort = seekableByteOrderedDataInputStream.readUnsignedShort();
        int i2 = this.d;
        if (i2 != 7 && i2 != 10 && unsignedShort != 42) {
            az.y(Integer.toHexString(unsignedShort), "Invalid start code: ");
            return;
        }
        int i3 = seekableByteOrderedDataInputStream.readInt();
        if (i3 < 8) {
            az.o(pq0.k(i3, "Invalid first Ifd offset: "));
            return;
        }
        int i4 = i3 - 8;
        if (i4 > 0) {
            seekableByteOrderedDataInputStream.c(i4);
        }
    }

    public final void y() throws Throwable {
        int i2 = 0;
        while (true) {
            HashMap[] mapArr = this.f13156f;
            if (i2 >= mapArr.length) {
                return;
            }
            mapArr[i2].size();
            for (Map.Entry entry : mapArr[i2].entrySet()) {
                ExifAttribute exifAttribute = (ExifAttribute) entry.getValue();
                exifAttribute.toString();
                exifAttribute.j(this.f13157h);
            }
            i2++;
        }
    }

    public static class ByteOrderedDataOutputStream extends FilterOutputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DataOutputStream f13167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ByteOrder f13168c;

        public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.f13167b = new DataOutputStream(outputStream);
            this.f13168c = byteOrder;
        }

        public final void c(int i2) throws IOException {
            this.f13167b.write(i2);
        }

        public final void d(int i2) throws IOException {
            ByteOrder byteOrder = this.f13168c;
            ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
            DataOutputStream dataOutputStream = this.f13167b;
            if (byteOrder == byteOrder2) {
                dataOutputStream.write(i2 & 255);
                dataOutputStream.write((i2 >>> 8) & 255);
                dataOutputStream.write((i2 >>> 16) & 255);
                dataOutputStream.write((i2 >>> 24) & 255);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                dataOutputStream.write((i2 >>> 24) & 255);
                dataOutputStream.write((i2 >>> 16) & 255);
                dataOutputStream.write((i2 >>> 8) & 255);
                dataOutputStream.write(i2 & 255);
            }
        }

        public final void e(short s) throws IOException {
            ByteOrder byteOrder = this.f13168c;
            ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
            DataOutputStream dataOutputStream = this.f13167b;
            if (byteOrder == byteOrder2) {
                dataOutputStream.write(s & 255);
                dataOutputStream.write((s >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                dataOutputStream.write((s >>> 8) & 255);
                dataOutputStream.write(s & 255);
            }
        }

        public final void g(long j2) throws IOException {
            if (j2 <= BodyPartID.bodyIdMax) {
                d((int) j2);
            } else {
                md.n("val is larger than the maximum value of a 32-bit unsigned integer");
            }
        }

        public final void h(int i2) throws IOException {
            if (i2 <= 65535) {
                e((short) i2);
            } else {
                md.n("val is larger than the maximum value of a 16-bit unsigned integer");
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) throws IOException {
            this.f13167b.write(bArr);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i2, int i3) throws IOException {
            this.f13167b.write(bArr, i2, i3);
        }
    }

    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DataInputStream f13163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13164c;
        public ByteOrder d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f13165e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f13166f;

        public ByteOrderedDataInputStream(InputStream inputStream, ByteOrder byteOrder) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.f13163b = dataInputStream;
            dataInputStream.mark(0);
            this.f13164c = 0;
            this.d = byteOrder;
            this.f13166f = inputStream instanceof ByteOrderedDataInputStream ? ((ByteOrderedDataInputStream) inputStream).f13166f : -1;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f13163b.available();
        }

        public final void c(int i2) throws IOException {
            int i3 = 0;
            while (i3 < i2) {
                int i4 = i2 - i3;
                DataInputStream dataInputStream = this.f13163b;
                int iSkip = (int) dataInputStream.skip(i4);
                if (iSkip <= 0) {
                    if (this.f13165e == null) {
                        this.f13165e = new byte[8192];
                    }
                    iSkip = dataInputStream.read(this.f13165e, 0, Math.min(8192, i4));
                    if (iSkip == -1) {
                        d20.g(n00.m(i2, "Reached EOF while skipping ", " bytes."));
                        return;
                    }
                }
                i3 += iSkip;
            }
            this.f13164c += i3;
        }

        @Override // java.io.InputStream
        public final void mark(int i2) {
            throw new UnsupportedOperationException("Mark is currently unsupported");
        }

        @Override // java.io.InputStream
        public final int read() {
            this.f13164c++;
            return this.f13163b.read();
        }

        @Override // java.io.DataInput
        public final boolean readBoolean() {
            this.f13164c++;
            return this.f13163b.readBoolean();
        }

        @Override // java.io.DataInput
        public final byte readByte() throws IOException {
            this.f13164c++;
            int i2 = this.f13163b.read();
            if (i2 >= 0) {
                return (byte) i2;
            }
            md.e();
            return (byte) 0;
        }

        @Override // java.io.DataInput
        public final char readChar() {
            this.f13164c += 2;
            return this.f13163b.readChar();
        }

        @Override // java.io.DataInput
        public final double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public final float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr) throws IOException {
            this.f13164c += bArr.length;
            this.f13163b.readFully(bArr);
        }

        @Override // java.io.DataInput
        public final int readInt() throws IOException {
            this.f13164c += 4;
            DataInputStream dataInputStream = this.f13163b;
            int i2 = dataInputStream.read();
            int i3 = dataInputStream.read();
            int i4 = dataInputStream.read();
            int i5 = dataInputStream.read();
            if ((i2 | i3 | i4 | i5) < 0) {
                md.e();
                return 0;
            }
            ByteOrder byteOrder = this.d;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (i5 << 24) + (i4 << 16) + (i3 << 8) + i2;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (i2 << 24) + (i3 << 16) + (i4 << 8) + i5;
            }
            az.y(this.d, "Invalid byte order: ");
            return 0;
        }

        @Override // java.io.DataInput
        public final String readLine() {
            return null;
        }

        @Override // java.io.DataInput
        public final long readLong() throws IOException {
            this.f13164c += 8;
            DataInputStream dataInputStream = this.f13163b;
            int i2 = dataInputStream.read();
            int i3 = dataInputStream.read();
            int i4 = dataInputStream.read();
            int i5 = dataInputStream.read();
            int i6 = dataInputStream.read();
            int i7 = dataInputStream.read();
            int i8 = dataInputStream.read();
            int i9 = dataInputStream.read();
            if ((i2 | i3 | i4 | i5 | i6 | i7 | i8 | i9) < 0) {
                md.e();
                return 0L;
            }
            ByteOrder byteOrder = this.d;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (((long) i9) << 56) + (((long) i8) << 48) + (((long) i7) << 40) + (((long) i6) << 32) + (((long) i5) << 24) + (((long) i4) << 16) + (((long) i3) << 8) + ((long) i2);
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (((long) i2) << 56) + (((long) i3) << 48) + (((long) i4) << 40) + (((long) i5) << 32) + (((long) i6) << 24) + (((long) i7) << 16) + (((long) i8) << 8) + ((long) i9);
            }
            az.y(this.d, "Invalid byte order: ");
            return 0L;
        }

        @Override // java.io.DataInput
        public final short readShort() throws IOException {
            this.f13164c += 2;
            DataInputStream dataInputStream = this.f13163b;
            int i2 = dataInputStream.read();
            int i3 = dataInputStream.read();
            if ((i2 | i3) < 0) {
                md.e();
                return (short) 0;
            }
            ByteOrder byteOrder = this.d;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (short) ((i3 << 8) + i2);
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (short) ((i2 << 8) + i3);
            }
            az.y(this.d, "Invalid byte order: ");
            return (short) 0;
        }

        @Override // java.io.DataInput
        public final String readUTF() {
            this.f13164c += 2;
            return this.f13163b.readUTF();
        }

        @Override // java.io.DataInput
        public final int readUnsignedByte() {
            this.f13164c++;
            return this.f13163b.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public final int readUnsignedShort() throws IOException {
            this.f13164c += 2;
            DataInputStream dataInputStream = this.f13163b;
            int i2 = dataInputStream.read();
            int i3 = dataInputStream.read();
            if ((i2 | i3) < 0) {
                md.e();
                return 0;
            }
            ByteOrder byteOrder = this.d;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                return (i3 << 8) + i2;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                return (i2 << 8) + i3;
            }
            az.y(this.d, "Invalid byte order: ");
            return 0;
        }

        @Override // java.io.InputStream
        public final void reset() {
            throw new UnsupportedOperationException("Reset is currently unsupported");
        }

        @Override // java.io.DataInput
        public final int skipBytes(int i2) {
            throw new UnsupportedOperationException("skipBytes is currently unsupported");
        }

        @Override // java.io.DataInput
        public final void readFully(byte[] bArr, int i2, int i3) throws IOException {
            this.f13164c += i3;
            this.f13163b.readFully(bArr, i2, i3);
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = this.f13163b.read(bArr, i2, i3);
            this.f13164c += i4;
            return i4;
        }

        public ByteOrderedDataInputStream(InputStream inputStream) {
            this(inputStream, ByteOrder.BIG_ENDIAN);
        }

        public ByteOrderedDataInputStream(byte[] bArr) {
            this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
            this.f13166f = bArr.length;
        }
    }

    public static class ExifAttribute {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13169a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f13171c;
        public final byte[] d;

        public ExifAttribute(long j2, byte[] bArr, int i2, int i3) {
            this.f13169a = i2;
            this.f13170b = i3;
            this.f13171c = j2;
            this.d = bArr;
        }

        public static ExifAttribute a(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(ExifInterface.d0);
            return new ExifAttribute(1, bytes.length, bytes);
        }

        public static ExifAttribute b(String str) {
            byte[] bytes = str.concat("\u0000").getBytes(ExifInterface.d0);
            return new ExifAttribute(2, bytes.length, bytes);
        }

        public static ExifAttribute c(long j2, ByteOrder byteOrder) {
            return d(new long[]{j2}, byteOrder);
        }

        public static ExifAttribute d(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.U[4] * jArr.length]);
            byteBufferWrap.order(byteOrder);
            for (long j2 : jArr) {
                byteBufferWrap.putInt((int) j2);
            }
            return new ExifAttribute(4, jArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute e(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.U[5] * rationalArr.length]);
            byteBufferWrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                byteBufferWrap.putInt((int) rational.f13175a);
                byteBufferWrap.putInt((int) rational.f13176b);
            }
            return new ExifAttribute(5, rationalArr.length, byteBufferWrap.array());
        }

        public static ExifAttribute f(int i2, ByteOrder byteOrder) {
            return g(new int[]{i2}, byteOrder);
        }

        public static ExifAttribute g(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[ExifInterface.U[3] * iArr.length]);
            byteBufferWrap.order(byteOrder);
            for (int i2 : iArr) {
                byteBufferWrap.putShort((short) i2);
            }
            return new ExifAttribute(3, iArr.length, byteBufferWrap.array());
        }

        public final double h(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (objK instanceof String) {
                return Double.parseDouble((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                if (iArr.length == 1) {
                    return iArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof Rational[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            Rational[] rationalArr = (Rational[]) objK;
            if (rationalArr.length != 1) {
                throw new NumberFormatException("There are more than one component");
            }
            Rational rational = rationalArr[0];
            return rational.f13175a / rational.f13176b;
        }

        public final int i(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (objK instanceof String) {
                return Integer.parseInt((String) objK);
            }
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(objK instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) objK;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public final String j(ByteOrder byteOrder) throws Throwable {
            Object objK = k(byteOrder);
            if (objK == null) {
                return null;
            }
            if (objK instanceof String) {
                return (String) objK;
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            if (objK instanceof long[]) {
                long[] jArr = (long[]) objK;
                while (i2 < jArr.length) {
                    sb.append(jArr[i2]);
                    i2++;
                    if (i2 != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (objK instanceof int[]) {
                int[] iArr = (int[]) objK;
                while (i2 < iArr.length) {
                    sb.append(iArr[i2]);
                    i2++;
                    if (i2 != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (objK instanceof double[]) {
                double[] dArr = (double[]) objK;
                while (i2 < dArr.length) {
                    sb.append(dArr[i2]);
                    i2++;
                    if (i2 != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(objK instanceof Rational[])) {
                return null;
            }
            Rational[] rationalArr = (Rational[]) objK;
            while (i2 < rationalArr.length) {
                sb.append(rationalArr[i2].f13175a);
                sb.append('/');
                sb.append(rationalArr[i2].f13176b);
                i2++;
                if (i2 != rationalArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        /* JADX WARN: Type inference failed for: r11v11, types: [int[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r11v12, types: [java.io.Serializable, long[]] */
        /* JADX WARN: Type inference failed for: r11v13, types: [androidx.exifinterface.media.ExifInterface$Rational[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r11v14, types: [int[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r11v15, types: [int[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r11v16, types: [androidx.exifinterface.media.ExifInterface$Rational[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r11v17, types: [double[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r11v18, types: [double[], java.io.Serializable] */
        public final Serializable k(ByteOrder byteOrder) throws Throwable {
            ByteOrderedDataInputStream byteOrderedDataInputStream;
            byte b2;
            byte[] bArr = this.d;
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = null;
            try {
                byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
                try {
                    byteOrderedDataInputStream.d = byteOrder;
                    int i2 = this.f13169a;
                    int length = 0;
                    int i3 = this.f13170b;
                    switch (i2) {
                        case 1:
                        case 6:
                            if (bArr.length != 1 || (b2 = bArr[0]) < 0 || b2 > 1) {
                                String str = new String(bArr, ExifInterface.d0);
                                try {
                                    byteOrderedDataInputStream.close();
                                    break;
                                } catch (IOException unused) {
                                }
                                return str;
                            }
                            String str2 = new String(new char[]{(char) (b2 + 48)});
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused2) {
                            }
                            return str2;
                        case 2:
                        case 7:
                            if (i3 >= ExifInterface.V.length) {
                                int i4 = 0;
                                while (true) {
                                    byte[] bArr2 = ExifInterface.V;
                                    if (i4 >= bArr2.length) {
                                        length = bArr2.length;
                                    } else if (bArr[i4] == bArr2[i4]) {
                                        i4++;
                                    }
                                }
                            }
                            StringBuilder sb = new StringBuilder();
                            try {
                                while (length < i3) {
                                    byte b3 = bArr[length];
                                    if (b3 == 0) {
                                        String string = sb.toString();
                                        byteOrderedDataInputStream.close();
                                        return string;
                                    }
                                    if (b3 >= 32) {
                                        sb.append((char) b3);
                                    } else {
                                        sb.append('?');
                                    }
                                    length++;
                                }
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused3) {
                            }
                            String string2 = sb.toString();
                            return string2;
                        case 3:
                            ?? r11 = new int[i3];
                            while (length < i3) {
                                r11[length] = byteOrderedDataInputStream.readUnsignedShort();
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused4) {
                            }
                            return r11;
                        case 4:
                            ?? r12 = new long[i3];
                            while (length < i3) {
                                r12[length] = ((long) byteOrderedDataInputStream.readInt()) & BodyPartID.bodyIdMax;
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused5) {
                            }
                            return r12;
                        case 5:
                            ?? r13 = new Rational[i3];
                            while (length < i3) {
                                r13[length] = new Rational(((long) byteOrderedDataInputStream.readInt()) & BodyPartID.bodyIdMax, ((long) byteOrderedDataInputStream.readInt()) & BodyPartID.bodyIdMax);
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused6) {
                            }
                            return r13;
                        case 8:
                            ?? r14 = new int[i3];
                            while (length < i3) {
                                r14[length] = byteOrderedDataInputStream.readShort();
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused7) {
                            }
                            return r14;
                        case 9:
                            ?? r15 = new int[i3];
                            while (length < i3) {
                                r15[length] = byteOrderedDataInputStream.readInt();
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused8) {
                            }
                            return r15;
                        case 10:
                            ?? r16 = new Rational[i3];
                            while (length < i3) {
                                r16[length] = new Rational(byteOrderedDataInputStream.readInt(), byteOrderedDataInputStream.readInt());
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused9) {
                            }
                            return r16;
                        case 11:
                            ?? r17 = new double[i3];
                            while (length < i3) {
                                r17[length] = byteOrderedDataInputStream.readFloat();
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused10) {
                            }
                            return r17;
                        case 12:
                            ?? r18 = new double[i3];
                            while (length < i3) {
                                r18[length] = byteOrderedDataInputStream.readDouble();
                                length++;
                            }
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused11) {
                            }
                            return r18;
                        default:
                            try {
                                byteOrderedDataInputStream.close();
                                break;
                            } catch (IOException unused12) {
                            }
                            return null;
                    }
                } catch (IOException unused13) {
                    if (byteOrderedDataInputStream != null) {
                        try {
                            byteOrderedDataInputStream.close();
                        } catch (IOException unused14) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    byteOrderedDataInputStream2 = byteOrderedDataInputStream;
                    if (byteOrderedDataInputStream2 != null) {
                        try {
                            byteOrderedDataInputStream2.close();
                        } catch (IOException unused15) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused16) {
                byteOrderedDataInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(ExifInterface.T[this.f13169a]);
            sb.append(", data length:");
            return a.i(this.d.length, ")", sb);
        }

        public ExifAttribute(int i2, int i3, byte[] bArr) {
            this(-1L, bArr, i2, i3);
        }
    }

    public static class ExifTag {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13172a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f13173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13174c;
        public final int d;

        public ExifTag(String str, int i2, int i3) {
            this.f13173b = str;
            this.f13172a = i2;
            this.f13174c = i3;
            this.d = -1;
        }

        public ExifTag(String str, int i2, int i3, int i4) {
            this.f13173b = str;
            this.f13172a = i2;
            this.f13174c = i3;
            this.d = i4;
        }
    }

    public static class SeekableByteOrderedDataInputStream extends ByteOrderedDataInputStream {
        public SeekableByteOrderedDataInputStream(InputStream inputStream) {
            super(inputStream);
            if (inputStream.markSupported()) {
                this.f13163b.mark(Integer.MAX_VALUE);
            } else {
                md.n("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
                throw null;
            }
        }

        public final void d(long j2) throws IOException {
            int i2 = this.f13164c;
            if (i2 > j2) {
                this.f13164c = 0;
                this.f13163b.reset();
            } else {
                j2 -= (long) i2;
            }
            c((int) j2);
        }

        public SeekableByteOrderedDataInputStream(byte[] bArr) {
            super(bArr);
            this.f13163b.mark(Integer.MAX_VALUE);
        }
    }

    public ExifInterface(String str) throws Throwable {
        ExifTag[][] exifTagArr = X;
        this.f13156f = new HashMap[exifTagArr.length];
        this.g = new HashSet(exifTagArr.length);
        this.f13157h = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            u(str);
        } else {
            r81.d("filename cannot be null");
            throw null;
        }
    }

    public ExifInterface(FileDescriptor fileDescriptor) throws Throwable {
        boolean z2;
        ExifTag[][] exifTagArr = X;
        this.f13156f = new HashMap[exifTagArr.length];
        this.g = new HashSet(exifTagArr.length);
        this.f13157h = ByteOrder.BIG_ENDIAN;
        FileInputStream fileInputStream = null;
        if (fileDescriptor != null) {
            this.f13154c = null;
            this.f13152a = null;
            try {
                Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
                this.f13153b = fileDescriptor;
                try {
                    fileDescriptor = Os.dup(fileDescriptor);
                    z2 = true;
                } catch (Exception e2) {
                    throw new IOException("Failed to duplicate file descriptor", e2);
                }
            } catch (Exception unused) {
                this.f13153b = null;
                z2 = false;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileDescriptor);
                try {
                    w(fileInputStream2);
                    ExifInterfaceUtils.a(fileInputStream2);
                    if (z2) {
                        try {
                            Os.close(fileDescriptor);
                        } catch (ErrnoException unused2) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    ExifInterfaceUtils.a(fileInputStream);
                    if (z2) {
                        try {
                            Os.close(fileDescriptor);
                        } catch (ErrnoException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            r81.d("fileDescriptor cannot be null");
            throw null;
        }
    }

    public ExifInterface(InputStream inputStream) throws IOException {
        this(inputStream, 0);
    }

    public ExifInterface(File file) throws Throwable {
        ExifTag[][] exifTagArr = X;
        this.f13156f = new HashMap[exifTagArr.length];
        this.g = new HashSet(exifTagArr.length);
        this.f13157h = ByteOrder.BIG_ENDIAN;
        if (file != null) {
            u(file.getAbsolutePath());
        } else {
            r81.d("file cannot be null");
            throw null;
        }
    }
}
