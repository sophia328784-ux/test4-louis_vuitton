package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.SharedPreferencesRepository;
import com.vuitton.android.domain.usecase.dispatch.GetUserInAppDispatchOrNullUseCase;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.FeaturesConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/DetermineFeatureStatusFromConfigsUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;", "getUserInAppDispatchOrNullUseCase", "Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;", "cachedAppConfigOrNullUseCase", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;", "sharedPreferencesRepository", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/SharedPreferencesRepository;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DetermineFeatureStatusFromConfigsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetUserInAppDispatchOrNullUseCase f49666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CachedAppConfigOrNullUseCase f49667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppConfigRepository f49668c;
    public final SharedPreferencesRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BuildConfigProvider f49669e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f49670a;

        static {
            int[] iArr = new int[Feature.values().length];
            try {
                iArr[Feature.ACCESSIBILITY_DISABLE_AUTOPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Feature.ACCESSIBILITY_ENHANCED_CONTRAST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Feature.ACCESSIBILITY_SIMPLIFY_NAVIGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Feature.ACCESSIBILITY_STATEMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Feature.ADDRESS_AUTO_COMPLETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Feature.ADD_TO_CART_CROSS_SELL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Feature.AGEC_LAW.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Feature.AI_COMPANION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Feature.AI_COMPANION_PDP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Feature.AI_COMPANION_SESSION_ID_ENABLED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Feature.APPSFLYER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Feature.AUTOCOMPLETE_POSTAL_CODE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[Feature.BACK_IN_STOCK.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[Feature.BACK_IN_STOCK_LEGAL_CONSENT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[Feature.BACK_IN_STOCK_PREVIEW_MODE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[Feature.BACK_ORDER_DISCLAIMER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[Feature.BACK_ORDER_DISCLAIMER_ENHANCEMENT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[Feature.BATCH_SDK.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[Feature.BOOKING_MY_EXPERIENCES.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[Feature.CARE_SERVICES_MIGRATION.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[Feature.CERTIFICATES_VISIONNAIRE_LOCKED_STATUS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[Feature.CHINA_PRIVACY.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[Feature.CLIENT_QR_CODE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[Feature.CONTACT_US.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[Feature.CONTACT_US_CARE_SERVICE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[Feature.DIAMONDS_PDP.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_BILLING_ADDRESS.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_CALL.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_CANCELLATION_REASON.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_EMAIL.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_MODIFY.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_PAYMENT_METHODS_ICONS.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_SHIPPED_FROM_EHUB.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_TUTORIAL.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_VIDEO_CALL.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[Feature.DISTANT_REPAIRS_ZIP_CODE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[Feature.DYNAMIC_YIELD.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[Feature.DYNATRACE_SDK.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[Feature.EMAIL_TRACKING_CONSENT.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[Feature.EXCLUSIVE_OFFER.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[Feature.FEED_FOR_YOU_DEFAULT_TAB.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[Feature.FEED_REVAMP_V2.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[Feature.FIND_A_STORE.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[Feature.GCM_OPT_OUT.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[Feature.GOOGLE_ANALYTICS.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[Feature.GOOGLE_CUSTOMER_MATCH.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[Feature.GOOGLE_SIGN_IN.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[Feature.HORIZON_SPEAKER.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[Feature.INBOX.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[Feature.KAKAO_SIGN_IN.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[Feature.KEEP_ALL.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[Feature.LEGAL_NOTICE_REGISTER.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[Feature.LINE_SIGN_IN.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[Feature.MY_CARE_SERVICES.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[Feature.MY_CERTIFICATES.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[Feature.NATIVE_ACCOUNT_ACTIVATION.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[Feature.NATIVE_CART.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[Feature.NATIVE_LOGIN.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[Feature.NATIVE_REGISTER.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[Feature.NATIVE_REGISTER_KISA.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[Feature.NATIVE_SHARE_CATALOG.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[Feature.NATIVE_SHARE_IMMERSIVE.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[Feature.NATIVE_SHARE_WISHLIST.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[Feature.NATIVE_THANK_YOU_PAGE_FEEDBACK.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[Feature.NATIVE_THANK_YOU_PAGE_REDIRECT.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[Feature.ONBOARDING.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[Feature.ONBOARDING_FORCED.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[Feature.ORDERS_INVOICE.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[Feature.ORDER_EXCHANGE.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[Feature.ORDER_RETURN.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[Feature.OSA_CID.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr[Feature.OSA_CREATE.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr[Feature.OSA_GUEST.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr[Feature.OSA_KISA_V2.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr[Feature.OSA_MODIFY.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr[Feature.OSA_REASONS.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr[Feature.PAY_BY_LINK.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                iArr[Feature.PERFECT_LOGS.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                iArr[Feature.PERSONAL_SELECTIONS.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                iArr[Feature.PLP_REVAMP_V3_PHASE2.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                iArr[Feature.PLP_V3_GRID_VIEW.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                iArr[Feature.POWERFRONT.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                iArr[Feature.POWERFRONT_CARE_SERVICE.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                iArr[Feature.PROFILE_PHONE_NUMBER.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                iArr[Feature.PUERTO_RICO.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                iArr[Feature.REFRESH_AUTH_CHECKOUT.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                iArr[Feature.REGISTRATION_ADDRESS_STEP.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                iArr[Feature.SENSORS_DATA_ENABLED_STATUS.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                iArr[Feature.SIZE_GUIDE_PIM_ANDROID.ordinal()] = 90;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                iArr[Feature.SMS_CONSENT.ordinal()] = 91;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                iArr[Feature.SNEAKERS.ordinal()] = 92;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                iArr[Feature.SOCIAL_SIGN_IN_DEBUG.ordinal()] = 93;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                iArr[Feature.STORE_MODE.ordinal()] = 94;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                iArr[Feature.STORE_MODE_V2.ordinal()] = 95;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                iArr[Feature.TINGYUN_SDK.ordinal()] = 96;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                iArr[Feature.TRUNK_SPEAKER.ordinal()] = 97;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                iArr[Feature.TWIST.ordinal()] = 98;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                iArr[Feature.YMAL.ordinal()] = 99;
            } catch (NoSuchFieldError unused99) {
            }
            f49670a = iArr;
        }
    }

    @Inject
    public DetermineFeatureStatusFromConfigsUseCase(GetUserInAppDispatchOrNullUseCase getUserInAppDispatchOrNullUseCase, CachedAppConfigOrNullUseCase cachedAppConfigOrNullUseCase, AppConfigRepository appConfigRepository, SharedPreferencesRepository sharedPreferencesRepository, BuildConfigProvider buildConfigProvider) {
        getUserInAppDispatchOrNullUseCase.getClass();
        cachedAppConfigOrNullUseCase.getClass();
        appConfigRepository.getClass();
        sharedPreferencesRepository.getClass();
        buildConfigProvider.getClass();
        this.f49666a = getUserInAppDispatchOrNullUseCase;
        this.f49667b = cachedAppConfigOrNullUseCase;
        this.f49668c = appConfigRepository;
        this.d = sharedPreferencesRepository;
        this.f49669e = buildConfigProvider;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0386  */
    /* JADX WARN: Code duplicated, block: B:133:0x038b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Feature feature, ContinuationImpl continuationImpl) throws Throwable {
        DetermineFeatureStatusFromConfigsUseCase$run$1 determineFeatureStatusFromConfigsUseCase$run$1;
        Object objA;
        boolean zBooleanValue;
        FeaturesConfig featuresConfig;
        Boolean boolValueOf;
        if (continuationImpl instanceof DetermineFeatureStatusFromConfigsUseCase$run$1) {
            determineFeatureStatusFromConfigsUseCase$run$1 = (DetermineFeatureStatusFromConfigsUseCase$run$1) continuationImpl;
            int i2 = determineFeatureStatusFromConfigsUseCase$run$1.f49673e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                determineFeatureStatusFromConfigsUseCase$run$1.f49673e = i2 - Integer.MIN_VALUE;
            } else {
                determineFeatureStatusFromConfigsUseCase$run$1 = new DetermineFeatureStatusFromConfigsUseCase$run$1(this, continuationImpl);
            }
        } else {
            determineFeatureStatusFromConfigsUseCase$run$1 = new DetermineFeatureStatusFromConfigsUseCase$run$1(this, continuationImpl);
        }
        Object obj = determineFeatureStatusFromConfigsUseCase$run$1.f49672c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = determineFeatureStatusFromConfigsUseCase$run$1.f49673e;
        CachedAppConfigOrNullUseCase cachedAppConfigOrNullUseCase = this.f49667b;
        Boolean bool = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            this.f49669e.getClass();
            InAppDispatch inAppDispatchA = this.f49666a.a();
            AppConfig appConfigC = cachedAppConfigOrNullUseCase.f49660a.c();
            if (inAppDispatchA != null && appConfigC != null) {
                String str = inAppDispatchA.f67483j;
                String key = feature.getKey();
                determineFeatureStatusFromConfigsUseCase$run$1.f49671b = feature;
                determineFeatureStatusFromConfigsUseCase$run$1.f49673e = 1;
                objA = this.f49668c.a(str, appConfigC, key, determineFeatureStatusFromConfigsUseCase$run$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                zBooleanValue = false;
            }
            return Boolean.valueOf(zBooleanValue);
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        feature = determineFeatureStatusFromConfigsUseCase$run$1.f49671b;
        ResultKt.b(obj);
        objA = ((Result) obj).f71708b;
        if (Result.a(objA) != null) {
            AppConfig appConfigC2 = cachedAppConfigOrNullUseCase.f49660a.c();
            if (appConfigC2 != null && (featuresConfig = appConfigC2.f67231b) != null) {
                boolean z = featuresConfig.A;
                boolean z2 = featuresConfig.k0;
                switch (WhenMappings.f49670a[feature.ordinal()]) {
                    case 1:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67251a);
                        break;
                    case 2:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67252b);
                        break;
                    case 3:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67253c);
                        break;
                    case 4:
                        boolValueOf = Boolean.valueOf(featuresConfig.d);
                        break;
                    case 5:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67254e);
                        break;
                    case 6:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67255f);
                        break;
                    case 7:
                        boolValueOf = Boolean.valueOf(featuresConfig.w0);
                        break;
                    case 8:
                        boolValueOf = Boolean.valueOf(featuresConfig.g);
                        break;
                    case 9:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67256h);
                        break;
                    case 10:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67257i);
                        break;
                    case 11:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67258j);
                        break;
                    case 12:
                        boolValueOf = Boolean.valueOf(featuresConfig.f67259k);
                        break;
                    case 13:
                        boolValueOf = Boolean.valueOf(featuresConfig.l);
                        break;
                    case 14:
                        boolValueOf = Boolean.valueOf(featuresConfig.m);
                        break;
                    case 15:
                        boolValueOf = Boolean.valueOf(featuresConfig.n);
                        break;
                    case 16:
                        boolValueOf = Boolean.valueOf(featuresConfig.o);
                        break;
                    case 17:
                        boolValueOf = Boolean.valueOf(featuresConfig.p);
                        break;
                    case 18:
                        boolValueOf = Boolean.valueOf(featuresConfig.q);
                        break;
                    case 19:
                        boolValueOf = Boolean.valueOf(featuresConfig.r);
                        break;
                    case 20:
                        boolValueOf = Boolean.valueOf(featuresConfig.t);
                        break;
                    case 21:
                        boolValueOf = Boolean.valueOf(featuresConfig.u);
                        break;
                    case 22:
                        boolValueOf = Boolean.valueOf(featuresConfig.v);
                        break;
                    case 23:
                        boolValueOf = Boolean.valueOf(featuresConfig.F0);
                        break;
                    case 24:
                        boolValueOf = Boolean.valueOf(featuresConfig.x);
                        break;
                    case 25:
                        boolValueOf = Boolean.valueOf(featuresConfig.w);
                        break;
                    case 26:
                        boolValueOf = Boolean.valueOf(featuresConfig.y);
                        break;
                    case 27:
                        boolValueOf = Boolean.valueOf(featuresConfig.D);
                        break;
                    case 28:
                        boolValueOf = Boolean.valueOf(featuresConfig.z);
                        break;
                    case 29:
                        boolValueOf = Boolean.valueOf(z);
                        break;
                    case 30:
                        boolValueOf = Boolean.valueOf(z);
                        break;
                    case 31:
                        boolValueOf = Boolean.valueOf(featuresConfig.C);
                        break;
                    case 32:
                        boolValueOf = Boolean.valueOf(featuresConfig.E);
                        break;
                    case 33:
                        boolValueOf = Boolean.valueOf(featuresConfig.F);
                        break;
                    case 34:
                        boolValueOf = Boolean.valueOf(featuresConfig.G);
                        break;
                    case 35:
                        boolValueOf = Boolean.valueOf(featuresConfig.H);
                        break;
                    case 36:
                        boolValueOf = Boolean.valueOf(featuresConfig.I);
                        break;
                    case 37:
                        boolValueOf = Boolean.valueOf(featuresConfig.J);
                        break;
                    case 38:
                        boolValueOf = Boolean.valueOf(featuresConfig.K);
                        break;
                    case 39:
                        boolValueOf = Boolean.valueOf(featuresConfig.L);
                        break;
                    case 40:
                        boolValueOf = Boolean.valueOf(featuresConfig.M);
                        break;
                    case 41:
                        boolValueOf = Boolean.valueOf(featuresConfig.N);
                        break;
                    case EACTags.CURRENCY_CODE /* 42 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.O);
                        break;
                    case EACTags.DATE_OF_BIRTH /* 43 */:
                        boolValueOf = Boolean.FALSE;
                        break;
                    case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.P);
                        break;
                    case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.Q);
                        break;
                    case 46:
                        boolValueOf = Boolean.valueOf(featuresConfig.R);
                        break;
                    case EACTags.PIN_USAGE_POLICY /* 47 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.S);
                        break;
                    case 48:
                        boolValueOf = Boolean.valueOf(featuresConfig.T);
                        break;
                    case 49:
                        boolValueOf = Boolean.valueOf(featuresConfig.U);
                        break;
                    case 50:
                        boolValueOf = Boolean.valueOf(featuresConfig.V);
                        break;
                    case EACTags.TRANSACTION_DATE /* 51 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.W);
                        break;
                    case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.X);
                        break;
                    case EACTags.SEX /* 53 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.Y);
                        break;
                    case EACTags.CURRENCY_EXPONENT /* 54 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.Z);
                        break;
                    case 55:
                        boolValueOf = Boolean.valueOf(featuresConfig.s);
                        break;
                    case 56:
                        boolValueOf = Boolean.valueOf(featuresConfig.a0);
                        break;
                    case 57:
                        boolValueOf = Boolean.valueOf(featuresConfig.b0);
                        break;
                    case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.c0);
                        break;
                    case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.d0);
                        break;
                    case 60:
                        boolValueOf = Boolean.valueOf(featuresConfig.e0);
                        break;
                    case 61:
                        boolValueOf = Boolean.valueOf(featuresConfig.f0);
                        break;
                    case 62:
                        boolValueOf = Boolean.valueOf(featuresConfig.g0);
                        break;
                    case 63:
                        boolValueOf = Boolean.valueOf(featuresConfig.h0);
                        break;
                    case 64:
                        boolValueOf = Boolean.valueOf(featuresConfig.i0);
                        break;
                    case EACTags.ELEMENT_LIST /* 65 */:
                        boolValueOf = Boolean.valueOf(z2);
                        break;
                    case EACTags.ADDRESS /* 66 */:
                        boolValueOf = Boolean.valueOf(z2);
                        break;
                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.l0);
                        break;
                    case EACTags.APPLICATION_IMAGE /* 68 */:
                        boolValueOf = Boolean.FALSE;
                        break;
                    case EACTags.DISPLAY_IMAGE /* 69 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.q0);
                        break;
                    case 70:
                        boolValueOf = Boolean.valueOf(featuresConfig.o0);
                        break;
                    case EACTags.MESSAGE_REFERENCE /* 71 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.p0);
                        break;
                    case 72:
                        boolValueOf = Boolean.valueOf(featuresConfig.m0);
                        break;
                    case 73:
                        boolValueOf = Boolean.valueOf(featuresConfig.n0);
                        break;
                    case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.r0);
                        break;
                    case EACTags.DEPRECATED /* 75 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.s0);
                        break;
                    case 76:
                        boolValueOf = Boolean.valueOf(featuresConfig.t0);
                        break;
                    case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.u0);
                        break;
                    case 78:
                        boolValueOf = Boolean.valueOf(featuresConfig.v0);
                        break;
                    case 79:
                        boolValueOf = Boolean.valueOf(featuresConfig.x0);
                        break;
                    case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.y0);
                        break;
                    case EACTags.ANSWER_TO_RESET /* 81 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.z0);
                        break;
                    case EACTags.HISTORICAL_BYTES /* 82 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.A0);
                        break;
                    case 83:
                        boolValueOf = Boolean.valueOf(featuresConfig.C0);
                        break;
                    case 84:
                        boolValueOf = Boolean.valueOf(featuresConfig.B0);
                        break;
                    case 85:
                        boolValueOf = Boolean.valueOf(featuresConfig.D0);
                        break;
                    case 86:
                        boolValueOf = Boolean.valueOf(featuresConfig.E0);
                        break;
                    case 87:
                        boolValueOf = Boolean.valueOf(featuresConfig.G0);
                        break;
                    case 88:
                        boolValueOf = Boolean.valueOf(featuresConfig.H0);
                        break;
                    case 89:
                        boolValueOf = Boolean.valueOf(featuresConfig.I0);
                        break;
                    case Sink.ORIENTATION_90 /* 90 */:
                        boolValueOf = Boolean.valueOf(featuresConfig.J0);
                        break;
                    case 91:
                        boolValueOf = Boolean.valueOf(featuresConfig.K0);
                        break;
                    case 92:
                        boolValueOf = Boolean.valueOf(featuresConfig.L0);
                        break;
                    case 93:
                        boolValueOf = Boolean.valueOf(featuresConfig.M0);
                        break;
                    case 94:
                        boolValueOf = Boolean.valueOf(featuresConfig.N0);
                        break;
                    case 95:
                        boolValueOf = Boolean.valueOf(featuresConfig.O0);
                        break;
                    case 96:
                        boolValueOf = Boolean.valueOf(featuresConfig.P0);
                        break;
                    case 97:
                        boolValueOf = Boolean.valueOf(featuresConfig.Q0);
                        break;
                    case 98:
                        boolValueOf = Boolean.valueOf(featuresConfig.R0);
                        break;
                    case 99:
                        boolValueOf = Boolean.valueOf(featuresConfig.S0);
                        break;
                    default:
                        v40.g();
                        return null;
                }
            }
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                zBooleanValue = false;
            }
            return Boolean.valueOf(zBooleanValue);
        }
        boolValueOf = (Boolean) objA;
        boolValueOf.getClass();
        bool = boolValueOf;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            zBooleanValue = false;
        }
        return Boolean.valueOf(zBooleanValue);
    }
}
