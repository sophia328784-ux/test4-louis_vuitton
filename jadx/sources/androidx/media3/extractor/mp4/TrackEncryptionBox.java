package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Log;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class TrackEncryptionBox {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f16600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TrackOutput.CryptoData f16602c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f16603e;

    public TrackEncryptionBox(boolean z, String str, int i2, byte[] bArr, int i3, int i4, byte[] bArr2) {
        byte b2 = 0;
        int i5 = 1;
        Preconditions.g((i2 == 0) ^ (bArr2 == null));
        this.f16600a = z;
        this.f16601b = str;
        this.d = i2;
        this.f16603e = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    if (!str.equals("cbc1")) {
                        b2 = -1;
                    }
                    break;
                case 3046671:
                    b2 = !str.equals("cbcs") ? (byte) -1 : (byte) 1;
                    break;
                case 3049879:
                    b2 = !str.equals("cenc") ? (byte) -1 : (byte) 2;
                    break;
                case 3049895:
                    b2 = !str.equals("cens") ? (byte) -1 : (byte) 3;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            switch (b2) {
                case 0:
                case 1:
                    i5 = 2;
                    break;
                case 2:
                case 3:
                    break;
                default:
                    Log.g("Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                    break;
            }
        }
        this.f16602c = new TrackOutput.CryptoData(i5, bArr, i3, i4);
    }
}
