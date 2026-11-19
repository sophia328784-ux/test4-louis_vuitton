package androidx.paging;

import android.os.Build;
import android.util.Log;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/paging/PagingLogger;", "", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PagingLogger {
    public static boolean a(int i2) {
        return Build.ID != null && Log.isLoggable("Paging", i2);
    }
}
