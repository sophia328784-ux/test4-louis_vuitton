package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.MaintenanceRepositoryImpl", f = "MaintenanceRepositoryImpl.kt", l = {10}, m = "isAppInMaintenance-IoAF18A", v = 2)
final class MaintenanceRepositoryImpl$isAppInMaintenance$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MaintenanceRepositoryImpl f47793c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaintenanceRepositoryImpl$isAppInMaintenance$1(MaintenanceRepositoryImpl maintenanceRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47793c = maintenanceRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47792b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47793c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
