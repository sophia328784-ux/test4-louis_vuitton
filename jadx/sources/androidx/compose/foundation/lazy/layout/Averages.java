package androidx.compose.foundation.lazy.layout;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/layout/Averages;", "", "<init>", "()V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Averages {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f5385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f5386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f5387c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5388e = -1;

    public static long a(long j2, long j3) {
        if (j3 == 0) {
            return j2;
        }
        return (j2 / 4) + ((j3 / 4) * 3);
    }
}
