package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl", f = "AccountRepositoryImpl.kt", l = {135}, m = "updateMainInformation-gIAlu-s", v = 2)
final class AccountRepositoryImpl$updateMainInformation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRepositoryImpl f47188c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$updateMainInformation$1(AccountRepositoryImpl accountRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47188c = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47187b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objI = this.f47188c.i(null, this);
        return objI == CoroutineSingletons.COROUTINE_SUSPENDED ? objI : new Result(objI);
    }
}
