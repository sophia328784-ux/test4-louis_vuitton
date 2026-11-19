package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppVersionRepositoryImpl", f = "AppVersionRepositoryImpl.kt", l = {27}, m = "getCachedAppVersion-IoAF18A", v = 2)
final class AppVersionRepositoryImpl$getCachedAppVersion$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppVersionRepositoryImpl f47266c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppVersionRepositoryImpl$getCachedAppVersion$1(AppVersionRepositoryImpl appVersionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47266c = appVersionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47265b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objC = this.f47266c.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
