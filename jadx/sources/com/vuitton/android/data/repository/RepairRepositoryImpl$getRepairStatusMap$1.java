package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.RepairRepositoryImpl", f = "RepairRepositoryImpl.kt", l = {23}, m = "getRepairStatusMap", v = 2)
final class RepairRepositoryImpl$getRepairStatusMap$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47945c;
    public final /* synthetic */ RepairRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47946e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairRepositoryImpl$getRepairStatusMap$1(RepairRepositoryImpl repairRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = repairRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47945c = obj;
        this.f47946e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
