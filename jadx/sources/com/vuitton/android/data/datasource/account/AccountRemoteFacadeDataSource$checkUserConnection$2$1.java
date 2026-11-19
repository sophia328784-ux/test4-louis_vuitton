package com.vuitton.android.data.datasource.account;

import com.vuitton.android.data.api.bff.user.AccountFacadeApi;
import com.vuitton.android.data.dto.profile.legacy.ShortUserAccountDto;
import com.vuitton.android.data.net.atg.ATGSessionStatus;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;", "it", "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource$checkUserConnection$2$1", f = "AccountRemoteFacadeDataSource.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
final class AccountRemoteFacadeDataSource$checkUserConnection$2$1 extends SuspendLambda implements Function2<ATGSessionStatus, Continuation<? super ShortUserAccountDto>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountRemoteFacadeDataSource f43631c;
    public final /* synthetic */ InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppConfig f43632e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteFacadeDataSource$checkUserConnection$2$1(AccountRemoteFacadeDataSource accountRemoteFacadeDataSource, InAppDispatch inAppDispatch, AppConfig appConfig, Continuation continuation) {
        super(2, continuation);
        this.f43631c = accountRemoteFacadeDataSource;
        this.d = inAppDispatch;
        this.f43632e = appConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountRemoteFacadeDataSource$checkUserConnection$2$1(this.f43631c, this.d, this.f43632e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountRemoteFacadeDataSource$checkUserConnection$2$1) create((ATGSessionStatus) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43630b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        AccountRemoteFacadeDataSource accountRemoteFacadeDataSource = this.f43631c;
        AccountFacadeApi accountFacadeApi = accountRemoteFacadeDataSource.f43625b;
        Object objA = accountRemoteFacadeDataSource.f43624a.f44119a.a();
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            try {
                objA = ((String) objA) + "account/user";
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objA = new Result.Failure(th);
            }
        }
        if (objA instanceof Result.Failure) {
            objA = "";
        }
        String str = (String) objA;
        String strA = InAppDispatchExtKt.a(this.d, this.f43632e.A);
        String str2 = strA != null ? strA : null;
        this.f43630b = 1;
        Object objCheckAccountUser = accountFacadeApi.checkAccountUser(str, str2, this);
        return objCheckAccountUser == coroutineSingletons ? coroutineSingletons : objCheckAccountUser;
    }
}
