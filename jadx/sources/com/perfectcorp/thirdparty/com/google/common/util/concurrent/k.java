package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
final class k implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f42431a = new k("INSTANCE", 0);

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
