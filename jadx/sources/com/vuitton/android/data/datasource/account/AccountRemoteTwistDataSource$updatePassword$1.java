package com.vuitton.android.data.datasource.account;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource", f = "AccountRemoteTwistDataSource.kt", l = {EACTags.UNIFORM_RESOURCE_LOCATOR}, m = "updatePassword-gIAlu-s", v = 2)
final class AccountRemoteTwistDataSource$updatePassword$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteTwistDataSource f43669c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteTwistDataSource$updatePassword$1(AccountRemoteTwistDataSource accountRemoteTwistDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43669c = accountRemoteTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f43668b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f43669c.h(null, this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
