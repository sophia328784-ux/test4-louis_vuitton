package io.reactivex.rxjava3.android.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Callable {
    @Override // java.util.concurrent.Callable
    public final Object call() {
        Scheduler scheduler = AndroidSchedulers.f70017a;
        return AndroidSchedulers.MainHolder.f70018a;
    }
}
