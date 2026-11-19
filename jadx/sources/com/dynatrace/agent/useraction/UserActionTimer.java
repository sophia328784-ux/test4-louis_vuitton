package com.dynatrace.agent.useraction;

import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionTimer;", "", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/locks/ReentrantLock;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserActionTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f27096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReentrantLock f27097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Job f27098c;
    public Job d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Job f27099e;

    public UserActionTimer(CoroutineScope coroutineScope, ReentrantLock reentrantLock) {
        coroutineScope.getClass();
        reentrantLock.getClass();
        this.f27096a = coroutineScope;
        this.f27097b = reentrantLock;
    }

    public final void a() {
        Utility.b("cancelling all timers");
        Job job = this.f27098c;
        if (job != null) {
            job.cancel(null);
        }
        this.f27098c = null;
        Job job2 = this.d;
        if (job2 != null) {
            job2.cancel(null);
        }
        this.d = null;
        Job job3 = this.f27099e;
        if (job3 != null) {
            job3.cancel(null);
        }
        this.f27099e = null;
    }
}
