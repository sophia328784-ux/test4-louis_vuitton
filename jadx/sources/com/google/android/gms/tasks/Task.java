package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Task<TResult> {
    public void a(Executor executor, OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public void b(Executor executor, OnCompleteListener onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract Task c(OnFailureListener onFailureListener);

    public abstract Task d(Executor executor, OnFailureListener onFailureListener);

    public abstract Task e(OnSuccessListener onSuccessListener);

    public abstract Task f(Executor executor, OnSuccessListener onSuccessListener);

    public Task g(Executor executor, Continuation continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public abstract Exception getException();

    public abstract TResult getResult();

    public Task h(Executor executor, Continuation continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract Object i();

    public abstract boolean isSuccessful();

    public abstract boolean j();

    public abstract boolean k();

    public abstract Task l(SuccessContinuation successContinuation);

    public Task m(Executor executor, SuccessContinuation successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
