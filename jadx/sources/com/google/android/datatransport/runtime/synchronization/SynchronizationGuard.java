package com.google.android.datatransport.runtime.synchronization;

/* JADX INFO: loaded from: classes2.dex */
public interface SynchronizationGuard {

    public interface CriticalSection<T> {
        Object execute();
    }

    Object c(CriticalSection criticalSection);
}
