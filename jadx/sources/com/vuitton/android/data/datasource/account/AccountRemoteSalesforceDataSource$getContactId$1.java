package com.vuitton.android.data.datasource.account;

import com.vuitton.android.data.api.bff.user.ProfileApi;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteSalesforceDataSource", f = "AccountRemoteSalesforceDataSource.kt", l = {22, 21}, m = "getContactId-IoAF18A", v = 2)
final class AccountRemoteSalesforceDataSource$getContactId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43641c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ProfileApi f43642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f43643f;
    public final /* synthetic */ AccountRemoteSalesforceDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f43644h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteSalesforceDataSource$getContactId$1(AccountRemoteSalesforceDataSource accountRemoteSalesforceDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = accountRemoteSalesforceDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43643f = obj;
        this.f43644h |= Integer.MIN_VALUE;
        Object objA = this.g.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
