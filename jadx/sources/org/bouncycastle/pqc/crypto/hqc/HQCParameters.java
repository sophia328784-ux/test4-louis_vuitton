package org.bouncycastle.pqc.crypto.hqc;

import com.github.druk.dnssd.NSType;
import com.sightcall.uvc.Camera;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.pqc.crypto.KEMParameters;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes5.dex */
public class HQCParameters implements KEMParameters {
    static final int GF_MUL_ORDER = 255;
    static final int PARAM_M = 8;
    public static final HQCParameters hqc128 = new HQCParameters("hqc-128", 17669, 46, KyberEngine.KyberPolyBytes, 16, 31, 15, 66, 75, 75, 16767881, 4, new int[]{89, 69, 153, 116, 176, 117, 111, 75, 73, 233, 242, 233, 65, 210, 21, 139, 103, 173, 67, 118, 105, 210, 174, 110, 74, 69, 228, 82, 255, 181, 1});
    public static final HQCParameters hqc192 = new HQCParameters("hqc-192", 35851, 56, Camera.DEFAULT_PREVIEW_WIDTH, 24, 33, 16, 100, 114, 114, 16742417, 5, new int[]{45, 216, 239, 24, NSType.MAILB, 104, 27, 40, 107, 50, 163, 210, 227, 134, BERTags.FLAGS, 158, 119, 13, 158, 1, 238, 164, 82, 43, 15, 232, 246, 142, 50, 189, 29, 232, 1});
    public static final HQCParameters hqc256 = new HQCParameters("hqc-256", 57637, 90, Camera.DEFAULT_PREVIEW_WIDTH, 32, 59, 29, 131, 149, 149, 16772367, 5, new int[]{49, 167, 49, 39, 200, 121, 124, 91, 240, 63, 148, 71, 150, 123, 87, 101, 32, 215, 159, 71, 201, 115, 97, 210, 186, 183, 141, 217, 123, 12, 31, 243, Sink.ORIENTATION_180, 219, 152, 239, 99, 141, 4, 246, 191, 144, 8, 232, 47, 27, 141, 178, 130, 64, 124, 47, 39, 188, 216, 48, 199, 187, 1});
    private int delta;
    private int fft;
    private int g;
    private int[] generatorPoly;
    private HQCEngine hqcEngine;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f77665k;
    private int n;
    private int n1;
    private int n2;
    private final String name;
    private int utilRejectionThreshold;
    private int w;
    private int we;
    private int wr;

    private HQCParameters(String str, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int[] iArr) {
        this.name = str;
        this.n = i2;
        this.n1 = i3;
        this.n2 = i4;
        this.f77665k = i5;
        this.delta = i7;
        this.w = i8;
        this.wr = i9;
        this.we = i10;
        this.generatorPoly = iArr;
        this.g = i6;
        this.utilRejectionThreshold = i11;
        this.fft = i12;
        this.hqcEngine = new HQCEngine(i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, iArr);
    }

    public int getDelta() {
        return this.delta;
    }

    public HQCEngine getEngine() {
        return this.hqcEngine;
    }

    public int getK() {
        return this.f77665k;
    }

    public int getN() {
        return this.n;
    }

    public int getN1() {
        return this.n1;
    }

    public int getN1N2_BYTES() {
        return ((this.n1 * this.n2) + 7) / 8;
    }

    public int getN2() {
        return this.n2;
    }

    public int getN_BYTES() {
        return (this.n + 7) / 8;
    }

    public String getName() {
        return this.name;
    }

    public int getSALT_SIZE_BYTES() {
        return 16;
    }

    public int getSHA512_BYTES() {
        return 64;
    }

    public int getSessionKeySize() {
        return this.f77665k * 8;
    }

    public int getW() {
        return this.w;
    }

    public int getWe() {
        return this.we;
    }

    public int getWr() {
        return this.wr;
    }
}
