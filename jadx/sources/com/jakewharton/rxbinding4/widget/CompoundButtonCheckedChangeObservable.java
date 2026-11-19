package com.jakewharton.rxbinding4.widget;

import android.widget.CompoundButton;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/CompoundButtonCheckedChangeObservable;", "Lcom/jakewharton/rxbinding4/InitialValueObservable;", "", "Landroid/widget/CompoundButton;", "view", "<init>", "(Landroid/widget/CompoundButton;)V", "Listener", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
final class CompoundButtonCheckedChangeObservable extends InitialValueObservable<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompoundButton f35805b;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/CompoundButtonCheckedChangeObservable$Listener;", "Lio/reactivex/rxjava3/android/MainThreadDisposable;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "Landroid/widget/CompoundButton;", "view", "Lio/reactivex/rxjava3/core/Observer;", "", "observer", "<init>", "(Landroid/widget/CompoundButton;Lio/reactivex/rxjava3/core/Observer;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    public static final class Listener extends MainThreadDisposable implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CompoundButton f35806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Observer f35807c;

        public Listener(CompoundButton compoundButton, Observer<? super Boolean> observer) {
            compoundButton.getClass();
            observer.getClass();
            this.f35806b = compoundButton;
            this.f35807c = observer;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            compoundButton.getClass();
            if (!isDisposed()) {
                this.f35807c.onNext(Boolean.valueOf(z));
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(compoundButton);
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public final void onDispose() {
            this.f35806b.setOnCheckedChangeListener(null);
        }
    }

    public CompoundButtonCheckedChangeObservable(CompoundButton compoundButton) {
        compoundButton.getClass();
        this.f35805b = compoundButton;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public final Boolean c() {
        return Boolean.valueOf(this.f35805b.isChecked());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public final void d(Observer observer) {
        observer.getClass();
        if (Preconditions.a(observer)) {
            CompoundButton compoundButton = this.f35805b;
            Listener listener = new Listener(compoundButton, observer);
            observer.onSubscribe(listener);
            compoundButton.setOnCheckedChangeListener(listener);
        }
    }
}
