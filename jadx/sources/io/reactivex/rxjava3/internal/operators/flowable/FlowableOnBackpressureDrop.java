package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class FlowableOnBackpressureDrop<T> extends AbstractFlowableWithUpstream<T, T> implements Consumer<T> {
    public final Consumer d;

    public static final class BackpressureDropSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -6246093802440953054L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FlowableSubscriber f70155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Consumer f70156c;
        public Subscription d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70157e;

        public BackpressureDropSubscriber(FlowableSubscriber flowableSubscriber, Consumer consumer) {
            this.f70155b = flowableSubscriber;
            this.f70156c = consumer;
        }

        @Override // org.reactivestreams.Subscriber
        public final void b(Subscription subscription) {
            if (SubscriptionHelper.b(this.d, subscription)) {
                this.d = subscription;
                this.f70155b.b(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.d.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onComplete() {
            if (this.f70157e) {
                return;
            }
            this.f70157e = true;
            this.f70155b.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onError(Throwable th) {
            if (this.f70157e) {
                RxJavaPlugins.b(th);
            } else {
                this.f70157e = true;
                this.f70155b.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(Object obj) {
            if (this.f70157e) {
                return;
            }
            if (get() != 0) {
                this.f70155b.onNext(obj);
                BackpressureHelper.b(this, 1L);
                return;
            }
            try {
                this.f70156c.accept(obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                cancel();
                onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j2) {
            if (SubscriptionHelper.a(j2)) {
                BackpressureHelper.a(this, j2);
            }
        }
    }

    public FlowableOnBackpressureDrop(Flowable<T> flowable) {
        super(flowable);
        this.d = this;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void c(FlowableSubscriber flowableSubscriber) {
        this.f70140c.b(new BackpressureDropSubscriber(flowableSubscriber, this.d));
    }

    public FlowableOnBackpressureDrop(Flowable<T> flowable, Consumer<? super T> consumer) {
        super(flowable);
        this.d = consumer;
    }
}
