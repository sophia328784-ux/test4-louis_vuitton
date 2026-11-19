package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.StoreModeRepositoryImpl", f = "StoreModeRepositoryImpl.kt", l = {109}, m = "checkStoreModeValidity-0E7RQCE", v = 2)
final class StoreModeRepositoryImpl$checkStoreModeValidity$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeRepositoryImpl f48040c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeRepositoryImpl$checkStoreModeValidity$1(StoreModeRepositoryImpl storeModeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48040c = storeModeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48039b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f48040c.d(null, null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
