package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AuthTokenRepositoryImpl", f = "AuthTokenRepositoryImpl.kt", l = {34}, m = "getSalesforceUserId-IoAF18A", v = 2)
final class AuthTokenRepositoryImpl$getSalesforceUserId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthTokenRepositoryImpl f47340c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthTokenRepositoryImpl$getSalesforceUserId$1(AuthTokenRepositoryImpl authTokenRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47340c = authTokenRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47339b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f47340c.e(this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
