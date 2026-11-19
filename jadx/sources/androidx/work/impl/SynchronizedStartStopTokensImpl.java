package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/work/impl/SynchronizedStartStopTokensImpl;", "Landroidx/work/impl/StartStopTokens;", "delegate", "<init>", "(Landroidx/work/impl/StartStopTokens;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SynchronizedStartStopTokensImpl implements StartStopTokens {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StartStopTokens f20322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f20323b;

    public SynchronizedStartStopTokensImpl(StartStopTokens startStopTokens) {
        startStopTokens.getClass();
        this.f20322a = startStopTokens;
        this.f20323b = new Object();
    }

    @Override // androidx.work.impl.StartStopTokens
    public final boolean a(WorkGenerationalId workGenerationalId) {
        boolean zA;
        synchronized (this.f20323b) {
            zA = this.f20322a.a(workGenerationalId);
        }
        return zA;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken b(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopTokenB;
        workGenerationalId.getClass();
        synchronized (this.f20323b) {
            startStopTokenB = this.f20322a.b(workGenerationalId);
        }
        return startStopTokenB;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken d(WorkGenerationalId workGenerationalId) {
        StartStopToken startStopTokenD;
        synchronized (this.f20323b) {
            startStopTokenD = this.f20322a.d(workGenerationalId);
        }
        return startStopTokenD;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final List remove(String str) {
        List listRemove;
        str.getClass();
        synchronized (this.f20323b) {
            listRemove = this.f20322a.remove(str);
        }
        return listRemove;
    }
}
