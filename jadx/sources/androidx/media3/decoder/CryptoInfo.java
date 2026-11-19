package androidx.media3.decoder;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
public final class CryptoInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f14532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f14533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14534c;
    public int[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f14535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14536f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f14538i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PatternHolderV24 f14539j;

    public static final class PatternHolderV24 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaCodec.CryptoInfo f14540a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaCodec.CryptoInfo.Pattern f14541b = new MediaCodec.CryptoInfo.Pattern(0, 0);

        public PatternHolderV24(MediaCodec.CryptoInfo cryptoInfo) {
            this.f14540a = cryptoInfo;
        }
    }

    public CryptoInfo() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f14538i = cryptoInfo;
        this.f14539j = new PatternHolderV24(cryptoInfo);
    }

    public final void a(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3, int i4, int i5) {
        this.f14536f = i2;
        this.d = iArr;
        this.f14535e = iArr2;
        this.f14533b = bArr;
        this.f14532a = bArr2;
        this.f14534c = i3;
        this.g = i4;
        this.f14537h = i5;
        MediaCodec.CryptoInfo cryptoInfo = this.f14538i;
        cryptoInfo.numSubSamples = i2;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i3;
        PatternHolderV24 patternHolderV24 = this.f14539j;
        patternHolderV24.getClass();
        MediaCodec.CryptoInfo.Pattern pattern = patternHolderV24.f14541b;
        pattern.set(i4, i5);
        patternHolderV24.f14540a.setPattern(pattern);
    }
}
