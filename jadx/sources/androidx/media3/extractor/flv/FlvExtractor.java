package androidx.media3.extractor.flv;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import defpackage.d21;
import defpackage.pq0;
import defpackage.r81;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class FlvExtractor implements Extractor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ExtractorOutput f16294f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f16295h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f16296i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16297j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16298k;
    public int l;
    public long m;
    public boolean n;
    public AudioTagPayloadReader o;
    public VideoTagPayloadReader p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16290a = new ParsableByteArray(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16291b = new ParsableByteArray(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16292c = new ParsableByteArray(11);
    public final ParsableByteArray d = new ParsableByteArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScriptTagPayloadReader f16293e = new ScriptTagPayloadReader();
    public int g = 1;

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        if (j2 == 0) {
            this.g = 1;
            this.f16295h = false;
        } else {
            this.g = 3;
        }
        this.f16297j = 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16294f = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        ParsableByteArray parsableByteArray = this.f16290a;
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.i(false, 0, 3, parsableByteArray.f14194a);
        parsableByteArray.N(0);
        if (parsableByteArray.D() == 4607062) {
            defaultExtractorInput.i(false, 0, 2, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if ((parsableByteArray.H() & 250) == 0) {
                defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
                parsableByteArray.N(0);
                int iM = parsableByteArray.m();
                defaultExtractorInput.f16125f = 0;
                defaultExtractorInput.n(iM, false);
                defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
                parsableByteArray.N(0);
                if (parsableByteArray.m() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:144:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:145:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:184:0x03b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0168  */
    /* JADX WARN: Code duplicated, block: B:58:0x0170  */
    /* JADX WARN: Code duplicated, block: B:94:0x0293  */
    /* JADX WARN: Code duplicated, block: B:99:0x02a8  */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws TagPayloadReader.UnsupportedFormatException {
        long j2;
        long j3;
        int i2;
        boolean z;
        boolean z2;
        long j4;
        int i3;
        this.f16294f.getClass();
        while (true) {
            int i4 = this.g;
            boolean z3 = true;
            if (i4 == 1) {
                ParsableByteArray parsableByteArray = this.f16291b;
                if (!extractorInput.h(true, 0, 9, parsableByteArray.f14194a)) {
                    return -1;
                }
                parsableByteArray.N(0);
                parsableByteArray.O(4);
                int iA = parsableByteArray.A();
                boolean z4 = (iA & 4) != 0;
                boolean z5 = (iA & 1) != 0;
                if (z4 && this.o == null) {
                    this.o = new AudioTagPayloadReader(this.f16294f.r(8, 1));
                }
                if (z5 && this.p == null) {
                    i3 = 2;
                    this.p = new VideoTagPayloadReader(this.f16294f.r(9, 2));
                } else {
                    i3 = 2;
                }
                this.f16294f.n();
                this.f16297j = parsableByteArray.m() - 5;
                this.g = i3;
            } else if (i4 == 2) {
                extractorInput.m(this.f16297j);
                this.f16297j = 0;
                this.g = 3;
            } else if (i4 == 3) {
                ParsableByteArray parsableByteArray2 = this.f16292c;
                if (!extractorInput.h(true, 0, 11, parsableByteArray2.f14194a)) {
                    return -1;
                }
                parsableByteArray2.N(0);
                this.f16298k = parsableByteArray2.A();
                this.l = parsableByteArray2.D();
                this.m = parsableByteArray2.D();
                this.m = (((long) (parsableByteArray2.A() << 24)) | this.m) * 1000;
                parsableByteArray2.O(3);
                this.g = 4;
            } else {
                if (i4 != 4) {
                    r81.b();
                    return 0;
                }
                boolean z6 = this.f16295h;
                ScriptTagPayloadReader scriptTagPayloadReader = this.f16293e;
                if (z6) {
                    j2 = this.f16296i + this.m;
                } else {
                    if (scriptTagPayloadReader.f16299b == -9223372036854775807L) {
                        j3 = 0;
                    } else {
                        j2 = this.m;
                    }
                    i2 = this.f16298k;
                    if (i2 == 8 || this.o == null) {
                        int i5 = 4;
                        if (i2 != 9 && this.p != null) {
                            if (!this.n) {
                                this.f16294f.j(new SeekMap.Unseekable(-9223372036854775807L));
                                this.n = true;
                            }
                            VideoTagPayloadReader videoTagPayloadReader = this.p;
                            ParsableByteArray parsableByteArrayG = g(extractorInput);
                            videoTagPayloadReader.getClass();
                            int iA2 = parsableByteArrayG.A();
                            int i6 = (iA2 >> 4) & 15;
                            int i7 = iA2 & 15;
                            if (i7 != 7) {
                                throw new TagPayloadReader.UnsupportedFormatException(pq0.k(i7, "Video format not supported: "));
                            }
                            videoTagPayloadReader.g = i6;
                            if (i6 != 5) {
                                ParsableByteArray parsableByteArray3 = videoTagPayloadReader.f16302b;
                                TrackOutput trackOutput = videoTagPayloadReader.f16301a;
                                ParsableByteArray parsableByteArray4 = videoTagPayloadReader.f16303c;
                                int iA3 = parsableByteArrayG.A();
                                parsableByteArrayG.f(3);
                                byte[] bArr = parsableByteArrayG.f14194a;
                                int i8 = parsableByteArrayG.f14195b;
                                int i9 = i8 + 1;
                                parsableByteArrayG.f14195b = i9;
                                int i10 = ((bArr[i8] & 255) << 24) >> 8;
                                int i11 = i8 + 2;
                                parsableByteArrayG.f14195b = i11;
                                int i12 = ((bArr[i9] & 255) << 8) | i10;
                                parsableByteArrayG.f14195b = i8 + 3;
                                long j5 = (((long) (i12 | (bArr[i11] & 255))) * 1000) + j3;
                                if (iA3 != 0 || videoTagPayloadReader.f16304e) {
                                    if (iA3 == 1 && videoTagPayloadReader.f16304e) {
                                        int i13 = videoTagPayloadReader.g == 1 ? 1 : 0;
                                        if (videoTagPayloadReader.f16305f || i13 != 0) {
                                            byte[] bArr2 = parsableByteArray4.f14194a;
                                            bArr2[0] = 0;
                                            bArr2[1] = 0;
                                            bArr2[2] = 0;
                                            int i14 = 4 - videoTagPayloadReader.d;
                                            int i15 = 0;
                                            while (parsableByteArrayG.a() > 0) {
                                                parsableByteArrayG.k(i14, videoTagPayloadReader.d, parsableByteArray4.f14194a);
                                                parsableByteArray4.N(0);
                                                int iE = parsableByteArray4.E();
                                                parsableByteArray3.N(0);
                                                trackOutput.f(i5, parsableByteArray3);
                                                trackOutput.f(iE, parsableByteArrayG);
                                                i15 = i15 + 4 + iE;
                                                i5 = 4;
                                            }
                                            videoTagPayloadReader.f16301a.g(j5, i13, i15, 0, null);
                                            videoTagPayloadReader.f16305f = true;
                                            z2 = true;
                                        }
                                    }
                                    z = z2;
                                    z3 = true;
                                } else {
                                    ParsableByteArray parsableByteArray5 = new ParsableByteArray(new byte[parsableByteArrayG.a()]);
                                    parsableByteArrayG.k(0, parsableByteArrayG.a(), parsableByteArray5.f14194a);
                                    AvcConfig avcConfigA = AvcConfig.a(parsableByteArray5);
                                    videoTagPayloadReader.d = avcConfigA.f16084b;
                                    Format.Builder builder = new Format.Builder();
                                    builder.m = MimeTypes.p("video/x-flv");
                                    builder.n = MimeTypes.p("video/avc");
                                    builder.f13771j = avcConfigA.l;
                                    builder.u = avcConfigA.f16085c;
                                    builder.v = avcConfigA.d;
                                    builder.A = avcConfigA.f16091k;
                                    builder.q = avcConfigA.f16083a;
                                    d21.w(builder, trackOutput);
                                    videoTagPayloadReader.f16304e = true;
                                }
                                z2 = false;
                                if (z2) {
                                }
                                z3 = true;
                            }
                        } else if (i2 == 18 || this.n) {
                            extractorInput.m(this.l);
                            z = false;
                            z3 = false;
                        } else {
                            ParsableByteArray parsableByteArrayG2 = g(extractorInput);
                            scriptTagPayloadReader.getClass();
                            if (parsableByteArrayG2.A() == 2 && "onMetaData".equals(ScriptTagPayloadReader.c(parsableByteArrayG2)) && parsableByteArrayG2.a() != 0 && parsableByteArrayG2.A() == 8) {
                                HashMap mapB = ScriptTagPayloadReader.b(parsableByteArrayG2);
                                Object obj = mapB.get("duration");
                                if (obj instanceof Double) {
                                    double dDoubleValue = ((Double) obj).doubleValue();
                                    if (dDoubleValue > 0.0d) {
                                        scriptTagPayloadReader.f16299b = (long) (dDoubleValue * 1000000.0d);
                                    }
                                }
                                Object obj2 = mapB.get("keyframes");
                                if (obj2 instanceof Map) {
                                    Map map = (Map) obj2;
                                    Object obj3 = map.get("filepositions");
                                    Object obj4 = map.get("times");
                                    if ((obj3 instanceof List) && (obj4 instanceof List)) {
                                        List list = (List) obj3;
                                        List list2 = (List) obj4;
                                        int size = list2.size();
                                        scriptTagPayloadReader.f16300c = new long[size];
                                        scriptTagPayloadReader.d = new long[size];
                                        for (int i16 = 0; i16 < size; i16++) {
                                            Object obj5 = list.get(i16);
                                            Object obj6 = list2.get(i16);
                                            if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                                                scriptTagPayloadReader.f16300c = new long[0];
                                                scriptTagPayloadReader.d = new long[0];
                                                break;
                                            }
                                            scriptTagPayloadReader.f16300c[i16] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                                            scriptTagPayloadReader.d[i16] = ((Double) obj5).longValue();
                                        }
                                    }
                                }
                            }
                            long j6 = scriptTagPayloadReader.f16299b;
                            if (j6 != -9223372036854775807L) {
                                this.f16294f.j(new IndexSeekMap(scriptTagPayloadReader.d, scriptTagPayloadReader.f16300c, j6));
                                this.n = true;
                            }
                        }
                        z3 = true;
                    } else {
                        if (!this.n) {
                            this.f16294f.j(new SeekMap.Unseekable(-9223372036854775807L));
                            this.n = true;
                        }
                        AudioTagPayloadReader audioTagPayloadReader = this.o;
                        ParsableByteArray parsableByteArrayG3 = g(extractorInput);
                        TrackOutput trackOutput2 = audioTagPayloadReader.f16301a;
                        if (audioTagPayloadReader.f16288b) {
                            parsableByteArrayG3.O(1);
                        } else {
                            int iA4 = parsableByteArrayG3.A();
                            int i17 = (iA4 >> 4) & 15;
                            audioTagPayloadReader.d = i17;
                            if (i17 == 2) {
                                int i18 = AudioTagPayloadReader.f16287e[(iA4 >> 2) & 3];
                                Format.Builder builder2 = new Format.Builder();
                                builder2.m = MimeTypes.p("video/x-flv");
                                builder2.n = MimeTypes.p("audio/mpeg");
                                builder2.F = 1;
                                builder2.G = i18;
                                d21.w(builder2, trackOutput2);
                                audioTagPayloadReader.f16289c = true;
                            } else if (i17 == 7 || i17 == 8) {
                                String str = i17 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
                                Format.Builder builder3 = new Format.Builder();
                                builder3.m = MimeTypes.p("video/x-flv");
                                builder3.n = MimeTypes.p(str);
                                builder3.F = 1;
                                builder3.G = 8000;
                                d21.w(builder3, trackOutput2);
                                audioTagPayloadReader.f16289c = true;
                            } else if (i17 != 10) {
                                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + audioTagPayloadReader.d);
                            }
                            audioTagPayloadReader.f16288b = true;
                        }
                        TrackOutput trackOutput3 = audioTagPayloadReader.f16301a;
                        if (audioTagPayloadReader.d == 2) {
                            int iA5 = parsableByteArrayG3.a();
                            trackOutput3.f(iA5, parsableByteArrayG3);
                            audioTagPayloadReader.f16301a.g(j3, 1, iA5, 0, null);
                        } else {
                            int iA6 = parsableByteArrayG3.A();
                            if (iA6 == 0 && !audioTagPayloadReader.f16289c) {
                                int iA7 = parsableByteArrayG3.a();
                                byte[] bArr3 = new byte[iA7];
                                parsableByteArrayG3.k(0, iA7, bArr3);
                                AacUtil.Config configB = AacUtil.b(new ParsableBitArray(bArr3), false);
                                Format.Builder builder4 = new Format.Builder();
                                builder4.m = MimeTypes.p("video/x-flv");
                                builder4.n = MimeTypes.p("audio/mp4a-latm");
                                builder4.f13771j = configB.f16068c;
                                builder4.F = configB.f16067b;
                                builder4.G = configB.f16066a;
                                builder4.q = Collections.singletonList(bArr3);
                                d21.w(builder4, trackOutput3);
                                audioTagPayloadReader.f16289c = true;
                            } else if (audioTagPayloadReader.d != 10 || iA6 == 1) {
                                int iA8 = parsableByteArrayG3.a();
                                trackOutput3.f(iA8, parsableByteArrayG3);
                                audioTagPayloadReader.f16301a.g(j3, 1, iA8, 0, null);
                            }
                            z = false;
                        }
                        z = true;
                    }
                    if (!this.f16295h && z) {
                        this.f16295h = true;
                        if (scriptTagPayloadReader.f16299b == -9223372036854775807L) {
                            j4 = -this.m;
                        } else {
                            j4 = 0;
                        }
                        this.f16296i = j4;
                    }
                    this.f16297j = 4;
                    this.g = 2;
                    if (z3) {
                        return 0;
                    }
                }
                j3 = j2;
                i2 = this.f16298k;
                if (i2 == 8) {
                    int i19 = 4;
                    if (i2 != 9) {
                        if (i2 == 18) {
                        }
                        extractorInput.m(this.l);
                        z = false;
                        z3 = false;
                    } else {
                        if (i2 == 18) {
                        }
                        extractorInput.m(this.l);
                        z = false;
                        z3 = false;
                    }
                } else {
                    int i110 = 4;
                    if (i2 != 9) {
                        if (i2 == 18) {
                        }
                        extractorInput.m(this.l);
                        z = false;
                        z3 = false;
                    } else {
                        if (i2 == 18) {
                        }
                        extractorInput.m(this.l);
                        z = false;
                        z3 = false;
                    }
                }
                if (!this.f16295h) {
                    this.f16295h = true;
                    if (scriptTagPayloadReader.f16299b == -9223372036854775807L) {
                        j4 = -this.m;
                    } else {
                        j4 = 0;
                    }
                    this.f16296i = j4;
                }
                this.f16297j = 4;
                this.g = 2;
                if (z3) {
                    return 0;
                }
            }
        }
    }

    public final ParsableByteArray g(ExtractorInput extractorInput) {
        int i2 = this.l;
        ParsableByteArray parsableByteArray = this.d;
        byte[] bArr = parsableByteArray.f14194a;
        if (i2 > bArr.length) {
            parsableByteArray.L(0, new byte[Math.max(bArr.length * 2, i2)]);
        } else {
            parsableByteArray.N(0);
        }
        parsableByteArray.M(this.l);
        extractorInput.readFully(parsableByteArray.f14194a, 0, this.l);
        return parsableByteArray;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
