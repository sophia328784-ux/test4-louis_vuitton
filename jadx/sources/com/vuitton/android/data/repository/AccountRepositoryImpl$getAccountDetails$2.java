package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.profile.Profile;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getAccountDetails$2", f = "AccountRepositoryImpl.kt", l = {89}, m = "invokeSuspend", v = 2)
final class AccountRepositoryImpl$getAccountDetails$2 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Profile>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f47147c;
    public final /* synthetic */ AccountRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f47148e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$getAccountDetails$2(boolean z, AccountRepositoryImpl accountRepositoryImpl, boolean z2, Continuation continuation) {
        super(1, continuation);
        this.f47147c = z;
        this.d = accountRepositoryImpl;
        this.f47148e = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AccountRepositoryImpl$getAccountDetails$2(this.f47147c, this.d, this.f47148e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AccountRepositoryImpl$getAccountDetails$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47146b;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (this.f47147c) {
                this.f47146b = 1;
                failure = AccountRepositoryImpl.p(this.d, this.f47148e, this);
                if (failure == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                Result.Companion companion = Result.INSTANCE;
                failure = new Result.Failure(new IllegalStateException("Cannot get account detail if user is not logged in"));
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        return new Result(failure);
    }
}
