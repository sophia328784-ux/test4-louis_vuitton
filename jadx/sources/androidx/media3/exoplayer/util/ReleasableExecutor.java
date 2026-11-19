package androidx.media3.exoplayer.util;

import defpackage.v40;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public interface ReleasableExecutor extends Executor {
    static ReleasableExecutor d(final ExecutorService executorService, final v40 v40Var) {
        return new ReleasableExecutor() { // from class: androidx.media3.exoplayer.util.ReleasableExecutor.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                executorService.execute(runnable);
            }

            @Override // androidx.media3.exoplayer.util.ReleasableExecutor
            public final void release() {
                v40Var.accept(executorService);
            }
        };
    }

    void release();
}
