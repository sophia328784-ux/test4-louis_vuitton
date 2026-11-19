package androidx.camera.core.impl;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface Observable<T> {

    public interface Observer<T> {
        void a(Object obj);

        void onError(Throwable th);
    }

    ListenableFuture a();

    void b(Executor executor, Observer observer);

    void d(Observer observer);
}
