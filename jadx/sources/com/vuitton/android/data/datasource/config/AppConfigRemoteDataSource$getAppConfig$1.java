package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppConfigRemoteDataSource", f = "AppConfigRemoteDataSource.kt", l = {11}, m = "getAppConfig-gIAlu-s", v = 2)
final class AppConfigRemoteDataSource$getAppConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43990b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppConfigRemoteDataSource f43991c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigRemoteDataSource$getAppConfig$1(AppConfigRemoteDataSource appConfigRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43991c = appConfigRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43990b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f43991c.a(0L, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
