package com.vuitton.android.data.datasource.account;

import com.vuitton.android.data.api.bff.user.ProfileApi;
import com.vuitton.android.data.dto.profile.ProfileDto;
import com.vuitton.android.data.dto.profile.ProfileMapperKt;
import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource$getAccountDetails$2$1", f = "AccountRemoteTwistDataSource.kt", l = {55, EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class AccountRemoteTwistDataSource$getAccountDetails$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Profile>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f43652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProfileDto f43653c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f43655f;
    public final /* synthetic */ AccountRemoteTwistDataSource g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteTwistDataSource$getAccountDetails$2$1(AccountRemoteTwistDataSource accountRemoteTwistDataSource, Continuation continuation) {
        super(2, continuation);
        this.g = accountRemoteTwistDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AccountRemoteTwistDataSource$getAccountDetails$2$1 accountRemoteTwistDataSource$getAccountDetails$2$1 = new AccountRemoteTwistDataSource$getAccountDetails$2$1(this.g, continuation);
        accountRemoteTwistDataSource$getAccountDetails$2$1.f43655f = obj;
        return accountRemoteTwistDataSource$getAccountDetails$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountRemoteTwistDataSource$getAccountDetails$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferredA;
        ProfileDto profileDto;
        String str;
        CoroutineScope coroutineScope = (CoroutineScope) this.f43655f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43654e;
        if (i2 != 0) {
            if (i2 == 1) {
                deferredA = (Deferred) this.f43652b;
                ResultKt.b(obj);
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str = this.d;
                profileDto = this.f43653c;
                ResultKt.b(obj);
            }
            return ProfileMapperKt.c(profileDto, (UserConsentsDto) obj, str);
        }
        ResultKt.b(obj);
        AccountRemoteTwistDataSource accountRemoteTwistDataSource = this.g;
        deferredA = BuildersKt.a(coroutineScope, null, new AccountRemoteTwistDataSource$getAccountDetails$2$1$getConsentDeferred$1(accountRemoteTwistDataSource, null), 3);
        ProfileApi profileApi = accountRemoteTwistDataSource.f43647c;
        this.f43655f = null;
        this.f43652b = deferredA;
        this.f43654e = 1;
        obj = profileApi.getProfile(this);
        if (obj != coroutineSingletons) {
        }
        return coroutineSingletons;
        ProfileDto profileDto2 = (ProfileDto) obj;
        String str2 = profileDto2.f46687h;
        if (str2 == null) {
            str2 = "";
        }
        this.f43655f = null;
        this.f43652b = null;
        this.f43653c = profileDto2;
        this.d = str2;
        this.f43654e = 2;
        Object objK = deferredA.k(this);
        if (objK != coroutineSingletons) {
            obj = objK;
            profileDto = profileDto2;
            str = str2;
            return ProfileMapperKt.c(profileDto, (UserConsentsDto) obj, str);
        }
        return coroutineSingletons;
    }
}
