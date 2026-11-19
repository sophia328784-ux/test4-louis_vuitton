package com.vuitton.android.presentation.loading;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/loading/LoaderExt;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoaderExt {
    public static Object a(long j2, SuspendLambda suspendLambda) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        if (jCurrentTimeMillis > 700) {
            jCurrentTimeMillis = 700;
        }
        Object objB = DelayKt.b(700 - jCurrentTimeMillis, suspendLambda);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }
}
