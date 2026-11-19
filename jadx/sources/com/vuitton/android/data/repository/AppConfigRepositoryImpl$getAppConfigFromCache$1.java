package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppConfigRepositoryImpl", f = "AppConfigRepositoryImpl.kt", l = {38}, m = "getAppConfigFromCache-IoAF18A", v = 2)
final class AppConfigRepositoryImpl$getAppConfigFromCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppConfigRepositoryImpl f47233c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigRepositoryImpl$getAppConfigFromCache$1(AppConfigRepositoryImpl appConfigRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47233c = appConfigRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47232b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objF = this.f47233c.f(this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
