package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppLinkRepositoryImpl", f = "AppLinkRepositoryImpl.kt", l = {35, 39}, m = "fetchAppLinkExclusions-IoAF18A", v = 2)
final class AppLinkRepositoryImpl$fetchAppLinkExclusions$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47250c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47251e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AppLinkRepositoryImpl f47252f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkRepositoryImpl$fetchAppLinkExclusions$1(AppLinkRepositoryImpl appLinkRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47252f = appLinkRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47251e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objE = this.f47252f.e(this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
