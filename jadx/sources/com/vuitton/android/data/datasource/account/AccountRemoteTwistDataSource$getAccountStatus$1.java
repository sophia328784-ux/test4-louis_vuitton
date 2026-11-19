package com.vuitton.android.data.datasource.account;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource", f = "AccountRemoteTwistDataSource.kt", l = {89}, m = "getAccountStatus-gIAlu-s", v = 2)
final class AccountRemoteTwistDataSource$getAccountStatus$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteTwistDataSource f43661c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteTwistDataSource$getAccountStatus$1(AccountRemoteTwistDataSource accountRemoteTwistDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43661c = accountRemoteTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43660b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f43661c.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
