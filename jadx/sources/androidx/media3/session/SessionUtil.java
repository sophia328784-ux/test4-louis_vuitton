package androidx.media3.session;

import android.content.Context;
import android.os.RemoteException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
abstract class SessionUtil {

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PackageValidationResult {
    }

    public static int a(Context context, int i2, String str) {
        if (str == null) {
            return 1;
        }
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
        if (packagesForUid == null || packagesForUid.length == 0) {
            return 2;
        }
        for (String str2 : packagesForUid) {
            if (str2.equals(str)) {
                return 0;
            }
        }
        return 1;
    }

    public static void b(IMediaController iMediaController) {
        if (iMediaController != null) {
            try {
                iMediaController.e();
            } catch (RemoteException unused) {
            }
        }
    }
}
