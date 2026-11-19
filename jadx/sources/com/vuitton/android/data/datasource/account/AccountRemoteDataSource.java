package com.vuitton.android.data.datasource.account;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AccountApi;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/AccountApi;", "accountApi", "<init>", "(Lcom/vuitton/android/data/api/bff/user/AccountApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountApi f43621a;

    @Inject
    public AccountRemoteDataSource(AccountApi accountApi) {
        accountApi.getClass();
        this.f43621a = accountApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        AccountRemoteDataSource$deleteAccount$1 accountRemoteDataSource$deleteAccount$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteDataSource$deleteAccount$1) {
            accountRemoteDataSource$deleteAccount$1 = (AccountRemoteDataSource$deleteAccount$1) continuationImpl;
            int i2 = accountRemoteDataSource$deleteAccount$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteDataSource$deleteAccount$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteDataSource$deleteAccount$1 = new AccountRemoteDataSource$deleteAccount$1(this, continuationImpl);
            }
        } else {
            accountRemoteDataSource$deleteAccount$1 = new AccountRemoteDataSource$deleteAccount$1(this, continuationImpl);
        }
        Object obj = accountRemoteDataSource$deleteAccount$1.f43622b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteDataSource$deleteAccount$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AccountApi accountApi = this.f43621a;
                accountRemoteDataSource$deleteAccount$1.d = 1;
                if (accountApi.deleteAccount(accountRemoteDataSource$deleteAccount$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
