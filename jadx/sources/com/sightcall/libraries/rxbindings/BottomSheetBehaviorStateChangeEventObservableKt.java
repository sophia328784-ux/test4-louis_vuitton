package com.sightcall.libraries.rxbindings;

import com.google.android.material.bottomsheet.BottomSheetBehavior;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0003H\u0007¨\u0006\u0004"}, d2 = {"stateChangeEvents", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "rx_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class BottomSheetBehaviorStateChangeEventObservableKt {
    public static final Observable<BottomSheetBehaviorStateChangeEvent> stateChangeEvents(BottomSheetBehavior<?> bottomSheetBehavior) {
        bottomSheetBehavior.getClass();
        return new BottomSheetBehaviorStateChangeEventObservable(bottomSheetBehavior);
    }
}
