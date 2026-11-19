package com.jakewharton.rxbinding4.view;

import android.view.View;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {1, 4, 0})
public abstract class RxView {
    public static final Observable a(View view) {
        view.getClass();
        return new ViewClickObservable(view);
    }
}
