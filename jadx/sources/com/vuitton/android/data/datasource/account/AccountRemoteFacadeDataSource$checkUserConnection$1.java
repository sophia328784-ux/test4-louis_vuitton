package com.vuitton.android.data.datasource.account;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource", f = "AccountRemoteFacadeDataSource.kt", l = {70}, m = "checkUserConnection", v = 2)
final class AccountRemoteFacadeDataSource$checkUserConnection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteFacadeDataSource f43629c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteFacadeDataSource$checkUserConnection$1(AccountRemoteFacadeDataSource accountRemoteFacadeDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43629c = accountRemoteFacadeDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43628b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f43629c.a(null, null, this);
    }
}
