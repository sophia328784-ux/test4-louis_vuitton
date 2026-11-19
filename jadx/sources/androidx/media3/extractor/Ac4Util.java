package androidx.media3.extractor;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.r;
import com.sightcall.uvc.Camera;
import java.util.Locale;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public abstract class Ac4Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f16074a = {2002, r.E, Sink.Screenshare.MAX_DIMENSION_HIGH, 1601, 1600, 1001, 1000, 960, ConfigurationName.BASE_X_POS, ConfigurationName.BASE_X_POS, Camera.DEFAULT_PREVIEW_HEIGHT, 400, 400, 2048};

    public static final class Ac4Presentation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16075a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16076b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16077c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16078e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16079f;
        public int g;
    }

    public static final class SyncFrameInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16082c;

        public SyncFrameInfo(int i2, int i3, int i4) {
            this.f16080a = i2;
            this.f16081b = i3;
            this.f16082c = i4;
        }
    }

    public static void a(int i2, ParsableByteArray parsableByteArray) {
        parsableByteArray.K(7);
        byte[] bArr = parsableByteArray.f14194a;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i2 >> 16) & 255);
        bArr[5] = (byte) ((i2 >> 8) & 255);
        bArr[6] = (byte) (i2 & 255);
    }

    /* JADX WARN: Code duplicated, block: B:154:0x025e  */
    /* JADX WARN: Code duplicated, block: B:64:0x012e  */
    /* JADX WARN: Code duplicated, block: B:75:0x0153  */
    public static Format b(ParsableByteArray parsableByteArray, String str, String str2, DrmInitData drmInitData) throws ParserException {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean zF;
        int iG;
        int iG2;
        int iG3;
        int iB;
        boolean z;
        boolean zF2;
        int i8;
        int iG4;
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.l(parsableByteArray);
        int iB2 = parsableBitArray.b();
        int iG5 = parsableBitArray.g(3);
        if (iG5 > 1) {
            throw ParserException.c("Unsupported AC-4 DSI version: " + iG5);
        }
        int iG6 = parsableBitArray.g(7);
        int i9 = parsableBitArray.f() ? 48000 : 44100;
        parsableBitArray.o(4);
        int iG7 = parsableBitArray.g(9);
        if (iG6 > 1) {
            if (iG5 == 0) {
                throw ParserException.c("Invalid AC-4 DSI version: " + iG5);
            }
            if (parsableBitArray.f()) {
                parsableBitArray.o(16);
                if (parsableBitArray.f()) {
                    parsableBitArray.o(128);
                }
            }
        }
        if (iG5 == 1) {
            if (parsableBitArray.b() < 66) {
                throw ParserException.c("Invalid AC-4 DSI bitrate.");
            }
            parsableBitArray.o(66);
            parsableBitArray.c();
        }
        Ac4Presentation ac4Presentation = new Ac4Presentation();
        ac4Presentation.f16075a = true;
        ac4Presentation.f16076b = -1;
        ac4Presentation.f16077c = -1;
        ac4Presentation.d = true;
        ac4Presentation.f16078e = 2;
        ac4Presentation.f16079f = 1;
        int i10 = 0;
        ac4Presentation.g = 0;
        while (true) {
            if (i10 < iG7) {
                if (iG5 == 0) {
                    zF = parsableBitArray.f();
                    iG = parsableBitArray.g(5);
                    iG2 = parsableBitArray.g(5);
                    iG3 = 0;
                    iB = 0;
                    z = false;
                } else {
                    int iG8 = parsableBitArray.g(8);
                    iG3 = parsableBitArray.g(8);
                    if (iG3 == 255) {
                        iG3 += parsableBitArray.g(16);
                    }
                    if (iG8 > 2) {
                        parsableBitArray.o(iG3 * 8);
                        i10++;
                    } else {
                        iB = (iB2 - parsableBitArray.b()) / 8;
                        int iG9 = parsableBitArray.g(5);
                        z = iG9 == 31;
                        iG2 = iG8;
                        iG = iG9;
                        zF = false;
                    }
                }
                ac4Presentation.f16079f = iG2;
                if (zF || z || iG != 6) {
                    ac4Presentation.g = parsableBitArray.g(3);
                    if (parsableBitArray.f()) {
                        parsableBitArray.o(5);
                    }
                    parsableBitArray.o(2);
                    if (iG5 == 1 && (iG2 == 1 || iG2 == 2)) {
                        parsableBitArray.o(2);
                    }
                    parsableBitArray.o(5);
                    parsableBitArray.o(10);
                    if (iG5 == 1) {
                        if (iG2 > 0) {
                            ac4Presentation.f16075a = parsableBitArray.f();
                        }
                        if (ac4Presentation.f16075a) {
                            if (iG2 != 1) {
                                i8 = 2;
                                if (iG2 == 2) {
                                    iG4 = parsableBitArray.g(5);
                                    if (iG4 >= 0 && iG4 <= 15) {
                                        ac4Presentation.f16076b = iG4;
                                    }
                                    if (iG4 >= 11 || iG4 > 14) {
                                        i8 = 2;
                                    } else {
                                        ac4Presentation.d = parsableBitArray.f();
                                        i8 = 2;
                                        ac4Presentation.f16078e = parsableBitArray.g(2);
                                    }
                                }
                            } else {
                                iG4 = parsableBitArray.g(5);
                                if (iG4 >= 0) {
                                    ac4Presentation.f16076b = iG4;
                                }
                                if (iG4 >= 11) {
                                    i8 = 2;
                                } else {
                                    i8 = 2;
                                }
                            }
                            parsableBitArray.o(24);
                        } else {
                            i8 = 2;
                        }
                        if (iG2 == 1 || iG2 == i8) {
                            if (parsableBitArray.f() && parsableBitArray.f()) {
                                parsableBitArray.o(i8);
                            }
                            if (parsableBitArray.f()) {
                                parsableBitArray.n();
                                int i11 = 8;
                                int iG10 = parsableBitArray.g(8);
                                int i12 = 0;
                                while (i12 < iG10) {
                                    parsableBitArray.o(i11);
                                    i12++;
                                    i11 = 8;
                                }
                            }
                        }
                    }
                    if (!zF && !z) {
                        parsableBitArray.n();
                        if (iG == 0 || iG == 1 || iG == 2) {
                            if (iG2 == 0) {
                                for (int i13 = 0; i13 < 2; i13++) {
                                    d(parsableBitArray, ac4Presentation);
                                }
                            } else {
                                for (int i14 = 0; i14 < 2; i14++) {
                                    e(parsableBitArray, ac4Presentation);
                                }
                            }
                        } else if (iG == 3 || iG == 4) {
                            if (iG2 == 0) {
                                for (int i15 = 0; i15 < 3; i15++) {
                                    d(parsableBitArray, ac4Presentation);
                                }
                            } else {
                                for (int i16 = 0; i16 < 3; i16++) {
                                    e(parsableBitArray, ac4Presentation);
                                }
                            }
                        } else if (iG != 5) {
                            int iG11 = parsableBitArray.g(7);
                            for (int i17 = 0; i17 < iG11; i17++) {
                                parsableBitArray.o(8);
                            }
                        } else if (iG2 == 0) {
                            d(parsableBitArray, ac4Presentation);
                        } else {
                            int iG12 = parsableBitArray.g(3);
                            for (int i18 = 0; i18 < iG12 + 2; i18++) {
                                e(parsableBitArray, ac4Presentation);
                            }
                        }
                    } else if (iG2 == 0) {
                        d(parsableBitArray, ac4Presentation);
                    } else {
                        e(parsableBitArray, ac4Presentation);
                    }
                    parsableBitArray.n();
                    zF2 = parsableBitArray.f();
                } else {
                    zF2 = true;
                }
                if (zF2) {
                    i5 = 7;
                    int iG13 = parsableBitArray.g(7);
                    for (int i19 = 0; i19 < iG13; i19++) {
                        parsableBitArray.o(15);
                    }
                } else {
                    i5 = 7;
                }
                if (iG2 <= 0) {
                    i2 = 8;
                    i3 = 5;
                } else {
                    if (parsableBitArray.f()) {
                        if (parsableBitArray.b() < 66) {
                            throw ParserException.c("Can't parse bitrate DSI.");
                        }
                        parsableBitArray.o(66);
                    }
                    if (parsableBitArray.f()) {
                        parsableBitArray.c();
                        parsableBitArray.p(parsableBitArray.g(16));
                        i3 = 5;
                        int iG14 = parsableBitArray.g(5);
                        for (int i20 = 0; i20 < iG14; i20++) {
                            parsableBitArray.o(3);
                            parsableBitArray.o(8);
                        }
                        i2 = 8;
                    } else {
                        i2 = 8;
                        i3 = 5;
                    }
                }
                parsableBitArray.c();
                if (iG5 == 1) {
                    int iB3 = ((iB2 - parsableBitArray.b()) / i2) - iB;
                    if (iG3 < iB3) {
                        throw ParserException.c("pres_bytes is smaller than presentation bytes read.");
                    }
                    parsableBitArray.p(iG3 - iB3);
                }
                if (ac4Presentation.f16075a) {
                    i4 = -1;
                    if (ac4Presentation.f16076b == -1) {
                        throw ParserException.c("Can't determine channel mode of presentation " + i10);
                    }
                } else {
                    i4 = -1;
                }
            } else {
                i2 = 8;
                i3 = 5;
                i4 = -1;
                i5 = 7;
            }
            if (ac4Presentation.f16075a) {
                int i21 = ac4Presentation.f16076b;
                boolean z2 = ac4Presentation.d;
                int i22 = ac4Presentation.f16078e;
                switch (i21) {
                    case 0:
                        i5 = 1;
                        break;
                    case 1:
                        i5 = 2;
                        break;
                    case 2:
                        i5 = 3;
                        break;
                    case 3:
                        i5 = i3;
                        break;
                    case 4:
                        i5 = 6;
                        break;
                    case 5:
                    case 7:
                    case 9:
                        break;
                    case 6:
                    case 8:
                    case 10:
                        i5 = i2;
                        break;
                    case 11:
                        i5 = 11;
                        break;
                    case 12:
                        i5 = 12;
                        break;
                    case 13:
                        i5 = 13;
                        break;
                    case 14:
                        i5 = 14;
                        break;
                    case 15:
                        i5 = 24;
                        break;
                    default:
                        i5 = i4;
                        break;
                }
                if (i21 == 11 || i21 == 12 || i21 == 13 || i21 == 14) {
                    if (!z2) {
                        i5 -= 2;
                    }
                    if (i22 == 0) {
                        i5 -= 4;
                    } else if (i22 == 1) {
                        i5 -= 2;
                    }
                }
                i7 = i5;
            } else {
                int i23 = ac4Presentation.f16077c;
                int i24 = ac4Presentation.g;
                if (i23 > 0) {
                    int i25 = i23 + 1;
                    if (i24 == 4 && i25 == 17) {
                        i25 = 21;
                    }
                    i7 = i25;
                } else {
                    if (i24 == 0) {
                        i6 = 2;
                    } else if (i24 != 1) {
                        i6 = 2;
                        if (i24 == 2) {
                            i7 = i2;
                        } else if (i24 == 3) {
                            i7 = 10;
                        } else if (i24 != 4) {
                            Log.g("AC-4 level " + ac4Presentation.g + " has not been defined.");
                        } else {
                            i7 = 12;
                        }
                    } else {
                        i7 = 6;
                    }
                    i7 = i6;
                }
            }
            if (i7 <= 0) {
                throw ParserException.c("Cannot determine channel count of presentation.");
            }
            Object[] objArr = {Integer.valueOf(iG6), Integer.valueOf(ac4Presentation.f16079f), Integer.valueOf(ac4Presentation.g)};
            String str3 = Util.f14242a;
            String str4 = String.format(Locale.US, "ac-4.%02d.%02d.%02d", objArr);
            Format.Builder builder = new Format.Builder();
            builder.f13764a = str;
            builder.n = MimeTypes.p("audio/ac4");
            builder.F = i7;
            builder.G = i9;
            builder.r = drmInitData;
            builder.d = str2;
            builder.f13771j = str4;
            return new Format(builder);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0083  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static SyncFrameInfo c(ParsableBitArray parsableBitArray) {
        int i2;
        int i3;
        int iG = parsableBitArray.g(16);
        int iG2 = parsableBitArray.g(16);
        if (iG2 == 65535) {
            iG2 = parsableBitArray.g(24);
            i2 = 7;
        } else {
            i2 = 4;
        }
        int i4 = iG2 + i2;
        if (iG == 44097) {
            i4 += 2;
        }
        if (parsableBitArray.g(2) == 3) {
            do {
                parsableBitArray.g(2);
            } while (parsableBitArray.f());
        }
        int iG3 = parsableBitArray.g(10);
        if (parsableBitArray.f() && parsableBitArray.g(3) > 0) {
            parsableBitArray.o(2);
        }
        int i5 = parsableBitArray.f() ? 48000 : 44100;
        int iG4 = parsableBitArray.g(4);
        int[] iArr = f16074a;
        if (i5 == 44100 && iG4 == 13) {
            i3 = iArr[iG4];
        } else if (i5 != 48000 || iG4 >= 14) {
            i3 = 0;
        } else {
            int i6 = iArr[iG4];
            int i7 = iG3 % 5;
            if (i7 == 1) {
                if (iG4 != 3 || iG4 == 8) {
                    i3 = i6 + 1;
                } else {
                    i3 = i6;
                }
            } else if (i7 != 2) {
                if (i7 == 3) {
                    if (iG4 != 3) {
                    }
                    i3 = i6 + 1;
                } else if (i7 == 4 && (iG4 == 3 || iG4 == 8 || iG4 == 11)) {
                    i3 = i6 + 1;
                } else {
                    i3 = i6;
                }
            } else if (iG4 == 8 || iG4 == 11) {
                i3 = i6 + 1;
            } else {
                i3 = i6;
            }
        }
        return new SyncFrameInfo(i5, i4, i3);
    }

    public static void d(ParsableBitArray parsableBitArray, Ac4Presentation ac4Presentation) throws ParserException {
        int iG = parsableBitArray.g(5);
        parsableBitArray.o(2);
        if (parsableBitArray.f()) {
            parsableBitArray.o(5);
        }
        if (iG >= 7 && iG <= 10) {
            parsableBitArray.n();
        }
        if (parsableBitArray.f()) {
            int iG2 = parsableBitArray.g(3);
            if (ac4Presentation.f16076b == -1 && iG >= 0 && iG <= 15 && (iG2 == 0 || iG2 == 1)) {
                ac4Presentation.f16076b = iG;
            }
            if (parsableBitArray.f()) {
                f(parsableBitArray);
            }
        }
    }

    public static void e(ParsableBitArray parsableBitArray, Ac4Presentation ac4Presentation) throws ParserException {
        parsableBitArray.o(2);
        boolean zF = parsableBitArray.f();
        int iG = parsableBitArray.g(8);
        for (int i2 = 0; i2 < iG; i2++) {
            parsableBitArray.o(2);
            if (parsableBitArray.f()) {
                parsableBitArray.o(5);
            }
            if (zF) {
                parsableBitArray.o(24);
            } else {
                if (parsableBitArray.f()) {
                    if (!parsableBitArray.f()) {
                        parsableBitArray.o(4);
                    }
                    ac4Presentation.f16077c = parsableBitArray.g(6) + 1;
                }
                parsableBitArray.o(4);
            }
        }
        if (parsableBitArray.f()) {
            parsableBitArray.o(3);
            if (parsableBitArray.f()) {
                f(parsableBitArray);
            }
        }
    }

    public static void f(ParsableBitArray parsableBitArray) throws ParserException {
        int iG = parsableBitArray.g(6);
        if (iG < 2 || iG > 42) {
            throw ParserException.c(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(iG)));
        }
        parsableBitArray.o(iG * 8);
    }
}
