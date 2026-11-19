package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ParsableNalUnitBitArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import defpackage.d21;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class H264Reader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SeiReader f17025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17027c;
    public final String d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f17030h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f17032j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TrackOutput f17033k;
    public SampleReader l;
    public boolean m;
    public boolean o;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean[] f17031i = new boolean[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NalUnitTargetBuffer f17028e = new NalUnitTargetBuffer(7, 128);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NalUnitTargetBuffer f17029f = new NalUnitTargetBuffer(8, 128);
    public final NalUnitTargetBuffer g = new NalUnitTargetBuffer(6, 128);
    public long n = -9223372036854775807L;
    public final ParsableByteArray p = new ParsableByteArray();

    public static final class SampleReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackOutput f17034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f17035b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f17036c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ParsableNalUnitBitArray f17038f;
        public byte[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17039h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f17040i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f17041j;
        public long l;
        public long p;
        public long q;
        public boolean r;
        public boolean s;
        public final SparseArray d = new SparseArray();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SparseArray f17037e = new SparseArray();
        public SliceHeaderData m = new SliceHeaderData();
        public SliceHeaderData n = new SliceHeaderData();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f17042k = false;
        public boolean o = false;

        public static final class SliceHeaderData {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f17043a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f17044b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public NalUnitUtil.SpsData f17045c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f17046e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f17047f;
            public int g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f17048h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f17049i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f17050j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean f17051k;
            public int l;
            public int m;
            public int n;
            public int o;
            public int p;
        }

        public SampleReader(TrackOutput trackOutput, boolean z, boolean z2) {
            this.f17034a = trackOutput;
            this.f17035b = z;
            this.f17036c = z2;
            byte[] bArr = new byte[128];
            this.g = bArr;
            this.f17038f = new ParsableNalUnitBitArray(bArr, 0, 0);
            SliceHeaderData sliceHeaderData = this.n;
            sliceHeaderData.f17044b = false;
            sliceHeaderData.f17043a = false;
        }
    }

    public H264Reader(SeiReader seiReader, boolean z, boolean z2, String str) {
        this.f17025a = seiReader;
        this.f17026b = z;
        this.f17027c = z2;
        this.d = str;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        int i2;
        this.f17033k.getClass();
        String str = Util.f14242a;
        int i3 = parsableByteArray.f14195b;
        int i4 = parsableByteArray.f14196c;
        byte[] bArr = parsableByteArray.f14194a;
        this.f17030h += (long) parsableByteArray.a();
        this.f17033k.f(parsableByteArray.a(), parsableByteArray);
        while (true) {
            int iB = NalUnitUtil.b(bArr, i3, i4, this.f17031i);
            if (iB == i4) {
                this.g(i3, i4, bArr);
                return;
            }
            int i5 = bArr[iB + 3] & 31;
            if (iB <= 0 || bArr[iB - 1] != 0) {
                i2 = 3;
            } else {
                iB--;
                i2 = 4;
            }
            int i6 = iB - i3;
            if (i6 > 0) {
                this.g(i3, iB, bArr);
            }
            int i7 = i4 - iB;
            long j2 = this.f17030h - ((long) i7);
            H264Reader h264Reader = this;
            h264Reader.b(j2, this.n, i7, i6 < 0 ? -i6 : 0);
            h264Reader.h(i5, j2, h264Reader.n);
            i3 = iB + i2;
            this = h264Reader;
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:65:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:69:0x0202  */
    /* JADX WARN: Code duplicated, block: B:72:0x0209  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(long j2, long j3, int i2, int i3) {
        long j4;
        int i4;
        long j5;
        long j6;
        boolean z;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        boolean z3 = this.m;
        boolean z4 = true;
        SeiReader seiReader = this.f17025a;
        if (!z3 || this.l.f17036c) {
            NalUnitTargetBuffer nalUnitTargetBuffer = this.f17028e;
            nalUnitTargetBuffer.b(i3);
            NalUnitTargetBuffer nalUnitTargetBuffer2 = this.f17029f;
            nalUnitTargetBuffer2.b(i3);
            boolean z5 = this.m;
            boolean z6 = nalUnitTargetBuffer.f17107c;
            if (z5) {
                if (z6) {
                    NalUnitUtil.SpsData spsDataK = NalUnitUtil.k(3, nalUnitTargetBuffer.f17108e, nalUnitTargetBuffer.d);
                    seiReader.d.c(spsDataK.s);
                    this.l.d.append(spsDataK.d, spsDataK);
                    nalUnitTargetBuffer.c();
                } else if (nalUnitTargetBuffer2.f17107c) {
                    ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(nalUnitTargetBuffer2.d, 4, nalUnitTargetBuffer2.f17108e);
                    int iF = parsableNalUnitBitArray.f();
                    int iF2 = parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.i();
                    NalUnitUtil.PpsData ppsData = new NalUnitUtil.PpsData(iF, iF2, parsableNalUnitBitArray.d());
                    this.l.f17037e.append(ppsData.f14325a, ppsData);
                    nalUnitTargetBuffer2.c();
                }
            } else if (z6 && nalUnitTargetBuffer2.f17107c) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(nalUnitTargetBuffer.d, nalUnitTargetBuffer.f17108e));
                arrayList.add(Arrays.copyOf(nalUnitTargetBuffer2.d, nalUnitTargetBuffer2.f17108e));
                NalUnitUtil.SpsData spsDataK2 = NalUnitUtil.k(3, nalUnitTargetBuffer.f17108e, nalUnitTargetBuffer.d);
                int i9 = spsDataK2.s;
                ParsableNalUnitBitArray parsableNalUnitBitArray2 = new ParsableNalUnitBitArray(nalUnitTargetBuffer2.d, 4, nalUnitTargetBuffer2.f17108e);
                int iF3 = parsableNalUnitBitArray2.f();
                int iF4 = parsableNalUnitBitArray2.f();
                parsableNalUnitBitArray2.i();
                NalUnitUtil.PpsData ppsData2 = new NalUnitUtil.PpsData(iF3, iF4, parsableNalUnitBitArray2.d());
                int i10 = spsDataK2.f14328a;
                int i11 = spsDataK2.f14329b;
                int i12 = spsDataK2.f14330c;
                byte[] bArr = CodecSpecificDataUtil.f14144a;
                String str = String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
                TrackOutput trackOutput = this.f17033k;
                Format.Builder builder = new Format.Builder();
                builder.f13764a = this.f17032j;
                builder.m = MimeTypes.p(this.d);
                builder.n = MimeTypes.p("video/avc");
                builder.f13771j = str;
                builder.u = spsDataK2.f14331e;
                builder.v = spsDataK2.f14332f;
                ColorInfo.Builder builder2 = new ColorInfo.Builder();
                builder2.f13730a = spsDataK2.p;
                builder2.f13731b = spsDataK2.q;
                builder2.f13732c = spsDataK2.r;
                builder2.f13733e = spsDataK2.f14333h + 8;
                builder2.f13734f = spsDataK2.f14334i + 8;
                builder.D = builder2.a();
                builder.A = spsDataK2.g;
                builder.q = arrayList;
                builder.p = i9;
                d21.w(builder, trackOutput);
                this.m = true;
                seiReader.d.c(i9);
                this.l.d.append(spsDataK2.d, spsDataK2);
                this.l.f17037e.append(ppsData2.f14325a, ppsData2);
                nalUnitTargetBuffer.c();
                nalUnitTargetBuffer2.c();
            }
        }
        NalUnitTargetBuffer nalUnitTargetBuffer3 = this.g;
        if (nalUnitTargetBuffer3.b(i3)) {
            int iM = NalUnitUtil.m(nalUnitTargetBuffer3.f17108e, nalUnitTargetBuffer3.d);
            byte[] bArr2 = nalUnitTargetBuffer3.d;
            ParsableByteArray parsableByteArray = this.p;
            parsableByteArray.L(iM, bArr2);
            parsableByteArray.N(4);
            seiReader.d.a(j3, parsableByteArray);
        }
        SampleReader sampleReader = this.l;
        boolean z7 = this.m;
        if (sampleReader.f17040i == 9) {
            if (z7 && sampleReader.o) {
                j4 = sampleReader.f17041j;
                i4 = i2 + ((int) (j2 - j4));
                j5 = sampleReader.q;
                if (j5 != -9223372036854775807L) {
                    j6 = sampleReader.p;
                    if (j4 != j6) {
                        sampleReader.f17034a.g(j5, sampleReader.r ? 1 : 0, (int) (j4 - j6), i4, null);
                    }
                }
            }
            sampleReader.p = sampleReader.f17041j;
            sampleReader.q = sampleReader.l;
            sampleReader.r = false;
            sampleReader.o = true;
        } else if (sampleReader.f17036c) {
            SampleReader.SliceHeaderData sliceHeaderData = sampleReader.n;
            SampleReader.SliceHeaderData sliceHeaderData2 = sampleReader.m;
            if (sliceHeaderData.f17043a) {
                if (sliceHeaderData2.f17043a) {
                    NalUnitUtil.SpsData spsData = sliceHeaderData.f17045c;
                    spsData.getClass();
                    NalUnitUtil.SpsData spsData2 = sliceHeaderData2.f17045c;
                    spsData2.getClass();
                    int i13 = spsData2.m;
                    if (sliceHeaderData.f17047f != sliceHeaderData2.f17047f || sliceHeaderData.g != sliceHeaderData2.g || sliceHeaderData.f17048h != sliceHeaderData2.f17048h || ((sliceHeaderData.f17049i && sliceHeaderData2.f17049i && sliceHeaderData.f17050j != sliceHeaderData2.f17050j) || (((i6 = sliceHeaderData.d) != (i7 = sliceHeaderData2.d) && (i6 == 0 || i7 == 0)) || (((i8 = spsData.m) == 0 && i13 == 0 && (sliceHeaderData.m != sliceHeaderData2.m || sliceHeaderData.n != sliceHeaderData2.n)) || ((i8 == 1 && i13 == 1 && (sliceHeaderData.o != sliceHeaderData2.o || sliceHeaderData.p != sliceHeaderData2.p)) || (z2 = sliceHeaderData.f17051k) != sliceHeaderData2.f17051k || (z2 && sliceHeaderData.l != sliceHeaderData2.l)))))) {
                        if (z7) {
                            j4 = sampleReader.f17041j;
                            i4 = i2 + ((int) (j2 - j4));
                            j5 = sampleReader.q;
                            if (j5 != -9223372036854775807L) {
                                j6 = sampleReader.p;
                                if (j4 != j6) {
                                    sampleReader.f17034a.g(j5, sampleReader.r ? 1 : 0, (int) (j4 - j6), i4, null);
                                }
                            }
                        }
                        sampleReader.p = sampleReader.f17041j;
                        sampleReader.q = sampleReader.l;
                        sampleReader.r = false;
                        sampleReader.o = true;
                    }
                } else {
                    if (z7) {
                        j4 = sampleReader.f17041j;
                        i4 = i2 + ((int) (j2 - j4));
                        j5 = sampleReader.q;
                        if (j5 != -9223372036854775807L) {
                            j6 = sampleReader.p;
                            if (j4 != j6) {
                                sampleReader.f17034a.g(j5, sampleReader.r ? 1 : 0, (int) (j4 - j6), i4, null);
                            }
                        }
                    }
                    sampleReader.p = sampleReader.f17041j;
                    sampleReader.q = sampleReader.l;
                    sampleReader.r = false;
                    sampleReader.o = true;
                }
            }
        }
        if (sampleReader.f17035b) {
            SampleReader.SliceHeaderData sliceHeaderData3 = sampleReader.n;
            z = sliceHeaderData3.f17044b && ((i5 = sliceHeaderData3.f17046e) == 7 || i5 == 2);
        } else {
            z = sampleReader.s;
        }
        boolean z8 = sampleReader.r;
        int i14 = sampleReader.f17040i;
        if (i14 != 5 && (!z || i14 != 1)) {
            z4 = false;
        }
        boolean z9 = z8 | z4;
        sampleReader.r = z9;
        sampleReader.f17040i = 24;
        if (z9) {
            this.o = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.f17030h = 0L;
        this.o = false;
        this.n = -9223372036854775807L;
        NalUnitUtil.a(this.f17031i);
        this.f17028e.c();
        this.f17029f.c();
        this.g.c();
        this.f17025a.d.b(0);
        SampleReader sampleReader = this.l;
        if (sampleReader != null) {
            sampleReader.f17042k = false;
            sampleReader.o = false;
            SampleReader.SliceHeaderData sliceHeaderData = sampleReader.n;
            sliceHeaderData.f17044b = false;
            sliceHeaderData.f17043a = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
        this.f17033k.getClass();
        String str = Util.f14242a;
        if (z) {
            this.f17025a.d.b(0);
            b(this.f17030h, this.n, 0, 0);
            h(9, this.f17030h, this.n);
            b(this.f17030h, this.n, 0, 0);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f17032j = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 2);
        this.f17033k = trackOutputR;
        this.l = new SampleReader(trackOutputR, this.f17026b, this.f17027c);
        this.f17025a.a(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.n = j2;
        this.o = ((i2 & 2) != 0) | this.o;
    }

    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0104  */
    /* JADX WARN: Code duplicated, block: B:59:0x0106  */
    /* JADX WARN: Code duplicated, block: B:61:0x0109  */
    /* JADX WARN: Code duplicated, block: B:64:0x0110  */
    /* JADX WARN: Code duplicated, block: B:65:0x0115  */
    /* JADX WARN: Code duplicated, block: B:68:0x011a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0121  */
    /* JADX WARN: Code duplicated, block: B:81:0x013b  */
    public final void g(int i2, int i3, byte[] bArr) {
        boolean zD;
        boolean zD2;
        boolean z;
        boolean z2;
        int iF;
        int i4;
        int iE;
        int i5;
        int iG;
        int iG2;
        if (!this.m || this.l.f17036c) {
            this.f17028e.a(i2, i3, bArr);
            this.f17029f.a(i2, i3, bArr);
        }
        this.g.a(i2, i3, bArr);
        SampleReader sampleReader = this.l;
        SparseArray sparseArray = sampleReader.f17037e;
        ParsableNalUnitBitArray parsableNalUnitBitArray = sampleReader.f17038f;
        if (sampleReader.f17042k) {
            int i6 = i3 - i2;
            byte[] bArr2 = sampleReader.g;
            int length = bArr2.length;
            int i7 = sampleReader.f17039h + i6;
            if (length < i7) {
                sampleReader.g = Arrays.copyOf(bArr2, i7 * 2);
            }
            System.arraycopy(bArr, i2, sampleReader.g, sampleReader.f17039h, i6);
            int i8 = sampleReader.f17039h + i6;
            sampleReader.f17039h = i8;
            parsableNalUnitBitArray.f14349a = sampleReader.g;
            parsableNalUnitBitArray.f14351c = 0;
            parsableNalUnitBitArray.d = 0;
            parsableNalUnitBitArray.f14350b = i8;
            parsableNalUnitBitArray.f14352e = 0;
            parsableNalUnitBitArray.a();
            if (parsableNalUnitBitArray.b(8)) {
                parsableNalUnitBitArray.i();
                int iE2 = parsableNalUnitBitArray.e(2);
                parsableNalUnitBitArray.j(5);
                if (parsableNalUnitBitArray.c()) {
                    parsableNalUnitBitArray.f();
                    if (parsableNalUnitBitArray.c()) {
                        int iF2 = parsableNalUnitBitArray.f();
                        if (!sampleReader.f17036c) {
                            sampleReader.f17042k = false;
                            SampleReader.SliceHeaderData sliceHeaderData = sampleReader.n;
                            sliceHeaderData.f17046e = iF2;
                            sliceHeaderData.f17044b = true;
                            return;
                        }
                        if (parsableNalUnitBitArray.c()) {
                            int iF3 = parsableNalUnitBitArray.f();
                            if (sparseArray.indexOfKey(iF3) < 0) {
                                sampleReader.f17042k = false;
                                return;
                            }
                            NalUnitUtil.PpsData ppsData = (NalUnitUtil.PpsData) sparseArray.get(iF3);
                            SparseArray sparseArray2 = sampleReader.d;
                            int i9 = ppsData.f14326b;
                            boolean z3 = ppsData.f14327c;
                            NalUnitUtil.SpsData spsData = (NalUnitUtil.SpsData) sparseArray2.get(i9);
                            boolean z4 = spsData.f14335j;
                            int i10 = spsData.n;
                            int i11 = spsData.l;
                            if (z4) {
                                if (!parsableNalUnitBitArray.b(2)) {
                                    return;
                                } else {
                                    parsableNalUnitBitArray.j(2);
                                }
                            }
                            if (parsableNalUnitBitArray.b(i11)) {
                                int iE3 = parsableNalUnitBitArray.e(i11);
                                if (!spsData.f14336k) {
                                    if (parsableNalUnitBitArray.b(1)) {
                                        zD = parsableNalUnitBitArray.d();
                                        if (!zD) {
                                            zD2 = false;
                                        } else {
                                            if (!parsableNalUnitBitArray.b(1)) {
                                                return;
                                            }
                                            zD2 = parsableNalUnitBitArray.d();
                                            z = true;
                                        }
                                        if (sampleReader.f17040i == 5) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            iF = 0;
                                        } else if (!parsableNalUnitBitArray.c()) {
                                            return;
                                        } else {
                                            iF = parsableNalUnitBitArray.f();
                                        }
                                        i4 = spsData.m;
                                        if (i4 != 0) {
                                            if (parsableNalUnitBitArray.b(i10)) {
                                                iE = parsableNalUnitBitArray.e(i10);
                                                if (!z3 && !zD) {
                                                    if (!parsableNalUnitBitArray.c()) {
                                                        return;
                                                    }
                                                    iG2 = parsableNalUnitBitArray.g();
                                                    i5 = 0;
                                                }
                                                iG = 0;
                                                SampleReader.SliceHeaderData sliceHeaderData2 = sampleReader.n;
                                                sliceHeaderData2.f17045c = spsData;
                                                sliceHeaderData2.d = iE2;
                                                sliceHeaderData2.f17046e = iF2;
                                                sliceHeaderData2.f17047f = iE3;
                                                sliceHeaderData2.g = iF3;
                                                sliceHeaderData2.f17048h = zD;
                                                sliceHeaderData2.f17049i = z;
                                                sliceHeaderData2.f17050j = zD2;
                                                sliceHeaderData2.f17051k = z2;
                                                sliceHeaderData2.l = iF;
                                                sliceHeaderData2.m = iE;
                                                sliceHeaderData2.n = iG2;
                                                sliceHeaderData2.o = i5;
                                                sliceHeaderData2.p = iG;
                                                sliceHeaderData2.f17043a = true;
                                                sliceHeaderData2.f17044b = true;
                                                sampleReader.f17042k = false;
                                            }
                                            return;
                                        }
                                        if (i4 == 1 || spsData.o) {
                                            iE = 0;
                                        } else {
                                            if (!parsableNalUnitBitArray.c()) {
                                                return;
                                            }
                                            int iG3 = parsableNalUnitBitArray.g();
                                            if (!z3 || zD) {
                                                i5 = iG3;
                                                iE = 0;
                                                iG2 = 0;
                                                iG = 0;
                                            } else {
                                                if (!parsableNalUnitBitArray.c()) {
                                                    return;
                                                }
                                                iG = parsableNalUnitBitArray.g();
                                                iG2 = 0;
                                                i5 = iG3;
                                                iE = 0;
                                            }
                                        }
                                        SampleReader.SliceHeaderData sliceHeaderData3 = sampleReader.n;
                                        sliceHeaderData3.f17045c = spsData;
                                        sliceHeaderData3.d = iE2;
                                        sliceHeaderData3.f17046e = iF2;
                                        sliceHeaderData3.f17047f = iE3;
                                        sliceHeaderData3.g = iF3;
                                        sliceHeaderData3.f17048h = zD;
                                        sliceHeaderData3.f17049i = z;
                                        sliceHeaderData3.f17050j = zD2;
                                        sliceHeaderData3.f17051k = z2;
                                        sliceHeaderData3.l = iF;
                                        sliceHeaderData3.m = iE;
                                        sliceHeaderData3.n = iG2;
                                        sliceHeaderData3.o = i5;
                                        sliceHeaderData3.p = iG;
                                        sliceHeaderData3.f17043a = true;
                                        sliceHeaderData3.f17044b = true;
                                        sampleReader.f17042k = false;
                                        i5 = 0;
                                        iG2 = 0;
                                        iG = 0;
                                        SampleReader.SliceHeaderData sliceHeaderData4 = sampleReader.n;
                                        sliceHeaderData4.f17045c = spsData;
                                        sliceHeaderData4.d = iE2;
                                        sliceHeaderData4.f17046e = iF2;
                                        sliceHeaderData4.f17047f = iE3;
                                        sliceHeaderData4.g = iF3;
                                        sliceHeaderData4.f17048h = zD;
                                        sliceHeaderData4.f17049i = z;
                                        sliceHeaderData4.f17050j = zD2;
                                        sliceHeaderData4.f17051k = z2;
                                        sliceHeaderData4.l = iF;
                                        sliceHeaderData4.m = iE;
                                        sliceHeaderData4.n = iG2;
                                        sliceHeaderData4.o = i5;
                                        sliceHeaderData4.p = iG;
                                        sliceHeaderData4.f17043a = true;
                                        sliceHeaderData4.f17044b = true;
                                        sampleReader.f17042k = false;
                                    }
                                    return;
                                }
                                zD = false;
                                zD2 = false;
                                z = zD2;
                                if (sampleReader.f17040i == 5) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (z2) {
                                    iF = 0;
                                } else if (!parsableNalUnitBitArray.c()) {
                                    return;
                                } else {
                                    iF = parsableNalUnitBitArray.f();
                                }
                                i4 = spsData.m;
                                if (i4 != 0) {
                                    if (i4 == 1) {
                                    }
                                    iE = 0;
                                } else {
                                    if (parsableNalUnitBitArray.b(i10)) {
                                        return;
                                    }
                                    iE = parsableNalUnitBitArray.e(i10);
                                    if (!z3) {
                                    }
                                }
                                i5 = 0;
                                iG2 = 0;
                                iG = 0;
                                SampleReader.SliceHeaderData sliceHeaderData5 = sampleReader.n;
                                sliceHeaderData5.f17045c = spsData;
                                sliceHeaderData5.d = iE2;
                                sliceHeaderData5.f17046e = iF2;
                                sliceHeaderData5.f17047f = iE3;
                                sliceHeaderData5.g = iF3;
                                sliceHeaderData5.f17048h = zD;
                                sliceHeaderData5.f17049i = z;
                                sliceHeaderData5.f17050j = zD2;
                                sliceHeaderData5.f17051k = z2;
                                sliceHeaderData5.l = iF;
                                sliceHeaderData5.m = iE;
                                sliceHeaderData5.n = iG2;
                                sliceHeaderData5.o = i5;
                                sliceHeaderData5.p = iG;
                                sliceHeaderData5.f17043a = true;
                                sliceHeaderData5.f17044b = true;
                                sampleReader.f17042k = false;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void h(int i2, long j2, long j3) {
        if (!this.m || this.l.f17036c) {
            this.f17028e.d(i2);
            this.f17029f.d(i2);
        }
        this.g.d(i2);
        SampleReader sampleReader = this.l;
        boolean z = this.o;
        sampleReader.f17040i = i2;
        sampleReader.l = j3;
        sampleReader.f17041j = j2;
        sampleReader.s = z;
        if (!sampleReader.f17035b || i2 != 1) {
            if (!sampleReader.f17036c) {
                return;
            }
            if (i2 != 5 && i2 != 1 && i2 != 2) {
                return;
            }
        }
        SampleReader.SliceHeaderData sliceHeaderData = sampleReader.m;
        sampleReader.m = sampleReader.n;
        sampleReader.n = sliceHeaderData;
        sliceHeaderData.f17044b = false;
        sliceHeaderData.f17043a = false;
        sampleReader.f17039h = 0;
        sampleReader.f17042k = true;
    }
}
