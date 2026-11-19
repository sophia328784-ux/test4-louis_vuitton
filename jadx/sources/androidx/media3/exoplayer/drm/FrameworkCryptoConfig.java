package androidx.media3.exoplayer.drm;

import android.os.Build;
import androidx.media3.decoder.CryptoConfig;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class FrameworkCryptoConfig implements CryptoConfig {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f15090c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f15091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f15092b;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        f15090c = z;
    }

    @Deprecated
    public FrameworkCryptoConfig(UUID uuid, byte[] bArr, boolean z) {
        this.f15091a = uuid;
        this.f15092b = bArr;
    }

    public FrameworkCryptoConfig(UUID uuid, byte[] bArr) {
        this(uuid, bArr, false);
    }
}
