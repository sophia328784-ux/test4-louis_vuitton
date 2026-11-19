package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.StoreModeRepositoryImpl", f = "StoreModeRepositoryImpl.kt", l = {39}, m = "getStoreModeAffiliation-gIAlu-s", v = 2)
final class StoreModeRepositoryImpl$getStoreModeAffiliation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreModeRepositoryImpl f48042c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeRepositoryImpl$getStoreModeAffiliation$1(StoreModeRepositoryImpl storeModeRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48042c = storeModeRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48041b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f48042c.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
