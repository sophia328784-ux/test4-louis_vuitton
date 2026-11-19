package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getUserConsents$2", f = "AccountRepositoryImpl.kt", l = {227}, m = "invokeSuspend", v = 2)
final class AccountRepositoryImpl$getUserConsents$2 extends SuspendLambda implements Function1<Continuation<? super Result<? extends UserConsents>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRepositoryImpl f47173c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$getUserConsents$2(AccountRepositoryImpl accountRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f47173c = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AccountRepositoryImpl$getUserConsents$2(this.f47173c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AccountRepositoryImpl$getUserConsents$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objQ;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47172b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f47172b = 1;
            objQ = AccountRepositoryImpl.q(this.f47173c, this);
            if (objQ == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objQ = ((Result) obj).f71708b;
        }
        return new Result(objQ);
    }
}
