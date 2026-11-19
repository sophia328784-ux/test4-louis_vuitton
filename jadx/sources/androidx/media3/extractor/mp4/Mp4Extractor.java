package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.TrackAwareSeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.MotionPhotoMetadata;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.metadata.mp4.SlowMotionData;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.d21;
import defpackage.fc;
import defpackage.r81;
import defpackage.uh;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4Extractor implements Extractor {
    public static final /* synthetic */ int G = 0;
    public long A;
    public ExtractorOutput B;
    public Mp4Track[] C;
    public long[][] D;
    public int E;
    public MotionPhotoMetadata F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SubtitleParser.Factory f16563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16565c;
    public final ParsableByteArray d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f16566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ParsableByteArray f16567f;
    public final ParsableByteArray g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayDeque f16568h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SefReader f16569i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f16570j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ImmutableList f16571k;
    public int l;
    public int m;
    public long n;
    public int o;
    public ParsableByteArray p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public boolean v;
    public boolean w;
    public long x;
    public boolean y;
    public boolean z;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class Mp4SeekMap implements TrackAwareSeekMap {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Mp4Track[] f16573b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16574c;

        public Mp4SeekMap(long j2, Mp4Track[] mp4TrackArr, int i2) {
            this.f16572a = j2;
            this.f16573b = mp4TrackArr;
            this.f16574c = i2;
        }

        /* JADX WARN: Code duplicated, block: B:29:0x006e A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:30:0x0070  */
        /* JADX WARN: Code duplicated, block: B:32:0x007e  */
        /* JADX WARN: Code duplicated, block: B:34:0x0084  */
        /* JADX WARN: Code duplicated, block: B:35:0x0086  */
        /* JADX WARN: Code duplicated, block: B:38:0x0091  */
        /* JADX WARN: Code duplicated, block: B:40:0x0098  */
        /* JADX WARN: Code duplicated, block: B:43:0x009f  */
        /* JADX WARN: Code duplicated, block: B:44:0x00a7  */
        /* JADX WARN: Code duplicated, block: B:48:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:50:0x00bb  */
        /* JADX WARN: Code duplicated, block: B:54:0x00a8 A[SYNTHETIC] */
        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints c(long j2) {
            long j3;
            long j4;
            long j5;
            long j6;
            int i2;
            long jMin;
            TrackSampleTable trackSampleTable;
            int iA;
            long[] jArr;
            int iA2;
            int iB;
            Mp4Track[] mp4TrackArr = this.f16573b;
            if (mp4TrackArr.length == 0) {
                return new SeekMap.SeekPoints(SeekPoint.f16195c);
            }
            int i3 = this.f16574c;
            int i4 = -1;
            long jMin2 = -1;
            if (i3 != -1) {
                TrackSampleTable trackSampleTable2 = mp4TrackArr[i3].f16576b;
                int i5 = Mp4Extractor.G;
                int iA3 = trackSampleTable2.a(j2);
                if (iA3 == -1) {
                    iA3 = trackSampleTable2.b(j2);
                }
                long[] jArr2 = trackSampleTable2.f16615c;
                long[] jArr3 = trackSampleTable2.f16617f;
                if (iA3 == -1) {
                    return new SeekMap.SeekPoints(SeekPoint.f16195c);
                }
                j5 = jArr3[iA3];
                j4 = jArr2[iA3];
                if (j5 < j2) {
                    j3 = -9223372036854775807L;
                    if (iA3 < trackSampleTable2.f16614b - 1 && (iB = trackSampleTable2.b(j2)) != -1 && iB != iA3) {
                        j6 = jArr3[iB];
                        jMin2 = jArr2[iB];
                    }
                    i2 = 0;
                    jMin = j4;
                    while (i2 < mp4TrackArr.length) {
                        if (i2 != i3) {
                            trackSampleTable = mp4TrackArr[i2].f16576b;
                            int i6 = Mp4Extractor.G;
                            iA = trackSampleTable.a(j5);
                            jArr = trackSampleTable.f16615c;
                            if (iA == i4) {
                                iA = trackSampleTable.b(j5);
                            }
                            if (iA == i4) {
                                jMin = Math.min(jArr[iA], jMin);
                            }
                            if (j6 == j3) {
                                jMin2 = jMin2;
                            } else {
                                iA2 = trackSampleTable.a(j6);
                                if (iA2 == -1) {
                                    iA2 = trackSampleTable.b(j6);
                                }
                                if (iA2 == -1) {
                                    jMin2 = jMin2;
                                } else {
                                    jMin2 = Math.min(jArr[iA2], jMin2);
                                }
                            }
                        }
                        i2++;
                        i4 = -1;
                    }
                    SeekPoint seekPoint = new SeekPoint(j5, jMin);
                    return j6 == j3 ? new SeekMap.SeekPoints(seekPoint) : new SeekMap.SeekPoints(seekPoint, new SeekPoint(j6, jMin2));
                }
                j3 = -9223372036854775807L;
            } else {
                j3 = -9223372036854775807L;
                j4 = Long.MAX_VALUE;
                j5 = j2;
            }
            j6 = j3;
            i2 = 0;
            jMin = j4;
            while (i2 < mp4TrackArr.length) {
                if (i2 != i3) {
                    trackSampleTable = mp4TrackArr[i2].f16576b;
                    int i7 = Mp4Extractor.G;
                    iA = trackSampleTable.a(j5);
                    jArr = trackSampleTable.f16615c;
                    if (iA == i4) {
                        iA = trackSampleTable.b(j5);
                    }
                    if (iA == i4) {
                        jMin = Math.min(jArr[iA], jMin);
                    }
                    if (j6 == j3) {
                        jMin2 = jMin2;
                    } else {
                        iA2 = trackSampleTable.a(j6);
                        if (iA2 == -1) {
                            iA2 = trackSampleTable.b(j6);
                        }
                        if (iA2 == -1) {
                            jMin2 = jMin2;
                        } else {
                            jMin2 = Math.min(jArr[iA2], jMin2);
                        }
                    }
                }
                i2++;
                i4 = -1;
            }
            SeekPoint seekPoint2 = new SeekPoint(j5, jMin);
            if (j6 == j3) {
            }
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean e() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long h() {
            return this.f16572a;
        }
    }

    public static final class Mp4Track {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Track f16575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackSampleTable f16576b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TrackOutput f16577c;
        public final TrueHdSampleRechunker d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16578e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Format f16579f;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.f16575a = track;
            this.f16576b = trackSampleTable;
            this.f16577c = trackOutput;
            this.d = "audio/true-hd".equals(track.g.o) ? new TrueHdSampleRechunker() : null;
        }
    }

    public Mp4Extractor(SubtitleParser.Factory factory, int i2) {
        this.f16563a = factory;
        this.f16564b = i2;
        this.f16565c = (i2 & 256) != 0;
        this.f16571k = ImmutableList.x();
        this.l = (i2 & 4) != 0 ? 3 : 0;
        this.f16569i = new SefReader();
        this.f16570j = new ArrayList();
        this.g = new ParsableByteArray(16);
        this.f16568h = new ArrayDeque();
        this.d = new ParsableByteArray(NalUnitUtil.f14286a);
        this.f16566e = new ParsableByteArray(6);
        this.f16567f = new ParsableByteArray();
        this.q = -1;
        this.B = ExtractorOutput.g0;
        this.C = new Mp4Track[0];
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16568h.clear();
        this.o = 0;
        this.q = -1;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = false;
        this.z = false;
        if (j2 == 0) {
            if (this.l != 3) {
                this.l = 0;
                this.o = 0;
                return;
            } else {
                SefReader sefReader = this.f16569i;
                sefReader.f16585a.clear();
                sefReader.f16586b = 0;
                this.f16570j.clear();
                return;
            }
        }
        for (Mp4Track mp4Track : this.C) {
            TrackSampleTable trackSampleTable = mp4Track.f16576b;
            int iA = trackSampleTable.a(j3);
            if (iA == -1) {
                iA = trackSampleTable.b(j3);
            }
            mp4Track.f16578e = iA;
            TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.d;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.f16214b = false;
                trueHdSampleRechunker.f16215c = 0;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        if ((this.f16564b & 16) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.f16563a);
        }
        this.B = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        SniffFailure sniffFailureB = Sniffer.b(extractorInput, false, (this.f16564b & 2) != 0);
        this.f16571k = sniffFailureB != null ? ImmutableList.A(sniffFailureB) : ImmutableList.x();
        return sniffFailureB == null;
    }

    @Override // androidx.media3.extractor.Extractor
    public final List e() {
        return this.f16571k;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x008d  */
    /* JADX WARN: Code duplicated, block: B:273:0x054c  */
    /* JADX WARN: Code duplicated, block: B:274:0x0558  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        char c2;
        int i2;
        int i3;
        int i4;
        ParsableByteArray parsableByteArray;
        int i5;
        char c3;
        boolean z;
        boolean z2;
        Mp4Box.ContainerBox containerBox;
        if (!this.f16565c || !this.z) {
            while (true) {
                int i6 = this.l;
                ArrayDeque arrayDeque = this.f16568h;
                int i7 = this.f16564b;
                ParsableByteArray parsableByteArray2 = this.f16567f;
                int i8 = 4;
                int i9 = 0;
                int i10 = 2;
                if (i6 == 0) {
                    int i11 = this.o;
                    ParsableByteArray parsableByteArray3 = this.g;
                    if (i11 == 0) {
                        if (extractorInput.h(true, 0, 8, parsableByteArray3.f14194a)) {
                            this.o = 8;
                            parsableByteArray3.N(0);
                            this.n = parsableByteArray3.C();
                            this.m = parsableByteArray3.m();
                        } else if (this.E == 2 && (i7 & 2) != 0) {
                            TrackOutput trackOutputR = this.B.r(0, 4);
                            MotionPhotoMetadata motionPhotoMetadata = this.F;
                            Metadata metadata = motionPhotoMetadata == null ? null : new Metadata(motionPhotoMetadata);
                            Format.Builder builder = new Format.Builder();
                            builder.f13772k = metadata;
                            d21.w(builder, trackOutputR);
                            this.B.n();
                            this.B.j(new SeekMap.Unseekable(-9223372036854775807L));
                            return -1;
                        }
                    }
                    long j2 = this.n;
                    if (j2 == 1) {
                        extractorInput.readFully(parsableByteArray3.f14194a, 8, 8);
                        this.o += 8;
                        this.n = parsableByteArray3.G();
                    } else if (j2 == 0) {
                        long length = extractorInput.getLength();
                        if (length == -1 && (containerBox = (Mp4Box.ContainerBox) arrayDeque.peek()) != null) {
                            length = containerBox.f14278b;
                        }
                        if (length != -1) {
                            this.n = (length - extractorInput.getPosition()) + ((long) this.o);
                        }
                    }
                    long j3 = this.n;
                    int i12 = this.o;
                    long j4 = i12;
                    if (j3 < j4) {
                        if (this.m != 1718773093 || i12 != 8) {
                            throw ParserException.c("Atom size less than header length (unsupported).");
                        }
                        this.n = j4;
                    }
                    int i13 = this.m;
                    if (i13 == 1836019574 || i13 == 1953653099 || i13 == 1835297121 || i13 == 1835626086 || i13 == 1937007212 || i13 == 1701082227 || i13 == 1835365473 || i13 == 1635284069) {
                        long position = extractorInput.getPosition();
                        long j5 = this.n;
                        long j6 = this.o;
                        long j7 = (position + j5) - j6;
                        if (j5 != j6 && this.m == 1835365473) {
                            parsableByteArray2.K(8);
                            extractorInput.b(0, 8, parsableByteArray2.f14194a);
                            BoxParser.a(parsableByteArray2);
                            extractorInput.m(parsableByteArray2.f14195b);
                            extractorInput.g();
                        }
                        arrayDeque.push(new Mp4Box.ContainerBox(this.m, j7));
                        if (this.n == this.o) {
                            g(j7);
                        } else {
                            this.l = 0;
                            this.o = 0;
                        }
                    } else if (i13 == 1835296868 || i13 == 1836476516 || i13 == 1751411826 || i13 == 1937011556 || i13 == 1937011827 || i13 == 1937011571 || i13 == 1668576371 || i13 == 1701606260 || i13 == 1937011555 || i13 == 1937011578 || i13 == 1937013298 || i13 == 1937007471 || i13 == 1668232756 || i13 == 1953196132 || i13 == 1718909296 || i13 == 1969517665 || i13 == 1801812339 || i13 == 1768715124) {
                        Preconditions.q(i12 == 8);
                        Preconditions.q(this.n <= 2147483647L);
                        ParsableByteArray parsableByteArray4 = new ParsableByteArray((int) this.n);
                        System.arraycopy(parsableByteArray3.f14194a, 0, parsableByteArray4.f14194a, 0, 8);
                        this.p = parsableByteArray4;
                        this.l = 1;
                    } else {
                        long position2 = extractorInput.getPosition();
                        long j8 = this.o;
                        long j9 = position2 - j8;
                        if (this.m == 1836086884) {
                            this.F = new MotionPhotoMetadata(0L, j9, -9223372036854775807L, j9 + j8, this.n - j8);
                        }
                        this.p = null;
                        this.l = 1;
                    }
                } else {
                    if (i6 != 1) {
                        if (i6 != 2) {
                            if (i6 != 3) {
                                r81.b();
                                return 0;
                            }
                            SefReader sefReader = this.f16569i;
                            ArrayList arrayList = sefReader.f16585a;
                            int i14 = sefReader.f16586b;
                            if (i14 != 0) {
                                if (i14 != 1) {
                                    short s = 2817;
                                    short s2 = 2816;
                                    if (i14 == 2) {
                                        long length2 = extractorInput.getLength();
                                        int i15 = sefReader.f16587c - 20;
                                        ParsableByteArray parsableByteArray5 = new ParsableByteArray(i15);
                                        extractorInput.readFully(parsableByteArray5.f14194a, 0, i15);
                                        int i16 = 0;
                                        while (i16 < i15 / 12) {
                                            parsableByteArray5.O(i10);
                                            short sQ = parsableByteArray5.q();
                                            if (sQ == 2192 || sQ == s2 || sQ == s || sQ == 2819 || sQ == 2820) {
                                                parsableByteArray = parsableByteArray5;
                                                arrayList.add(new SefReader.DataReference(sQ, (length2 - ((long) sefReader.f16587c)) - ((long) parsableByteArray.o()), parsableByteArray.o()));
                                            } else {
                                                parsableByteArray5.O(8);
                                                parsableByteArray = parsableByteArray5;
                                            }
                                            i16++;
                                            parsableByteArray5 = parsableByteArray;
                                            i15 = i15;
                                            s = 2817;
                                            i10 = 2;
                                            s2 = 2816;
                                        }
                                        if (arrayList.isEmpty()) {
                                            positionHolder.f16190a = 0L;
                                        } else {
                                            sefReader.f16586b = 3;
                                            positionHolder.f16190a = ((SefReader.DataReference) arrayList.get(0)).f16588a;
                                        }
                                    } else {
                                        if (i14 != 3) {
                                            r81.b();
                                            return 0;
                                        }
                                        long position3 = extractorInput.getPosition();
                                        int length3 = (int) ((extractorInput.getLength() - extractorInput.getPosition()) - ((long) sefReader.f16587c));
                                        ParsableByteArray parsableByteArray6 = new ParsableByteArray(length3);
                                        extractorInput.readFully(parsableByteArray6.f14194a, 0, length3);
                                        int i17 = 0;
                                        while (i17 < arrayList.size()) {
                                            SefReader.DataReference dataReference = (SefReader.DataReference) arrayList.get(i17);
                                            int i18 = i9;
                                            parsableByteArray6.N((int) (dataReference.f16588a - position3));
                                            parsableByteArray6.O(i8);
                                            int iO = parsableByteArray6.o();
                                            Charset charset = StandardCharsets.UTF_8;
                                            int i19 = i18;
                                            String strY = parsableByteArray6.y(iO, charset);
                                            switch (strY.hashCode()) {
                                                case -1711564334:
                                                    if (!strY.equals("SlowMotion_Data")) {
                                                        i5 = -1;
                                                    } else {
                                                        i5 = i19;
                                                    }
                                                    break;
                                                case -1332107749:
                                                    if (!strY.equals("Super_SlowMotion_Edit_Data")) {
                                                        i5 = -1;
                                                    } else {
                                                        i5 = 1;
                                                    }
                                                    break;
                                                case -1251387154:
                                                    if (!strY.equals("Super_SlowMotion_Data")) {
                                                        i5 = -1;
                                                    } else {
                                                        i5 = 2;
                                                    }
                                                    break;
                                                case -830665521:
                                                    if (!strY.equals("Super_SlowMotion_Deflickering_On")) {
                                                        i5 = -1;
                                                    } else {
                                                        i5 = 3;
                                                    }
                                                    break;
                                                case 1760745220:
                                                    if (!strY.equals("Super_SlowMotion_BGM")) {
                                                        i5 = -1;
                                                    } else {
                                                        i5 = 4;
                                                    }
                                                    break;
                                                default:
                                                    i5 = -1;
                                                    break;
                                            }
                                            switch (i5) {
                                                case 0:
                                                    c3 = 2192;
                                                    break;
                                                case 1:
                                                    c3 = 2819;
                                                    break;
                                                case 2:
                                                    c3 = 2816;
                                                    break;
                                                case 3:
                                                    c3 = 2820;
                                                    break;
                                                case 4:
                                                    c3 = 2817;
                                                    break;
                                                default:
                                                    throw ParserException.a(null, "Invalid SEF name");
                                            }
                                            int i20 = dataReference.f16589b - (iO + 8);
                                            if (c3 == 2192) {
                                                ArrayList arrayList2 = new ArrayList();
                                                List listD = SefReader.f16584e.d(parsableByteArray6.y(i20, charset));
                                                int i21 = i19;
                                                while (i21 < listD.size()) {
                                                    List listD2 = SefReader.d.d((CharSequence) listD.get(i21));
                                                    if (listD2.size() != 3) {
                                                        throw ParserException.a(null, null);
                                                    }
                                                    try {
                                                        arrayList2.add(new SlowMotionData.Segment(Long.parseLong((String) listD2.get(i19)), Long.parseLong((String) listD2.get(1)), 1 << (Integer.parseInt((String) listD2.get(2)) - 1)));
                                                        i21++;
                                                        i19 = 0;
                                                    } catch (NumberFormatException e2) {
                                                        throw ParserException.a(e2, null);
                                                    }
                                                }
                                                this.f16570j.add(new SlowMotionData(arrayList2));
                                            } else if (c3 != 2816 && c3 != 2817 && c3 != 2819 && c3 != 2820) {
                                                r81.b();
                                                return i19;
                                            }
                                            i17++;
                                            i9 = 0;
                                            i8 = 4;
                                        }
                                        positionHolder.f16190a = 0L;
                                    }
                                } else {
                                    ParsableByteArray parsableByteArray7 = new ParsableByteArray(8);
                                    extractorInput.readFully(parsableByteArray7.f14194a, 0, 8);
                                    sefReader.f16587c = parsableByteArray7.o() + 8;
                                    if (parsableByteArray7.m() != 1397048916) {
                                        positionHolder.f16190a = 0L;
                                    } else {
                                        positionHolder.f16190a = extractorInput.getPosition() - ((long) (sefReader.f16587c - 12));
                                        sefReader.f16586b = 2;
                                    }
                                }
                                i4 = 1;
                            } else {
                                long length4 = extractorInput.getLength();
                                positionHolder.f16190a = (length4 == -1 || length4 < 8) ? 0L : length4 - 8;
                                i4 = 1;
                                sefReader.f16586b = 1;
                            }
                            if (positionHolder.f16190a != 0) {
                                return i4;
                            }
                            this.l = 0;
                            this.o = 0;
                            return i4;
                        }
                        long position4 = extractorInput.getPosition();
                        if (this.q == -1) {
                            int i22 = 0;
                            int i23 = -1;
                            int i24 = -1;
                            boolean z3 = true;
                            boolean z4 = true;
                            long j10 = Long.MAX_VALUE;
                            long j11 = Long.MAX_VALUE;
                            long j12 = Long.MAX_VALUE;
                            while (true) {
                                Mp4Track[] mp4TrackArr = this.C;
                                if (i22 >= mp4TrackArr.length) {
                                    break;
                                }
                                Mp4Track mp4Track = mp4TrackArr[i22];
                                int i25 = mp4Track.f16578e;
                                TrackSampleTable trackSampleTable = mp4Track.f16576b;
                                if (i25 != trackSampleTable.f16614b) {
                                    long j13 = trackSampleTable.f16615c[i25];
                                    long[][] jArr = this.D;
                                    jArr.getClass();
                                    long j14 = jArr[i22][i25];
                                    long j15 = j13 - position4;
                                    boolean z5 = j15 < 0 || j15 >= 262144;
                                    if ((!z5 && z4) || (z5 == z4 && j15 < j12)) {
                                        j11 = j14;
                                        i24 = i22;
                                        z4 = z5;
                                        j12 = j15;
                                    }
                                    if (j14 < j10) {
                                        j10 = j14;
                                        i23 = i22;
                                        z3 = z5;
                                    }
                                }
                                i22++;
                            }
                            if (j10 == Long.MAX_VALUE || !z3 || j11 < j10 + 10485760) {
                                i23 = i24;
                            }
                            this.q = i23;
                            if (i23 == -1) {
                                return -1;
                            }
                        }
                        Mp4Track mp4Track2 = this.C[this.q];
                        TrackOutput trackOutput = mp4Track2.f16577c;
                        TrackSampleTable trackSampleTable2 = mp4Track2.f16576b;
                        Track track = mp4Track2.f16575a;
                        int i26 = mp4Track2.f16578e;
                        long[] jArr2 = trackSampleTable2.f16615c;
                        int[] iArr = trackSampleTable2.d;
                        long j16 = jArr2[i26] + this.A;
                        int i27 = iArr[i26];
                        TrueHdSampleRechunker trueHdSampleRechunker = mp4Track2.d;
                        long j17 = (j16 - position4) + ((long) this.r);
                        if (j17 < 0 || j17 >= 262144) {
                            positionHolder.f16190a = j16;
                            return 1;
                        }
                        int i28 = track.f16596h;
                        int i29 = track.f16599k;
                        Format format = track.g;
                        if (i28 == 1) {
                            j17 += 8;
                            i27 -= 8;
                        }
                        extractorInput.m((int) j17);
                        String str = format.o;
                        String str2 = format.o;
                        if (!Objects.equals(str, "video/avc") ? !Objects.equals(str2, "video/hevc") || (i7 & 128) == 0 : (i7 & 32) == 0) {
                            c2 = 1;
                            this.u = true;
                        } else {
                            c2 = 1;
                        }
                        if (i29 == 0) {
                            if ("audio/ac4".equals(str2)) {
                                if (this.s == 0) {
                                    Ac4Util.a(i27, parsableByteArray2);
                                    trackOutput.f(7, parsableByteArray2);
                                    this.s += 7;
                                }
                                i27 += 7;
                            } else if (mp4Track2.f16579f != null && Objects.equals(str2, "audio/mpeg")) {
                                Format format2 = mp4Track2.f16579f;
                                parsableByteArray2.K(4);
                                extractorInput.b(0, 4, parsableByteArray2.f14194a);
                                extractorInput.g();
                                MpegAudioUtil.Header header = new MpegAudioUtil.Header();
                                TrackOutput trackOutput2 = mp4Track2.f16577c;
                                if (header.a(parsableByteArray2.m()) && !Objects.equals(format2.o, header.f16186b)) {
                                    Format.Builder builderA = format2.a();
                                    String str3 = header.f16186b;
                                    str3.getClass();
                                    builderA.n = MimeTypes.p(str3);
                                    format2 = new Format(builderA);
                                }
                                trackOutput2.b(format2);
                                mp4Track2.f16579f = null;
                            } else if (trueHdSampleRechunker != null) {
                                trueHdSampleRechunker.c(extractorInput);
                            }
                            while (true) {
                                int i30 = this.s;
                                if (i30 >= i27) {
                                    break;
                                }
                                int iC = trackOutput.c(extractorInput, i27 - i30, false);
                                this.r += iC;
                                this.s += iC;
                                this.t -= iC;
                            }
                        } else {
                            ParsableByteArray parsableByteArray8 = this.f16566e;
                            byte[] bArr = parsableByteArray8.f14194a;
                            bArr[0] = 0;
                            bArr[c2] = 0;
                            bArr[2] = 0;
                            int i31 = 4 - i29;
                            i27 += i31;
                            while (this.s < i27) {
                                int i32 = this.t;
                                if (i32 == 0) {
                                    if (this.u || NalUnitUtil.e(format) + i29 > iArr[i26] - this.r) {
                                        i2 = i29;
                                        i3 = 0;
                                    } else {
                                        int iE = NalUnitUtil.e(format);
                                        i2 = i29 + iE;
                                        i3 = iE;
                                    }
                                    extractorInput.readFully(bArr, i31, i2);
                                    this.r += i2;
                                    parsableByteArray8.N(0);
                                    int iM = parsableByteArray8.m();
                                    if (iM < 0) {
                                        throw ParserException.a(null, "Invalid NAL length");
                                    }
                                    this.t = iM - i3;
                                    ParsableByteArray parsableByteArray9 = this.d;
                                    parsableByteArray9.N(0);
                                    trackOutput.f(4, parsableByteArray9);
                                    this.s += 4;
                                    if (i3 > 0) {
                                        trackOutput.f(i3, parsableByteArray8);
                                        this.s += i3;
                                        if (NalUnitUtil.d(bArr, i3, format)) {
                                            this.u = true;
                                        }
                                    }
                                } else {
                                    int iC2 = trackOutput.c(extractorInput, i32, false);
                                    this.r += iC2;
                                    this.s += iC2;
                                    this.t -= iC2;
                                }
                            }
                        }
                        int i33 = i27;
                        long j18 = trackSampleTable2.f16617f[i26];
                        int i34 = trackSampleTable2.g[i26];
                        if (!this.u) {
                            i34 |= 67108864;
                        }
                        int i35 = i34;
                        if (trueHdSampleRechunker != null) {
                            trueHdSampleRechunker.b(trackOutput, j18, i35, i33, 0, null);
                            if (i26 + 1 == trackSampleTable2.f16614b) {
                                trueHdSampleRechunker.a(trackOutput, null);
                            }
                        } else {
                            trackOutput.g(j18, i35, i33, 0, null);
                        }
                        mp4Track2.f16578e++;
                        this.q = -1;
                        this.r = 0;
                        this.s = 0;
                        this.t = 0;
                        this.u = false;
                        return 0;
                    }
                    long j19 = this.n - ((long) this.o);
                    long position5 = extractorInput.getPosition() + j19;
                    ParsableByteArray parsableByteArray10 = this.p;
                    if (parsableByteArray10 != null) {
                        extractorInput.readFully(parsableByteArray10.f14194a, this.o, (int) j19);
                        if (this.m == 1718909296) {
                            this.v = true;
                            parsableByteArray10.N(8);
                            int iM2 = parsableByteArray10.m();
                            int i36 = iM2 != 1751476579 ? iM2 != 1903435808 ? 0 : 1 : 2;
                            if (i36 == 0) {
                                parsableByteArray10.O(4);
                                do {
                                    if (parsableByteArray10.a() <= 0) {
                                        i36 = 0;
                                        break;
                                    }
                                    int iM3 = parsableByteArray10.m();
                                    i36 = iM3 != 1751476579 ? iM3 != 1903435808 ? 0 : 1 : 2;
                                } while (i36 == 0);
                            }
                            this.E = i36;
                        } else if (!arrayDeque.isEmpty()) {
                            ((Mp4Box.ContainerBox) arrayDeque.peek()).f14279c.add(new Mp4Box.LeafBox(this.m, parsableByteArray10));
                        }
                    } else {
                        if (!this.v && this.m == 1835295092) {
                            this.E = 1;
                        }
                        if (j19 < 262144) {
                            extractorInput.m((int) j19);
                        } else {
                            positionHolder.f16190a = extractorInput.getPosition() + j19;
                            z = true;
                        }
                        g(position5);
                        if (this.w) {
                            this.y = true;
                            positionHolder.f16190a = this.x;
                            this.w = false;
                            z2 = true;
                        } else {
                            z2 = z;
                        }
                        if (z2 && this.l != 2) {
                            return 1;
                        }
                    }
                    z = false;
                    g(position5);
                    if (this.w) {
                        this.y = true;
                        positionHolder.f16190a = this.x;
                        this.w = false;
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        continue;
                    }
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:164:0x0318  */
    /* JADX WARN: Code duplicated, block: B:165:0x0328  */
    /* JADX WARN: Code duplicated, block: B:167:0x032c  */
    /* JADX WARN: Code duplicated, block: B:172:0x033c  */
    /* JADX WARN: Code duplicated, block: B:175:0x0348  */
    /* JADX WARN: Code duplicated, block: B:177:0x034e  */
    /* JADX WARN: Code duplicated, block: B:180:0x0369  */
    /* JADX WARN: Code duplicated, block: B:182:0x0372  */
    /* JADX WARN: Code duplicated, block: B:20:0x006e  */
    /* JADX WARN: Code duplicated, block: B:267:0x0134 A[EDGE_INSN: B:267:0x0134->B:74:0x0134 BREAK  A[LOOP:9: B:62:0x0102->B:72:0x012c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:72:0x012c A[LOOP:9: B:62:0x0102->B:72:0x012c, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void g(long j2) {
        int i2;
        ArrayList arrayList;
        Metadata metadataE;
        boolean z;
        ArrayDeque arrayDeque;
        boolean z2;
        Metadata metadataJ;
        long[][] jArr;
        String str;
        int i3;
        int i4;
        long j3;
        int i5;
        Metadata metadata;
        GaplessInfoHolder gaplessInfoHolder;
        ArrayList arrayList2;
        Metadata metadata2;
        Metadata metadata3;
        Metadata metadata4;
        ArrayList arrayList3;
        int i6;
        int i7;
        int i8;
        int i9;
        Metadata.Entry entry;
        Metadata.Entry entry2;
        Metadata.Entry entry3;
        int i10;
        while (true) {
            ArrayDeque arrayDeque2 = this.f16568h;
            int i11 = 0;
            if (arrayDeque2.isEmpty() || ((Mp4Box.ContainerBox) arrayDeque2.peek()).f14278b != j2) {
                break;
            }
            Mp4Box.ContainerBox containerBox = (Mp4Box.ContainerBox) arrayDeque2.pop();
            if (containerBox.f14277a == 1836019574) {
                Mp4Box.ContainerBox containerBoxB = containerBox.b(1835365473);
                ArrayList arrayList4 = new ArrayList();
                boolean z3 = this.f16565c;
                long j4 = 0;
                int i12 = this.f16564b;
                if (containerBoxB != null) {
                    metadataE = BoxParser.e(containerBoxB);
                    if (this.y) {
                        metadataE.getClass();
                        Metadata.Entry[] entryArr = metadataE.f13897a;
                        int length = entryArr.length;
                        int i13 = 0;
                        while (true) {
                            if (i13 >= length) {
                                entry2 = null;
                                break;
                            }
                            Metadata.Entry entry4 = entryArr[i13];
                            if (MdtaMetadataEntry.class.isAssignableFrom(entry4.getClass())) {
                                entry2 = (Metadata.Entry) MdtaMetadataEntry.class.cast(entry4);
                                if (!((MdtaMetadataEntry) entry2).f14273a.equals("auxiliary.tracks.interleaved")) {
                                    entry2 = null;
                                }
                            } else {
                                entry2 = null;
                            }
                            if (entry2 != null) {
                                break;
                            } else {
                                i13++;
                            }
                        }
                        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry2;
                        if (mdtaMetadataEntry != null && mdtaMetadataEntry.f14274b[0] == 0) {
                            this.A = this.x + 16;
                        }
                        int length2 = entryArr.length;
                        int i14 = 0;
                        while (true) {
                            if (i14 >= length2) {
                                entry3 = null;
                                break;
                            }
                            Metadata.Entry entry5 = entryArr[i14];
                            if (MdtaMetadataEntry.class.isAssignableFrom(entry5.getClass())) {
                                entry3 = (Metadata.Entry) MdtaMetadataEntry.class.cast(entry5);
                                if (!((MdtaMetadataEntry) entry3).f14273a.equals("auxiliary.tracks.map")) {
                                    entry3 = null;
                                }
                            } else {
                                entry3 = null;
                            }
                            if (entry3 != null) {
                                break;
                            } else {
                                i14++;
                            }
                        }
                        MdtaMetadataEntry mdtaMetadataEntry2 = (MdtaMetadataEntry) entry3;
                        mdtaMetadataEntry2.getClass();
                        ArrayList arrayListD = mdtaMetadataEntry2.d();
                        ArrayList arrayList5 = new ArrayList(arrayListD.size());
                        for (int i15 = 0; i15 < arrayListD.size(); i15++) {
                            int iIntValue = ((Integer) arrayListD.get(i15)).intValue();
                            if (iIntValue == 0) {
                                i10 = 1;
                            } else if (iIntValue != 1) {
                                i10 = 3;
                                if (iIntValue != 2) {
                                    i10 = iIntValue != 3 ? 0 : 4;
                                }
                            } else {
                                i10 = 2;
                            }
                            arrayList5.add(Integer.valueOf(i10));
                        }
                        i2 = 0;
                        arrayList = arrayList5;
                    } else {
                        if (metadataE == null || (i12 & 64) == 0) {
                            i2 = 0;
                        } else {
                            Metadata.Entry[] entryArr2 = metadataE.f13897a;
                            int length3 = entryArr2.length;
                            int i16 = 0;
                            while (true) {
                                if (i16 >= length3) {
                                    i2 = i11;
                                    entry = null;
                                    break;
                                }
                                Metadata.Entry entry6 = entryArr2[i16];
                                if (MdtaMetadataEntry.class.isAssignableFrom(entry6.getClass())) {
                                    entry = (Metadata.Entry) MdtaMetadataEntry.class.cast(entry6);
                                    i2 = i11;
                                    if (!((MdtaMetadataEntry) entry).f14273a.equals("auxiliary.tracks.offset")) {
                                    }
                                    if (entry != null) {
                                        break;
                                    }
                                    i16++;
                                    i11 = i2;
                                } else {
                                    i2 = i11;
                                }
                                entry = null;
                                if (entry != null) {
                                    break;
                                    break;
                                } else {
                                    i16++;
                                    i11 = i2;
                                }
                            }
                            MdtaMetadataEntry mdtaMetadataEntry3 = (MdtaMetadataEntry) entry;
                            if (mdtaMetadataEntry3 != null) {
                                long jG = new ParsableByteArray(mdtaMetadataEntry3.f14274b).G();
                                if (jG > 0) {
                                    this.x = jG;
                                    this.w = true;
                                    arrayDeque = arrayDeque2;
                                    z2 = true;
                                    z = z3;
                                }
                                arrayDeque.clear();
                                this.z = z2;
                                if (this.w && !z) {
                                    this.l = 2;
                                }
                            }
                        }
                        arrayList = arrayList4;
                    }
                } else {
                    i2 = 0;
                    arrayList = arrayList4;
                    metadataE = null;
                }
                ArrayList arrayList6 = new ArrayList();
                boolean z4 = this.E == 1 ? 1 : i2;
                GaplessInfoHolder gaplessInfoHolder2 = new GaplessInfoHolder();
                Mp4Box.LeafBox leafBoxC = containerBox.c(1969517665);
                if (leafBoxC != null) {
                    metadataJ = BoxParser.j(leafBoxC);
                    gaplessInfoHolder2.b(metadataJ);
                } else {
                    metadataJ = null;
                }
                Mp4Box.LeafBox leafBoxC2 = containerBox.c(1836476516);
                leafBoxC2.getClass();
                Metadata.Entry[] entryArr3 = new Metadata.Entry[1];
                entryArr3[i2] = BoxParser.f(leafBoxC2.f14280b);
                Metadata metadata5 = new Metadata(entryArr3);
                Metadata metadata6 = metadataJ;
                ArrayList arrayListI = BoxParser.i(containerBox, gaplessInfoHolder2, -9223372036854775807L, null, (i12 & 1) != 0 ? 1 : i2, z4, new uh(11), this.f16565c);
                if (this.y) {
                    boolean z5 = arrayList.size() == arrayListI.size() ? 1 : i2;
                    Locale locale = Locale.US;
                    Preconditions.p(fc.f(arrayList.size(), arrayListI.size(), "The number of auxiliary track types from metadata (", ") is not same as the number of auxiliary tracks (", ")"), z5);
                }
                String strA = MimeTypeResolver.a(arrayListI);
                int i17 = i2;
                int i18 = i17;
                long j5 = -9223372036854775807L;
                int size = -1;
                while (i17 < arrayListI.size()) {
                    TrackSampleTable trackSampleTable = (TrackSampleTable) arrayListI.get(i17);
                    int i19 = trackSampleTable.f16614b;
                    ArrayDeque arrayDeque3 = arrayDeque2;
                    long[] jArr2 = trackSampleTable.f16617f;
                    Track track = trackSampleTable.f16613a;
                    if (i19 == 0) {
                        arrayList = arrayList;
                        str = strA;
                        i4 = i17;
                        i3 = i18;
                        arrayList3 = arrayList6;
                        metadata3 = metadata6;
                        metadata4 = metadata5;
                        gaplessInfoHolder = gaplessInfoHolder2;
                    } else {
                        str = strA;
                        ExtractorOutput extractorOutput = this.B;
                        i3 = i18 + 1;
                        int i20 = track.f16592b;
                        ArrayList arrayList7 = arrayList6;
                        Format format = track.g;
                        Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, extractorOutput.r(i18, i20));
                        GaplessInfoHolder gaplessInfoHolder3 = gaplessInfoHolder2;
                        long j6 = track.f16594e;
                        if (j6 == -9223372036854775807L) {
                            j6 = trackSampleTable.f16619i;
                        }
                        TrackOutput trackOutput = mp4Track.f16577c;
                        trackOutput.e(j6);
                        long jMax = Math.max(j5, j6);
                        String str2 = format.o;
                        String str3 = format.o;
                        boolean zEquals = "audio/true-hd".equals(str2);
                        int i21 = trackSampleTable.f16616e;
                        int i22 = zEquals ? i21 * 16 : i21 + 30;
                        Format.Builder builderA = format.a();
                        builderA.o = i22;
                        if (i20 == 2) {
                            int i23 = format.f13759f;
                            if ((i12 & 8) != 0) {
                                i23 |= size == -1 ? 1 : 2;
                            }
                            int i24 = i23;
                            if (this.y) {
                                i9 = i24 | 32768;
                                builderA.g = ((Integer) arrayList.get(i17)).intValue();
                            } else {
                                i9 = i24;
                            }
                            builderA.f13768f = i9;
                        } else {
                            arrayList = arrayList;
                        }
                        int[] iArr = trackSampleTable.f16618h;
                        boolean z6 = trackSampleTable.f16620j;
                        if (MimeTypes.o(str3)) {
                            i4 = i17;
                            if (jArr2.length > 0) {
                                int iMin = Math.min(z6 ? trackSampleTable.f16614b : iArr.length, 20);
                                Preconditions.q(j6 != -9223372036854775807L ? 1 : i2);
                                long jMin = Math.min(j6, 10000000L);
                                int i25 = i2;
                                int i26 = i25;
                                int i27 = -1;
                                while (i25 < iMin) {
                                    int i28 = z6 ? i25 : iArr[i25];
                                    long j7 = jArr2[i28];
                                    if (j7 > jMin) {
                                        break;
                                    }
                                    if (j7 >= 0) {
                                        i8 = iMin;
                                        int i29 = trackSampleTable.d[i28];
                                        if (i29 > i26) {
                                            i26 = i29;
                                            i27 = i28;
                                        }
                                    } else {
                                        i8 = iMin;
                                    }
                                    i25++;
                                    iMin = i8;
                                }
                                if (i27 != -1) {
                                    j3 = jArr2[i27];
                                }
                            }
                            if (j3 != -9223372036854775807L) {
                                ThumbnailMetadata thumbnailMetadata = new ThumbnailMetadata(j3);
                                i5 = 1;
                                Metadata.Entry[] entryArr4 = new Metadata.Entry[1];
                                entryArr4[i2] = thumbnailMetadata;
                                metadata = new Metadata(entryArr4);
                            } else {
                                i5 = 1;
                                metadata = null;
                            }
                            if (i20 == i5) {
                                i6 = gaplessInfoHolder.f16165a;
                                if (i6 != -1 && (i7 = gaplessInfoHolder.f16166b) != -1) {
                                    gaplessInfoHolder = gaplessInfoHolder3;
                                    builderA.I = i6;
                                    builderA.J = i7;
                                }
                            } else {
                                gaplessInfoHolder = gaplessInfoHolder3;
                            }
                            gaplessInfoHolder = gaplessInfoHolder3;
                            gaplessInfoHolder = gaplessInfoHolder3;
                            Metadata metadata7 = format.l;
                            arrayList2 = this.f16570j;
                            if (arrayList2.isEmpty()) {
                                metadata2 = null;
                            } else {
                                metadata2 = new Metadata(arrayList2);
                            }
                            metadata3 = metadata6;
                            metadata4 = metadata5;
                            MetadataUtil.f(i20, metadataE, builderA, metadata7, metadata2, metadata3, metadata4, metadata);
                            builderA.m = MimeTypes.p(str);
                            if (Objects.equals(str3, "audio/mpeg")) {
                                mp4Track.f16579f = new Format(builderA);
                            } else {
                                d21.w(builderA, trackOutput);
                            }
                            if (i20 == 2 && size == -1) {
                                size = arrayList7.size();
                            }
                            arrayList3 = arrayList7;
                            arrayList3.add(mp4Track);
                            j5 = jMax;
                        } else {
                            i4 = i17;
                        }
                        j3 = -9223372036854775807L;
                        if (j3 != -9223372036854775807L) {
                            ThumbnailMetadata thumbnailMetadata2 = new ThumbnailMetadata(j3);
                            i5 = 1;
                            Metadata.Entry[] entryArr5 = new Metadata.Entry[1];
                            entryArr5[i2] = thumbnailMetadata2;
                            metadata = new Metadata(entryArr5);
                        } else {
                            i5 = 1;
                            metadata = null;
                        }
                        if (i20 == i5) {
                            i6 = gaplessInfoHolder.f16165a;
                            if (i6 != -1) {
                                gaplessInfoHolder = gaplessInfoHolder3;
                                builderA.I = i6;
                                builderA.J = i7;
                            }
                        } else {
                            gaplessInfoHolder = gaplessInfoHolder3;
                        }
                        gaplessInfoHolder = gaplessInfoHolder3;
                        gaplessInfoHolder = gaplessInfoHolder3;
                        Metadata metadata8 = format.l;
                        arrayList2 = this.f16570j;
                        if (arrayList2.isEmpty()) {
                            metadata2 = null;
                        } else {
                            metadata2 = new Metadata(arrayList2);
                        }
                        metadata3 = metadata6;
                        metadata4 = metadata5;
                        MetadataUtil.f(i20, metadataE, builderA, metadata8, metadata2, metadata3, metadata4, metadata);
                        builderA.m = MimeTypes.p(str);
                        if (Objects.equals(str3, "audio/mpeg")) {
                            mp4Track.f16579f = new Format(builderA);
                        } else {
                            d21.w(builderA, trackOutput);
                        }
                        if (i20 == 2) {
                            size = arrayList7.size();
                        }
                        arrayList3 = arrayList7;
                        arrayList3.add(mp4Track);
                        j5 = jMax;
                    }
                    arrayList6 = arrayList3;
                    metadata6 = metadata3;
                    metadata5 = metadata4;
                    gaplessInfoHolder2 = gaplessInfoHolder;
                    arrayDeque2 = arrayDeque3;
                    arrayListI = arrayListI;
                    strA = str;
                    i18 = i3;
                    z3 = z3;
                    arrayList = arrayList;
                    i17 = i4 + 1;
                }
                arrayDeque = arrayDeque2;
                z = z3;
                int i30 = -1;
                boolean z7 = true;
                Mp4Track[] mp4TrackArr = (Mp4Track[]) arrayList6.toArray(new Mp4Track[i2]);
                this.C = mp4TrackArr;
                if (z) {
                    jArr = null;
                } else {
                    jArr = new long[mp4TrackArr.length][];
                    int[] iArr2 = new int[mp4TrackArr.length];
                    long[] jArr3 = new long[mp4TrackArr.length];
                    boolean[] zArr = new boolean[mp4TrackArr.length];
                    for (int i31 = 0; i31 < mp4TrackArr.length; i31++) {
                        jArr[i31] = new long[mp4TrackArr[i31].f16576b.f16614b];
                        jArr3[i31] = mp4TrackArr[i31].f16576b.f16617f[0];
                    }
                    int i32 = 0;
                    while (i32 < mp4TrackArr.length) {
                        long j8 = Long.MAX_VALUE;
                        int i33 = i30;
                        for (int i34 = 0; i34 < mp4TrackArr.length; i34++) {
                            if (!zArr[i34]) {
                                long j9 = jArr3[i34];
                                if (j9 <= j8) {
                                    i33 = i34;
                                    j8 = j9;
                                }
                            }
                        }
                        int i35 = iArr2[i33];
                        long[] jArr4 = jArr[i33];
                        jArr4[i35] = j4;
                        TrackSampleTable trackSampleTable2 = mp4TrackArr[i33].f16576b;
                        boolean z8 = z7;
                        int i36 = i32;
                        j4 += (long) trackSampleTable2.d[i35];
                        int i37 = i35 + 1;
                        iArr2[i33] = i37;
                        if (i37 < jArr4.length) {
                            jArr3[i33] = trackSampleTable2.f16617f[i37];
                            i32 = i36;
                        } else {
                            zArr[i33] = z8;
                            i32 = i36 + 1;
                        }
                        z7 = z8;
                        i30 = -1;
                    }
                }
                z2 = z7;
                this.D = jArr;
                this.B.n();
                this.B.j(new Mp4SeekMap(j5, this.C, size));
                arrayDeque.clear();
                this.z = z2;
                if (this.w) {
                }
            } else if (!arrayDeque2.isEmpty()) {
                ((Mp4Box.ContainerBox) arrayDeque2.peek()).d.add(containerBox);
            }
        }
        if (this.l != 2) {
            this.l = 0;
            this.o = 0;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public Mp4Extractor(SubtitleParser.Factory factory) {
        this(factory, 0);
    }

    @Deprecated
    public Mp4Extractor(int i2) {
        this(SubtitleParser.Factory.f16683a, i2);
    }

    @Deprecated
    public Mp4Extractor() {
        this(SubtitleParser.Factory.f16683a, 16);
    }
}
