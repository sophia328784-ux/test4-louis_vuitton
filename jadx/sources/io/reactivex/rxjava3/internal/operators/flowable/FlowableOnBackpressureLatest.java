package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public final class FlowableOnBackpressureLatest<T> extends AbstractFlowableWithUpstream<T, T> {
    public final Consumer d;

    public static final class BackpressureLatestSubscriber<T> extends AbstractBackpressureThrottlingSubscriber<T, T> {
        private static final long serialVersionUID = 163080509307634843L;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Consumer f70160i;

        public BackpressureLatestSubscriber(FlowableSubscriber flowableSubscriber, Consumer consumer) {
            super(flowableSubscriber);
            this.f70160i = consumer;
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            Object andSet = this.f70139h.getAndSet(obj);
            Consumer consumer = this.f70160i;
            if (consumer != null && andSet != null) {
                try {
                    consumer.accept(andSet);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    this.f70136c.cancel();
                    this.f70135b.onError(th);
                }
            }
            c();
        }
    }

    public FlowableOnBackpressureLatest(Flowable<T> flowable, Consumer<? super T> consumer) {
        super(flowable);
        this.d = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void c(FlowableSubscriber flowableSubscriber) {
        this.f70140c.b(new BackpressureLatestSubscriber(flowableSubscriber, this.d));
    }
}
