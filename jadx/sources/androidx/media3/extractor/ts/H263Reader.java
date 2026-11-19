package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.batch.android.x0.h;
import com.google.common.base.Preconditions;
import defpackage.d21;
import defpackage.r81;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class H263Reader implements ElementaryStreamReader {
    public static final float[] m = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserDataReader f17005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f17007c;
    public final boolean[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CsdBuffer f17008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NalUnitTargetBuffer f17009f;
    public SampleReader g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f17010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f17011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TrackOutput f17012j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17013k;
    public long l;

    public static final class CsdBuffer {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final byte[] f17014f = {0, 0, 1};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17015a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f17016b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f17017c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f17018e;

        public CsdBuffer(int i2) {
            this.f17018e = new byte[i2];
        }

        public final void a(int i2, int i3, byte[] bArr) {
            if (this.f17015a) {
                int i4 = i3 - i2;
                byte[] bArr2 = this.f17018e;
                int length = bArr2.length;
                int i5 = this.f17017c + i4;
                if (length < i5) {
                    this.f17018e = Arrays.copyOf(bArr2, i5 * 2);
                }
                System.arraycopy(bArr, i2, this.f17018e, this.f17017c, i4);
                this.f17017c += i4;
            }
        }
    }

    public static final class SampleReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackOutput f17019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17021c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f17022e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f17023f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f17024h;

        public SampleReader(TrackOutput trackOutput) {
            this.f17019a = trackOutput;
        }

        public final void a(int i2, int i3, byte[] bArr) {
            if (this.f17021c) {
                int i4 = this.f17023f;
                int i5 = (i2 + 1) - i4;
                if (i5 >= i3) {
                    this.f17023f = (i3 - i2) + i4;
                } else {
                    this.d = ((bArr[i5] & h.a.f24176e) >> 6) == 0;
                    this.f17021c = false;
                }
            }
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
        public final void b(long j2, int i2, boolean z) {
            Preconditions.q(this.f17024h != -9223372036854775807L);
            if (this.f17022e == 182 && z && this.f17020b) {
                this.f17019a.g(this.f17024h, this.d ? 1 : 0, (int) (j2 - this.g), i2, null);
            }
            if (this.f17022e != 179) {
                this.g = j2;
            }
        }
    }

    public H263Reader(UserDataReader userDataReader, String str) {
        this.f17005a = userDataReader;
        this.f17006b = str;
        this.d = new boolean[4];
        this.f17008e = new CsdBuffer(128);
        this.l = -9223372036854775807L;
        if (userDataReader != null) {
            this.f17009f = new NalUnitTargetBuffer(178, 128);
            this.f17007c = new ParsableByteArray();
        } else {
            this.f17009f = null;
            this.f17007c = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:98:0x0231  */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        boolean z;
        int i2;
        int i3;
        float f2;
        this.g.getClass();
        this.f17012j.getClass();
        int i4 = parsableByteArray.f14195b;
        int i5 = parsableByteArray.f14196c;
        byte[] bArr = parsableByteArray.f14194a;
        this.f17010h += (long) parsableByteArray.a();
        this.f17012j.f(parsableByteArray.a(), parsableByteArray);
        while (true) {
            int iB = NalUnitUtil.b(bArr, i4, i5, this.d);
            CsdBuffer csdBuffer = this.f17008e;
            NalUnitTargetBuffer nalUnitTargetBuffer = this.f17009f;
            if (iB == i5) {
                if (!this.f17013k) {
                    csdBuffer.a(i4, i5, bArr);
                }
                this.g.a(i4, i5, bArr);
                if (nalUnitTargetBuffer != null) {
                    nalUnitTargetBuffer.a(i4, i5, bArr);
                    return;
                }
                return;
            }
            int i6 = iB + 3;
            byte b2 = parsableByteArray.f14194a[i6];
            int i7 = b2 & 255;
            int i8 = iB - i4;
            if (this.f17013k) {
                i5 = i5;
            } else {
                if (i8 > 0) {
                    csdBuffer.a(i4, iB, bArr);
                }
                int i9 = i8 < 0 ? -i8 : 0;
                int i10 = csdBuffer.f17016b;
                if (i10 == 0) {
                    i5 = i5;
                    i3 = 0;
                    if (i7 == 176) {
                        csdBuffer.f17016b = 1;
                        csdBuffer.f17015a = true;
                    }
                } else if (i10 == 1) {
                    i5 = i5;
                    i3 = 0;
                    if (i7 != 181) {
                        Log.g("Unexpected start code value");
                        csdBuffer.f17015a = false;
                        csdBuffer.f17017c = 0;
                        csdBuffer.f17016b = 0;
                    } else {
                        csdBuffer.f17016b = 2;
                    }
                } else if (i10 == 2) {
                    i5 = i5;
                    i3 = 0;
                    if (i7 > 31) {
                        Log.g("Unexpected start code value");
                        csdBuffer.f17015a = false;
                        csdBuffer.f17017c = 0;
                        csdBuffer.f17016b = 0;
                    } else {
                        csdBuffer.f17016b = 3;
                    }
                } else if (i10 == 3) {
                    i5 = i5;
                    if ((b2 & 240) != 32) {
                        Log.g("Unexpected start code value");
                        i3 = 0;
                        csdBuffer.f17015a = false;
                        csdBuffer.f17017c = 0;
                        csdBuffer.f17016b = 0;
                    } else {
                        i3 = 0;
                        csdBuffer.d = csdBuffer.f17017c;
                        csdBuffer.f17016b = 4;
                    }
                } else {
                    if (i10 != 4) {
                        r81.b();
                        return;
                    }
                    if (i7 == 179 || i7 == 181) {
                        csdBuffer.f17017c -= i9;
                        csdBuffer.f17015a = false;
                        TrackOutput trackOutput = this.f17012j;
                        int i11 = csdBuffer.d;
                        String str = this.f17011i;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(csdBuffer.f17018e, csdBuffer.f17017c);
                        ParsableBitArray parsableBitArray = new ParsableBitArray(bArrCopyOf);
                        parsableBitArray.p(i11);
                        parsableBitArray.p(4);
                        parsableBitArray.n();
                        parsableBitArray.o(8);
                        if (parsableBitArray.f()) {
                            parsableBitArray.o(4);
                            parsableBitArray.o(3);
                        }
                        int iG = parsableBitArray.g(4);
                        if (iG == 15) {
                            int iG2 = parsableBitArray.g(8);
                            int iG3 = parsableBitArray.g(8);
                            if (iG3 == 0) {
                                Log.g("Invalid aspect ratio");
                                f2 = 1.0f;
                            } else {
                                f2 = iG2 / iG3;
                            }
                        } else if (iG < 7) {
                            f2 = m[iG];
                        } else {
                            Log.g("Invalid aspect ratio");
                            f2 = 1.0f;
                        }
                        if (parsableBitArray.f()) {
                            parsableBitArray.o(2);
                            parsableBitArray.o(1);
                            if (parsableBitArray.f()) {
                                parsableBitArray.o(15);
                                parsableBitArray.n();
                                parsableBitArray.o(15);
                                parsableBitArray.n();
                                parsableBitArray.o(15);
                                parsableBitArray.n();
                                parsableBitArray.o(3);
                                parsableBitArray.o(11);
                                parsableBitArray.n();
                                parsableBitArray.o(15);
                                parsableBitArray.n();
                            }
                        }
                        if (parsableBitArray.g(2) != 0) {
                            Log.g("Unhandled video object layer shape");
                        }
                        parsableBitArray.n();
                        int iG4 = parsableBitArray.g(16);
                        parsableBitArray.n();
                        if (parsableBitArray.f()) {
                            if (iG4 == 0) {
                                Log.g("Invalid vop_increment_time_resolution");
                            } else {
                                int i12 = 0;
                                for (int i13 = iG4 - 1; i13 > 0; i13 >>= 1) {
                                    i12++;
                                }
                                parsableBitArray.o(i12);
                            }
                        }
                        parsableBitArray.n();
                        int iG5 = parsableBitArray.g(13);
                        parsableBitArray.n();
                        int iG6 = parsableBitArray.g(13);
                        parsableBitArray.n();
                        parsableBitArray.n();
                        Format.Builder builder = new Format.Builder();
                        builder.f13764a = str;
                        builder.m = MimeTypes.p(this.f17006b);
                        builder.n = MimeTypes.p("video/mp4v-es");
                        builder.u = iG5;
                        builder.v = iG6;
                        builder.A = f2;
                        builder.q = Collections.singletonList(bArrCopyOf);
                        d21.w(builder, trackOutput);
                        this.f17013k = true;
                    } else {
                        i5 = i5;
                        i3 = 0;
                    }
                }
                csdBuffer.a(i3, 3, CsdBuffer.f17014f);
            }
            this.g.a(i4, iB, bArr);
            if (nalUnitTargetBuffer == null) {
                z = true;
            } else {
                if (i8 > 0) {
                    nalUnitTargetBuffer.a(i4, iB, bArr);
                    i2 = 0;
                } else {
                    i2 = -i8;
                }
                if (nalUnitTargetBuffer.b(i2)) {
                    int iM = NalUnitUtil.m(nalUnitTargetBuffer.f17108e, nalUnitTargetBuffer.d);
                    String str2 = Util.f14242a;
                    byte[] bArr2 = nalUnitTargetBuffer.d;
                    ParsableByteArray parsableByteArray2 = this.f17007c;
                    parsableByteArray2.L(iM, bArr2);
                    this.f17005a.a(this.l, parsableByteArray2);
                }
                if (i7 == 178) {
                    z = true;
                    if (parsableByteArray.f14194a[iB + 2] == 1) {
                        nalUnitTargetBuffer.d(i7);
                    }
                } else {
                    z = true;
                }
            }
            int i14 = i5 - iB;
            this.g.b(this.f17010h - ((long) i14), i14, this.f17013k);
            SampleReader sampleReader = this.g;
            long j2 = this.l;
            sampleReader.f17022e = i7;
            sampleReader.d = false;
            sampleReader.f17020b = (i7 == 182 || i7 == 179) ? z : false;
            sampleReader.f17021c = i7 == 182 ? z : false;
            sampleReader.f17023f = 0;
            sampleReader.f17024h = j2;
            i4 = i6;
            i5 = i5;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        NalUnitUtil.a(this.d);
        CsdBuffer csdBuffer = this.f17008e;
        csdBuffer.f17015a = false;
        csdBuffer.f17017c = 0;
        csdBuffer.f17016b = 0;
        SampleReader sampleReader = this.g;
        if (sampleReader != null) {
            sampleReader.f17020b = false;
            sampleReader.f17021c = false;
            sampleReader.d = false;
            sampleReader.f17022e = -1;
        }
        NalUnitTargetBuffer nalUnitTargetBuffer = this.f17009f;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.c();
        }
        this.f17010h = 0L;
        this.l = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
        this.g.getClass();
        if (z) {
            this.g.b(this.f17010h, 0, this.f17013k);
            SampleReader sampleReader = this.g;
            sampleReader.f17020b = false;
            sampleReader.f17021c = false;
            sampleReader.d = false;
            sampleReader.f17022e = -1;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.f17011i = trackIdGenerator.f17185e;
        trackIdGenerator.b();
        TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 2);
        this.f17012j = trackOutputR;
        this.g = new SampleReader(trackOutputR);
        UserDataReader userDataReader = this.f17005a;
        if (userDataReader != null) {
            userDataReader.b(extractorOutput, trackIdGenerator);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        this.l = j2;
    }

    public H263Reader(String str) {
        this(null, str);
    }
}
