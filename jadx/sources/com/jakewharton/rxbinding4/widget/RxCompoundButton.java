package com.jakewharton.rxbinding4.widget;

import androidx.appcompat.widget.SwitchCompat;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {1, 4, 0})
public abstract class RxCompoundButton {
    public static final InitialValueObservable a(SwitchCompat switchCompat) {
        switchCompat.getClass();
        return new CompoundButtonCheckedChangeObservable(switchCompat);
    }
}
