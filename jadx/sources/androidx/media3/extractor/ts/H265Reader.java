package androidx.media3.extractor.ts;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class H265Reader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SeiReader f17052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17054c;
    public TrackOutput d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SampleReader f17055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17056f;
    public long m;
    public final boolean[] g = new boolean[3];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NalUnitTargetBuffer f17057h = new NalUnitTargetBuffer(32, 128);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NalUnitTargetBuffer f17058i = new NalUnitTargetBuffer(33, 128);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final NalUnitTargetBuffer f17059j = new NalUnitTargetBuffer(34, 128);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NalUnitTargetBuffer f17060k = new NalUnitTargetBuffer(39, 128);
    public final NalUnitTargetBuffer l = new NalUnitTargetBuffer(40, 128);
    public long n = -9223372036854775807L;
    public final ParsableByteArray o = new ParsableByteArray();

    public static final class SampleReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackOutput f17061a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f17062b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17063c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f17064e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f17065f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f17066h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f17067i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f17068j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f17069k;
        public long l;
        public boolean m;

        public SampleReader(TrackOutput trackOutput) {
            this.f17061a = trackOutput;
        }

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
        public final void a(int i2) {
            long j2 = this.l;
            if (j2 != -9223372036854775807L) {
                long j3 = this.f17062b;
                long j4 = this.f17069k;
                if (j3 == j4) {
                    return;
                }
                int i3 = (int) (j3 - j4);
                this.f17061a.g(j2, this.m ? 1 : 0, i3, i2, null);
            }
        }
    }

    public H265Reader(SeiReader seiReader, String str) {
        this.f17052a = seiReader;
        this.f17053b = str;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        int i2;
        this.d.getClass();
        String str = Util.f14242a;
        while (parsableByteArray.a() > 0) {
            int i3 = parsableByteArray.f14195b;
            int i4 = parsableByteArray.f14196c;
            byte[] bArr = parsableByteArray.f14194a;
            this.m += (long) parsableByteArray.a();
            this.d.f(parsableByteArray.a(), parsableByteArray);
            while (i3 < i4) {
                int iB = NalUnitUtil.b(bArr, i3, i4, this.g);
                if (iB == i4) {
                    g(i3, i4, bArr);
                    return;
                }
                int i5 = (bArr[iB + 3] & 126) >> 1;
                if (iB <= 0 || bArr[iB - 1] != 0) {
                    i2 = 3;
                } else {
                    iB--;
                    i2 = 4;
                }
                int i6 = iB;
                int i7 = i2;
                int i8 = i6 - i3;
                if (i8 > 0) {
                    g(i3, i6, bArr);
                }
                int i9 = i4 - i6;
                long j2 = this.m - ((long) i9);
                b(j2, this.n, i9, i8 < 0 ? -i8 : 0);
                h(j2, this.n, i9, i5);
                i3 = i6 + i7;
            }
        }
    }

    public final void b(long j2, long j3, int i2, int i3) {
        SampleReader sampleReader = this.f17055e;
        boolean z = this.f17056f;
        if (sampleReader.f17068j && sampleReader.g) {
            sampleReader.m = sampleReader.f17063c;
            sampleReader.f17068j = false;
        } else if (sampleReader.f17066h || sampleReader.g) {
            if (z && sampleReader.f17067i) {
                sampleReader.a(i2 + ((int) (j2 - sampleReader.f17062b)));
            }
            sampleReader.f17069k = sampleReader.f17062b;
            sampleReader.l = sampleReader.f17064e;
            sampleReader.m = sampleReader.f17063c;
            sampleReader.f17067i = true;
        }
        boolean z2 = this.f17056f;
        SeiReader seiReader = this.f17052a;
        if (!z2) {
            NalUnitTargetBuffer nalUnitTargetBuffer = this.f17057h;
            nalUnitTargetBuffer.b(i3);
            NalUnitTargetBuffer nalUnitTargetBuffer2 = this.f17058i;
            nalUnitTargetBuffer2.b(i3);
            NalUnitTargetBuffer nalUnitTargetBuffer3 = this.f17059j;
            nalUnitTargetBuffer3.b(i3);
            if (nalUnitTargetBuffer.f17107c && nalUnitTargetBuffer2.f17107c && nalUnitTargetBuffer3.f17107c) {
                String str = this.f17054c;
                int i4 = nalUnitTargetBuffer.f17108e;
                byte[] bArr = new byte[nalUnitTargetBuffer2.f17108e + i4 + nalUnitTargetBuffer3.f17108e];
                System.arraycopy(nalUnitTargetBuffer.d, 0, bArr, 0, i4);
                System.arraycopy(nalUnitTargetBuffer2.d, 0, bArr, nalUnitTargetBuffer.f17108e, nalUnitTargetBuffer2.f17108e);
                System.arraycopy(nalUnitTargetBuffer3.d, 0, bArr, nalUnitTargetBuffer.f17108e + nalUnitTargetBuffer2.f17108e, nalUnitTargetBuffer3.f17108e);
                NalUnitUtil.H265SpsData h265SpsDataI = NalUnitUtil.i(nalUnitTargetBuffer2.d, 3, nalUnitTargetBuffer2.f17108e, null);
                NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = h265SpsDataI.f14309b;
                String strA = h265ProfileTierLevel != null ? CodecSpecificDataUtil.a(h265ProfileTierLevel.f14294a, h265ProfileTierLevel.f14295b, h265ProfileTierLevel.f14296c, h265ProfileTierLevel.d, h265ProfileTierLevel.f14297e, h265ProfileTierLevel.f14298f) : null;
                Format.Builder builder = new Format.Builder();
                builder.f13764a = str;
                builder.m = MimeTypes.p(this.f17053b);
                builder.n = MimeTypes.p("video/hevc");
                builder.f13771j = strA;
                builder.u = h265SpsDataI.f14311e;
                builder.v = h265SpsDataI.f14312f;
                builder.w = h265SpsDataI.g;
                builder.x = h265SpsDataI.f14313h;
                ColorInfo.Builder builder2 = new ColorInfo.Builder();
                builder2.f13730a = h265SpsDataI.f14316k;
                builder2.f13731b = h265SpsDataI.l;
                builder2.f13732c = h265SpsDataI.m;
                builder2.f13733e = h265SpsDataI.f14310c + 8;
                builder2.f13734f = h265SpsDataI.d + 8;
                builder.D = builder2.a();
                builder.A = h265SpsDataI.f14314i;
                builder.p = h265SpsDataI.f14315j;
                builder.E = h265SpsDataI.f14308a + 1;
                builder.q = Collections.singletonList(bArr);
                Format format = new Format(builder);
                this.d.b(format);
                int i5 = format.q;
                Preconditions.q(i5 != -1);
                seiReader.d.c(i5);
                this.f17056f = true;
            }
        }
        NalUnitTargetBuffer nalUnitTargetBuffer4 = this.f17060k;
        boolean zB = nalUnitTargetBuffer4.b(i3);
        ParsableByteArray parsableByteArray = this.o;
        if (zB) {
            parsableByteArray.L(NalUnitUtil.m(nalUnitTargetBuffer4.f17108e, nalUnitTargetBuffer4.d), nalUnitTargetBuffer4.d);
            parsableByteArray.O(5);
            seiReader.d.a(j3, parsableByteArray);
        }
        NalUnitTargetBuffer nalUnitTargetBuffer5 = this.l;
        if (nalUnitTargetBuffer5.b(i3)) {
            parsableByteArray.L(NalUnitUtil.m(nalUnitTargetBuffer5.f17108e, nalUnitTargetBuffer5.d), nalUnitTargetBuffer5.d);
            parsableByteArray.O(5);
            seiReader.d.a(j3, parsableByteArray);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.m = 0L;
        this.n = -9223372036854775807L;
        NalUnitUtil.a(this.g);
        this.f17057h.c();
        this.f17058i.c();
        this.f17059j.c();
        this.f17060k.c();
        this.l.c();
        this.f17052a.d.b(0);
        SampleReader sampleReader = this.f17055e;
        if (sampleReader != null) {
            sampleReader.f17065f = false;
            sampleReader.g = false;
            sampleReader.f17066h = false;
            sampleReader.f17067i = false;
            sampleReader.f17068j = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
        this.d.getClass();
        String str = Util.f14242a;
        if (z) {
            this.f17052a.d.b(0);
            b(this.m, this.n, 0, 0);
            h(this.m, this.n, 0, 48);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f17054c = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 2);
        this.d = trackOutputR;
        this.f17055e = new SampleReader(trackOutputR);
        this.f17052a.a(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.n = j2;
    }

    public final void g(int i2, int i3, byte[] bArr) {
        SampleReader sampleReader = this.f17055e;
        if (sampleReader.f17065f) {
            int i4 = sampleReader.d;
            int i5 = (i2 + 2) - i4;
            if (i5 < i3) {
                sampleReader.g = (bArr[i5] & 128) != 0;
                sampleReader.f17065f = false;
            } else {
                sampleReader.d = (i3 - i2) + i4;
            }
        }
        if (!this.f17056f) {
            this.f17057h.a(i2, i3, bArr);
            this.f17058i.a(i2, i3, bArr);
            this.f17059j.a(i2, i3, bArr);
        }
        this.f17060k.a(i2, i3, bArr);
        this.l.a(i2, i3, bArr);
    }

    public final void h(long j2, long j3, int i2, int i3) {
        SampleReader sampleReader = this.f17055e;
        boolean z = this.f17056f;
        sampleReader.g = false;
        sampleReader.f17066h = false;
        sampleReader.f17064e = j3;
        sampleReader.d = 0;
        sampleReader.f17062b = j2;
        if (i3 >= 32 && i3 != 40) {
            if (sampleReader.f17067i && !sampleReader.f17068j) {
                if (z) {
                    sampleReader.a(i2);
                }
                sampleReader.f17067i = false;
            }
            if ((32 <= i3 && i3 <= 35) || i3 == 39) {
                sampleReader.f17066h = !sampleReader.f17068j;
                sampleReader.f17068j = true;
            }
        }
        boolean z2 = i3 >= 16 && i3 <= 21;
        sampleReader.f17063c = z2;
        sampleReader.f17065f = z2 || i3 <= 9;
        if (!this.f17056f) {
            this.f17057h.d(i3);
            this.f17058i.d(i3);
            this.f17059j.d(i3);
        }
        this.f17060k.d(i3);
        this.l.d(i3);
    }
}
