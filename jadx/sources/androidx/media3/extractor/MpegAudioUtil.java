package androidx.media3.extractor;

import defpackage.ct0;
import defpackage.pq0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public abstract class MpegAudioUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f16180a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f16181b = {44100, 48000, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f16182c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
    public static final int[] d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f16183e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f16184f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    public static final int[] g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    public static int a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i8 = f16181b[i6];
        if (i3 == 2) {
            i8 /= 2;
        } else if (i3 == 0) {
            i8 /= 4;
        }
        int i9 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            return ((((i3 == 3 ? f16182c[i5 - 1] : d[i5 - 1]) * 12) / i8) + i9) * 4;
        }
        if (i3 == 3) {
            i7 = i4 == 2 ? f16183e[i5 - 1] : f16184f[i5 - 1];
        } else {
            i7 = g[i5 - 1];
        }
        if (i3 == 3) {
            return pq0.c(i7, 144, i8, i9);
        }
        return pq0.c(i4 == 1 ? 72 : 144, i7, i8, i9);
    }

    public static final class Header {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16185a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f16186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16187c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16188e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16189f;
        public int g;

        public Header(Header header) {
            this.f16185a = header.f16185a;
            this.f16186b = header.f16186b;
            this.f16187c = header.f16187c;
            this.d = header.d;
            this.f16188e = header.f16188e;
            this.f16189f = header.f16189f;
            this.g = header.g;
        }

        public final boolean a(int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
                return false;
            }
            this.f16185a = i3;
            this.f16186b = MpegAudioUtil.f16180a[3 - i4];
            int i7 = MpegAudioUtil.f16181b[i6];
            this.d = i7;
            if (i3 == 2) {
                this.d = i7 / 2;
            } else if (i3 == 0) {
                this.d = i7 / 4;
            }
            int i8 = (i2 >>> 9) & 1;
            int i9 = 1152;
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        ct0.c();
                        return false;
                    }
                    i9 = KyberEngine.KyberPolyBytes;
                }
            } else if (i3 != 3) {
                i9 = 576;
            }
            this.g = i9;
            if (i4 == 3) {
                int i10 = i3 == 3 ? MpegAudioUtil.f16182c[i5 - 1] : MpegAudioUtil.d[i5 - 1];
                this.f16189f = i10;
                this.f16187c = (((i10 * 12) / this.d) + i8) * 4;
            } else {
                if (i3 == 3) {
                    int i11 = i4 == 2 ? MpegAudioUtil.f16183e[i5 - 1] : MpegAudioUtil.f16184f[i5 - 1];
                    this.f16189f = i11;
                    this.f16187c = ((i11 * 144) / this.d) + i8;
                } else {
                    int i12 = MpegAudioUtil.g[i5 - 1];
                    this.f16189f = i12;
                    this.f16187c = (((i4 == 1 ? 72 : 144) * i12) / this.d) + i8;
                }
            }
            this.f16188e = ((i2 >> 6) & 3) == 3 ? 1 : 2;
            return true;
        }

        public Header() {
        }
    }
}
