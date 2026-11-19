package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.Model3dAssetRepositoryImpl", f = "Model3dAssetRepositoryImpl.kt", l = {20}, m = "get3dIdAsset-TPjgr7Q", v = 2)
final class Model3dAssetRepositoryImpl$get3dIdAsset$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Model3dAssetRepositoryImpl f47797c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Model3dAssetRepositoryImpl$get3dIdAsset$1(Model3dAssetRepositoryImpl model3dAssetRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47797c = model3dAssetRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47796b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47797c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
