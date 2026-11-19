package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
public class MutableStateObservable<T> extends StateObservable<T> {
    public final void g(Throwable th) {
        f(new AutoValue_StateObservable_ErrorWrapper(th));
    }
}
