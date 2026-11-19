package com.vuitton.android.presentation.screen.maintenance;

import com.vuitton.android.domain.usecase.maintenance.IsAppInMaintenanceUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1", f = "CheckMaintenanceStatusService.kt", l = {158}, m = "invokeSuspend", v = 2)
final class CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1 extends SuspendLambda implements Function1<Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CheckMaintenanceStatusService f59198c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1(CheckMaintenanceStatusService checkMaintenanceStatusService, Continuation continuation) {
        super(1, continuation);
        this.f59198c = checkMaintenanceStatusService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1(this.f59198c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((CheckMaintenanceStatusService$onStartCommand$1$inMaintenance$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59197b;
        if (i2 == 0) {
            ResultKt.b(obj);
            IsAppInMaintenanceUseCase isAppInMaintenanceUseCase = this.f59198c.f59192f;
            if (isAppInMaintenanceUseCase == null) {
                Intrinsics.h("isAppInMaintenanceUseCase");
                throw null;
            }
            this.f59197b = 1;
            objA = isAppInMaintenanceUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        ResultKt.b(objA);
        return objA;
    }
}
