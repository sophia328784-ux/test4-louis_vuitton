package com.sightcall.libraries.rxbindings;

import android.os.Looper;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import defpackage.tr;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\nH\u0014R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable;", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;", "behavior", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "<init>", "(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V", "subscribeActual", "", "observer", "Lio/reactivex/rxjava3/core/Observer;", "Listener", "rx_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class BottomSheetBehaviorStateChangeEventObservable extends Observable<BottomSheetBehaviorStateChangeEvent> {
    private final BottomSheetBehavior<?> behavior;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B#\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0014R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservable$Listener;", "Lio/reactivex/rxjava3/android/MainThreadDisposable;", "behavior", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "observer", "Lio/reactivex/rxjava3/core/Observer;", "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;", "<init>", "(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lio/reactivex/rxjava3/core/Observer;)V", "callback", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;", "getCallback", "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;", "onDispose", "", "rx_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Listener extends MainThreadDisposable {
        private final BottomSheetBehavior<?> behavior;
        private final BottomSheetBehavior.BottomSheetCallback callback;
        private final Observer<? super BottomSheetBehaviorStateChangeEvent> observer;

        public Listener(BottomSheetBehavior<?> bottomSheetBehavior, Observer<? super BottomSheetBehaviorStateChangeEvent> observer) {
            bottomSheetBehavior.getClass();
            observer.getClass();
            this.behavior = bottomSheetBehavior;
            this.observer = observer;
            this.callback = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.sightcall.libraries.rxbindings.BottomSheetBehaviorStateChangeEventObservable$Listener$callback$1
                @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
                public void onSlide(View view, float slideOffset) {
                    view.getClass();
                }

                @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
                public void onStateChanged(View view, int newState) {
                    view.getClass();
                    if (this.this$0.isDisposed()) {
                        return;
                    }
                    this.this$0.observer.onNext(new BottomSheetBehaviorStateChangeEvent(view, newState));
                }
            };
        }

        public final BottomSheetBehavior.BottomSheetCallback getCallback() {
            return this.callback;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            BottomSheetBehavior<?> bottomSheetBehavior = this.behavior;
            bottomSheetBehavior.h0.remove(this.callback);
        }
    }

    public BottomSheetBehaviorStateChangeEventObservable(BottomSheetBehavior<?> bottomSheetBehavior) {
        bottomSheetBehavior.getClass();
        this.behavior = bottomSheetBehavior;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super BottomSheetBehaviorStateChangeEvent> observer) {
        observer.getClass();
        if (!Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            observer.onSubscribe(Disposable.f(Functions.f70037b));
            observer.onError(new IllegalStateException(tr.g("Expected to be called on the main thread but was ", Thread.currentThread().getName())));
            return;
        }
        Listener listener = new Listener(this.behavior, observer);
        observer.onSubscribe(listener);
        BottomSheetBehavior<?> bottomSheetBehavior = this.behavior;
        BottomSheetBehavior.BottomSheetCallback callback = listener.getCallback();
        ArrayList arrayList = bottomSheetBehavior.h0;
        if (arrayList.contains(callback)) {
            return;
        }
        arrayList.add(callback);
    }
}
