package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AvailabilityInStoreRepositoryImpl", f = "AvailabilityInStoreRepositoryImpl.kt", l = {22}, m = "getProductAvailabilityInStore-kc74MUk", v = 2)
final class AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AvailabilityInStoreRepositoryImpl f47343c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1(AvailabilityInStoreRepositoryImpl availabilityInStoreRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47343c = availabilityInStoreRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47342b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47343c.a(null, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
