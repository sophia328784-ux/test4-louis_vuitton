package com.vuitton.android.domain.usecase.authentication.social;

import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.authentication.RegisterConsents;
import com.vuitton.foundation.model.domain.model.authentication.UserInformation;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialRegisterBody;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.forms.Civility;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;", "", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "repository", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;", "getAddressCivilitiesMappingUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SocialRegisterUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f49419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49421c;
    public final GetAddressCivilitiesMappingUseCase d;

    @Inject
    public SocialRegisterUseCase(TwistAuthRepository twistAuthRepository, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetAddressCivilitiesMappingUseCase getAddressCivilitiesMappingUseCase) {
        twistAuthRepository.getClass();
        requireUserInAppDispatchUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getAddressCivilitiesMappingUseCase.getClass();
        this.f49419a = twistAuthRepository;
        this.f49420b = requireUserInAppDispatchUseCase;
        this.f49421c = isFeatureAvailableUseCase;
        this.d = getAddressCivilitiesMappingUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:49:0x0115  */
    /* JADX WARN: Code duplicated, block: B:50:0x011b  */
    /* JADX WARN: Code duplicated, block: B:54:0x014b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x014c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(SocialAuthParams socialAuthParams, KisaConsents kisaConsents, ContinuationImpl continuationImpl) {
        SocialRegisterUseCase$run$1 socialRegisterUseCase$run$1;
        SocialAuthParams socialAuthParams2;
        KisaConsents kisaConsents2;
        InAppDispatch inAppDispatch;
        boolean z;
        Object obj;
        InAppDispatch inAppDispatch2;
        SocialAuthParams socialAuthParams3;
        KisaConsents kisaConsents3;
        Throwable thA;
        String f66654e;
        String strI;
        Iterator it;
        Object next;
        Civility civility;
        UserConsents userConsents;
        Object objM;
        String str;
        if (continuationImpl instanceof SocialRegisterUseCase$run$1) {
            socialRegisterUseCase$run$1 = (SocialRegisterUseCase$run$1) continuationImpl;
            int i2 = socialRegisterUseCase$run$1.f49426h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                socialRegisterUseCase$run$1.f49426h = i2 - Integer.MIN_VALUE;
            } else {
                socialRegisterUseCase$run$1 = new SocialRegisterUseCase$run$1(this, continuationImpl);
            }
        } else {
            socialRegisterUseCase$run$1 = new SocialRegisterUseCase$run$1(this, continuationImpl);
        }
        Object obj2 = socialRegisterUseCase$run$1.f49425f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = socialRegisterUseCase$run$1.f49426h;
        if (i3 == 0) {
            ResultKt.b(obj2);
            InAppDispatch inAppDispatchB = this.f49420b.f49912a.b();
            Feature[] featureArr = {Feature.TWIST};
            socialAuthParams2 = socialAuthParams;
            socialRegisterUseCase$run$1.f49422b = socialAuthParams2;
            kisaConsents2 = kisaConsents;
            socialRegisterUseCase$run$1.f49423c = kisaConsents2;
            socialRegisterUseCase$run$1.d = inAppDispatchB;
            socialRegisterUseCase$run$1.f49426h = 1;
            Object objC = this.f49421c.c(featureArr, false, socialRegisterUseCase$run$1);
            if (objC != coroutineSingletons) {
                inAppDispatch = inAppDispatchB;
                obj2 = objC;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            inAppDispatch = socialRegisterUseCase$run$1.d;
            KisaConsents kisaConsents4 = socialRegisterUseCase$run$1.f49423c;
            SocialAuthParams socialAuthParams4 = socialRegisterUseCase$run$1.f49422b;
            ResultKt.b(obj2);
            kisaConsents2 = kisaConsents4;
            socialAuthParams2 = socialAuthParams4;
        } else {
            if (i3 != 2) {
                if (i3 == 3) {
                    ResultKt.b(obj2);
                    return ((Result) obj2).f71708b;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = socialRegisterUseCase$run$1.f49424e;
            inAppDispatch2 = socialRegisterUseCase$run$1.d;
            kisaConsents3 = socialRegisterUseCase$run$1.f49423c;
            socialAuthParams3 = socialRegisterUseCase$run$1.f49422b;
            ResultKt.b(obj2);
            obj = ((Result) obj2).f71708b;
        }
        thA = Result.a(obj);
        if (thA == null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(obj);
        List list = (List) obj;
        f66654e = socialAuthParams3.getF66654e();
        if (f66654e != null) {
            strI = StringKtExtKt.i(f66654e);
        } else {
            strI = null;
        }
        it = list.iterator();
        do {
            if (it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Civility) next).f67578a, strI));
        civility = (Civility) next;
        if (civility != null && (str = civility.f67579b) != null) {
            strI = str;
        }
        if (strI == null) {
            strI = "";
        }
        UserInformation userInformation = new UserInformation(strI, socialAuthParams3.getF66653c(), socialAuthParams3.getD(), socialAuthParams3.getF66656h(), socialAuthParams3.getF66657i(), inAppDispatch2.f67483j, null, null, 192, null);
        if (kisaConsents3 != null) {
            userConsents = new UserConsents(kisaConsents3, null);
        } else {
            userConsents = null;
        }
        SocialRegisterBody socialRegisterBody = new SocialRegisterBody(userInformation, socialAuthParams3.getF66651a(), socialAuthParams3.getF66652b(), new RegisterConsents(true, userConsents));
        String apiValue = socialAuthParams3.g.getApiValue();
        String f66655f = socialAuthParams3.getF66655f();
        socialRegisterUseCase$run$1.f49422b = null;
        socialRegisterUseCase$run$1.f49423c = null;
        socialRegisterUseCase$run$1.d = null;
        socialRegisterUseCase$run$1.f49424e = z;
        socialRegisterUseCase$run$1.f49426h = 3;
        objM = this.f49419a.m(apiValue, f66655f, socialRegisterBody, socialRegisterUseCase$run$1);
        if (objM != coroutineSingletons) {
            return coroutineSingletons;
        }
        return objM;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        String str2 = inAppDispatch.f67483j;
        socialRegisterUseCase$run$1.f49422b = socialAuthParams2;
        socialRegisterUseCase$run$1.f49423c = kisaConsents2;
        socialRegisterUseCase$run$1.d = inAppDispatch;
        socialRegisterUseCase$run$1.f49424e = zBooleanValue;
        socialRegisterUseCase$run$1.f49426h = 2;
        Object objA = this.d.a(str2, zBooleanValue, socialRegisterUseCase$run$1);
        if (objA != coroutineSingletons) {
            InAppDispatch inAppDispatch3 = inAppDispatch;
            z = zBooleanValue;
            obj = objA;
            inAppDispatch2 = inAppDispatch3;
            KisaConsents kisaConsents5 = kisaConsents2;
            socialAuthParams3 = socialAuthParams2;
            kisaConsents3 = kisaConsents5;
            thA = Result.a(obj);
            if (thA == null) {
                return new Result.Failure(thA);
            }
            ResultKt.b(obj);
            List list2 = (List) obj;
            f66654e = socialAuthParams3.getF66654e();
            if (f66654e != null) {
                strI = StringKtExtKt.i(f66654e);
            } else {
                strI = null;
            }
            it = list2.iterator();
            do {
                if (it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((Civility) next).f67578a, strI));
            civility = (Civility) next;
            if (civility != null) {
                strI = str;
            }
            if (strI == null) {
                strI = "";
            }
            UserInformation userInformation2 = new UserInformation(strI, socialAuthParams3.getF66653c(), socialAuthParams3.getD(), socialAuthParams3.getF66656h(), socialAuthParams3.getF66657i(), inAppDispatch2.f67483j, null, null, 192, null);
            if (kisaConsents3 != null) {
                userConsents = new UserConsents(kisaConsents3, null);
            } else {
                userConsents = null;
            }
            SocialRegisterBody socialRegisterBody2 = new SocialRegisterBody(userInformation2, socialAuthParams3.getF66651a(), socialAuthParams3.getF66652b(), new RegisterConsents(true, userConsents));
            String apiValue2 = socialAuthParams3.g.getApiValue();
            String f66655f2 = socialAuthParams3.getF66655f();
            socialRegisterUseCase$run$1.f49422b = null;
            socialRegisterUseCase$run$1.f49423c = null;
            socialRegisterUseCase$run$1.d = null;
            socialRegisterUseCase$run$1.f49424e = z;
            socialRegisterUseCase$run$1.f49426h = 3;
            objM = this.f49419a.m(apiValue2, f66655f2, socialRegisterBody2, socialRegisterUseCase$run$1);
            if (objM != coroutineSingletons) {
                return objM;
            }
        }
        return coroutineSingletons;
    }
}
