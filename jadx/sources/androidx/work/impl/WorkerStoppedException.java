package androidx.work.impl;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/WorkerStoppedException;", "Ljava/util/concurrent/CancellationException;", "", "reason", "<init>", "(I)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkerStoppedException extends CancellationException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20353b;

    public WorkerStoppedException(int i2) {
        this.f20353b = i2;
    }
}
