package androidx.media3.extractor.mkv;

import android.util.SparseArray;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ChunkIndexProvider;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.github.druk.dnssd.NSType;
import com.google.common.base.Preconditions;
import defpackage.cj;
import defpackage.ct0;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes.dex */
public class MatroskaExtractor implements Extractor {
    public static final byte[] k0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] l0;
    public static final byte[] m0;
    public static final byte[] n0;
    public static final UUID o0;
    public static final Map p0;
    public int A;
    public long B;
    public final SparseArray C;
    public boolean D;
    public long E;
    public int F;
    public long G;
    public long H;
    public int I;
    public boolean J;
    public long K;
    public long L;
    public long M;
    public boolean N;
    public int O;
    public long P;
    public long Q;
    public int R;
    public int S;
    public int[] T;
    public int U;
    public int V;
    public int W;
    public int X;
    public boolean Y;
    public long Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DefaultEbmlReader f16429a;
    public int a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VarintReader f16430b;
    public int b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray f16431c;
    public int c0;
    public final boolean d;
    public boolean d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f16432e;
    public boolean e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SubtitleParser.Factory f16433f;
    public boolean f0;
    public final ParsableByteArray g;
    public int g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f16434h;
    public byte h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ParsableByteArray f16435i;
    public boolean i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ParsableByteArray f16436j;
    public ExtractorOutput j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ParsableByteArray f16437k;
    public final ParsableByteArray l;
    public final ParsableByteArray m;
    public final ParsableByteArray n;
    public final ParsableByteArray o;
    public final ParsableByteArray p;
    public ByteBuffer q;
    public long r;
    public long s;
    public long t;
    public long u;
    public long v;
    public boolean w;
    public boolean x;
    public Track y;
    public boolean z;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public final class InnerEbmlProcessor implements EbmlProcessor {
        public InnerEbmlProcessor() {
        }

        /* JADX WARN: Code duplicated, block: B:130:0x0294  */
        public final void a(int i2, int i3, ExtractorInput extractorInput) throws ParserException {
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            long j2;
            int i10;
            int i11;
            int[] iArr;
            int i12;
            int i13;
            int i14;
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            VarintReader varintReader = matroskaExtractor.f16430b;
            SparseArray sparseArray = matroskaExtractor.f16431c;
            ParsableByteArray parsableByteArray = matroskaExtractor.f16437k;
            ParsableByteArray parsableByteArray2 = matroskaExtractor.f16435i;
            int i15 = 2;
            int i16 = 0;
            if (i2 != 161 && i2 != 163) {
                if (i2 == 165) {
                    if (matroskaExtractor.O != 2) {
                        return;
                    }
                    Track track = (Track) sparseArray.get(matroskaExtractor.U);
                    int i17 = matroskaExtractor.X;
                    ParsableByteArray parsableByteArray3 = matroskaExtractor.p;
                    if (i17 != 4 || !"V_VP9".equals(track.f16446c)) {
                        extractorInput.m(i3);
                        return;
                    } else {
                        parsableByteArray3.K(i3);
                        extractorInput.readFully(parsableByteArray3.f14194a, 0, i3);
                        return;
                    }
                }
                if (i2 == 16877) {
                    matroskaExtractor.h(i2);
                    Track track2 = matroskaExtractor.y;
                    int i18 = track2.f16449h;
                    if (i18 != 1685485123 && i18 != 1685480259) {
                        extractorInput.m(i3);
                        return;
                    }
                    byte[] bArr = new byte[i3];
                    track2.P = bArr;
                    extractorInput.readFully(bArr, 0, i3);
                    return;
                }
                if (i2 == 16981) {
                    matroskaExtractor.h(i2);
                    byte[] bArr2 = new byte[i3];
                    matroskaExtractor.y.f16451j = bArr2;
                    extractorInput.readFully(bArr2, 0, i3);
                    return;
                }
                if (i2 == 18402) {
                    byte[] bArr3 = new byte[i3];
                    extractorInput.readFully(bArr3, 0, i3);
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.f16452k = new TrackOutput.CryptoData(1, bArr3, 0, 0);
                    return;
                }
                if (i2 == 21419) {
                    Arrays.fill(parsableByteArray.f14194a, (byte) 0);
                    extractorInput.readFully(parsableByteArray.f14194a, 4 - i3, i3);
                    parsableByteArray.N(0);
                    matroskaExtractor.A = (int) parsableByteArray.C();
                    return;
                }
                if (i2 == 25506) {
                    matroskaExtractor.h(i2);
                    byte[] bArr4 = new byte[i3];
                    matroskaExtractor.y.l = bArr4;
                    extractorInput.readFully(bArr4, 0, i3);
                    return;
                }
                if (i2 != 30322) {
                    throw ParserException.a(null, "Unexpected id: " + i2);
                }
                matroskaExtractor.h(i2);
                byte[] bArr5 = new byte[i3];
                matroskaExtractor.y.x = bArr5;
                extractorInput.readFully(bArr5, 0, i3);
                return;
            }
            int i19 = 8;
            if (matroskaExtractor.O == 0) {
                matroskaExtractor.U = (int) varintReader.b(extractorInput, false, true, 8);
                matroskaExtractor.V = varintReader.f16457c;
                matroskaExtractor.Q = -9223372036854775807L;
                matroskaExtractor.O = 1;
                parsableByteArray2.K(0);
            }
            Track track3 = (Track) sparseArray.get(matroskaExtractor.U);
            if (track3 == null) {
                extractorInput.m(i3 - matroskaExtractor.V);
                matroskaExtractor.O = 0;
                return;
            }
            track3.a0.getClass();
            if (matroskaExtractor.O == 1) {
                matroskaExtractor.l(extractorInput, 3);
                int i20 = (parsableByteArray2.f14194a[2] & 6) >> 1;
                if (i20 == 0) {
                    matroskaExtractor.S = 1;
                    int[] iArr2 = matroskaExtractor.T;
                    if (iArr2 == null) {
                        iArr2 = new int[1];
                    } else if (iArr2.length < 1) {
                        iArr2 = new int[Math.max(iArr2.length * 2, 1)];
                    }
                    matroskaExtractor.T = iArr2;
                    iArr2[0] = (i3 - matroskaExtractor.V) - 3;
                } else {
                    matroskaExtractor.l(extractorInput, 4);
                    int i21 = (parsableByteArray2.f14194a[3] & 255) + 1;
                    matroskaExtractor.S = i21;
                    int[] iArr3 = matroskaExtractor.T;
                    if (iArr3 == null) {
                        iArr3 = new int[i21];
                        i4 = 4;
                    } else {
                        i4 = 4;
                        if (iArr3.length < i21) {
                            iArr3 = new int[Math.max(iArr3.length * 2, i21)];
                        }
                    }
                    matroskaExtractor.T = iArr3;
                    if (i20 == 2) {
                        int i22 = (i3 - matroskaExtractor.V) - 4;
                        int i23 = matroskaExtractor.S;
                        Arrays.fill(iArr3, 0, i23, i22 / i23);
                    } else {
                        if (i20 == 1) {
                            int i24 = 0;
                            int i25 = 0;
                            int i26 = i4;
                            while (true) {
                                i11 = matroskaExtractor.S - 1;
                                iArr = matroskaExtractor.T;
                                if (i24 >= i11) {
                                    break;
                                }
                                iArr[i24] = 0;
                                while (true) {
                                    i12 = i26 + 1;
                                    matroskaExtractor.l(extractorInput, i12);
                                    int i27 = parsableByteArray2.f14194a[i26] & 255;
                                    int[] iArr4 = matroskaExtractor.T;
                                    i13 = iArr4[i24] + i27;
                                    iArr4[i24] = i13;
                                    if (i27 != 255) {
                                        break;
                                    } else {
                                        i26 = i12;
                                    }
                                }
                                i25 += i13;
                                i24++;
                                i26 = i12;
                            }
                            iArr[i11] = ((i3 - matroskaExtractor.V) - i26) - i25;
                        } else {
                            if (i20 != 3) {
                                throw ParserException.a(null, "Unexpected lacing value: " + i20);
                            }
                            int i28 = 0;
                            int i29 = 0;
                            int i30 = i4;
                            while (true) {
                                int i31 = matroskaExtractor.S - 1;
                                int[] iArr5 = matroskaExtractor.T;
                                if (i28 >= i31) {
                                    i5 = i15;
                                    i6 = i16;
                                    iArr5[i31] = ((i3 - matroskaExtractor.V) - i30) - i29;
                                    break;
                                }
                                iArr5[i28] = i16;
                                int i32 = i30 + 1;
                                matroskaExtractor.l(extractorInput, i32);
                                if (parsableByteArray2.f14194a[i30] == 0) {
                                    throw ParserException.a(null, "No valid varint length mask found");
                                }
                                int i33 = i16;
                                while (true) {
                                    if (i33 >= i19) {
                                        i7 = i19;
                                        i8 = i15;
                                        i9 = i16;
                                        j2 = 0;
                                        i10 = i32;
                                        break;
                                    }
                                    i7 = i19;
                                    int i34 = 1 << (7 - i33);
                                    i9 = i16;
                                    if ((parsableByteArray2.f14194a[i30] & i34) != 0) {
                                        i10 = i32 + i33;
                                        matroskaExtractor.l(extractorInput, i10);
                                        i8 = i15;
                                        j2 = (~i34) & parsableByteArray2.f14194a[i30] & 255;
                                        while (i32 < i10) {
                                            j2 = (j2 << i7) | ((long) (parsableByteArray2.f14194a[i32] & 255));
                                            i32++;
                                        }
                                        if (i28 <= 0) {
                                            break;
                                        }
                                        j2 -= (1 << ((i33 * 7) + 6)) - 1;
                                        break;
                                    }
                                    i33++;
                                    i16 = i9;
                                    i19 = i7;
                                }
                                if (j2 < -2147483648L || j2 > 2147483647L) {
                                    throw ParserException.a(null, "EBML lacing sample size out of range.");
                                }
                                int i35 = (int) j2;
                                int[] iArr6 = matroskaExtractor.T;
                                if (i28 != 0) {
                                    i35 += iArr6[i28 - 1];
                                }
                                iArr6[i28] = i35;
                                i29 += i35;
                                i28++;
                                i30 = i10;
                                i16 = i9;
                                i19 = i7;
                                i15 = i8;
                            }
                        }
                        byte[] bArr6 = parsableByteArray2.f14194a;
                        matroskaExtractor.P = matroskaExtractor.n((bArr6[1] & 255) | (bArr6[i6] << 8)) + matroskaExtractor.M;
                        if (track3.f16447e != 1 || (i2 == 163 && (parsableByteArray2.f14194a[i5] & 128) == 128)) {
                            i14 = 1;
                        } else {
                            i14 = i6;
                        }
                        matroskaExtractor.W = i14;
                        matroskaExtractor.O = i5;
                        matroskaExtractor.R = i6;
                    }
                }
                i5 = 2;
                i6 = 0;
                byte[] bArr7 = parsableByteArray2.f14194a;
                matroskaExtractor.P = matroskaExtractor.n((bArr7[1] & 255) | (bArr7[i6] << 8)) + matroskaExtractor.M;
                if (track3.f16447e != 1) {
                    i14 = 1;
                } else {
                    i14 = 1;
                }
                matroskaExtractor.W = i14;
                matroskaExtractor.O = i5;
                matroskaExtractor.R = i6;
            }
            if (i2 == 163) {
                while (true) {
                    int i36 = matroskaExtractor.R;
                    if (i36 >= matroskaExtractor.S) {
                        matroskaExtractor.O = 0;
                        return;
                    }
                    matroskaExtractor.i(track3, ((long) ((matroskaExtractor.R * track3.f16448f) / 1000)) + matroskaExtractor.P, matroskaExtractor.W, matroskaExtractor.o(extractorInput, track3, matroskaExtractor.T[i36], false), 0);
                    matroskaExtractor.R++;
                }
            } else {
                while (true) {
                    int i37 = matroskaExtractor.R;
                    if (i37 >= matroskaExtractor.S) {
                        return;
                    }
                    int[] iArr7 = matroskaExtractor.T;
                    iArr7[i37] = matroskaExtractor.o(extractorInput, track3, iArr7[i37], true);
                    matroskaExtractor.R++;
                }
            }
        }

        public final void b(int i2, long j2) throws ParserException {
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            if (i2 == 240) {
                if (matroskaExtractor.z) {
                    return;
                }
                matroskaExtractor.g(i2);
                if (matroskaExtractor.H == -1) {
                    matroskaExtractor.H = j2;
                    return;
                }
                return;
            }
            if (i2 == 241) {
                if (matroskaExtractor.z) {
                    return;
                }
                matroskaExtractor.g(i2);
                if (matroskaExtractor.G == -1) {
                    matroskaExtractor.G = j2;
                    return;
                }
                return;
            }
            if (i2 == 20529) {
                if (j2 == 0) {
                    return;
                }
                throw ParserException.a(null, "ContentEncodingOrder " + j2 + " not supported");
            }
            if (i2 == 20530) {
                if (j2 == 1) {
                    return;
                }
                throw ParserException.a(null, "ContentEncodingScope " + j2 + " not supported");
            }
            switch (i2) {
                case 131:
                    int i3 = (int) j2;
                    if (i3 == 1) {
                        matroskaExtractor.h(i2);
                        matroskaExtractor.y.f16447e = 2;
                        return;
                    }
                    if (i3 == 2) {
                        matroskaExtractor.h(i2);
                        matroskaExtractor.y.f16447e = 1;
                        return;
                    } else if (i3 == 17) {
                        matroskaExtractor.h(i2);
                        matroskaExtractor.y.f16447e = 3;
                        return;
                    } else if (i3 != 33) {
                        matroskaExtractor.h(i2);
                        matroskaExtractor.y.f16447e = -1;
                        return;
                    } else {
                        matroskaExtractor.h(i2);
                        matroskaExtractor.y.f16447e = 5;
                        return;
                    }
                case 136:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.Y = j2 == 1;
                    return;
                case 155:
                    matroskaExtractor.Q = matroskaExtractor.n(j2);
                    return;
                case 159:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.Q = (int) j2;
                    return;
                case 176:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.n = (int) j2;
                    return;
                case 179:
                    if (matroskaExtractor.z) {
                        return;
                    }
                    matroskaExtractor.g(i2);
                    matroskaExtractor.E = matroskaExtractor.n(j2);
                    return;
                case 186:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.o = (int) j2;
                    return;
                case 215:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.d = (int) j2;
                    return;
                case 231:
                    matroskaExtractor.M = matroskaExtractor.n(j2);
                    return;
                case 238:
                    matroskaExtractor.X = (int) j2;
                    return;
                case 247:
                    if (matroskaExtractor.z) {
                        return;
                    }
                    matroskaExtractor.g(i2);
                    matroskaExtractor.F = (int) j2;
                    return;
                case NSType.IXFR /* 251 */:
                    matroskaExtractor.Y = true;
                    return;
                case 16871:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.f16449h = (int) j2;
                    return;
                case 16980:
                    if (j2 == 3) {
                        return;
                    }
                    throw ParserException.a(null, "ContentCompAlgo " + j2 + " not supported");
                case 17029:
                    if (j2 < 1 || j2 > 2) {
                        throw ParserException.a(null, "DocTypeReadVersion " + j2 + " not supported");
                    }
                    return;
                case 17143:
                    if (j2 == 1) {
                        return;
                    }
                    throw ParserException.a(null, "EBMLReadVersion " + j2 + " not supported");
                case 18401:
                    if (j2 == 5) {
                        return;
                    }
                    throw ParserException.a(null, "ContentEncAlgo " + j2 + " not supported");
                case 18408:
                    if (j2 == 1) {
                        return;
                    }
                    throw ParserException.a(null, "AESSettingsCipherMode " + j2 + " not supported");
                case 21420:
                    matroskaExtractor.B = j2 + matroskaExtractor.s;
                    return;
                case 21432:
                    int i4 = (int) j2;
                    matroskaExtractor.h(i2);
                    if (i4 == 0) {
                        matroskaExtractor.y.y = 0;
                        return;
                    }
                    if (i4 == 1) {
                        matroskaExtractor.y.y = 2;
                        return;
                    } else if (i4 == 3) {
                        matroskaExtractor.y.y = 1;
                        return;
                    } else {
                        if (i4 != 15) {
                            return;
                        }
                        matroskaExtractor.y.y = 3;
                        return;
                    }
                case 21680:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.q = (int) j2;
                    return;
                case 21682:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.s = (int) j2;
                    return;
                case 21690:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.r = (int) j2;
                    return;
                case 21930:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.X = j2 == 1;
                    return;
                case 21938:
                    matroskaExtractor.h(i2);
                    Track track = matroskaExtractor.y;
                    track.z = true;
                    track.p = (int) j2;
                    return;
                case 21998:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.g = (int) j2;
                    return;
                case 22186:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.T = j2;
                    return;
                case 22203:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.U = j2;
                    return;
                case 25188:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.R = (int) j2;
                    return;
                case 30114:
                    matroskaExtractor.Z = j2;
                    return;
                case 30321:
                    matroskaExtractor.h(i2);
                    int i5 = (int) j2;
                    if (i5 == 0) {
                        matroskaExtractor.y.t = 0;
                        return;
                    }
                    if (i5 == 1) {
                        matroskaExtractor.y.t = 1;
                        return;
                    } else if (i5 == 2) {
                        matroskaExtractor.y.t = 2;
                        return;
                    } else {
                        if (i5 != 3) {
                            return;
                        }
                        matroskaExtractor.y.t = 3;
                        return;
                    }
                case 2352003:
                    matroskaExtractor.h(i2);
                    matroskaExtractor.y.f16448f = (int) j2;
                    return;
                case 2807729:
                    matroskaExtractor.t = j2;
                    return;
                default:
                    switch (i2) {
                        case 21945:
                            matroskaExtractor.h(i2);
                            int i6 = (int) j2;
                            if (i6 == 1) {
                                matroskaExtractor.y.C = 2;
                                return;
                            } else {
                                if (i6 != 2) {
                                    return;
                                }
                                matroskaExtractor.y.C = 1;
                                return;
                            }
                        case 21946:
                            matroskaExtractor.h(i2);
                            int iG = ColorInfo.g((int) j2);
                            if (iG != -1) {
                                matroskaExtractor.y.B = iG;
                                return;
                            }
                            return;
                        case 21947:
                            matroskaExtractor.h(i2);
                            matroskaExtractor.y.z = true;
                            int iF = ColorInfo.f((int) j2);
                            if (iF != -1) {
                                matroskaExtractor.y.A = iF;
                                return;
                            }
                            return;
                        case 21948:
                            matroskaExtractor.h(i2);
                            matroskaExtractor.y.D = (int) j2;
                            return;
                        case 21949:
                            matroskaExtractor.h(i2);
                            matroskaExtractor.y.E = (int) j2;
                            return;
                        default:
                            return;
                    }
            }
        }

        public final void c(int i2, long j2, long j3) throws ParserException {
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            matroskaExtractor.j0.getClass();
            if (i2 == 160) {
                matroskaExtractor.Y = false;
                matroskaExtractor.Z = 0L;
                return;
            }
            if (i2 == 174) {
                Track track = new Track();
                track.n = -1;
                track.o = -1;
                track.p = -1;
                track.q = -1;
                track.r = -1;
                track.s = 0;
                track.t = -1;
                track.u = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                track.v = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                track.w = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                track.x = null;
                track.y = -1;
                track.z = false;
                track.A = -1;
                track.B = -1;
                track.C = -1;
                track.D = 1000;
                track.E = 200;
                track.F = -1.0f;
                track.G = -1.0f;
                track.H = -1.0f;
                track.I = -1.0f;
                track.J = -1.0f;
                track.K = -1.0f;
                track.L = -1.0f;
                track.M = -1.0f;
                track.N = -1.0f;
                track.O = -1.0f;
                track.Q = 1;
                track.R = -1;
                track.S = 8000;
                track.T = 0L;
                track.U = 0L;
                track.W = false;
                track.Y = true;
                track.Z = "eng";
                matroskaExtractor.y = track;
                track.f16444a = matroskaExtractor.w;
                return;
            }
            if (i2 == 183) {
                if (matroskaExtractor.z) {
                    return;
                }
                matroskaExtractor.g(i2);
                matroskaExtractor.F = -1;
                matroskaExtractor.G = -1L;
                matroskaExtractor.H = -1L;
                return;
            }
            if (i2 == 187) {
                if (matroskaExtractor.z) {
                    return;
                }
                matroskaExtractor.g(i2);
                matroskaExtractor.E = -9223372036854775807L;
                return;
            }
            if (i2 == 19899) {
                matroskaExtractor.A = -1;
                matroskaExtractor.B = -1L;
                return;
            }
            if (i2 == 20533) {
                matroskaExtractor.h(i2);
                matroskaExtractor.y.f16450i = true;
                return;
            }
            if (i2 == 21968) {
                matroskaExtractor.h(i2);
                matroskaExtractor.y.z = true;
                return;
            }
            if (i2 == 408125543) {
                long j4 = matroskaExtractor.s;
                if (j4 != -1 && j4 != j2) {
                    throw ParserException.a(null, "Multiple Segment elements not supported");
                }
                matroskaExtractor.s = j2;
                matroskaExtractor.r = j3;
                return;
            }
            if (i2 == 475249515) {
                if (matroskaExtractor.z) {
                    return;
                }
                matroskaExtractor.D = true;
            } else if (i2 == 524531317 && !matroskaExtractor.z) {
                if (matroskaExtractor.d && matroskaExtractor.K != -1) {
                    matroskaExtractor.J = true;
                } else {
                    matroskaExtractor.j0.j(new SeekMap.Unseekable(matroskaExtractor.v));
                    matroskaExtractor.z = true;
                }
            }
        }
    }

    public static final class MatroskaSeekMap implements TrackAwareSeekMap, ChunkIndexProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ChunkIndex f16439a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseArray f16440b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16441c;
        public final int d;

        public static final class CuePointData implements Comparable<CuePointData> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final long f16442b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final long f16443c;
            public final long d;

            public CuePointData(long j2, long j3, long j4) {
                this.f16442b = j2;
                this.f16443c = j3;
                this.d = j4;
            }

            @Override // java.lang.Comparable
            public final int compareTo(CuePointData cuePointData) {
                return Long.compare(this.f16442b, cuePointData.f16442b);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof CuePointData)) {
                    return false;
                }
                CuePointData cuePointData = (CuePointData) obj;
                return this.f16442b == cuePointData.f16442b && this.f16443c == cuePointData.f16443c && this.d == cuePointData.d;
            }

            public final int hashCode() {
                return Objects.hash(Long.valueOf(this.f16442b), Long.valueOf(this.f16443c), Long.valueOf(this.d));
            }
        }

        public MatroskaSeekMap(SparseArray<List<CuePointData>> sparseArray, long j2, int i2, long j3, long j4) {
            ChunkIndex chunkIndex;
            int i3;
            this.f16440b = sparseArray;
            this.f16441c = j2;
            this.d = i2;
            List<CuePointData> list = sparseArray.get(i2);
            if (list == null || list.isEmpty()) {
                chunkIndex = null;
            } else {
                int size = list.size();
                int[] iArrCopyOf = new int[size];
                long[] jArrCopyOf = new long[size];
                long[] jArrCopyOf2 = new long[size];
                long[] jArrCopyOf3 = new long[size];
                int i4 = 0;
                for (int i5 = 0; i5 < size; i5++) {
                    CuePointData cuePointData = list.get(i5);
                    jArrCopyOf3[i5] = cuePointData.f16442b;
                    jArrCopyOf[i5] = cuePointData.f16443c;
                }
                while (true) {
                    i3 = size - 1;
                    if (i4 >= i3) {
                        break;
                    }
                    int i6 = i4 + 1;
                    iArrCopyOf[i4] = (int) (jArrCopyOf[i6] - jArrCopyOf[i4]);
                    jArrCopyOf2[i4] = jArrCopyOf3[i6] - jArrCopyOf3[i4];
                    i4 = i6;
                }
                int i7 = i3;
                while (i7 > 0 && jArrCopyOf3[i7] >= j2) {
                    i7--;
                }
                iArrCopyOf[i7] = (int) ((j3 + j4) - jArrCopyOf[i7]);
                jArrCopyOf2[i7] = j2 - jArrCopyOf3[i7];
                if (i7 < i3) {
                    Log.g("Discarding trailing cue points with timestamps greater than total duration.");
                    int i8 = i7 + 1;
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i8);
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i8);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i8);
                    jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i8);
                }
                chunkIndex = new ChunkIndex(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
            }
            this.f16439a = chunkIndex;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints c(long j2) {
            ChunkIndex chunkIndex = this.f16439a;
            return chunkIndex != null ? chunkIndex.c(j2) : new SeekMap.SeekPoints(SeekPoint.f16195c);
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean e() {
            List list = (List) this.f16440b.get(this.d);
            return (list == null || list.isEmpty()) ? false : true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long h() {
            return this.f16441c;
        }
    }

    public static final class Track {
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public float M;
        public float N;
        public float O;
        public byte[] P;
        public int Q;
        public int R;
        public int S;
        public long T;
        public long U;
        public TrueHdSampleRechunker V;
        public boolean W;
        public boolean X;
        public boolean Y;
        public String Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f16444a;
        public TrackOutput a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f16445b;
        public Format b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f16446c;
        public int c0;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16447e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16448f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16449h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f16450i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte[] f16451j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TrackOutput.CryptoData f16452k;
        public byte[] l;
        public DrmInitData m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public float u;
        public float v;
        public float w;
        public byte[] x;
        public int y;
        public boolean z;

        public final byte[] a(String str) throws ParserException {
            byte[] bArr = this.l;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.a(null, "Missing CodecPrivate for codec " + str);
        }
    }

    static {
        String str = Util.f14242a;
        l0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        m0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        n0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        o0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        cj.u(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        cj.u(Sink.ORIENTATION_180, map, "htc_video_rotA-180", Sink.ORIENTATION_270, "htc_video_rotA-270");
        p0 = Collections.unmodifiableMap(map);
    }

    public MatroskaExtractor(DefaultEbmlReader defaultEbmlReader, int i2, SubtitleParser.Factory factory) {
        this.s = -1L;
        this.t = -9223372036854775807L;
        this.u = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.E = -9223372036854775807L;
        this.F = -1;
        this.G = -1L;
        this.H = -1L;
        this.I = -1;
        this.K = -1L;
        this.L = -1L;
        this.M = -9223372036854775807L;
        this.f16429a = defaultEbmlReader;
        defaultEbmlReader.d = new InnerEbmlProcessor();
        this.f16433f = factory;
        this.C = new SparseArray();
        this.d = (i2 & 1) == 0;
        this.f16432e = (i2 & 2) == 0;
        this.f16430b = new VarintReader();
        this.f16431c = new SparseArray();
        this.f16435i = new ParsableByteArray(4);
        this.f16436j = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.f16437k = new ParsableByteArray(4);
        this.g = new ParsableByteArray(NalUnitUtil.f14286a);
        this.f16434h = new ParsableByteArray(4);
        this.l = new ParsableByteArray();
        this.m = new ParsableByteArray();
        this.n = new ParsableByteArray(8);
        this.o = new ParsableByteArray();
        this.p = new ParsableByteArray();
        this.T = new int[1];
        this.x = true;
    }

    public static byte[] j(long j2, long j3, String str) {
        Preconditions.g(j2 != -9223372036854775807L);
        int i2 = (int) (j2 / 3600000000L);
        long j4 = j2 - (((long) i2) * 3600000000L);
        int i3 = (int) (j4 / 60000000);
        long j5 = j4 - (((long) i3) * 60000000);
        int i4 = (int) (j5 / 1000000);
        String str2 = String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j5 - (((long) i4) * 1000000)) / j3)));
        String str3 = Util.f14242a;
        return str2.getBytes(StandardCharsets.UTF_8);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.M = -9223372036854775807L;
        this.O = 0;
        DefaultEbmlReader defaultEbmlReader = this.f16429a;
        defaultEbmlReader.f16425e = 0;
        defaultEbmlReader.f16423b.clear();
        VarintReader varintReader = defaultEbmlReader.f16424c;
        varintReader.f16456b = 0;
        varintReader.f16457c = 0;
        VarintReader varintReader2 = this.f16430b;
        varintReader2.f16456b = 0;
        varintReader2.f16457c = 0;
        m();
        this.D = false;
        this.E = -9223372036854775807L;
        this.F = -1;
        this.G = -1L;
        this.H = -1L;
        if (!this.z) {
            this.C.clear();
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f16431c;
            if (i2 >= sparseArray.size()) {
                return;
            }
            TrueHdSampleRechunker trueHdSampleRechunker = ((Track) sparseArray.valueAt(i2)).V;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.f16214b = false;
                trueHdSampleRechunker.f16215c = 0;
            }
            i2++;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        if (this.f16432e) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.f16433f);
        }
        this.j0 = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        Sniffer sniffer = new Sniffer();
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        long j2 = defaultExtractorInput.f16123c;
        long j3 = RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (j2 != -1 && j2 <= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            j3 = j2;
        }
        int i2 = (int) j3;
        ParsableByteArray parsableByteArray = sniffer.f16453a;
        defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
        sniffer.f16454b = 4;
        for (long jC = parsableByteArray.C(); jC != 440786851; jC = ((jC << 8) & (-256)) | ((long) (parsableByteArray.f14194a[0] & 255))) {
            int i3 = sniffer.f16454b + 1;
            sniffer.f16454b = i3;
            if (i3 == i2) {
                return false;
            }
            defaultExtractorInput.i(false, 0, 1, parsableByteArray.f14194a);
        }
        long jA = sniffer.a(defaultExtractorInput);
        long j4 = sniffer.f16454b;
        if (jA != Long.MIN_VALUE && (j2 == -1 || j4 + jA < j2)) {
            while (true) {
                long j5 = sniffer.f16454b;
                long j6 = j4 + jA;
                if (j5 < j6) {
                    if (sniffer.a(defaultExtractorInput) == Long.MIN_VALUE) {
                        break;
                    }
                    long jA2 = sniffer.a(defaultExtractorInput);
                    if (jA2 < 0 || jA2 > 2147483647L) {
                        break;
                    }
                    if (jA2 != 0) {
                        int i4 = (int) jA2;
                        defaultExtractorInput.n(i4, false);
                        sniffer.f16454b += i4;
                    }
                } else if (j5 == j6) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i2 = 0;
        this.N = false;
        boolean zA = true;
        while (zA && !this.N) {
            zA = this.f16429a.a(extractorInput);
            if (zA) {
                long position = extractorInput.getPosition();
                if (this.J) {
                    this.L = position;
                    positionHolder.f16190a = this.K;
                    this.J = false;
                    return 1;
                }
                if (this.z) {
                    long j2 = this.L;
                    if (j2 != -1) {
                        positionHolder.f16190a = j2;
                        this.L = -1L;
                        return 1;
                    }
                } else {
                    continue;
                }
            }
        }
        if (zA) {
            return 0;
        }
        while (true) {
            SparseArray sparseArray = this.f16431c;
            if (i2 >= sparseArray.size()) {
                return -1;
            }
            Track track = (Track) sparseArray.valueAt(i2);
            track.a0.getClass();
            TrueHdSampleRechunker trueHdSampleRechunker = track.V;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.a(track.a0, track.f16452k);
            }
            i2++;
        }
    }

    public final void g(int i2) throws ParserException {
        if (this.D) {
            return;
        }
        throw ParserException.a(null, "Element " + i2 + " must be in a Cues");
    }

    public final void h(int i2) throws ParserException {
        if (this.y != null) {
            return;
        }
        throw ParserException.a(null, "Element " + i2 + " must be in a TrackEntry");
    }

    public final void i(Track track, long j2, int i2, int i3, int i4) {
        byte[] bArrJ;
        int i5;
        int i6;
        TrueHdSampleRechunker trueHdSampleRechunker = track.V;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.b(track.a0, j2, i2, i3, i4, track.f16452k);
        } else {
            if ("S_TEXT/UTF8".equals(track.f16446c) || "S_TEXT/ASS".equals(track.f16446c) || "S_TEXT/SSA".equals(track.f16446c) || "S_TEXT/WEBVTT".equals(track.f16446c)) {
                if (this.S > 1) {
                    Log.g("Skipping subtitle sample in laced block.");
                } else {
                    long j3 = this.Q;
                    if (j3 == -9223372036854775807L) {
                        Log.g("Skipping subtitle sample with no duration.");
                    } else {
                        String str = track.f16446c;
                        ParsableByteArray parsableByteArray = this.m;
                        byte[] bArr = parsableByteArray.f14194a;
                        str.getClass();
                        switch (str) {
                            case "S_TEXT/ASS":
                            case "S_TEXT/SSA":
                                bArrJ = j(j3, 10000L, "%01d:%02d:%02d:%02d");
                                i5 = 21;
                                break;
                            case "S_TEXT/WEBVTT":
                                bArrJ = j(j3, 1000L, "%02d:%02d:%02d.%03d");
                                i5 = 25;
                                break;
                            case "S_TEXT/UTF8":
                                bArrJ = j(j3, 1000L, "%02d:%02d:%02d,%03d");
                                i5 = 19;
                                break;
                            default:
                                ct0.c();
                                return;
                        }
                        System.arraycopy(bArrJ, 0, bArr, i5, bArrJ.length);
                        for (int i7 = parsableByteArray.f14195b; i7 < parsableByteArray.f14196c; i7++) {
                            if (parsableByteArray.f14194a[i7] == 0) {
                                parsableByteArray.M(i7);
                                track.a0.f(parsableByteArray.f14196c, parsableByteArray);
                                i6 = i3 + parsableByteArray.f14196c;
                            }
                        }
                        track.a0.f(parsableByteArray.f14196c, parsableByteArray);
                        i6 = i3 + parsableByteArray.f14196c;
                    }
                }
                i6 = i3;
            } else {
                i6 = i3;
            }
            if ((i2 & 268435456) != 0) {
                int i8 = this.S;
                ParsableByteArray parsableByteArray2 = this.p;
                if (i8 > 1) {
                    parsableByteArray2.K(0);
                } else {
                    int i9 = parsableByteArray2.f14196c;
                    track.a0.a(parsableByteArray2, i9, 2);
                    i6 += i9;
                }
            }
            track.a0.g(j2, i2, i6, i4, track.f16452k);
        }
        this.N = true;
    }

    public final void k() {
        if (!this.x) {
            return;
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f16431c;
            if (i2 >= sparseArray.size()) {
                ExtractorOutput extractorOutput = this.j0;
                extractorOutput.getClass();
                extractorOutput.n();
                this.x = false;
                return;
            }
            if (((Track) sparseArray.valueAt(i2)).W) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void l(ExtractorInput extractorInput, int i2) {
        ParsableByteArray parsableByteArray = this.f16435i;
        if (parsableByteArray.f14196c >= i2) {
            return;
        }
        byte[] bArr = parsableByteArray.f14194a;
        if (bArr.length < i2) {
            parsableByteArray.c(Math.max(bArr.length * 2, i2));
        }
        byte[] bArr2 = parsableByteArray.f14194a;
        int i3 = parsableByteArray.f14196c;
        extractorInput.readFully(bArr2, i3, i2 - i3);
        parsableByteArray.M(i2);
    }

    public final void m() {
        this.a0 = 0;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = false;
        this.e0 = false;
        this.f0 = false;
        this.g0 = 0;
        this.h0 = (byte) 0;
        this.i0 = false;
        this.l.K(0);
    }

    public final long n(long j2) throws ParserException {
        long j3 = this.t;
        if (j3 == -9223372036854775807L) {
            throw ParserException.a(null, "Can't scale timecode prior to timecodeScale being set.");
        }
        String str = Util.f14242a;
        return Util.Z(j2, j3, 1000L, RoundingMode.DOWN);
    }

    /* JADX WARN: Code duplicated, block: B:80:0x01df  */
    public final int o(ExtractorInput extractorInput, Track track, int i2, boolean z) throws ParserException {
        int iC;
        int iC2;
        int i3;
        boolean z2;
        int i4;
        if ("S_TEXT/UTF8".equals(track.f16446c)) {
            p(extractorInput, k0, i2);
            int i5 = this.b0;
            m();
            return i5;
        }
        if ("S_TEXT/ASS".equals(track.f16446c) || "S_TEXT/SSA".equals(track.f16446c)) {
            p(extractorInput, m0, i2);
            int i6 = this.b0;
            m();
            return i6;
        }
        if ("S_TEXT/WEBVTT".equals(track.f16446c)) {
            p(extractorInput, n0, i2);
            int i7 = this.b0;
            m();
            return i7;
        }
        int i8 = 2;
        if (track.W) {
            track.b0.getClass();
            ParsableByteArray parsableByteArray = new ParsableByteArray(i2);
            if (extractorInput.i(true, 0, i2, parsableByteArray.f14194a)) {
                extractorInput.g();
                if (DtsUtil.b(parsableByteArray.i()) == 1 && parsableByteArray.a() >= 10) {
                    byte[] bArr = new byte[10];
                    parsableByteArray.k(0, 10, bArr);
                    parsableByteArray.N(0);
                    int iA = DtsUtil.a(bArr);
                    if (iA > 0 && parsableByteArray.a() >= iA + 4) {
                        parsableByteArray.O(iA);
                        if (DtsUtil.b(parsableByteArray.m()) == 2) {
                            Format.Builder builderA = track.b0.a();
                            builderA.n = MimeTypes.p("audio/vnd.dts.hd");
                            track.b0 = new Format(builderA);
                        }
                    }
                }
            }
            track.a0.b(track.b0);
            track.W = false;
            k();
        }
        TrackOutput trackOutput = track.a0;
        boolean z3 = this.d0;
        ParsableByteArray parsableByteArray2 = this.l;
        if (!z3) {
            boolean z4 = track.f16450i;
            ParsableByteArray parsableByteArray3 = this.f16435i;
            if (z4) {
                this.W &= -1073741825;
                if (!this.e0) {
                    extractorInput.readFully(parsableByteArray3.f14194a, 0, 1);
                    this.a0++;
                    byte b2 = parsableByteArray3.f14194a[0];
                    if ((b2 & 128) == 128) {
                        throw ParserException.a(null, "Extension bit is set in signal byte");
                    }
                    this.h0 = b2;
                    this.e0 = true;
                }
                byte b3 = this.h0;
                if ((b3 & 1) != 1) {
                    i3 = 2;
                } else {
                    boolean z5 = (b3 & 2) == 2;
                    this.W |= 1073741824;
                    if (!this.i0) {
                        ParsableByteArray parsableByteArray4 = this.n;
                        extractorInput.readFully(parsableByteArray4.f14194a, 0, 8);
                        this.a0 += 8;
                        this.i0 = true;
                        parsableByteArray3.f14194a[0] = (byte) ((z5 ? 128 : 0) | 8);
                        parsableByteArray3.N(0);
                        trackOutput.a(parsableByteArray3, 1, 1);
                        this.b0++;
                        parsableByteArray4.N(0);
                        trackOutput.a(parsableByteArray4, 8, 1);
                        this.b0 += 8;
                    }
                    if (z5) {
                        if (!this.f0) {
                            extractorInput.readFully(parsableByteArray3.f14194a, 0, 1);
                            this.a0++;
                            parsableByteArray3.N(0);
                            this.g0 = parsableByteArray3.A();
                            this.f0 = true;
                        }
                        int i9 = this.g0 * 4;
                        parsableByteArray3.K(i9);
                        extractorInput.readFully(parsableByteArray3.f14194a, 0, i9);
                        this.a0 += i9;
                        short s = (short) ((this.g0 / 2) + 1);
                        int i10 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.q;
                        if (byteBuffer == null || byteBuffer.capacity() < i10) {
                            this.q = ByteBuffer.allocate(i10);
                        }
                        this.q.position(0);
                        this.q.putShort(s);
                        int i11 = 0;
                        int i12 = 0;
                        while (true) {
                            i4 = this.g0;
                            if (i11 >= i4) {
                                break;
                            }
                            int iE = parsableByteArray3.E();
                            int i13 = i11 % 2;
                            int i14 = i8;
                            ByteBuffer byteBuffer2 = this.q;
                            if (i13 == 0) {
                                byteBuffer2.putShort((short) (iE - i12));
                            } else {
                                byteBuffer2.putInt(iE - i12);
                            }
                            i11++;
                            i12 = iE;
                            i8 = i14;
                        }
                        i3 = i8;
                        int i15 = (i2 - this.a0) - i12;
                        int i16 = i4 % 2;
                        ByteBuffer byteBuffer3 = this.q;
                        if (i16 == 1) {
                            byteBuffer3.putInt(i15);
                        } else {
                            byteBuffer3.putShort((short) i15);
                            this.q.putInt(0);
                        }
                        byte[] bArrArray = this.q.array();
                        ParsableByteArray parsableByteArray5 = this.o;
                        parsableByteArray5.L(i10, bArrArray);
                        trackOutput.a(parsableByteArray5, i10, 1);
                        this.b0 += i10;
                    } else {
                        i3 = 2;
                    }
                }
            } else {
                i3 = 2;
                byte[] bArr2 = track.f16451j;
                if (bArr2 != null) {
                    parsableByteArray2.L(bArr2.length, bArr2);
                }
            }
            if ("A_OPUS".equals(track.f16446c)) {
                z2 = z;
            } else {
                z2 = track.g > 0;
            }
            if (z2) {
                this.W |= 268435456;
                this.p.K(0);
                int i17 = (parsableByteArray2.f14196c + i2) - this.a0;
                parsableByteArray3.K(4);
                byte[] bArr3 = parsableByteArray3.f14194a;
                bArr3[0] = (byte) ((i17 >> 24) & 255);
                bArr3[1] = (byte) ((i17 >> 16) & 255);
                bArr3[i3] = (byte) ((i17 >> 8) & 255);
                bArr3[3] = (byte) (i17 & 255);
                trackOutput.a(parsableByteArray3, 4, i3);
                this.b0 += 4;
            }
            this.d0 = true;
        }
        int i18 = i2 + parsableByteArray2.f14196c;
        if (!"V_MPEG4/ISO/AVC".equals(track.f16446c) && !"V_MPEGH/ISO/HEVC".equals(track.f16446c)) {
            if (track.V != null) {
                Preconditions.q(parsableByteArray2.f14196c == 0);
                track.V.c(extractorInput);
            }
            while (true) {
                int i19 = this.a0;
                if (i19 >= i18) {
                    break;
                }
                int i20 = i18 - i19;
                int iA2 = parsableByteArray2.a();
                if (iA2 > 0) {
                    iC2 = Math.min(i20, iA2);
                    trackOutput.f(iC2, parsableByteArray2);
                } else {
                    iC2 = trackOutput.c(extractorInput, i20, false);
                }
                this.a0 += iC2;
                this.b0 += iC2;
            }
        } else {
            ParsableByteArray parsableByteArray6 = this.f16434h;
            byte[] bArr4 = parsableByteArray6.f14194a;
            bArr4[0] = 0;
            bArr4[1] = 0;
            bArr4[2] = 0;
            int i21 = track.c0;
            int i22 = 4 - i21;
            while (this.a0 < i18) {
                int i23 = this.c0;
                if (i23 == 0) {
                    int iMin = Math.min(i21, parsableByteArray2.a());
                    extractorInput.readFully(bArr4, i22 + iMin, i21 - iMin);
                    if (iMin > 0) {
                        parsableByteArray2.k(i22, iMin, bArr4);
                    }
                    this.a0 += i21;
                    parsableByteArray6.N(0);
                    this.c0 = parsableByteArray6.E();
                    ParsableByteArray parsableByteArray7 = this.g;
                    parsableByteArray7.N(0);
                    trackOutput.f(4, parsableByteArray7);
                    this.b0 += 4;
                } else {
                    int iA3 = parsableByteArray2.a();
                    if (iA3 > 0) {
                        iC = Math.min(i23, iA3);
                        trackOutput.f(iC, parsableByteArray2);
                    } else {
                        iC = trackOutput.c(extractorInput, i23, false);
                    }
                    this.a0 += iC;
                    this.b0 += iC;
                    this.c0 -= iC;
                }
            }
        }
        if ("A_VORBIS".equals(track.f16446c)) {
            ParsableByteArray parsableByteArray8 = this.f16436j;
            parsableByteArray8.N(0);
            trackOutput.f(4, parsableByteArray8);
            this.b0 += 4;
        }
        int i24 = this.b0;
        m();
        return i24;
    }

    public final void p(ExtractorInput extractorInput, byte[] bArr, int i2) {
        int length = bArr.length + i2;
        ParsableByteArray parsableByteArray = this.m;
        byte[] bArr2 = parsableByteArray.f14194a;
        if (bArr2.length < length) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, length + i2);
            parsableByteArray.getClass();
            parsableByteArray.L(bArrCopyOf.length, bArrCopyOf);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        extractorInput.readFully(parsableByteArray.f14194a, bArr.length, i2);
        parsableByteArray.N(0);
        parsableByteArray.M(length);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    @Deprecated
    public MatroskaExtractor(int i2) {
        this(new DefaultEbmlReader(), i2 | 2, SubtitleParser.Factory.f16683a);
    }

    public MatroskaExtractor(SubtitleParser.Factory factory) {
        this(new DefaultEbmlReader(), 0, factory);
    }

    public MatroskaExtractor(SubtitleParser.Factory factory, int i2) {
        this(new DefaultEbmlReader(), i2, factory);
    }

    @Deprecated
    public MatroskaExtractor() {
        this(new DefaultEbmlReader(), 2, SubtitleParser.Factory.f16683a);
    }
}
