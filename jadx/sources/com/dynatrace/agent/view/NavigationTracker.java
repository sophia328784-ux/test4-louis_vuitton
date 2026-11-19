package com.dynatrace.agent.view;

import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.android.agent.util.Utility;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/view/NavigationTracker;", "", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavigationTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f27215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f27216b;

    public NavigationTracker(TimeProvider timeProvider) {
        timeProvider.getClass();
        this.f27215a = timeProvider;
        this.f27216b = new AtomicReference(null);
    }

    public final synchronized NavigationEvent a(String str, String str2, String str3, boolean z) {
        NavigationEvent navigationEvent;
        try {
            if (((NavigationEvent) this.f27216b.get()) != null) {
                Utility.b("Replacing active navigation with a new one");
            }
            navigationEvent = new NavigationEvent(str, str2, str3, this.f27215a.a(), z);
            this.f27216b.set(navigationEvent);
        } catch (Throwable th) {
            throw th;
        }
        return navigationEvent;
    }
}
