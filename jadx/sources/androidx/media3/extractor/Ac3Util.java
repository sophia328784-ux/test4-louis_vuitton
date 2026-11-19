package androidx.media3.extractor;

import com.sightcall.uvc.Camera;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public abstract class Ac3Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f16069a = {1, 2, 3, 6};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f16070b = {48000, 44100, 32000};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f16071c = {24000, 22050, 16000};
    public static final int[] d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f16072e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, BERTags.FLAGS, 256, DilithiumEngine.DilithiumPolyT1PackedBytes, KyberEngine.KyberPolyBytes, 448, 512, 576, Camera.DEFAULT_PREVIEW_WIDTH};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f16073f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int a(int i2, int i3) {
        int i4 = i3 / 2;
        if (i2 < 0 || i2 >= 3 || i3 < 0 || i4 >= 19) {
            return -1;
        }
        int i5 = f16070b[i2];
        if (i5 == 44100) {
            return ((i3 % 2) + f16073f[i4]) * 2;
        }
        int i6 = f16072e[i4];
        return i5 == 32000 ? i6 * 6 : i6 * 4;
    }
}
