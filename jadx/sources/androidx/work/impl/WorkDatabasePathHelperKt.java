package androidx.work.impl;

import androidx.work.Logger;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WorkDatabasePathHelperKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f20338a;

    static {
        Logger.b("WrkDbPathHelper");
        f20338a = new String[]{"-journal", "-shm", "-wal"};
    }
}
