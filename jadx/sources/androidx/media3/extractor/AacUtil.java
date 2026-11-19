package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import defpackage.pq0;
import defpackage.x1;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public abstract class AacUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f16064a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f16065b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AacAudioObjectType {
    }

    public static final class Config {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16066a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16067b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f16068c;

        public Config(int i2, int i3, String str) {
            this.f16066a = i2;
            this.f16067b = i3;
            this.f16068c = str;
        }
    }

    public static int a(ParsableBitArray parsableBitArray) throws ParserException {
        int iG = parsableBitArray.g(4);
        if (iG == 15) {
            if (parsableBitArray.b() >= 24) {
                return parsableBitArray.g(24);
            }
            throw ParserException.a(null, "AAC header insufficient data");
        }
        if (iG < 13) {
            return f16064a[iG];
        }
        throw ParserException.a(null, "AAC header wrong Sampling Frequency Index");
    }

    public static Config b(ParsableBitArray parsableBitArray, boolean z) {
        int iG = parsableBitArray.g(5);
        if (iG == 31) {
            iG = parsableBitArray.g(6) + 32;
        }
        int iA = a(parsableBitArray);
        int iG2 = parsableBitArray.g(4);
        String strK = pq0.k(iG, "mp4a.40.");
        if (iG == 5 || iG == 29) {
            iA = a(parsableBitArray);
            int iG3 = parsableBitArray.g(5);
            if (iG3 == 31) {
                iG3 = parsableBitArray.g(6) + 32;
            }
            iG = iG3;
            if (iG == 22) {
                iG2 = parsableBitArray.g(4);
            }
        }
        if (z) {
            if (iG != 1 && iG != 2 && iG != 3 && iG != 4 && iG != 6 && iG != 7 && iG != 17) {
                switch (iG) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.c("Unsupported audio object type: " + iG);
                }
            }
            if (parsableBitArray.f()) {
                Log.g("Unexpected frameLengthFlag = 1");
            }
            if (parsableBitArray.f()) {
                parsableBitArray.o(14);
            }
            boolean zF = parsableBitArray.f();
            if (iG2 == 0) {
                x1.i();
                return null;
            }
            if (iG == 6 || iG == 20) {
                parsableBitArray.o(3);
            }
            if (zF) {
                if (iG == 22) {
                    parsableBitArray.o(16);
                }
                if (iG == 17 || iG == 19 || iG == 20 || iG == 23) {
                    parsableBitArray.o(3);
                }
                parsableBitArray.o(1);
            }
            switch (iG) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iG4 = parsableBitArray.g(2);
                    if (iG4 == 2 || iG4 == 3) {
                        throw ParserException.c("Unsupported epConfig: " + iG4);
                    }
                    break;
            }
        }
        int i2 = f16065b[iG2];
        if (i2 != -1) {
            return new Config(iA, i2, strK);
        }
        throw ParserException.a(null, null);
    }
}
