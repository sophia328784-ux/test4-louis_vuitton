package androidx.core.location;

import android.location.Location;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract class LocationCompat {

    public static class Api31Impl {
        public static boolean a(Location location) {
            return location.isMock();
        }
    }

    public static boolean a(Location location) {
        return Build.VERSION.SDK_INT >= 31 ? Api31Impl.a(location) : location.isFromMockProvider();
    }
}
