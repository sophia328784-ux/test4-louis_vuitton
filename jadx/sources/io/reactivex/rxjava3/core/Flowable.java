package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Flowable<T> implements Publisher<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f70022b = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    @Override // org.reactivestreams.Publisher
    public final void a(Subscriber subscriber) {
        b((FlowableSubscriber) subscriber);
    }

    public final void b(FlowableSubscriber flowableSubscriber) {
        try {
            c(flowableSubscriber);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            Exceptions.a(th);
            RxJavaPlugins.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void c(FlowableSubscriber flowableSubscriber);
}
