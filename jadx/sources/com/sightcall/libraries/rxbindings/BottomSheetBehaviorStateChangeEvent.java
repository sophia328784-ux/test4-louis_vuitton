package com.sightcall.libraries.rxbindings;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEvent;", "", "view", "Landroid/view/View;", "newState", "", "<init>", "(Landroid/view/View;I)V", "getView", "()Landroid/view/View;", "getNewState", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "rx_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BottomSheetBehaviorStateChangeEvent {
    private final int newState;
    private final View view;

    public BottomSheetBehaviorStateChangeEvent(View view, int i2) {
        view.getClass();
        this.view = view;
        this.newState = i2;
    }

    public static /* synthetic */ BottomSheetBehaviorStateChangeEvent copy$default(BottomSheetBehaviorStateChangeEvent bottomSheetBehaviorStateChangeEvent, View view, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            view = bottomSheetBehaviorStateChangeEvent.view;
        }
        if ((i3 & 2) != 0) {
            i2 = bottomSheetBehaviorStateChangeEvent.newState;
        }
        return bottomSheetBehaviorStateChangeEvent.copy(view, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final View getView() {
        return this.view;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getNewState() {
        return this.newState;
    }

    public final BottomSheetBehaviorStateChangeEvent copy(View view, int newState) {
        view.getClass();
        return new BottomSheetBehaviorStateChangeEvent(view, newState);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BottomSheetBehaviorStateChangeEvent)) {
            return false;
        }
        BottomSheetBehaviorStateChangeEvent bottomSheetBehaviorStateChangeEvent = (BottomSheetBehaviorStateChangeEvent) other;
        return Intrinsics.c(this.view, bottomSheetBehaviorStateChangeEvent.view) && this.newState == bottomSheetBehaviorStateChangeEvent.newState;
    }

    public final int getNewState() {
        return this.newState;
    }

    public final View getView() {
        return this.view;
    }

    public int hashCode() {
        return Integer.hashCode(this.newState) + (this.view.hashCode() * 31);
    }

    public String toString() {
        return "BottomSheetBehaviorStateChangeEvent(view=" + this.view + ", newState=" + this.newState + ")";
    }
}
