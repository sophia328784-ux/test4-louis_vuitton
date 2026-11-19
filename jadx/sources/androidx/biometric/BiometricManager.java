package androidx.biometric;

import android.content.Context;
import android.os.Build;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;

/* JADX INFO: loaded from: classes.dex */
public class BiometricManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DefaultInjector f1368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.hardware.biometrics.BiometricManager f1369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FingerprintManagerCompat f1370c;

    public static class Api29Impl {
        public static int a(android.hardware.biometrics.BiometricManager biometricManager) {
            return biometricManager.canAuthenticate();
        }

        public static android.hardware.biometrics.BiometricManager b(Context context) {
            return (android.hardware.biometrics.BiometricManager) context.getSystemService(android.hardware.biometrics.BiometricManager.class);
        }
    }

    public static class Api30Impl {
        public static int a(android.hardware.biometrics.BiometricManager biometricManager, int i2) {
            return biometricManager.canAuthenticate(i2);
        }
    }

    public interface Authenticators {
    }

    public static class DefaultInjector implements Injector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f1371a;

        public DefaultInjector(Context context) {
            this.f1371a = context.getApplicationContext();
        }
    }

    public interface Injector {
    }

    public BiometricManager(DefaultInjector defaultInjector) {
        this.f1368a = defaultInjector;
        this.f1369b = Api29Impl.b(defaultInjector.f1371a);
        this.f1370c = Build.VERSION.SDK_INT <= 29 ? new FingerprintManagerCompat() : null;
    }

    public static BiometricManager b(Context context) {
        return new BiometricManager(new DefaultInjector(context));
    }

    public final int a() {
        int i2 = Build.VERSION.SDK_INT;
        android.hardware.biometrics.BiometricManager biometricManager = this.f1369b;
        if (i2 >= 30) {
            if (biometricManager == null) {
                return 1;
            }
            return Api30Impl.a(biometricManager, 255);
        }
        if (KeyguardUtils$Api23Impl.a(this.f1368a.f1371a) != null) {
            if (i2 == 29) {
                if (biometricManager == null) {
                    return 1;
                }
                return Api29Impl.a(biometricManager);
            }
            if (this.f1370c == null) {
                return 1;
            }
        }
        return 12;
    }
}
