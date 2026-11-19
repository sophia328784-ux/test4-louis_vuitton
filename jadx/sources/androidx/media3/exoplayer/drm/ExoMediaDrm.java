package androidx.media3.exoplayer.drm;

import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public interface ExoMediaDrm {

    public interface OnEventListener {
    }

    public interface OnExpirationUpdateListener {
    }

    public interface OnKeyStatusChangeListener {
    }

    public interface Provider {
        ExoMediaDrm i(UUID uuid);
    }

    public static final class ProvisionRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f15088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15089b;

        public ProvisionRequest(byte[] bArr, String str) {
            this.f15088a = bArr;
            this.f15089b = str;
        }
    }

    Map a(byte[] bArr);

    ProvisionRequest b();

    byte[] c();

    void d(byte[] bArr, byte[] bArr2);

    void e(byte[] bArr);

    int f();

    CryptoConfig g(byte[] bArr);

    void h(byte[] bArr);

    byte[] i(byte[] bArr, byte[] bArr2);

    void j(OnEventListener onEventListener);

    KeyRequest k(byte[] bArr, List list, int i2, HashMap map);

    default void l(byte[] bArr, PlayerId playerId) {
    }

    boolean m(String str, byte[] bArr);

    void release();

    public static final class KeyRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f15086a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15087b;

        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface RequestType {
        }

        public KeyRequest(byte[] bArr, String str, int i2) {
            this.f15086a = bArr;
            this.f15087b = str;
        }

        public KeyRequest(byte[] bArr, String str) {
            this(bArr, str, Integer.MIN_VALUE);
        }
    }
}
