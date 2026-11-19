package androidx.compose.runtime.internal;

import android.os.Looper;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Thread_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f8409a;

    static {
        long id;
        try {
            id = Looper.getMainLooper().getThread().getId();
        } catch (Exception unused) {
            id = -1;
        }
        f8409a = id;
    }
}
