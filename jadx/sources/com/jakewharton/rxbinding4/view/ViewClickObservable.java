package com.jakewharton.rxbinding4.view;

import android.view.View;
import com.dynatrace.android.callback.Callback;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/jakewharton/rxbinding4/view/ViewClickObservable;", "Lio/reactivex/rxjava3/core/Observable;", "", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "Listener", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
final class ViewClickObservable extends Observable<Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f35802b;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/jakewharton/rxbinding4/view/ViewClickObservable$Listener;", "Lio/reactivex/rxjava3/android/MainThreadDisposable;", "Landroid/view/View$OnClickListener;", "Landroid/view/View;", "view", "Lio/reactivex/rxjava3/core/Observer;", "", "observer", "<init>", "(Landroid/view/View;Lio/reactivex/rxjava3/core/Observer;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    public static final class Listener extends MainThreadDisposable implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f35803b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Observer f35804c;

        public Listener(View view, Observer<? super Unit> observer) {
            view.getClass();
            observer.getClass();
            this.f35803b = view;
            this.f35804c = observer;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Callback.n(view);
            try {
                view.getClass();
                if (!isDisposed()) {
                    this.f35804c.onNext(Unit.f71739a);
                }
            } finally {
                Callback.o();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public final void onDispose() {
            this.f35803b.setOnClickListener(null);
        }
    }

    public ViewClickObservable(View view) {
        view.getClass();
        this.f35802b = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        observer.getClass();
        if (Preconditions.a(observer)) {
            View view = this.f35802b;
            Listener listener = new Listener(view, observer);
            observer.onSubscribe(listener);
            view.setOnClickListener(listener);
        }
    }
}
