package com.vuitton.android.data.datasource.account;

import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1", f = "AccountRemoteTwistDataSource.kt", l = {EACTags.SEX}, m = "invokeSuspend", v = 2)
final class AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UserConsentsDto>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteTwistDataSource f43657c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1(AccountRemoteTwistDataSource accountRemoteTwistDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43657c = accountRemoteTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1(this.f43657c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43656b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f43656b = 1;
            objE = this.f43657c.e(this);
            if (objE == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objE = ((Result) obj).f71708b;
        }
        UserConsentsDto.INSTANCE.getClass();
        UserConsentsDto userConsentsDto = UserConsentsDto.f46749c;
        Result.Companion companion = Result.INSTANCE;
        return objE instanceof Result.Failure ? userConsentsDto : objE;
    }
}
