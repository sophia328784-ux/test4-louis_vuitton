package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LongDigest implements ExtendedDigest, Memoable, EncodableDigest {
    public static final long[] o = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f77853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f77854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f77855c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f77856e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f77857f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f77858h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f77859i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f77860j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f77861k;
    public long l;
    public final long[] m;
    public int n;

    public LongDigest(LongDigest longDigest) {
        byte[] bArr = new byte[8];
        this.f77853a = bArr;
        long[] jArr = new long[80];
        this.m = jArr;
        byte[] bArr2 = longDigest.f77853a;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.f77854b = longDigest.f77854b;
        this.f77855c = longDigest.f77855c;
        this.d = longDigest.d;
        this.f77856e = longDigest.f77856e;
        this.f77857f = longDigest.f77857f;
        this.g = longDigest.g;
        this.f77858h = longDigest.f77858h;
        this.f77859i = longDigest.f77859i;
        this.f77860j = longDigest.f77860j;
        this.f77861k = longDigest.f77861k;
        this.l = longDigest.l;
        long[] jArr2 = longDigest.m;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        this.n = longDigest.n;
    }

    public static long c(long j2, long j3, long j4) {
        return ((~j2) & j4) ^ (j3 & j2);
    }

    public static long d(long j2, long j3, long j4) {
        return ((j2 & j4) ^ (j2 & j3)) ^ (j3 & j4);
    }

    public static long e(long j2) {
        return ((j2 >>> 39) | (j2 << 25)) ^ (((j2 << 36) | (j2 >>> 28)) ^ ((j2 << 30) | (j2 >>> 34)));
    }

    public static long f(long j2) {
        return ((j2 >>> 41) | (j2 << 23)) ^ (((j2 << 50) | (j2 >>> 14)) ^ ((j2 << 46) | (j2 >>> 18)));
    }

    @Override // org.spongycastle.crypto.Digest
    public final void a(int i2, byte[] bArr) {
        int length = 0;
        while (this.f77854b != 0 && i2 > 0) {
            k(bArr[length]);
            length++;
            i2--;
        }
        while (true) {
            byte[] bArr2 = this.f77853a;
            if (i2 <= bArr2.length) {
                break;
            }
            this.m[this.n] = Pack.b(bArr, length);
            int i3 = this.n + 1;
            this.n = i3;
            if (i3 == 16) {
                h();
            }
            length += bArr2.length;
            i2 -= bArr2.length;
            this.f77855c += (long) bArr2.length;
        }
        while (i2 > 0) {
            k(bArr[length]);
            length++;
            i2--;
        }
    }

    public final void g() {
        long j2 = this.f77855c;
        if (j2 > 2305843009213693951L) {
            this.d += j2 >>> 61;
            this.f77855c = j2 & 2305843009213693951L;
        }
        long j3 = this.f77855c << 3;
        long j4 = this.d;
        k((byte) -128);
        while (this.f77854b != 0) {
            k((byte) 0);
        }
        if (this.n > 14) {
            h();
        }
        long[] jArr = this.m;
        jArr[14] = j4;
        jArr[15] = j3;
        h();
    }

    public final void h() {
        long[] jArr;
        long j2 = this.f77855c;
        if (j2 > 2305843009213693951L) {
            this.d += j2 >>> 61;
            this.f77855c = j2 & 2305843009213693951L;
        }
        int i2 = 16;
        while (true) {
            jArr = this.m;
            if (i2 > 79) {
                break;
            }
            long j3 = jArr[i2 - 2];
            long j4 = ((j3 >>> 6) ^ (((j3 << 45) | (j3 >>> 19)) ^ ((j3 << 3) | (j3 >>> 61)))) + jArr[i2 - 7];
            long j5 = jArr[i2 - 15];
            jArr[i2] = j4 + ((((j5 >>> 8) | (j5 << 56)) ^ ((j5 << 63) | (j5 >>> 1))) ^ (j5 >>> 7)) + jArr[i2 - 16];
            i2++;
        }
        long j6 = this.f77856e;
        long j7 = this.f77857f;
        long j8 = this.g;
        long j9 = this.f77858h;
        long j10 = this.f77859i;
        long j11 = this.f77860j;
        long j12 = this.f77861k;
        long j13 = j6;
        long j14 = j9;
        long j15 = j7;
        long j16 = j10;
        long j17 = j8;
        long j18 = j11;
        long j19 = this.l;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 10) {
            long jF = f(j16);
            long jC = c(j16, j18, j12);
            long j20 = j16;
            long j21 = j12;
            long j22 = j18;
            long[] jArr2 = o;
            int i5 = i4 + 1;
            long j23 = jF + jC + jArr2[i4] + jArr[i4] + j19;
            long j24 = j14 + j23;
            long j25 = j15;
            long j26 = j17;
            long jE = e(j13) + d(j13, j25, j26) + j23;
            long jF2 = f(j24) + c(j24, j20, j22) + jArr2[i5];
            int i6 = i4 + 2;
            long j27 = jF2 + jArr[i5] + j21;
            long j28 = j26 + j27;
            long j29 = j13;
            long jE2 = e(jE) + d(jE, j29, j25) + j27;
            int i7 = i4 + 3;
            long jF3 = f(j28) + c(j28, j24, j20) + jArr2[i6] + jArr[i6] + j22;
            long j30 = j25 + jF3;
            long jE3 = e(jE2) + d(jE2, jE, j29) + jF3;
            int i8 = i4 + 4;
            long jF4 = f(j30) + c(j30, j28, j24) + jArr2[i7] + jArr[i7] + j20;
            long j31 = j29 + jF4;
            long jE4 = e(jE3) + d(jE3, jE2, jE) + jF4;
            int i9 = i4 + 5;
            long jF5 = f(j31) + c(j31, j30, j28) + jArr2[i8] + jArr[i8] + j24;
            long j32 = jE + jF5;
            long jE5 = e(jE4) + d(jE4, jE3, jE2) + jF5;
            int i10 = i4 + 6;
            long jF6 = f(j32) + c(j32, j31, j30) + jArr2[i9] + jArr[i9] + j28;
            long j33 = jE2 + jF6;
            long jE6 = e(jE5) + d(jE5, jE4, jE3) + jF6;
            int i11 = i4 + 7;
            long jF7 = f(j33) + c(j33, j32, j31) + jArr2[i10] + jArr[i10] + j30;
            long j34 = jE3 + jF7;
            long jE7 = e(jE6) + d(jE6, jE5, jE4) + jF7;
            i4 += 8;
            long jF8 = f(j34) + c(j34, j33, j32) + jArr2[i11] + jArr[i11] + j31;
            long j35 = jE4 + jF8;
            long jE8 = jF8 + e(jE7) + d(jE7, jE6, jE5);
            i3++;
            j18 = j34;
            j17 = jE6;
            j16 = j35;
            j19 = j32;
            j15 = jE7;
            j14 = jE5;
            j12 = j33;
            j13 = jE8;
        }
        this.f77856e += j13;
        this.f77857f += j15;
        this.g += j17;
        this.f77858h += j14;
        this.f77859i += j16;
        this.f77860j += j18;
        this.f77861k += j12;
        this.l += j19;
        this.n = 0;
        for (int i12 = 0; i12 < 16; i12++) {
            jArr[i12] = 0;
        }
    }

    public void i() {
        this.f77855c = 0L;
        this.d = 0L;
        int i2 = 0;
        this.f77854b = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f77853a;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = 0;
            i3++;
        }
        this.n = 0;
        while (true) {
            long[] jArr = this.m;
            if (i2 == jArr.length) {
                return;
            }
            jArr[i2] = 0;
            i2++;
        }
    }

    public final void j(byte[] bArr) {
        int iA = Pack.a(bArr, 8);
        this.f77854b = iA;
        System.arraycopy(bArr, 0, this.f77853a, 0, iA);
        this.f77855c = Pack.b(bArr, 12);
        this.d = Pack.b(bArr, 20);
        this.f77856e = Pack.b(bArr, 28);
        this.f77857f = Pack.b(bArr, 36);
        this.g = Pack.b(bArr, 44);
        this.f77858h = Pack.b(bArr, 52);
        this.f77859i = Pack.b(bArr, 60);
        this.f77860j = Pack.b(bArr, 68);
        this.f77861k = Pack.b(bArr, 76);
        this.l = Pack.b(bArr, 84);
        this.n = Pack.a(bArr, 92);
        for (int i2 = 0; i2 < this.n; i2++) {
            this.m[i2] = Pack.b(bArr, (i2 * 8) + 96);
        }
    }

    public final void k(byte b2) {
        int i2 = this.f77854b;
        int i3 = i2 + 1;
        this.f77854b = i3;
        byte[] bArr = this.f77853a;
        bArr[i2] = b2;
        if (i3 == bArr.length) {
            this.m[this.n] = Pack.b(bArr, 0);
            int i4 = this.n + 1;
            this.n = i4;
            if (i4 == 16) {
                h();
            }
            this.f77854b = 0;
        }
        this.f77855c++;
    }

    public LongDigest() {
        this.f77853a = new byte[8];
        this.m = new long[80];
        this.f77854b = 0;
        i();
    }
}
