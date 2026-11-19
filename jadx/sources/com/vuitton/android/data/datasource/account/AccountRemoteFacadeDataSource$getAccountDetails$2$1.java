package com.vuitton.android.data.datasource.account;

import com.vuitton.android.data.net.atg.ATGSessionStatus;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "it", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource$getAccountDetails$2$1", f = "AccountRemoteFacadeDataSource.kt", l = {EACTags.DATE_OF_BIRTH, EACTags.CARDHOLDER_NATIONALITY}, m = "invokeSuspend", v = 2)
final class AccountRemoteFacadeDataSource$getAccountDetails$2$1 extends SuspendLambda implements Function2<ATGSessionStatus.Authenticated, Continuation<? super Profile>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteFacadeDataSource f43636c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteFacadeDataSource$getAccountDetails$2$1(AccountRemoteFacadeDataSource accountRemoteFacadeDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43636c = accountRemoteFacadeDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountRemoteFacadeDataSource$getAccountDetails$2$1(this.f43636c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountRemoteFacadeDataSource$getAccountDetails$2$1) create((ATGSessionStatus.Authenticated) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        if (r8 == r0) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f43635b
            java.lang.String r2 = ""
            r3 = 0
            com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource r4 = r7.f43636c
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L23
            if (r1 == r6) goto L1b
            if (r1 != r5) goto L15
            kotlin.ResultKt.b(r8)
            goto L49
        L15:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r3
        L1b:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L31
        L23:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.repository.AuthTokenRepository r8 = r4.d
            r7.f43635b = r6
            java.lang.Object r8 = r8.c(r7)
            if (r8 != r0) goto L31
            goto L48
        L31:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r8 instanceof kotlin.Result.Failure
            if (r1 == 0) goto L38
            goto L39
        L38:
            r3 = r8
        L39:
            java.lang.String r3 = (java.lang.String) r3
            com.vuitton.android.data.api.bff.user.ProfileApi r8 = r4.f43626c
            if (r3 != 0) goto L40
            r3 = r2
        L40:
            r7.f43635b = r5
            java.lang.Object r8 = r8.getProfile(r3, r7)
            if (r8 != r0) goto L49
        L48:
            return r0
        L49:
            com.vuitton.android.data.dto.profile.ProfileDto r8 = (com.vuitton.android.data.dto.profile.ProfileDto) r8
            java.lang.String r7 = r8.f46687h
            if (r7 != 0) goto L50
            goto L51
        L50:
            r2 = r7
        L51:
            com.vuitton.android.data.dto.profile.twist.UserConsentsDto$Companion r7 = com.vuitton.android.data.dto.profile.twist.UserConsentsDto.INSTANCE
            r7.getClass()
            com.vuitton.android.data.dto.profile.twist.UserConsentsDto r7 = com.vuitton.android.data.dto.profile.twist.UserConsentsDto.f46749c
            com.vuitton.foundation.model.domain.model.profile.Profile r7 = com.vuitton.android.data.dto.profile.ProfileMapperKt.c(r8, r7, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource$getAccountDetails$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
