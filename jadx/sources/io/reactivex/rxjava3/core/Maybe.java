package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.exceptions.Exceptions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Maybe<T> implements MaybeSource<T> {
    @Override // io.reactivex.rxjava3.core.MaybeSource
    public final void a(MaybeObserver maybeObserver) {
        Objects.requireNonNull(maybeObserver, "observer is null");
        try {
            c(maybeObserver);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            Exceptions.a(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void c(MaybeObserver maybeObserver);
}
