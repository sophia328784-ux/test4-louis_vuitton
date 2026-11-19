package com.vuitton.android.data.monitoring;

import com.vuitton.android.data.datasource.analytic.DeviceIdLocalDataSource;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.monitoring.DynatraceMonitor$startRootAction$deviceId$1", f = "DynatraceMonitor.kt", l = {22}, m = "invokeSuspend", v = 2)
final class DynatraceMonitor$startRootAction$deviceId$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f46973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DynatraceMonitor f46974c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynatraceMonitor$startRootAction$deviceId$1(DynatraceMonitor dynatraceMonitor, Continuation continuation) {
        super(2, continuation);
        this.f46974c = dynatraceMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DynatraceMonitor$startRootAction$deviceId$1(this.f46974c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DynatraceMonitor$startRootAction$deviceId$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f46973b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        DeviceIdLocalDataSource deviceIdLocalDataSource = this.f46974c.f46971a;
        this.f46973b = 1;
        Object objA = deviceIdLocalDataSource.a(this);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
