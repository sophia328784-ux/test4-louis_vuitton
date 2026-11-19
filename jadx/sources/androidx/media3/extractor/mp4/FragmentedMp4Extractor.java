package androidx.media3.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ChunkIndexMerger;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.metadata.emsg.EventMessageEncoder;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.a;
import defpackage.fc;
import defpackage.fw;
import defpackage.uh;
import defpackage.x1;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class FragmentedMp4Extractor implements Extractor {
    public static final byte[] P = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final Format Q;
    public long A;
    public long B;
    public long C;
    public TrackBundle D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public boolean I;
    public ExtractorOutput J;
    public TrackOutput[] K;
    public TrackOutput[] L;
    public boolean M;
    public boolean N;
    public long O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SubtitleParser.Factory f16539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Track f16541c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseArray f16542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ParsableByteArray f16543f;
    public final ParsableByteArray g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f16544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f16545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ParsableByteArray f16546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TimestampAdjuster f16547k;
    public final EventMessageEncoder l;
    public final ParsableByteArray m;
    public final ArrayDeque n;
    public final ArrayDeque o;
    public final ReorderingBufferQueue p;
    public final TrackOutput q;
    public final ChunkIndexMerger r;
    public ImmutableList s;
    public int t;
    public int u;
    public long v;
    public int w;
    public ParsableByteArray x;
    public long y;
    public int z;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public static final class MetadataSampleInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16550c;

        public MetadataSampleInfo(long j2, boolean z, int i2) {
            this.f16548a = j2;
            this.f16549b = z;
            this.f16550c = i2;
        }
    }

    public static final class TrackBundle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackOutput f16551a;
        public TrackSampleTable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public DefaultSampleValues f16554e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16555f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16556h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16557i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Format f16558j;
        public boolean m;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackFragment f16552b = new TrackFragment();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ParsableByteArray f16553c = new ParsableByteArray();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ParsableByteArray f16559k = new ParsableByteArray(1);
        public final ParsableByteArray l = new ParsableByteArray();

        public TrackBundle(TrackOutput trackOutput, TrackSampleTable trackSampleTable, DefaultSampleValues defaultSampleValues, Format format) {
            this.f16551a = trackOutput;
            this.d = trackSampleTable;
            this.f16554e = defaultSampleValues;
            this.f16558j = format;
            this.d = trackSampleTable;
            this.f16554e = defaultSampleValues;
            trackOutput.b(format);
            e();
        }

        public final int a() {
            int i2;
            if (this.m) {
                i2 = this.f16552b.f16611j[this.f16555f] ? 1 : 0;
            } else {
                i2 = this.d.g[this.f16555f];
            }
            return b() != null ? 1073741824 | i2 : i2;
        }

        public final TrackEncryptionBox b() {
            if (this.m) {
                TrackFragment trackFragment = this.f16552b;
                DefaultSampleValues defaultSampleValues = trackFragment.f16604a;
                String str = Util.f14242a;
                int i2 = defaultSampleValues.f16536a;
                TrackEncryptionBox trackEncryptionBox = trackFragment.m;
                if (trackEncryptionBox == null) {
                    TrackEncryptionBox[] trackEncryptionBoxArr = this.d.f16613a.l;
                    trackEncryptionBox = trackEncryptionBoxArr == null ? null : trackEncryptionBoxArr[i2];
                }
                if (trackEncryptionBox != null && trackEncryptionBox.f16600a) {
                    return trackEncryptionBox;
                }
            }
            return null;
        }

        public final boolean c() {
            this.f16555f++;
            if (!this.m) {
                return false;
            }
            int i2 = this.g + 1;
            this.g = i2;
            int[] iArr = this.f16552b.g;
            int i3 = this.f16556h;
            if (i2 != iArr[i3]) {
                return true;
            }
            this.f16556h = i3 + 1;
            this.g = 0;
            return false;
        }

        public final int d(int i2, int i3) {
            ParsableByteArray parsableByteArray;
            TrackEncryptionBox trackEncryptionBoxB = b();
            if (trackEncryptionBoxB == null) {
                return 0;
            }
            int length = trackEncryptionBoxB.d;
            TrackFragment trackFragment = this.f16552b;
            if (length != 0) {
                parsableByteArray = trackFragment.n;
            } else {
                byte[] bArr = trackEncryptionBoxB.f16603e;
                String str = Util.f14242a;
                int length2 = bArr.length;
                ParsableByteArray parsableByteArray2 = this.l;
                parsableByteArray2.L(length2, bArr);
                length = bArr.length;
                parsableByteArray = parsableByteArray2;
            }
            boolean z = trackFragment.f16612k && trackFragment.l[this.f16555f];
            boolean z2 = z || i3 != 0;
            ParsableByteArray parsableByteArray3 = this.f16559k;
            parsableByteArray3.f14194a[0] = (byte) ((z2 ? 128 : 0) | length);
            parsableByteArray3.N(0);
            TrackOutput trackOutput = this.f16551a;
            trackOutput.a(parsableByteArray3, 1, 1);
            trackOutput.a(parsableByteArray, length, 1);
            if (!z2) {
                return length + 1;
            }
            ParsableByteArray parsableByteArray4 = this.f16553c;
            if (!z) {
                parsableByteArray4.K(8);
                byte[] bArr2 = parsableByteArray4.f14194a;
                bArr2[0] = 0;
                bArr2[1] = 1;
                bArr2[2] = 0;
                bArr2[3] = (byte) (i3 & 255);
                bArr2[4] = (byte) ((i2 >> 24) & 255);
                bArr2[5] = (byte) ((i2 >> 16) & 255);
                bArr2[6] = (byte) ((i2 >> 8) & 255);
                bArr2[7] = (byte) (i2 & 255);
                trackOutput.a(parsableByteArray4, 8, 1);
                return length + 9;
            }
            ParsableByteArray parsableByteArray5 = trackFragment.n;
            int iH = parsableByteArray5.H();
            parsableByteArray5.O(-2);
            int i4 = (iH * 6) + 2;
            if (i3 != 0) {
                parsableByteArray4.K(i4);
                byte[] bArr3 = parsableByteArray4.f14194a;
                parsableByteArray5.k(0, i4, bArr3);
                int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i3;
                bArr3[2] = (byte) ((i5 >> 8) & 255);
                bArr3[3] = (byte) (i5 & 255);
            } else {
                parsableByteArray4 = parsableByteArray5;
            }
            trackOutput.a(parsableByteArray4, i4, 1);
            return length + 1 + i4;
        }

        public final void e() {
            TrackFragment trackFragment = this.f16552b;
            trackFragment.d = 0;
            trackFragment.p = 0L;
            trackFragment.q = false;
            trackFragment.f16612k = false;
            trackFragment.o = false;
            trackFragment.m = null;
            this.f16555f = 0;
            this.f16556h = 0;
            this.g = 0;
            this.f16557i = 0;
            this.m = false;
        }
    }

    static {
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.p("application/x-emsg");
        Q = new Format(builder);
    }

    public FragmentedMp4Extractor(SubtitleParser.Factory factory, int i2, TimestampAdjuster timestampAdjuster, Track track, List<Format> list, TrackOutput trackOutput) {
        this.f16539a = factory;
        this.f16540b = i2;
        this.f16547k = timestampAdjuster;
        this.f16541c = track;
        this.d = Collections.unmodifiableList(list);
        this.q = trackOutput;
        this.l = new EventMessageEncoder();
        this.m = new ParsableByteArray(16);
        this.f16543f = new ParsableByteArray(NalUnitUtil.f14286a);
        this.g = new ParsableByteArray(6);
        this.f16544h = new ParsableByteArray();
        byte[] bArr = new byte[16];
        this.f16545i = bArr;
        this.f16546j = new ParsableByteArray(bArr);
        this.n = new ArrayDeque();
        this.o = new ArrayDeque();
        this.f16542e = new SparseArray();
        this.s = ImmutableList.x();
        this.B = -9223372036854775807L;
        this.A = -9223372036854775807L;
        this.C = -9223372036854775807L;
        this.J = ExtractorOutput.g0;
        this.K = new TrackOutput[0];
        this.L = new TrackOutput[0];
        this.p = new ReorderingBufferQueue(new fw(this, 4));
        this.r = new ChunkIndexMerger();
        this.O = -1L;
    }

    public static DrmInitData h(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            Mp4Box.LeafBox leafBox = (Mp4Box.LeafBox) list.get(i2);
            if (leafBox.f14277a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = leafBox.f14280b.f14194a;
                PsshAtomUtil.PsshAtom psshAtomB = PsshAtomUtil.b(bArr);
                UUID uuid = psshAtomB == null ? null : psshAtomB.f16581a;
                if (uuid == null) {
                    Log.g("Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuid, "video/mp4", bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    public static void i(ParsableByteArray parsableByteArray, int i2, TrackFragment trackFragment) throws ParserException {
        parsableByteArray.N(i2 + 8);
        int iM = parsableByteArray.m();
        byte[] bArr = BoxParser.f16500a;
        if ((iM & 1) != 0) {
            throw ParserException.c("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iM & 2) != 0;
        int iE = parsableByteArray.E();
        if (iE == 0) {
            Arrays.fill(trackFragment.l, 0, trackFragment.f16607e, false);
            return;
        }
        int i3 = trackFragment.f16607e;
        ParsableByteArray parsableByteArray2 = trackFragment.n;
        if (iE != i3) {
            StringBuilder sbQ = fc.q(iE, "Senc sample count ", " is different from fragment sample count");
            sbQ.append(trackFragment.f16607e);
            throw ParserException.a(null, sbQ.toString());
        }
        Arrays.fill(trackFragment.l, 0, iE, z);
        parsableByteArray2.K(parsableByteArray.a());
        trackFragment.f16612k = true;
        trackFragment.o = true;
        parsableByteArray.k(0, parsableByteArray2.f14196c, parsableByteArray2.f14194a);
        parsableByteArray2.N(0);
        trackFragment.o = false;
    }

    public static Pair j(long j2, ParsableByteArray parsableByteArray) throws ParserException {
        long jG;
        long jG2;
        ParsableByteArray parsableByteArray2 = parsableByteArray;
        parsableByteArray2.N(8);
        int iD = BoxParser.d(parsableByteArray2.m());
        parsableByteArray2.O(4);
        long jC = parsableByteArray2.C();
        if (iD == 0) {
            jG = parsableByteArray2.C();
            jG2 = parsableByteArray2.C();
        } else {
            jG = parsableByteArray2.G();
            jG2 = parsableByteArray2.G();
        }
        long j3 = jG2 + j2;
        String str = Util.f14242a;
        long jZ = Util.Z(jG, 1000000L, jC, RoundingMode.DOWN);
        parsableByteArray2.O(2);
        int iH = parsableByteArray2.H();
        int[] iArr = new int[iH];
        long[] jArr = new long[iH];
        long[] jArr2 = new long[iH];
        long[] jArr3 = new long[iH];
        long j4 = j3;
        long j5 = jZ;
        int i2 = 0;
        while (i2 < iH) {
            int iM = parsableByteArray2.m();
            if ((Integer.MIN_VALUE & iM) != 0) {
                throw ParserException.a(null, "Unhandled indirect reference");
            }
            long jC2 = parsableByteArray2.C();
            iArr[i2] = iM & Integer.MAX_VALUE;
            jArr[i2] = j4;
            jArr3[i2] = j5;
            jG += jC2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            long jZ2 = Util.Z(jG, 1000000L, jC, RoundingMode.DOWN);
            jArr4[i2] = jZ2 - jArr5[i2];
            parsableByteArray2.O(4);
            j4 += (long) iArr[i2];
            i2++;
            iH = iH;
            parsableByteArray2 = parsableByteArray;
            j5 = jZ2;
            jArr2 = jArr4;
            jArr3 = jArr5;
        }
        return Pair.create(Long.valueOf(jZ), new ChunkIndex(iArr, jArr, jArr2, jArr3));
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        SparseArray sparseArray = this.f16542e;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((TrackBundle) sparseArray.valueAt(i2)).e();
        }
        this.o.clear();
        this.z = 0;
        this.p.d.clear();
        this.A = j3;
        this.n.clear();
        g();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b8  */
    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        int i2;
        String str;
        int i3 = this.f16540b;
        this.J = (i3 & 32) == 0 ? new SubtitleTranscodingExtractorOutput(extractorOutput, this.f16539a) : extractorOutput;
        g();
        TrackOutput[] trackOutputArr = new TrackOutput[2];
        this.K = trackOutputArr;
        TrackOutput trackOutput = this.q;
        if (trackOutput != null) {
            trackOutputArr[0] = trackOutput;
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i4 = 100;
        if ((i3 & 4) != 0) {
            trackOutputArr[i2] = this.J.r(100, 5);
            i4 = 101;
            i2++;
        }
        TrackOutput[] trackOutputArr2 = (TrackOutput[]) Util.T(i2, this.K);
        this.K = trackOutputArr2;
        for (TrackOutput trackOutput2 : trackOutputArr2) {
            trackOutput2.b(Q);
        }
        List list = this.d;
        this.L = new TrackOutput[list.size()];
        int i5 = 0;
        while (i5 < this.L.length) {
            TrackOutput trackOutputR = this.J.r(i4, 3);
            trackOutputR.b((Format) list.get(i5));
            this.L[i5] = trackOutputR;
            i5++;
            i4++;
        }
        Track track = this.f16541c;
        if (track != null) {
            Format format = track.g;
            Format.Builder builderA = format.a();
            String str2 = format.o;
            if (MimeTypes.o(str2)) {
                str = "video/mp4";
            } else if (MimeTypes.k(str2)) {
                str = "audio/mp4";
            } else if (!MimeTypes.m(str2)) {
                str = "application/mp4";
            } else if (Objects.equals(str2, "image/heic")) {
                str = "image/heif";
            } else if (Objects.equals(str2, "image/avif")) {
                str = "image/avif";
            } else {
                str = "application/mp4";
            }
            builderA.m = MimeTypes.p(str);
            this.f16542e.put(0, new TrackBundle(this.J.r(0, track.f16592b), new TrackSampleTable(this.f16541c, new long[0], new int[0], 0, new long[0], new int[0], new int[0], false, 0L, 0), new DefaultSampleValues(0, 0, 0, 0), new Format(builderA)));
            this.J.n();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        SniffFailure sniffFailureB = Sniffer.b(extractorInput, true, false);
        this.s = sniffFailureB != null ? ImmutableList.A(sniffFailureB) : ImmutableList.x();
        return sniffFailureB == null;
    }

    @Override // androidx.media3.extractor.Extractor
    public final List e() {
        return this.s;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:107:0x0201  */
    /* JADX WARN: Code duplicated, block: B:118:0x0241  */
    /* JADX WARN: Code duplicated, block: B:141:0x028b  */
    /* JADX WARN: Code duplicated, block: B:142:0x028d  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        ReorderingBufferQueue reorderingBufferQueue;
        ParsableByteArray parsableByteArray;
        ArrayDeque arrayDeque;
        int i2;
        TimestampAdjuster timestampAdjuster;
        TrackBundle trackBundle;
        int i3;
        int i4;
        int i5;
        TrackBundle trackBundle2;
        int i6;
        int iC;
        int i7;
        boolean z;
        String strC;
        byte b2;
        int i8;
        long j2;
        long jA;
        long jC;
        String str;
        String str2;
        long j3;
        int i9;
        while (true) {
            int i10 = this.t;
            ArrayDeque arrayDeque2 = this.n;
            reorderingBufferQueue = this.p;
            parsableByteArray = this.f16546j;
            ChunkIndexMerger chunkIndexMerger = this.r;
            SparseArray sparseArray = this.f16542e;
            int i11 = 1;
            if (i10 != 0) {
                arrayDeque = this.o;
                i2 = this.f16540b;
                timestampAdjuster = this.f16547k;
                if (i10 != 1) {
                    long j4 = Long.MAX_VALUE;
                    if (i10 != 2) {
                        trackBundle = this.D;
                        if (trackBundle != null) {
                            i3 = 1;
                            i4 = 8;
                            i5 = 0;
                            break;
                        }
                        int size = sparseArray.size();
                        TrackBundle trackBundle3 = null;
                        int i12 = 0;
                        while (i12 < size) {
                            TrackBundle trackBundle4 = (TrackBundle) sparseArray.valueAt(i12);
                            boolean z2 = trackBundle4.m;
                            int i13 = i11;
                            TrackFragment trackFragment = trackBundle4.f16552b;
                            if ((z2 || trackBundle4.f16555f != trackBundle4.d.f16614b) && (!z2 || trackBundle4.f16556h != trackFragment.d)) {
                                long j5 = !z2 ? trackBundle4.d.f16615c[trackBundle4.f16555f] : trackFragment.f16608f[trackBundle4.f16556h];
                                if (j5 < j4) {
                                    j4 = j5;
                                    trackBundle3 = trackBundle4;
                                }
                            }
                            i12++;
                            i11 = i13;
                        }
                        i3 = i11;
                        i4 = 8;
                        i5 = 0;
                        if (trackBundle3 != null) {
                            int position = (int) ((!trackBundle3.m ? trackBundle3.d.f16615c[trackBundle3.f16555f] : trackBundle3.f16552b.f16608f[trackBundle3.f16556h]) - extractorInput.getPosition());
                            if (position < 0) {
                                Log.g("Ignoring negative offset to sample data.");
                                position = 0;
                            }
                            extractorInput.m(position);
                            this.D = trackBundle3;
                            trackBundle = trackBundle3;
                            break;
                        }
                        int position2 = (int) (this.y - extractorInput.getPosition());
                        if (position2 < 0) {
                            throw ParserException.a(null, "Offset to end of mdat was negative.");
                        }
                        extractorInput.m(position2);
                        g();
                    } else {
                        int size2 = sparseArray.size();
                        TrackBundle trackBundle5 = null;
                        for (int i14 = 0; i14 < size2; i14++) {
                            TrackFragment trackFragment2 = ((TrackBundle) sparseArray.valueAt(i14)).f16552b;
                            if (trackFragment2.o) {
                                long j6 = trackFragment2.f16606c;
                                if (j6 < j4) {
                                    trackBundle5 = (TrackBundle) sparseArray.valueAt(i14);
                                    j4 = j6;
                                }
                            }
                        }
                        if (trackBundle5 == null) {
                            this.t = 3;
                        } else {
                            int position3 = (int) (j4 - extractorInput.getPosition());
                            if (position3 < 0) {
                                throw ParserException.a(null, "Offset to encryption data was negative.");
                            }
                            extractorInput.m(position3);
                            TrackFragment trackFragment3 = trackBundle5.f16552b;
                            ParsableByteArray parsableByteArray2 = trackFragment3.n;
                            extractorInput.readFully(parsableByteArray2.f14194a, 0, parsableByteArray2.f14196c);
                            parsableByteArray2.N(0);
                            trackFragment3.o = false;
                        }
                    }
                } else {
                    int i15 = (int) (this.v - ((long) this.w));
                    ParsableByteArray parsableByteArray3 = this.x;
                    if (parsableByteArray3 != null) {
                        extractorInput.readFully(parsableByteArray3.f14194a, 8, i15);
                        Mp4Box.LeafBox leafBox = new Mp4Box.LeafBox(this.u, parsableByteArray3);
                        if (arrayDeque2.isEmpty()) {
                            int i16 = leafBox.f14277a;
                            ParsableByteArray parsableByteArray4 = leafBox.f14280b;
                            if (i16 == 1936286840) {
                                Pair pairJ = j(extractorInput.getPosition(), parsableByteArray4);
                                chunkIndexMerger.a((ChunkIndex) pairJ.second);
                                LinkedHashMap linkedHashMap = chunkIndexMerger.f16114a;
                                this.C = ((Long) pairJ.first).longValue();
                                if (this.N) {
                                    i9 = 1;
                                } else {
                                    i9 = 1;
                                    this.J.j(linkedHashMap.size() == 1 ? (SeekMap) pairJ.second : chunkIndexMerger.b());
                                    this.M = true;
                                }
                                if ((i2 & 256) != 0 && !this.N && linkedHashMap.size() > i9) {
                                    this.O = extractorInput.getPosition();
                                }
                            } else if (i16 == 1701671783 && this.K.length != 0) {
                                parsableByteArray4.N(8);
                                int iD = BoxParser.d(parsableByteArray4.m());
                                if (iD == 0) {
                                    String strV = parsableByteArray4.v();
                                    strV.getClass();
                                    String strV2 = parsableByteArray4.v();
                                    strV2.getClass();
                                    long jC2 = parsableByteArray4.C();
                                    long jC3 = parsableByteArray4.C();
                                    RoundingMode roundingMode = RoundingMode.DOWN;
                                    long jZ = Util.Z(jC3, 1000000L, jC2, roundingMode);
                                    long j7 = this.C;
                                    long j8 = j7 != -9223372036854775807L ? j7 + jZ : -9223372036854775807L;
                                    long jZ2 = Util.Z(parsableByteArray4.C(), 1000L, jC2, roundingMode);
                                    long j9 = j8;
                                    j2 = jZ;
                                    jA = j9;
                                    jC = parsableByteArray4.C();
                                    str = strV;
                                    str2 = strV2;
                                    j3 = jZ2;
                                } else if (iD != 1) {
                                    a.u(iD, "Skipping unsupported emsg version: ");
                                } else {
                                    long jC4 = parsableByteArray4.C();
                                    long jG = parsableByteArray4.G();
                                    RoundingMode roundingMode2 = RoundingMode.DOWN;
                                    jA = Util.Z(jG, 1000000L, jC4, roundingMode2);
                                    long jZ3 = Util.Z(parsableByteArray4.C(), 1000L, jC4, roundingMode2);
                                    long jC5 = parsableByteArray4.C();
                                    String strV3 = parsableByteArray4.v();
                                    strV3.getClass();
                                    String strV4 = parsableByteArray4.v();
                                    strV4.getClass();
                                    jC = jC5;
                                    str = strV3;
                                    str2 = strV4;
                                    j3 = jZ3;
                                    j2 = -9223372036854775807L;
                                }
                                byte[] bArr = new byte[parsableByteArray4.a()];
                                parsableByteArray4.k(0, parsableByteArray4.a(), bArr);
                                EventMessage eventMessage = new EventMessage(str, str2, j3, jC, bArr);
                                EventMessageEncoder eventMessageEncoder = this.l;
                                DataOutputStream dataOutputStream = eventMessageEncoder.f16344b;
                                ByteArrayOutputStream byteArrayOutputStream = eventMessageEncoder.f16343a;
                                byteArrayOutputStream.reset();
                                try {
                                    dataOutputStream.writeBytes(eventMessage.f16338a);
                                    dataOutputStream.writeByte(0);
                                    String str3 = eventMessage.f16339b;
                                    if (str3 == null) {
                                        str3 = "";
                                    }
                                    dataOutputStream.writeBytes(str3);
                                    dataOutputStream.writeByte(0);
                                    dataOutputStream.writeLong(eventMessage.f16340c);
                                    dataOutputStream.writeLong(eventMessage.d);
                                    dataOutputStream.write(eventMessage.f16341e);
                                    dataOutputStream.flush();
                                    ParsableByteArray parsableByteArray5 = new ParsableByteArray(byteArrayOutputStream.toByteArray());
                                    int iA = parsableByteArray5.a();
                                    for (TrackOutput trackOutput : this.K) {
                                        parsableByteArray5.N(0);
                                        trackOutput.f(iA, parsableByteArray5);
                                    }
                                    if (jA == -9223372036854775807L) {
                                        arrayDeque.addLast(new MetadataSampleInfo(j2, true, iA));
                                        this.z += iA;
                                    } else if (!arrayDeque.isEmpty()) {
                                        arrayDeque.addLast(new MetadataSampleInfo(jA, false, iA));
                                        this.z += iA;
                                    } else if (timestampAdjuster == null || timestampAdjuster.e()) {
                                        if (timestampAdjuster != null) {
                                            jA = timestampAdjuster.a(jA);
                                        }
                                        long j10 = jA;
                                        for (TrackOutput trackOutput2 : this.K) {
                                            trackOutput2.g(j10, 1, iA, 0, null);
                                        }
                                    } else {
                                        arrayDeque.addLast(new MetadataSampleInfo(jA, false, iA));
                                        this.z += iA;
                                    }
                                } catch (IOException e2) {
                                    x1.m(e2);
                                    return 0;
                                }
                            }
                        } else {
                            ((Mp4Box.ContainerBox) arrayDeque2.peek()).f14279c.add(leafBox);
                        }
                    } else {
                        extractorInput.m(i15);
                    }
                    k(extractorInput.getPosition());
                }
            } else {
                int i17 = this.w;
                ParsableByteArray parsableByteArray6 = this.m;
                if (i17 == 0) {
                    if (!extractorInput.h(true, 0, 8, parsableByteArray6.f14194a)) {
                        long j11 = this.O;
                        if (j11 == -1) {
                            reorderingBufferQueue.b(0);
                            return -1;
                        }
                        positionHolder.f16190a = j11;
                        this.O = -1L;
                        this.J.j(chunkIndexMerger.b());
                        this.N = true;
                        return 1;
                    }
                    this.w = 8;
                    parsableByteArray6.N(0);
                    this.v = parsableByteArray6.C();
                    this.u = parsableByteArray6.m();
                }
                long j12 = this.v;
                if (j12 == 1) {
                    extractorInput.readFully(parsableByteArray6.f14194a, 8, 8);
                    this.w += 8;
                    this.v = parsableByteArray6.G();
                } else if (j12 == 0) {
                    long length = extractorInput.getLength();
                    if (length == -1 && !arrayDeque2.isEmpty()) {
                        length = ((Mp4Box.ContainerBox) arrayDeque2.peek()).f14278b;
                    }
                    if (length != -1) {
                        this.v = (length - extractorInput.getPosition()) + ((long) this.w);
                    }
                }
                long j13 = this.v;
                int i18 = this.w;
                long j14 = i18;
                if (j13 < j14) {
                    if (this.u != 1718773093 || i18 != 8) {
                        throw ParserException.c("Atom size less than header length (unsupported).");
                    }
                    this.v = j14;
                }
                if (this.O != -1) {
                    int i19 = this.u;
                    long j15 = this.v;
                    if (i19 == 1936286840) {
                        parsableByteArray.K((int) j15);
                        System.arraycopy(parsableByteArray6.f14194a, 0, parsableByteArray.f14194a, 0, 8);
                        extractorInput.readFully(parsableByteArray.f14194a, 8, (int) (this.v - ((long) this.w)));
                        chunkIndexMerger.a((ChunkIndex) j(extractorInput.j(), new Mp4Box.LeafBox(1936286840, parsableByteArray).f14280b).second);
                    } else {
                        extractorInput.e((int) (j15 - j14), true);
                    }
                    g();
                } else {
                    long position4 = extractorInput.getPosition() - ((long) this.w);
                    int i20 = this.u;
                    if ((i20 == 1836019558 || i20 == 1835295092) && !this.M) {
                        this.J.j(new SeekMap.Unseekable(this.B, position4));
                        this.M = true;
                    }
                    if (this.u == 1836019558) {
                        int size3 = sparseArray.size();
                        for (int i21 = 0; i21 < size3; i21++) {
                            TrackFragment trackFragment4 = ((TrackBundle) sparseArray.valueAt(i21)).f16552b;
                            trackFragment4.getClass();
                            trackFragment4.f16606c = position4;
                            trackFragment4.f16605b = position4;
                        }
                    }
                    int i22 = this.u;
                    if (i22 == 1835295092) {
                        this.D = null;
                        this.y = position4 + this.v;
                        this.t = 2;
                    } else if (i22 == 1836019574 || i22 == 1953653099 || i22 == 1835297121 || i22 == 1835626086 || i22 == 1937007212 || i22 == 1836019558 || i22 == 1953653094 || i22 == 1836475768 || i22 == 1701082227 || i22 == 1835365473) {
                        long position5 = extractorInput.getPosition();
                        long j16 = this.v;
                        long j17 = (position5 + j16) - 8;
                        if (j16 != this.w && this.u == 1835365473) {
                            parsableByteArray.K(8);
                            extractorInput.b(0, 8, parsableByteArray.f14194a);
                            BoxParser.a(parsableByteArray);
                            extractorInput.m(parsableByteArray.f14195b);
                            extractorInput.g();
                        }
                        arrayDeque2.push(new Mp4Box.ContainerBox(this.u, j17));
                        if (this.v == this.w) {
                            k(j17);
                        } else {
                            g();
                        }
                    } else if (i22 == 1751411826 || i22 == 1835296868 || i22 == 1836476516 || i22 == 1936286840 || i22 == 1937011556 || i22 == 1937011827 || i22 == 1668576371 || i22 == 1937011555 || i22 == 1937011578 || i22 == 1937013298 || i22 == 1937007471 || i22 == 1668232756 || i22 == 1937011571 || i22 == 1952867444 || i22 == 1952868452 || i22 == 1953196132 || i22 == 1953654136 || i22 == 1953658222 || i22 == 1886614376 || i22 == 1935763834 || i22 == 1935763823 || i22 == 1936027235 || i22 == 1970628964 || i22 == 1935828848 || i22 == 1936158820 || i22 == 1701606260 || i22 == 1835362404 || i22 == 1701671783 || i22 == 1969517665 || i22 == 1801812339 || i22 == 1768715124) {
                        if (this.w != 8) {
                            throw ParserException.c("Leaf atom defines extended atom size (unsupported).");
                        }
                        if (this.v > 2147483647L) {
                            throw ParserException.c("Leaf atom with length > 2147483647 (unsupported).");
                        }
                        ParsableByteArray parsableByteArray7 = new ParsableByteArray((int) this.v);
                        System.arraycopy(parsableByteArray6.f14194a, 0, parsableByteArray7.f14194a, 0, 8);
                        this.x = parsableByteArray7;
                        this.t = 1;
                    } else {
                        if (this.v > 2147483647L) {
                            throw ParserException.c("Skipping atom with length > 2147483647 (unsupported).");
                        }
                        this.x = null;
                        this.t = 1;
                    }
                }
            }
        }
        TrackFragment trackFragment5 = trackBundle.f16552b;
        String str4 = "video/hevc";
        if (this.t == 3) {
            this.E = !trackBundle.m ? trackBundle.d.d[trackBundle.f16555f] : trackFragment5.f16609h[trackBundle.f16555f];
            Format format = trackBundle.d.f16613a.g;
            this.H = ((!Objects.equals(format.o, "video/avc") ? !(!Objects.equals(format.o, "video/hevc") || (i2 & 128) == 0) : (i2 & 64) != 0) ? i5 : i3) ^ 1;
            if (trackBundle.f16555f < trackBundle.f16557i) {
                extractorInput.m(this.E);
                TrackEncryptionBox trackEncryptionBoxB = trackBundle.b();
                if (trackEncryptionBoxB != null) {
                    ParsableByteArray parsableByteArray8 = trackFragment5.n;
                    int i23 = trackEncryptionBoxB.d;
                    if (i23 != 0) {
                        parsableByteArray8.O(i23);
                    }
                    int i24 = trackBundle.f16555f;
                    if (trackFragment5.f16612k && trackFragment5.l[i24]) {
                        parsableByteArray8.O(parsableByteArray8.H() * 6);
                    }
                }
                if (!trackBundle.c()) {
                    this.D = null;
                }
                this.t = 3;
                return i5;
            }
            if (trackBundle.d.f16613a.f16596h == i3) {
                this.E -= 8;
                extractorInput.m(i4);
            }
            boolean zEquals = "audio/ac4".equals(trackBundle.d.f16613a.g.o);
            int i25 = this.E;
            if (zEquals) {
                this.F = trackBundle.d(i25, 7);
                Ac4Util.a(this.E, parsableByteArray);
                trackBundle.f16551a.f(7, parsableByteArray);
                this.F += 7;
                i8 = i5;
            } else {
                i8 = i5;
                this.F = trackBundle.d(i25, i8);
            }
            this.E += this.F;
            this.t = 4;
            this.G = i8;
        }
        TrackSampleTable trackSampleTable = trackBundle.d;
        Track track = trackSampleTable.f16613a;
        TrackOutput trackOutput3 = trackBundle.f16551a;
        long jA2 = !trackBundle.m ? trackSampleTable.f16617f[trackBundle.f16555f] : trackFragment5.f16610i[trackBundle.f16555f];
        if (timestampAdjuster != null) {
            jA2 = timestampAdjuster.a(jA2);
        }
        int i26 = track.f16599k;
        Format format2 = track.g;
        if (i26 == 0) {
            trackBundle2 = trackBundle;
            while (true) {
                int i27 = this.F;
                int i28 = this.E;
                if (i27 >= i28) {
                    break;
                }
                this.F += trackOutput3.c(extractorInput, i28 - i27, false);
            }
        } else {
            ParsableByteArray parsableByteArray9 = this.g;
            byte[] bArr2 = parsableByteArray9.f14194a;
            bArr2[0] = 0;
            bArr2[1] = 0;
            bArr2[r13] = 0;
            int i29 = 4 - i26;
            trackBundle2 = trackBundle;
            while (true) {
                i26 = i26;
                if (this.F < this.E) {
                    int i30 = this.G;
                    if (i30 == 0) {
                        if (this.L.length > 0 || !this.H) {
                            int iE = NalUnitUtil.e(format2);
                            if (i26 + iE <= this.E - this.F) {
                                i7 = iE;
                            } else {
                                i7 = 0;
                            }
                        } else {
                            i7 = 0;
                        }
                        extractorInput.readFully(bArr2, i29, i26 + i7);
                        parsableByteArray9.N(0);
                        int iM = parsableByteArray9.m();
                        if (iM < 0) {
                            throw ParserException.a(null, "Invalid NAL length");
                        }
                        this.G = iM - i7;
                        ParsableByteArray parsableByteArray10 = this.f16543f;
                        i6 = i29;
                        parsableByteArray10.N(0);
                        trackOutput3.f(4, parsableByteArray10);
                        this.F += 4;
                        this.E += i6;
                        if (this.L.length > 0 && i7 > 0 && (strC = NalUnitUtil.c(format2)) != null) {
                            switch (strC.hashCode()) {
                                case -1662541442:
                                    if (strC.equals(str4)) {
                                        b2 = 0;
                                    } else {
                                        b2 = -1;
                                    }
                                    break;
                                case 1331836730:
                                    if (strC.equals("video/avc")) {
                                        b2 = 1;
                                    } else {
                                        b2 = -1;
                                    }
                                    break;
                                case 1331856911:
                                    if (strC.equals("video/vvc")) {
                                        b2 = 2;
                                    } else {
                                        b2 = -1;
                                    }
                                    break;
                                default:
                                    b2 = -1;
                                    break;
                            }
                            switch (b2) {
                                case 0:
                                    if (((bArr2[4] & 126) >> 1) == 39) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    break;
                                case 1:
                                    if ((bArr2[4] & 31) == 6) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    break;
                                case 2:
                                    if (((bArr2[5] & 248) >> 3) == 23) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    break;
                                default:
                                    z = false;
                                    break;
                            }
                        } else {
                            z = false;
                        }
                        this.I = z;
                        trackOutput3.f(i7, parsableByteArray9);
                        this.F += i7;
                        if (i7 > 0 && !this.H && NalUnitUtil.d(bArr2, i7, format2)) {
                            this.H = true;
                        }
                    } else {
                        i6 = i29;
                        if (this.I) {
                            ParsableByteArray parsableByteArray11 = this.f16544h;
                            parsableByteArray11.K(i30);
                            extractorInput.readFully(parsableByteArray11.f14194a, 0, this.G);
                            trackOutput3.f(this.G, parsableByteArray11);
                            int i31 = this.G;
                            int iM2 = NalUnitUtil.m(parsableByteArray11.f14196c, parsableByteArray11.f14194a);
                            parsableByteArray11.N(0);
                            parsableByteArray11.M(iM2);
                            int i32 = format2.q;
                            if (i32 == -1) {
                                if (reorderingBufferQueue.f14356e != 0) {
                                    reorderingBufferQueue.c(0);
                                }
                            } else if (reorderingBufferQueue.f14356e != i32) {
                                reorderingBufferQueue.c(i32);
                            }
                            reorderingBufferQueue.a(jA2, parsableByteArray11);
                            if ((trackBundle2.a() & 4) != 0) {
                                reorderingBufferQueue.b(0);
                            }
                            iC = i31;
                        } else {
                            iC = trackOutput3.c(extractorInput, i30, false);
                        }
                        this.F += iC;
                        this.G -= iC;
                        str4 = str4;
                    }
                    i29 = i6;
                }
            }
        }
        int iA2 = trackBundle2.a();
        if (!this.H) {
            iA2 |= 67108864;
        }
        int i33 = iA2;
        TrackEncryptionBox trackEncryptionBoxB2 = trackBundle2.b();
        long j18 = jA2;
        trackOutput3.g(j18, i33, this.E, 0, trackEncryptionBoxB2 != null ? trackEncryptionBoxB2.f16602c : null);
        while (!arrayDeque.isEmpty()) {
            MetadataSampleInfo metadataSampleInfo = (MetadataSampleInfo) arrayDeque.removeFirst();
            this.z -= metadataSampleInfo.f16550c;
            long jA3 = metadataSampleInfo.f16548a;
            if (metadataSampleInfo.f16549b) {
                jA3 += j18;
            }
            if (timestampAdjuster != null) {
                jA3 = timestampAdjuster.a(jA3);
            }
            long j19 = jA3;
            for (TrackOutput trackOutput4 : this.K) {
                trackOutput4.g(j19, 1, metadataSampleInfo.f16550c, this.z, null);
            }
        }
        if (!trackBundle2.c()) {
            this.D = null;
        }
        this.t = 3;
        return 0;
    }

    public final void g() {
        this.t = 0;
        this.w = 0;
    }

    /* JADX WARN: Code duplicated, block: B:173:0x0445  */
    /* JADX WARN: Code duplicated, block: B:286:0x0673  */
    public final void k(long j2) throws ParserException {
        Metadata metadata;
        int i2;
        long j3;
        DefaultSampleValues defaultSampleValues;
        int i3;
        DefaultSampleValues defaultSampleValues2;
        ArrayList arrayList;
        int i4;
        int i5;
        byte[] bArr;
        int i6;
        boolean z;
        while (true) {
            ArrayDeque arrayDeque = this.n;
            if (arrayDeque.isEmpty() || ((Mp4Box.ContainerBox) arrayDeque.peek()).f14278b != j2) {
                break;
            }
            Mp4Box.ContainerBox containerBox = (Mp4Box.ContainerBox) arrayDeque.pop();
            int i7 = containerBox.f14277a;
            ArrayList arrayList2 = containerBox.d;
            ArrayList arrayList3 = containerBox.f14279c;
            int i8 = this.f16540b;
            int i9 = 12;
            Track track = this.f16541c;
            SparseArray sparseArray = this.f16542e;
            if (i7 == 1836019574) {
                Preconditions.p("Unexpected moov box.", track == null);
                DrmInitData drmInitDataH = h(arrayList3);
                Mp4Box.ContainerBox containerBoxB = containerBox.b(1836475768);
                containerBoxB.getClass();
                ArrayList arrayList4 = containerBoxB.f14279c;
                SparseArray sparseArray2 = new SparseArray();
                int size = arrayList4.size();
                long jC = -9223372036854775807L;
                int i10 = 0;
                while (i10 < size) {
                    Mp4Box.LeafBox leafBox = (Mp4Box.LeafBox) arrayList4.get(i10);
                    int i11 = leafBox.f14277a;
                    ParsableByteArray parsableByteArray = leafBox.f14280b;
                    if (i11 == 1953654136) {
                        parsableByteArray.N(i9);
                        arrayList = arrayList4;
                        Pair pairCreate = Pair.create(Integer.valueOf(parsableByteArray.m()), new DefaultSampleValues(parsableByteArray.m() - 1, parsableByteArray.m(), parsableByteArray.m(), parsableByteArray.m()));
                        sparseArray2.put(((Integer) pairCreate.first).intValue(), (DefaultSampleValues) pairCreate.second);
                    } else {
                        arrayList = arrayList4;
                        if (i11 == 1835362404) {
                            parsableByteArray.N(8);
                            jC = BoxParser.d(parsableByteArray.m()) == 0 ? parsableByteArray.C() : parsableByteArray.G();
                        }
                    }
                    i10++;
                    arrayList4 = arrayList;
                    i9 = 12;
                }
                int i12 = 0;
                Mp4Box.ContainerBox containerBoxB2 = containerBox.b(1835365473);
                Metadata metadataE = containerBoxB2 != null ? BoxParser.e(containerBoxB2) : null;
                GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
                Mp4Box.LeafBox leafBoxC = containerBox.c(1969517665);
                if (leafBoxC != null) {
                    Metadata metadataJ = BoxParser.j(leafBoxC);
                    gaplessInfoHolder.b(metadataJ);
                    metadata = metadataJ;
                } else {
                    metadata = null;
                }
                Mp4Box.LeafBox leafBoxC2 = containerBox.c(1836476516);
                leafBoxC2.getClass();
                Metadata metadata2 = new Metadata(BoxParser.f(leafBoxC2.f14280b));
                ArrayList arrayListI = BoxParser.i(containerBox, gaplessInfoHolder, jC, drmInitDataH, (i8 & 16) != 0, false, new uh(this), false);
                int size2 = arrayListI.size();
                if (sparseArray.size() == 0) {
                    String strA = MimeTypeResolver.a(arrayListI);
                    int i13 = 0;
                    while (i13 < size2) {
                        TrackSampleTable trackSampleTable = (TrackSampleTable) arrayListI.get(i13);
                        Track track2 = trackSampleTable.f16613a;
                        ExtractorOutput extractorOutput = this.J;
                        int i14 = track2.f16592b;
                        int i15 = track2.f16591a;
                        String str = strA;
                        Format format = track2.g;
                        long j4 = track2.f16594e;
                        TrackOutput trackOutputR = extractorOutput.r(i13, i14);
                        trackOutputR.e(j4);
                        int i16 = i13;
                        Format.Builder builderA = format.a();
                        ArrayList arrayList5 = arrayListI;
                        builderA.m = MimeTypes.p(str);
                        if (i14 == 1) {
                            int i17 = gaplessInfoHolder.f16165a;
                            i2 = size2;
                            j3 = j4;
                            if (i17 != -1 && (i3 = gaplessInfoHolder.f16166b) != -1) {
                                builderA.I = i17;
                                builderA.J = i3;
                            }
                        } else {
                            i2 = size2;
                            j3 = j4;
                        }
                        MetadataUtil.f(i14, metadataE, builderA, format.l, metadata, metadata2);
                        if (sparseArray2.size() == 1) {
                            defaultSampleValues = (DefaultSampleValues) sparseArray2.valueAt(i12);
                        } else {
                            defaultSampleValues = (DefaultSampleValues) sparseArray2.get(i15);
                            defaultSampleValues.getClass();
                        }
                        sparseArray.put(i15, new TrackBundle(trackOutputR, trackSampleTable, defaultSampleValues, new Format(builderA)));
                        this.B = Math.max(this.B, j3);
                        i13 = i16 + 1;
                        strA = str;
                        arrayListI = arrayList5;
                        size2 = i2;
                        i12 = 0;
                    }
                    this.J.n();
                } else {
                    ArrayList arrayList6 = arrayListI;
                    Preconditions.q(sparseArray.size() == size2);
                    int i18 = 0;
                    while (i18 < size2) {
                        ArrayList arrayList7 = arrayList6;
                        TrackSampleTable trackSampleTable2 = (TrackSampleTable) arrayList7.get(i18);
                        Track track3 = trackSampleTable2.f16613a;
                        TrackBundle trackBundle = (TrackBundle) sparseArray.get(track3.f16591a);
                        int i19 = track3.f16591a;
                        if (sparseArray2.size() == 1) {
                            defaultSampleValues2 = (DefaultSampleValues) sparseArray2.valueAt(0);
                        } else {
                            defaultSampleValues2 = (DefaultSampleValues) sparseArray2.get(i19);
                            defaultSampleValues2.getClass();
                        }
                        trackBundle.d = trackSampleTable2;
                        trackBundle.f16554e = defaultSampleValues2;
                        trackBundle.f16551a.b(trackBundle.f16558j);
                        trackBundle.e();
                        i18++;
                        arrayList6 = arrayList7;
                    }
                }
            } else if (i7 == 1836019558) {
                boolean z2 = track != null;
                int size3 = arrayList2.size();
                int i20 = 0;
                while (i20 < size3) {
                    Mp4Box.ContainerBox containerBox2 = (Mp4Box.ContainerBox) arrayList2.get(i20);
                    if (containerBox2.f14277a == 1953653094) {
                        Mp4Box.LeafBox leafBoxC3 = containerBox2.c(1952868452);
                        ArrayList arrayList8 = containerBox2.f14279c;
                        leafBoxC3.getClass();
                        ParsableByteArray parsableByteArray2 = leafBoxC3.f14280b;
                        parsableByteArray2.N(8);
                        int iM = parsableByteArray2.m();
                        byte[] bArr2 = BoxParser.f16500a;
                        TrackBundle trackBundle2 = (TrackBundle) (z2 ? sparseArray.valueAt(0) : sparseArray.get(parsableByteArray2.m()));
                        if (trackBundle2 == null) {
                            size3 = size3;
                            i20 = i20;
                            arrayList2 = arrayList2;
                            arrayList3 = arrayList3;
                            trackBundle2 = null;
                        } else {
                            TrackFragment trackFragment = trackBundle2.f16552b;
                            if ((iM & 1) != 0) {
                                long jG = parsableByteArray2.G();
                                trackFragment.f16605b = jG;
                                trackFragment.f16606c = jG;
                            }
                            DefaultSampleValues defaultSampleValues3 = trackBundle2.f16554e;
                            trackFragment.f16604a = new DefaultSampleValues((iM & 2) != 0 ? parsableByteArray2.m() - 1 : defaultSampleValues3.f16536a, (iM & 8) != 0 ? parsableByteArray2.m() : defaultSampleValues3.f16537b, (iM & 16) != 0 ? parsableByteArray2.m() : defaultSampleValues3.f16538c, (iM & 32) != 0 ? parsableByteArray2.m() : defaultSampleValues3.d);
                        }
                        if (trackBundle2 != null) {
                            TrackFragment trackFragment2 = trackBundle2.f16552b;
                            long j5 = trackFragment2.p;
                            boolean z3 = trackFragment2.q;
                            trackBundle2.e();
                            trackBundle2.m = true;
                            Mp4Box.LeafBox leafBoxC4 = containerBox2.c(1952867444);
                            if (leafBoxC4 == null || (i8 & 2) != 0) {
                                trackFragment2.p = j5;
                                trackFragment2.q = z3;
                            } else {
                                ParsableByteArray parsableByteArray3 = leafBoxC4.f14280b;
                                parsableByteArray3.N(8);
                                trackFragment2.p = BoxParser.d(parsableByteArray3.m()) == 1 ? parsableByteArray3.G() : parsableByteArray3.C();
                                trackFragment2.q = true;
                            }
                            int size4 = arrayList8.size();
                            int i21 = 0;
                            int i22 = 0;
                            int i23 = 0;
                            while (true) {
                                i5 = 1953658222;
                                if (i21 >= size4) {
                                    break;
                                }
                                Mp4Box.LeafBox leafBox2 = (Mp4Box.LeafBox) arrayList8.get(i21);
                                int i24 = i21;
                                if (leafBox2.f14277a == 1953658222) {
                                    ParsableByteArray parsableByteArray4 = leafBox2.f14280b;
                                    parsableByteArray4.N(12);
                                    int iE = parsableByteArray4.E();
                                    if (iE > 0) {
                                        i23 += iE;
                                        i22++;
                                    }
                                }
                                i21 = i24 + 1;
                            }
                            trackBundle2.f16556h = 0;
                            trackBundle2.g = 0;
                            trackBundle2.f16555f = 0;
                            trackFragment2.d = i22;
                            trackFragment2.f16607e = i23;
                            if (trackFragment2.g.length < i22) {
                                trackFragment2.f16608f = new long[i22];
                                trackFragment2.g = new int[i22];
                            }
                            if (trackFragment2.f16609h.length < i23) {
                                int i25 = (i23 * 125) / 100;
                                trackFragment2.f16609h = new int[i25];
                                trackFragment2.f16610i = new long[i25];
                                trackFragment2.f16611j = new boolean[i25];
                                trackFragment2.l = new boolean[i25];
                            }
                            int i26 = 0;
                            int i27 = 0;
                            int i28 = 0;
                            while (true) {
                                long j6 = 0;
                                if (i26 >= size4) {
                                    i4 = i8;
                                    Track track4 = trackBundle2.d.f16613a;
                                    DefaultSampleValues defaultSampleValues4 = trackFragment2.f16604a;
                                    defaultSampleValues4.getClass();
                                    int i29 = defaultSampleValues4.f16536a;
                                    TrackEncryptionBox[] trackEncryptionBoxArr = track4.l;
                                    TrackEncryptionBox trackEncryptionBox = trackEncryptionBoxArr == null ? null : trackEncryptionBoxArr[i29];
                                    Mp4Box.LeafBox leafBoxC5 = containerBox2.c(1935763834);
                                    if (leafBoxC5 != null) {
                                        trackEncryptionBox.getClass();
                                        ParsableByteArray parsableByteArray5 = leafBoxC5.f14280b;
                                        int i30 = trackEncryptionBox.d;
                                        parsableByteArray5.N(8);
                                        int iM2 = parsableByteArray5.m();
                                        byte[] bArr3 = BoxParser.f16500a;
                                        if ((iM2 & 1) == 1) {
                                            parsableByteArray5.O(8);
                                        }
                                        int iA = parsableByteArray5.A();
                                        int iE2 = parsableByteArray5.E();
                                        if (iE2 > trackFragment2.f16607e) {
                                            StringBuilder sbQ = fc.q(iE2, "Saiz sample count ", " is greater than fragment sample count");
                                            sbQ.append(trackFragment2.f16607e);
                                            throw ParserException.a(null, sbQ.toString());
                                        }
                                        if (iA == 0) {
                                            boolean[] zArr = trackFragment2.l;
                                            i6 = 0;
                                            for (int i31 = 0; i31 < iE2; i31++) {
                                                int iA2 = parsableByteArray5.A();
                                                i6 += iA2;
                                                zArr[i31] = iA2 > i30;
                                            }
                                            z = false;
                                        } else {
                                            i6 = iA * iE2;
                                            z = false;
                                            Arrays.fill(trackFragment2.l, 0, iE2, iA > i30);
                                        }
                                        Arrays.fill(trackFragment2.l, iE2, trackFragment2.f16607e, z);
                                        if (i6 > 0) {
                                            trackFragment2.n.K(i6);
                                            trackFragment2.f16612k = true;
                                            trackFragment2.o = true;
                                        }
                                    }
                                    Mp4Box.LeafBox leafBoxC6 = containerBox2.c(1935763823);
                                    if (leafBoxC6 != null) {
                                        ParsableByteArray parsableByteArray6 = leafBoxC6.f14280b;
                                        parsableByteArray6.N(8);
                                        int iM3 = parsableByteArray6.m();
                                        byte[] bArr4 = BoxParser.f16500a;
                                        if ((iM3 & 1) == 1) {
                                            parsableByteArray6.O(8);
                                        }
                                        int iE3 = parsableByteArray6.E();
                                        if (iE3 != 1) {
                                            throw ParserException.a(null, "Unexpected saio entry count: " + iE3);
                                        }
                                        trackFragment2.f16606c += BoxParser.d(iM3) == 0 ? parsableByteArray6.C() : parsableByteArray6.G();
                                    }
                                    Mp4Box.LeafBox leafBoxC7 = containerBox2.c(1936027235);
                                    if (leafBoxC7 != null) {
                                        i(leafBoxC7.f14280b, 0, trackFragment2);
                                    }
                                    String str2 = trackEncryptionBox != null ? trackEncryptionBox.f16601b : null;
                                    ParsableByteArray parsableByteArray7 = null;
                                    ParsableByteArray parsableByteArray8 = null;
                                    for (int i32 = 0; i32 < arrayList8.size(); i32++) {
                                        Mp4Box.LeafBox leafBox3 = (Mp4Box.LeafBox) arrayList8.get(i32);
                                        ParsableByteArray parsableByteArray9 = leafBox3.f14280b;
                                        int i33 = leafBox3.f14277a;
                                        if (i33 == 1935828848) {
                                            parsableByteArray9.N(12);
                                            if (parsableByteArray9.m() == 1936025959) {
                                                parsableByteArray7 = parsableByteArray9;
                                            }
                                        } else if (i33 == 1936158820) {
                                            parsableByteArray9.N(12);
                                            if (parsableByteArray9.m() == 1936025959) {
                                                parsableByteArray8 = parsableByteArray9;
                                            }
                                        }
                                    }
                                    if (parsableByteArray7 != null && parsableByteArray8 != null) {
                                        parsableByteArray7.N(8);
                                        int iD = BoxParser.d(parsableByteArray7.m());
                                        parsableByteArray7.O(4);
                                        if (iD == 1) {
                                            parsableByteArray7.O(4);
                                        }
                                        if (parsableByteArray7.m() != 1) {
                                            throw ParserException.c("Entry count in sbgp != 1 (unsupported).");
                                        }
                                        parsableByteArray8.N(8);
                                        int iD2 = BoxParser.d(parsableByteArray8.m());
                                        parsableByteArray8.O(4);
                                        if (iD2 == 1) {
                                            if (parsableByteArray8.C() == 0) {
                                                throw ParserException.c("Variable length description in sgpd found (unsupported)");
                                            }
                                        } else if (iD2 >= 2) {
                                            parsableByteArray8.O(4);
                                        }
                                        if (parsableByteArray8.C() != 1) {
                                            throw ParserException.c("Entry count in sgpd != 1 (unsupported).");
                                        }
                                        parsableByteArray8.O(1);
                                        int iA3 = parsableByteArray8.A();
                                        int i34 = (iA3 & 240) >> 4;
                                        int i35 = iA3 & 15;
                                        boolean z4 = parsableByteArray8.A() == 1;
                                        if (z4) {
                                            int iA4 = parsableByteArray8.A();
                                            byte[] bArr5 = new byte[16];
                                            parsableByteArray8.k(0, 16, bArr5);
                                            if (iA4 == 0) {
                                                int iA5 = parsableByteArray8.A();
                                                byte[] bArr6 = new byte[iA5];
                                                parsableByteArray8.k(0, iA5, bArr6);
                                                bArr = bArr6;
                                            } else {
                                                bArr = null;
                                            }
                                            trackFragment2.f16612k = true;
                                            trackFragment2.m = new TrackEncryptionBox(z4, str2, iA4, bArr5, i34, i35, bArr);
                                        }
                                    }
                                    int size5 = arrayList8.size();
                                    for (int i36 = 0; i36 < size5; i36++) {
                                        Mp4Box.LeafBox leafBox4 = (Mp4Box.LeafBox) arrayList8.get(i36);
                                        if (leafBox4.f14277a == 1970628964) {
                                            ParsableByteArray parsableByteArray10 = leafBox4.f14280b;
                                            parsableByteArray10.N(8);
                                            byte[] bArr7 = this.f16545i;
                                            parsableByteArray10.k(0, 16, bArr7);
                                            if (Arrays.equals(bArr7, P)) {
                                                i(parsableByteArray10, 16, trackFragment2);
                                            }
                                        }
                                    }
                                    break;
                                }
                                Mp4Box.LeafBox leafBox5 = (Mp4Box.LeafBox) arrayList8.get(i26);
                                int i37 = size4;
                                if (leafBox5.f14277a == i5) {
                                    int i38 = i27 + 1;
                                    ParsableByteArray parsableByteArray11 = leafBox5.f14280b;
                                    parsableByteArray11.N(8);
                                    int iM4 = parsableByteArray11.m();
                                    byte[] bArr8 = BoxParser.f16500a;
                                    Track track5 = trackBundle2.d.f16613a;
                                    DefaultSampleValues defaultSampleValues5 = trackFragment2.f16604a;
                                    String str3 = Util.f14242a;
                                    int i39 = i27;
                                    trackFragment2.g[i39] = parsableByteArray11.E();
                                    long[] jArr = trackFragment2.f16608f;
                                    int i40 = i28;
                                    long j7 = trackFragment2.f16605b;
                                    jArr[i39] = j7;
                                    if ((iM4 & 1) != 0) {
                                        jArr[i39] = j7 + ((long) parsableByteArray11.m());
                                    }
                                    boolean z5 = (iM4 & 4) != 0;
                                    int iM5 = defaultSampleValues5.d;
                                    if (z5) {
                                        iM5 = parsableByteArray11.m();
                                    }
                                    boolean z6 = z5;
                                    boolean z7 = (iM4 & 256) != 0;
                                    boolean z8 = (iM4 & 512) != 0;
                                    boolean z9 = (iM4 & 1024) != 0;
                                    boolean z10 = (iM4 & 2048) != 0;
                                    boolean z11 = z9;
                                    long[] jArr2 = track5.f16597i;
                                    int i41 = iM5;
                                    long[] jArr3 = track5.f16598j;
                                    if (jArr2 != null && jArr2.length == 1 && jArr3 != null) {
                                        long j8 = jArr2[0];
                                        if (j8 == 0) {
                                            j6 = jArr3[0];
                                        } else {
                                            long j9 = track5.d;
                                            RoundingMode roundingMode = RoundingMode.DOWN;
                                            if (Util.Z(j8, 1000000L, j9, roundingMode) + Util.Z(jArr3[0], 1000000L, track5.f16593c, roundingMode) >= track5.f16594e) {
                                                j6 = jArr3[0];
                                            }
                                        }
                                    }
                                    int[] iArr = trackFragment2.f16609h;
                                    long[] jArr4 = trackFragment2.f16610i;
                                    boolean[] zArr2 = trackFragment2.f16611j;
                                    boolean z12 = track5.f16592b == 2 && (i8 & 1) != 0;
                                    i28 = i40 + trackFragment2.g[i39];
                                    boolean z13 = z10;
                                    long j10 = track5.f16593c;
                                    long j11 = trackFragment2.p;
                                    int i42 = i40;
                                    while (i42 < i28) {
                                        int iM6 = z7 ? parsableByteArray11.m() : defaultSampleValues5.f16537b;
                                        boolean z14 = z12;
                                        if (iM6 < 0) {
                                            throw ParserException.a(null, "Unexpected negative value: " + iM6);
                                        }
                                        int iM7 = z8 ? parsableByteArray11.m() : defaultSampleValues5.f16538c;
                                        if (iM7 < 0) {
                                            throw ParserException.a(null, "Unexpected negative value: " + iM7);
                                        }
                                        int iM8 = z11 ? parsableByteArray11.m() : (i42 == 0 && z6) ? i41 : defaultSampleValues5.d;
                                        long jZ = Util.Z((((long) (z13 ? parsableByteArray11.m() : 0)) + j11) - j6, 1000000L, j10, RoundingMode.DOWN);
                                        jArr4[i42] = jZ;
                                        if (!trackFragment2.q) {
                                            jArr4[i42] = jZ + trackBundle2.d.f16619i;
                                        }
                                        iArr[i42] = iM7;
                                        zArr2[i42] = ((iM8 >> 16) & 1) == 0 && (!z14 || i42 == 0);
                                        j11 += (long) iM6;
                                        i42++;
                                        z12 = z14;
                                        i28 = i28;
                                        defaultSampleValues5 = defaultSampleValues5;
                                    }
                                    trackFragment2.p = j11;
                                    i27 = i38;
                                }
                                i26++;
                                size4 = i37;
                                i8 = i8;
                                i5 = 1953658222;
                            }
                        } else {
                            i4 = i8;
                        }
                    } else {
                        size3 = size3;
                        i20 = i20;
                        arrayList2 = arrayList2;
                        arrayList3 = arrayList3;
                        i4 = i8;
                    }
                    i20++;
                    size3 = size3;
                    arrayList2 = arrayList2;
                    arrayList3 = arrayList3;
                    i8 = i4;
                }
                DrmInitData drmInitDataH2 = h(arrayList3);
                if (drmInitDataH2 != null) {
                    int size6 = sparseArray.size();
                    for (int i43 = 0; i43 < size6; i43++) {
                        TrackBundle trackBundle3 = (TrackBundle) sparseArray.valueAt(i43);
                        Track track6 = trackBundle3.d.f16613a;
                        DefaultSampleValues defaultSampleValues6 = trackBundle3.f16552b.f16604a;
                        String str4 = Util.f14242a;
                        int i44 = defaultSampleValues6.f16536a;
                        TrackEncryptionBox[] trackEncryptionBoxArr2 = track6.l;
                        TrackEncryptionBox trackEncryptionBox2 = trackEncryptionBoxArr2 == null ? null : trackEncryptionBoxArr2[i44];
                        DrmInitData drmInitDataA = drmInitDataH2.a(trackEncryptionBox2 != null ? trackEncryptionBox2.f16601b : null);
                        Format.Builder builderA2 = trackBundle3.f16558j.a();
                        builderA2.r = drmInitDataA;
                        trackBundle3.f16551a.b(new Format(builderA2));
                    }
                }
                if (this.A != -9223372036854775807L) {
                    int size7 = sparseArray.size();
                    for (int i45 = 0; i45 < size7; i45++) {
                        TrackBundle trackBundle4 = (TrackBundle) sparseArray.valueAt(i45);
                        long j12 = this.A;
                        int i46 = trackBundle4.f16555f;
                        while (true) {
                            TrackFragment trackFragment3 = trackBundle4.f16552b;
                            if (i46 >= trackFragment3.f16607e || trackFragment3.f16610i[i46] > j12) {
                                break;
                            }
                            if (trackFragment3.f16611j[i46]) {
                                trackBundle4.f16557i = i46;
                            }
                            i46++;
                        }
                    }
                    this.A = -9223372036854775807L;
                }
            } else if (!arrayDeque.isEmpty()) {
                ((Mp4Box.ContainerBox) arrayDeque.peek()).d.add(containerBox);
            }
        }
        g();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public FragmentedMp4Extractor(SubtitleParser.Factory factory) {
        this(factory, 0, null, null, ImmutableList.x(), null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public FragmentedMp4Extractor(int i2) {
        ImmutableList immutableListX = ImmutableList.x();
        this(SubtitleParser.Factory.f16683a, i2 | 32, null, null, immutableListX, null);
    }

    public FragmentedMp4Extractor(SubtitleParser.Factory factory, int i2) {
        this(factory, i2, null, null, ImmutableList.x(), null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public FragmentedMp4Extractor(int i2, TimestampAdjuster timestampAdjuster) {
        ImmutableList immutableListX = ImmutableList.x();
        this(SubtitleParser.Factory.f16683a, i2 | 32, timestampAdjuster, null, immutableListX, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public FragmentedMp4Extractor(int i2, TimestampAdjuster timestampAdjuster, Track track) {
        ImmutableList immutableListX = ImmutableList.x();
        this(SubtitleParser.Factory.f16683a, i2 | 32, timestampAdjuster, track, immutableListX, null);
    }

    @Deprecated
    public FragmentedMp4Extractor(int i2, TimestampAdjuster timestampAdjuster, Track track, List<Format> list) {
        this(SubtitleParser.Factory.f16683a, i2 | 32, timestampAdjuster, track, list, null);
    }

    @Deprecated
    public FragmentedMp4Extractor(int i2, TimestampAdjuster timestampAdjuster, Track track, List<Format> list, TrackOutput trackOutput) {
        this(SubtitleParser.Factory.f16683a, i2 | 32, timestampAdjuster, track, list, trackOutput);
    }

    @Deprecated
    public FragmentedMp4Extractor() {
        this(SubtitleParser.Factory.f16683a, 32, null, null, ImmutableList.x(), null);
    }
}
