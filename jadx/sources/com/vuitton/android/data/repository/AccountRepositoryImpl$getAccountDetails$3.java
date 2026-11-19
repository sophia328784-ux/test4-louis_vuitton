package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getAccountDetails$3", f = "AccountRepositoryImpl.kt", l = {98}, m = "invokeSuspend", v = 2)
final class AccountRepositoryImpl$getAccountDetails$3 extends SuspendLambda implements Function1<Continuation<? super Result<? extends Profile>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f47150c;
    public final /* synthetic */ AccountRepositoryImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$getAccountDetails$3(boolean z, AccountRepositoryImpl accountRepositoryImpl, Continuation continuation) {
        super(1, continuation);
        this.f47150c = z;
        this.d = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AccountRepositoryImpl$getAccountDetails$3(this.f47150c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AccountRepositoryImpl$getAccountDetails$3) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f47149b;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (this.f47150c) {
                ProfileLocalDataSource profileLocalDataSource = this.d.g;
                this.f47149b = 1;
                failure = profileLocalDataSource.b(this);
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
