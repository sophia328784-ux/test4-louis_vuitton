package com.vuitton.android.data.datasource.account;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource", f = "AccountRemoteFacadeDataSource.kt", l = {EACTags.CURRENCY_CODE}, m = "getAccountDetails-IoAF18A", v = 2)
final class AccountRemoteFacadeDataSource$getAccountDetails$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteFacadeDataSource f43634c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteFacadeDataSource$getAccountDetails$1(AccountRemoteFacadeDataSource accountRemoteFacadeDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43634c = accountRemoteFacadeDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43633b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f43634c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
