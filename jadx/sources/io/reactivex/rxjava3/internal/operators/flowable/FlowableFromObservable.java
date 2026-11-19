package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes4.dex */
public final class FlowableFromObservable<T> extends Flowable<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70141c;

    public static final class SubscriberObserver<T> implements Observer<T>, Subscription {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FlowableSubscriber f70142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f70143c;

        public SubscriberObserver(FlowableSubscriber flowableSubscriber) {
            this.f70142b = flowableSubscriber;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f70143c.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70142b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70142b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70142b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            this.f70143c = disposable;
            this.f70142b.b(this);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j2) {
        }
    }

    public FlowableFromObservable(ObservableSource<T> observableSource) {
        this.f70141c = observableSource;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public final void c(FlowableSubscriber flowableSubscriber) {
        this.f70141c.subscribe(new SubscriberObserver(flowableSubscriber));
    }
}
