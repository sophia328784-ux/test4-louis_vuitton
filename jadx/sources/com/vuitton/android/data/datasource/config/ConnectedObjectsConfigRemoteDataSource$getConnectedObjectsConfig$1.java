package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.ConnectedObjectsConfigRemoteDataSource", f = "ConnectedObjectsConfigRemoteDataSource.kt", l = {11}, m = "getConnectedObjectsConfig-gIAlu-s", v = 2)
final class ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigRemoteDataSource f44050c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigRemoteDataSource$getConnectedObjectsConfig$1(ConnectedObjectsConfigRemoteDataSource connectedObjectsConfigRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44050c = connectedObjectsConfigRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44049b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44050c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
