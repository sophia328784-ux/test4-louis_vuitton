package dagger.hilt.android.internal.lifecycle;

import android.os.Looper;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.internal.ThreadUtil;
import dagger.hilt.android.lifecycle.RetainedLifecycle;
import defpackage.md;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class RetainedLifecycleImpl implements ActivityRetainedLifecycle, ViewModelLifecycle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f68500a = new HashSet();

    public final void a() {
        if (ThreadUtil.f68493a == null) {
            ThreadUtil.f68493a = Looper.getMainLooper().getThread();
        }
        if (Thread.currentThread() != ThreadUtil.f68493a) {
            md.k("Must be called on the Main thread.");
            return;
        }
        Iterator it = this.f68500a.iterator();
        while (it.hasNext()) {
            ((RetainedLifecycle.OnClearedListener) it.next()).onCleared();
        }
    }
}
