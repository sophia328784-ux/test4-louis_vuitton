package com.sightcall.universal.util;

import android.os.Handler;
import android.os.Looper;
import defpackage.ba;
import defpackage.r3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003¨\u0006\u0004"}, d2 = {"postOnMainThread", "", "Lkotlin/Function0;", "Ljava/lang/Runnable;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class Runnables {
    public static final void postOnMainThread(Function0<Unit> function0) {
        function0.getClass();
        new Handler(Looper.getMainLooper()).post(new r3(function0, 9));
    }

    public static final void postOnMainThread(Runnable runnable) {
        runnable.getClass();
        new Handler(Looper.getMainLooper()).post(new ba(runnable, 2));
    }
}
