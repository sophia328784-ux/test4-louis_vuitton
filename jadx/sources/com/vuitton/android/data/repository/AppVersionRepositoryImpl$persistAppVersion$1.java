package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppVersionRepositoryImpl", f = "AppVersionRepositoryImpl.kt", l = {33}, m = "persistAppVersion-gIAlu-s", v = 2)
final class AppVersionRepositoryImpl$persistAppVersion$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppVersionRepositoryImpl f47269c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppVersionRepositoryImpl$persistAppVersion$1(AppVersionRepositoryImpl appVersionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47269c = appVersionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47268b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47269c.b(0, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
