package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl", f = "AccountRepositoryImpl.kt", l = {214, 216}, m = "patchUserConsents-0E7RQCE", v = 2)
final class AccountRepositoryImpl$patchUserConsents$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public UserConsents f47176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public UserConsents f47177c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f47178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47179f;
    public final /* synthetic */ AccountRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47180h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$patchUserConsents$1(AccountRepositoryImpl accountRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47179f = obj;
        this.f47180h |= Integer.MIN_VALUE;
        Object objK = this.g.k(null, false, this);
        return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : new Result(objK);
    }
}
