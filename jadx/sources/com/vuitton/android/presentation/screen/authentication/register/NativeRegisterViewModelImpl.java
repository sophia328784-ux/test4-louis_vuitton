package com.vuitton.android.presentation.screen.authentication.register;

import android.app.Application;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.account.GetAccountStatusUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterInitiateUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterValidateUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSignUpEventUseCase;
import com.vuitton.android.domain.usecase.forms.GetRegistrationFormUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.validation.PhoneValidationRules;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.GenericFieldValidationRules;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.models.ConsentDataTracking;
import com.vuitton.android.presentation.screen.authentication.register.models.MarketingChannelDataTracking;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterActivationUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterAddressTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterBirthInfoUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterCredentialsUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterFeatureFlags;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterPersonalInfoUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterRegistrationAddressUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.authentication.LoginParam;
import com.vuitton.foundation.model.domain.model.authentication.RegisterConsents;
import com.vuitton.foundation.model.domain.model.authentication.RegistrationAddress;
import com.vuitton.foundation.model.domain.model.authentication.UserInformation;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.forms.Civility;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.ag0;
import defpackage.be0;
import defpackage.g3;
import defpackage.iv;
import defpackage.k60;
import defpackage.md;
import defpackage.mt;
import defpackage.o60;
import defpackage.rq;
import defpackage.rt;
import defpackage.v40;
import defpackage.xf0;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.serialization.json.Json;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bá\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u001f\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001d\u0012\u0006\u0010!\u001a\u00020\u001d\u0012\u0006\u0010\"\u001a\u00020\u001d\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\u0006\u0010$\u001a\u00020\u001d\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201¢\u0006\u0004\b3\u00104¨\u00065"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;", "emailValidationRules", "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;", "phoneValidationRules", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;", "passwordValidationRules", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;", "genericFieldValidationRules", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "addressFormSupervisor", "birthInfoFormSupervisor", "credentialsFormSupervisor", "personalInfoFormSupervisor", "majorConsentRegistrationFormSupervisor", "minorConsentRegistrationFormSupervisor", "emailTrackingConsentRegistrationFormSupervisor", "Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;", "getAccountStatusUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;", "registerInitiateUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;", "registerValidateUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;", "reportDYSignUpEventUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;", "getRegistrationFormUseCase", "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;", "getAddressCivilitiesMappingUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeRegisterViewModelImpl extends AndroidViewModel implements NativeRegisterViewModel {
    public final BufferedChannel A;
    public final Flow B;
    public final BufferedChannel C;
    public final Flow D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final MutableStateFlow H;
    public final MutableStateFlow I;
    public final MutableStateFlow J;
    public final MutableStateFlow K;
    public final MutableStateFlow L;
    public final MutableStateFlow M;
    public Boolean N;
    public final InAppDispatch O;
    public final TrackingAuthOrigin P;
    public final TrackingAuthEntryPoint Q;
    public final BufferedChannel R;
    public final Flow S;
    public final BufferedChannel T;
    public final Flow U;
    public final String V;
    public Map W;
    public final StateFlow X;
    public final KisaConsents Y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f53711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f53712c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppsFlyerTracker f53713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f53714f;
    public final EmailValidationRules g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PhoneValidationRules f53715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormPasswordValidationRules f53716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GenericFieldValidationRules f53717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DynamicFormSupervisor f53718k;
    public final DynamicFormSupervisor l;
    public final DynamicFormSupervisor m;
    public final DynamicFormSupervisor n;
    public final DynamicFormSupervisor o;
    public final DynamicFormSupervisor p;
    public final DynamicFormSupervisor q;
    public final GetAccountStatusUseCase r;
    public final RegisterInitiateUseCase s;
    public final RegisterValidateUseCase t;
    public final IsFeatureAvailableUseCase u;
    public final ReportDYSignUpEventUseCase v;
    public final GetRegistrationFormUseCase w;
    public final GetAddressCivilitiesMappingUseCase x;
    public final MutableStateFlow y;
    public final Flow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$1", f = "NativeRegisterViewModelImpl.kt", l = {228, 229}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MutableStateFlow f53719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f53720c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ NativeRegisterViewModelImpl f53721e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
            super(2, continuation);
            this.f53721e = nativeRegisterViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f53721e);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            Object objC;
            boolean zBooleanValue;
            MutableStateFlow mutableStateFlow2;
            NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.f53721e;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = nativeRegisterViewModelImpl.u;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.d;
            if (i2 == 0) {
                ResultKt.b(obj);
                mutableStateFlow = nativeRegisterViewModelImpl.M;
                Feature[] featureArr = {Feature.REGISTRATION_ADDRESS_STEP};
                this.f53719b = mutableStateFlow;
                this.d = 1;
                objC = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (objC != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                MutableStateFlow mutableStateFlow3 = this.f53719b;
                ResultKt.b(obj);
                objC = obj;
                mutableStateFlow = mutableStateFlow3;
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                zBooleanValue = this.f53720c;
                mutableStateFlow2 = this.f53719b;
                ResultKt.b(obj);
            }
            mutableStateFlow2.setValue(new NativeRegisterFeatureFlags(zBooleanValue, ((Boolean) obj).booleanValue()));
            return Unit.f71739a;
            zBooleanValue = ((Boolean) objC).booleanValue();
            Feature[] featureArr2 = {Feature.LEGAL_NOTICE_REGISTER};
            this.f53719b = mutableStateFlow;
            this.f53720c = zBooleanValue;
            this.d = 2;
            Object objC2 = isFeatureAvailableUseCase.c(featureArr2, false, this);
            if (objC2 != coroutineSingletons) {
                MutableStateFlow mutableStateFlow4 = mutableStateFlow;
                obj = objC2;
                mutableStateFlow2 = mutableStateFlow4;
                mutableStateFlow2.setValue(new NativeRegisterFeatureFlags(zBooleanValue, ((Boolean) obj).booleanValue()));
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f53723b;

        static {
            int[] iArr = new int[Step.values().length];
            try {
                iArr[Step.CREDENTIALS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Step.PERSONAL_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Step.REGISTRATION_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Step.BIRTH_INFO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Step.ACCOUNT_ACTIVATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f53722a = iArr;
            int[] iArr2 = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr2[FormSectionTypeUiModel.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FormSectionTypeUiModel.NEW_PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CONFIRM_PASSWORD.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CIVILITY.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[FormSectionTypeUiModel.FIRSTNAME2.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[FormSectionTypeUiModel.LASTNAME2.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[FormSectionTypeUiModel.BIRTHDATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[FormSectionTypeUiModel.COUNTRY.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1.ordinal()] = 12;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr2[FormSectionTypeUiModel.POSTAL_CODE.ordinal()] = 13;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr2[FormSectionTypeUiModel.STATE.ordinal()] = 14;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CITY.ordinal()] = 15;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS1.ordinal()] = 16;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS2.ordinal()] = 17;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS3.ordinal()] = 18;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT.ordinal()] = 19;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr2[FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT.ordinal()] = 20;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr2[FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT.ordinal()] = 21;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr2[FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT.ordinal()] = 22;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr2[FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT.ordinal()] = 23;
            } catch (NoSuchFieldError unused28) {
            }
            f53723b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r11v9 */
    @Inject
    public NativeRegisterViewModelImpl(Application application, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Json json, Monitor monitor, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, AppsFlyerTracker appsFlyerTracker, NotificationBuilder notificationBuilder, EmailValidationRules emailValidationRules, PhoneValidationRules phoneValidationRules, FormPasswordValidationRules formPasswordValidationRules, GenericFieldValidationRules genericFieldValidationRules, DynamicFormSupervisor dynamicFormSupervisor, DynamicFormSupervisor dynamicFormSupervisor2, DynamicFormSupervisor dynamicFormSupervisor3, DynamicFormSupervisor dynamicFormSupervisor4, DynamicFormSupervisor dynamicFormSupervisor5, DynamicFormSupervisor dynamicFormSupervisor6, DynamicFormSupervisor dynamicFormSupervisor7, GetAccountStatusUseCase getAccountStatusUseCase, RegisterInitiateUseCase registerInitiateUseCase, RegisterValidateUseCase registerValidateUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, ReportDYSignUpEventUseCase reportDYSignUpEventUseCase, GetRegistrationFormUseCase getRegistrationFormUseCase, GetAddressCivilitiesMappingUseCase getAddressCivilitiesMappingUseCase) {
        ?? r11;
        int i2;
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        json.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        appsFlyerTracker.getClass();
        notificationBuilder.getClass();
        emailValidationRules.getClass();
        phoneValidationRules.getClass();
        formPasswordValidationRules.getClass();
        genericFieldValidationRules.getClass();
        dynamicFormSupervisor.getClass();
        dynamicFormSupervisor2.getClass();
        dynamicFormSupervisor3.getClass();
        dynamicFormSupervisor4.getClass();
        dynamicFormSupervisor5.getClass();
        dynamicFormSupervisor6.getClass();
        dynamicFormSupervisor7.getClass();
        getAccountStatusUseCase.getClass();
        registerInitiateUseCase.getClass();
        registerValidateUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        reportDYSignUpEventUseCase.getClass();
        getRegistrationFormUseCase.getClass();
        getAddressCivilitiesMappingUseCase.getClass();
        this.f53711b = monitor;
        this.f53712c = analyticsTracker;
        this.d = lVEventSender;
        this.f53713e = appsFlyerTracker;
        this.f53714f = notificationBuilder;
        this.g = emailValidationRules;
        this.f53715h = phoneValidationRules;
        this.f53716i = formPasswordValidationRules;
        this.f53717j = genericFieldValidationRules;
        this.f53718k = dynamicFormSupervisor;
        this.l = dynamicFormSupervisor2;
        this.m = dynamicFormSupervisor3;
        this.n = dynamicFormSupervisor4;
        this.o = dynamicFormSupervisor5;
        this.p = dynamicFormSupervisor6;
        this.q = dynamicFormSupervisor7;
        this.r = getAccountStatusUseCase;
        this.s = registerInitiateUseCase;
        this.t = registerValidateUseCase;
        this.u = isFeatureAvailableUseCase;
        this.v = reportDYSignUpEventUseCase;
        this.w = getRegistrationFormUseCase;
        this.x = getAddressCivilitiesMappingUseCase;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Integer.valueOf(Step.CREDENTIALS.ordinal()));
        this.y = mutableStateFlowA;
        this.z = FlowKt.b(mutableStateFlowA);
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.A = bufferedChannelA;
        this.B = FlowKt.y(bufferedChannelA);
        BufferedChannel bufferedChannelA2 = ChannelKt.a(0, 7, null);
        this.C = bufferedChannelA2;
        this.D = FlowKt.y(bufferedChannelA2);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new NativeRegisterCredentialsUiModel(null, null, false, 7, null));
        this.E = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new NativeRegisterPersonalInfoUiModel(false, null, null, null, null, null, 63, null));
        this.F = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new NativeRegisterBirthInfoUiModel(false, false, false, null, null, false, false, false, null, null, 1023, null));
        this.G = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new NativeRegisterActivationUiModel(null, null, 3, null));
        this.H = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(new NativeRegisterRegistrationAddressUiModel(false, null, null, null, null, null, null, CertificateBody.profileType, null));
        this.I = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(Boolean.FALSE);
        this.J = mutableStateFlowA7;
        this.K = StateFlowKt.a(null);
        this.L = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(new NativeRegisterFeatureFlags(false, false, 3, null));
        this.M = mutableStateFlowA8;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.O = inAppDispatchB;
        this.P = (TrackingAuthOrigin) savedStateHandle.a("EXTRA_TRACKING_ORIGIN");
        this.Q = TrackingAuthEntryPoint.SIGN_UP;
        BufferedChannel bufferedChannelA3 = ChannelKt.a(0, 7, null);
        this.R = bufferedChannelA3;
        this.S = FlowKt.y(bufferedChannelA3);
        BufferedChannel bufferedChannelA4 = ChannelKt.a(0, 7, null);
        this.T = bufferedChannelA4;
        this.U = FlowKt.y(bufferedChannelA4);
        this.V = inAppDispatchB.f67483j;
        this.W = MapsKt.c();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        final Flow[] flowArr = {mutableStateFlowA2, dynamicFormSupervisor3.getF57468c(), mutableStateFlowA3, dynamicFormSupervisor4.getF57468c(), mutableStateFlowA4, dynamicFormSupervisor2.getF57468c(), mutableStateFlowA5, dynamicFormSupervisor5.getF57468c(), dynamicFormSupervisor6.getF57468c(), dynamicFormSupervisor7.getF57468c(), mutableStateFlowA7, mutableStateFlowA6, dynamicFormSupervisor.getF57468c(), mutableStateFlowA8};
        Flow<NativeRegisterViewState> flow = new Flow<NativeRegisterViewState>() { // from class: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$special$$inlined$combine$1$3", f = "NativeRegisterViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super NativeRegisterViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f53792b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f53793c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ NativeRegisterViewModelImpl f53794e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
                    super(3, continuation);
                    this.f53794e = nativeRegisterViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f53794e);
                    anonymousClass3.f53793c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f53793c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f53792b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel = (NativeRegisterCredentialsUiModel) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        FormUiModel formUiModel = (FormUiModel) obj3;
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        NativeRegisterPersonalInfoUiModel nativeRegisterPersonalInfoUiModel = (NativeRegisterPersonalInfoUiModel) obj4;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        FormUiModel formUiModel2 = (FormUiModel) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel = (NativeRegisterBirthInfoUiModel) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        FormUiModel formUiModel3 = (FormUiModel) obj7;
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        NativeRegisterActivationUiModel nativeRegisterActivationUiModel = (NativeRegisterActivationUiModel) obj8;
                        Object obj9 = objArr[7];
                        obj9.getClass();
                        FormUiModel formUiModel4 = (FormUiModel) obj9;
                        Object obj10 = objArr[8];
                        obj10.getClass();
                        FormUiModel formUiModel5 = (FormUiModel) obj10;
                        Object obj11 = objArr[9];
                        obj11.getClass();
                        FormUiModel formUiModel6 = (FormUiModel) obj11;
                        Object obj12 = objArr[10];
                        obj12.getClass();
                        boolean zBooleanValue = ((Boolean) obj12).booleanValue();
                        Object obj13 = objArr[11];
                        obj13.getClass();
                        NativeRegisterRegistrationAddressUiModel nativeRegisterRegistrationAddressUiModel = (NativeRegisterRegistrationAddressUiModel) obj13;
                        Object obj14 = objArr[12];
                        obj14.getClass();
                        Object obj15 = objArr[13];
                        obj15.getClass();
                        NativeRegisterFeatureFlags nativeRegisterFeatureFlags = (NativeRegisterFeatureFlags) obj15;
                        NativeRegisterViewModelImpl nativeRegisterViewModelImpl = this.f53794e;
                        NativeRegisterViewState nativeRegisterViewState = new NativeRegisterViewState(nativeRegisterCredentialsUiModel, formUiModel, nativeRegisterPersonalInfoUiModel, formUiModel2, nativeRegisterBirthInfoUiModel, formUiModel3, nativeRegisterActivationUiModel, formUiModel4, formUiModel5, formUiModel6, nativeRegisterRegistrationAddressUiModel, (FormUiModel) obj14, zBooleanValue, nativeRegisterFeatureFlags, nativeRegisterViewModelImpl.P, nativeRegisterViewModelImpl.Q);
                        this.f53793c = null;
                        this.d = null;
                        this.f53792b = 1;
                        if (flowCollector.emit(nativeRegisterViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.X = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new NativeRegisterViewState(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, 65535, null));
        String str = (String) savedStateHandle.a("KEY_KISA_CONSENTS");
        this.Y = str != null ? (KisaConsents) json.b(KisaConsents.INSTANCE.serializer(), str) : null;
        Job job = (Job) linkedHashMap.get("loadDynamicRegistrationFormJob");
        if (job == null || !job.isActive()) {
            r11 = 0;
            i2 = 3;
            linkedHashMap.put("loadDynamicRegistrationFormJob", BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1(null, this), 3));
        } else {
            i2 = 3;
            r11 = 0;
        }
        BuildersKt.c(ViewModelKt.a(this), r11, r11, new AnonymousClass1(r11, this), i2);
        mutableStateFlowA4.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlowA4.getValue(), false, InAppDispatchExtKt.h(inAppDispatchB), false, null, null, false, false, false, 1021));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object Ac(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        NativeRegisterViewModelImpl$loadAddressForm$1 nativeRegisterViewModelImpl$loadAddressForm$1;
        if (continuationImpl instanceof NativeRegisterViewModelImpl$loadAddressForm$1) {
            nativeRegisterViewModelImpl$loadAddressForm$1 = (NativeRegisterViewModelImpl$loadAddressForm$1) continuationImpl;
            int i2 = nativeRegisterViewModelImpl$loadAddressForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeRegisterViewModelImpl$loadAddressForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeRegisterViewModelImpl$loadAddressForm$1 = new NativeRegisterViewModelImpl$loadAddressForm$1(nativeRegisterViewModelImpl, continuationImpl);
            }
        } else {
            nativeRegisterViewModelImpl$loadAddressForm$1 = new NativeRegisterViewModelImpl$loadAddressForm$1(nativeRegisterViewModelImpl, continuationImpl);
        }
        NativeRegisterViewModelImpl$loadAddressForm$1 nativeRegisterViewModelImpl$loadAddressForm$2 = nativeRegisterViewModelImpl$loadAddressForm$1;
        Object obj = nativeRegisterViewModelImpl$loadAddressForm$2.f53753b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeRegisterViewModelImpl$loadAddressForm$2.d;
        int i4 = 1;
        if (i3 == 0) {
            ResultKt.b(obj);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.ADDRESS1, FormSectionTypeUiModel.ADDRESS2, FormSectionTypeUiModel.ADDRESS3, FormSectionTypeUiModel.CITY, FormSectionTypeUiModel.COUNTY, FormSectionTypeUiModel.STATE, FormSectionTypeUiModel.POSTAL_CODE});
            DynamicFormSupervisor dynamicFormSupervisor = nativeRegisterViewModelImpl.f53718k;
            NativeRegisterViewModelImpl$loadAddressForm$2 nativeRegisterViewModelImpl$loadAddressForm$3 = new NativeRegisterViewModelImpl$loadAddressForm$2(null, nativeRegisterViewModelImpl);
            g3 g3Var = new g3(4, setZ);
            xf0 xf0Var = new xf0(nativeRegisterViewModelImpl, i4);
            nativeRegisterViewModelImpl$loadAddressForm$2.d = 1;
            if (dynamicFormSupervisor.b(nativeRegisterViewModelImpl$loadAddressForm$3, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : xf0Var, (124 & 256) != 0 ? new iv(6) : null, nativeRegisterViewModelImpl$loadAddressForm$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object Bc(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        NativeRegisterViewModelImpl$loadBirthInfoForm$1 nativeRegisterViewModelImpl$loadBirthInfoForm$1;
        if (continuationImpl instanceof NativeRegisterViewModelImpl$loadBirthInfoForm$1) {
            nativeRegisterViewModelImpl$loadBirthInfoForm$1 = (NativeRegisterViewModelImpl$loadBirthInfoForm$1) continuationImpl;
            int i2 = nativeRegisterViewModelImpl$loadBirthInfoForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeRegisterViewModelImpl$loadBirthInfoForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeRegisterViewModelImpl$loadBirthInfoForm$1 = new NativeRegisterViewModelImpl$loadBirthInfoForm$1(nativeRegisterViewModelImpl, continuationImpl);
            }
        } else {
            nativeRegisterViewModelImpl$loadBirthInfoForm$1 = new NativeRegisterViewModelImpl$loadBirthInfoForm$1(nativeRegisterViewModelImpl, continuationImpl);
        }
        NativeRegisterViewModelImpl$loadBirthInfoForm$1 nativeRegisterViewModelImpl$loadBirthInfoForm$2 = nativeRegisterViewModelImpl$loadBirthInfoForm$1;
        Object obj = nativeRegisterViewModelImpl$loadBirthInfoForm$2.f53757b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeRegisterViewModelImpl$loadBirthInfoForm$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.COUNTRY, FormSectionTypeUiModel.BIRTHDATE, FormSectionTypeUiModel.PHONE_BLOC, FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, FormSectionTypeUiModel.PHONE_NUMBER1});
            DynamicFormSupervisor dynamicFormSupervisor = nativeRegisterViewModelImpl.l;
            NativeRegisterViewModelImpl$loadBirthInfoForm$2 nativeRegisterViewModelImpl$loadBirthInfoForm$3 = new NativeRegisterViewModelImpl$loadBirthInfoForm$2(null, nativeRegisterViewModelImpl);
            g3 g3Var = new g3(7, setZ);
            xf0 xf0Var = new xf0(nativeRegisterViewModelImpl, 3);
            be0 be0Var = new be0(27);
            nativeRegisterViewModelImpl$loadBirthInfoForm$2.d = 1;
            if (dynamicFormSupervisor.b(nativeRegisterViewModelImpl$loadBirthInfoForm$3, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : xf0Var, (124 & 256) != 0 ? new iv(6) : be0Var, nativeRegisterViewModelImpl$loadBirthInfoForm$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:104:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:106:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:107:0x0301  */
    /* JADX WARN: Code duplicated, block: B:111:0x030f  */
    /* JADX WARN: Code duplicated, block: B:114:0x031d  */
    /* JADX WARN: Code duplicated, block: B:117:0x0334 A[PHI: r1 r2 r5
      0x0334: PHI (r1v41 ??) = (r1v51 ??), (r1v44 ??) binds: [B:115:0x0331, B:14:0x0040] A[DONT_GENERATE, DONT_INLINE]
      0x0334: PHI (r2v2 java.lang.Object) = (r2v1 java.lang.Object), (r2v9 java.lang.Object) binds: [B:115:0x0331, B:14:0x0040] A[DONT_GENERATE, DONT_INLINE]
      0x0334: PHI (r5v10 java.lang.Object) = (r5v7 java.lang.Object), (r5v13 java.lang.Object) binds: [B:115:0x0331, B:14:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x033c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0304 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x02dd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x0225 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x00de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:30:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:31:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:43:0x0105 A[LOOP:3: B:41:0x00ff->B:43:0x0105, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:45:0x011a  */
    /* JADX WARN: Code duplicated, block: B:47:0x011d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0139  */
    /* JADX WARN: Code duplicated, block: B:55:0x0162  */
    /* JADX WARN: Code duplicated, block: B:58:0x017c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0184  */
    /* JADX WARN: Code duplicated, block: B:61:0x018a  */
    /* JADX WARN: Code duplicated, block: B:63:0x0192  */
    /* JADX WARN: Code duplicated, block: B:66:0x019e  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:77:0x01df  */
    /* JADX WARN: Code duplicated, block: B:78:0x01ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:80:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:84:0x022b  */
    /* JADX WARN: Code duplicated, block: B:89:0x024f  */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX WARN: Code duplicated, block: B:92:0x0285  */
    /* JADX WARN: Code duplicated, block: B:94:0x028b  */
    /* JADX WARN: Code duplicated, block: B:97:0x029e  */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x035f, code lost:
    
        if (r4.b(r2, (124 & 2) != 0 ? new defpackage.iv(2) : r6, (124 & 4) != 0 ? new defpackage.rq(7) : null, (124 & 8) != 0 ? new defpackage.iv(3) : null, (124 & 16) != 0 ? new defpackage.rt(11) : null, (124 & 32) != 0 ? new defpackage.iv(4) : null, (124 & 64) != 0 ? new defpackage.rq(8) : null, (124 & 128) != 0 ? new defpackage.iv(5) : null, (124 & 256) != 0 ? new defpackage.iv(6) : null, r14) == r3) goto L121;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v33, types: [java.util.Set, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r1v37, types: [java.lang.Object, java.util.Set] */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41, types: [java.lang.Object, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v52 */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v55 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Cc(com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instruction units count: 912
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Cc(com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object Dc(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        NativeRegisterViewModelImpl$loadCredentialsForm$1 nativeRegisterViewModelImpl$loadCredentialsForm$1;
        if (continuationImpl instanceof NativeRegisterViewModelImpl$loadCredentialsForm$1) {
            nativeRegisterViewModelImpl$loadCredentialsForm$1 = (NativeRegisterViewModelImpl$loadCredentialsForm$1) continuationImpl;
            int i2 = nativeRegisterViewModelImpl$loadCredentialsForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeRegisterViewModelImpl$loadCredentialsForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeRegisterViewModelImpl$loadCredentialsForm$1 = new NativeRegisterViewModelImpl$loadCredentialsForm$1(nativeRegisterViewModelImpl, continuationImpl);
            }
        } else {
            nativeRegisterViewModelImpl$loadCredentialsForm$1 = new NativeRegisterViewModelImpl$loadCredentialsForm$1(nativeRegisterViewModelImpl, continuationImpl);
        }
        NativeRegisterViewModelImpl$loadCredentialsForm$1 nativeRegisterViewModelImpl$loadCredentialsForm$2 = nativeRegisterViewModelImpl$loadCredentialsForm$1;
        Object obj = nativeRegisterViewModelImpl$loadCredentialsForm$2.f53769b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeRegisterViewModelImpl$loadCredentialsForm$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.EMAIL, FormSectionTypeUiModel.NEW_PASSWORD, FormSectionTypeUiModel.CONFIRM_PASSWORD});
            DynamicFormSupervisor dynamicFormSupervisor = nativeRegisterViewModelImpl.m;
            NativeRegisterViewModelImpl$loadCredentialsForm$2 nativeRegisterViewModelImpl$loadCredentialsForm$3 = new NativeRegisterViewModelImpl$loadCredentialsForm$2(null, nativeRegisterViewModelImpl);
            g3 g3Var = new g3(5, setZ);
            xf0 xf0Var = new xf0(nativeRegisterViewModelImpl, 0);
            be0 be0Var = new be0(28);
            nativeRegisterViewModelImpl$loadCredentialsForm$2.d = 1;
            if (dynamicFormSupervisor.b(nativeRegisterViewModelImpl$loadCredentialsForm$3, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : xf0Var, (124 & 256) != 0 ? new iv(6) : be0Var, nativeRegisterViewModelImpl$loadCredentialsForm$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object Ec(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        NativeRegisterViewModelImpl$loadPersonalInfoForm$1 nativeRegisterViewModelImpl$loadPersonalInfoForm$1;
        if (continuationImpl instanceof NativeRegisterViewModelImpl$loadPersonalInfoForm$1) {
            nativeRegisterViewModelImpl$loadPersonalInfoForm$1 = (NativeRegisterViewModelImpl$loadPersonalInfoForm$1) continuationImpl;
            int i2 = nativeRegisterViewModelImpl$loadPersonalInfoForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeRegisterViewModelImpl$loadPersonalInfoForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeRegisterViewModelImpl$loadPersonalInfoForm$1 = new NativeRegisterViewModelImpl$loadPersonalInfoForm$1(nativeRegisterViewModelImpl, continuationImpl);
            }
        } else {
            nativeRegisterViewModelImpl$loadPersonalInfoForm$1 = new NativeRegisterViewModelImpl$loadPersonalInfoForm$1(nativeRegisterViewModelImpl, continuationImpl);
        }
        NativeRegisterViewModelImpl$loadPersonalInfoForm$1 nativeRegisterViewModelImpl$loadPersonalInfoForm$2 = nativeRegisterViewModelImpl$loadPersonalInfoForm$1;
        Object obj = nativeRegisterViewModelImpl$loadPersonalInfoForm$2.f53775b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeRegisterViewModelImpl$loadPersonalInfoForm$2.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Set setZ = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.CIVILITY, FormSectionTypeUiModel.FIRSTNAME1, FormSectionTypeUiModel.LASTNAME1, FormSectionTypeUiModel.FIRSTNAME2, FormSectionTypeUiModel.LASTNAME2});
            DynamicFormSupervisor dynamicFormSupervisor = nativeRegisterViewModelImpl.n;
            NativeRegisterViewModelImpl$loadPersonalInfoForm$2 nativeRegisterViewModelImpl$loadPersonalInfoForm$3 = new NativeRegisterViewModelImpl$loadPersonalInfoForm$2(null, nativeRegisterViewModelImpl);
            g3 g3Var = new g3(6, setZ);
            xf0 xf0Var = new xf0(nativeRegisterViewModelImpl, 2);
            ag0 ag0Var = new ag0(0);
            nativeRegisterViewModelImpl$loadPersonalInfoForm$2.d = 1;
            if (dynamicFormSupervisor.b(nativeRegisterViewModelImpl$loadPersonalInfoForm$3, (124 & 2) != 0 ? new iv(2) : g3Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : xf0Var, (124 & 256) != 0 ? new iv(6) : ag0Var, nativeRegisterViewModelImpl$loadPersonalInfoForm$2) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    public static final void Fc(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, StringResourceUiModel.ResId resId) {
        nativeRegisterViewModelImpl.getClass();
        BuildersKt.c(ViewModelKt.a(nativeRegisterViewModelImpl), null, null, new NativeRegisterViewModelImpl$showErrorNotification$1(nativeRegisterViewModelImpl, resId, null), 3);
    }

    public static final boolean yc(NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        return ((NativeRegisterFeatureFlags) nativeRegisterViewModelImpl.M.getValue()).f53985a && !((FormUiModel) nativeRegisterViewModelImpl.f53718k.getF57468c().getValue()).f57486a.isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0086  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
    
        if (r7 == r2) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            kotlinx.coroutines.flow.MutableStateFlow r0 = r6.J
            boolean r1 = r7 instanceof com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$initiateRegistration$1
            if (r1 == 0) goto L15
            r1 = r7
            com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$initiateRegistration$1 r1 = (com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$initiateRegistration$1) r1
            int r2 = r1.d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.d = r2
            goto L1a
        L15:
            com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$initiateRegistration$1 r1 = new com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$initiateRegistration$1
            r1.<init>(r6, r7)
        L1a:
            java.lang.Object r7 = r1.f53751b
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.d
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L41
            if (r3 == r5) goto L39
            if (r3 != r4) goto L32
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L30
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Throwable -> L30
            java.lang.Object r7 = r7.f71708b     // Catch: java.lang.Throwable -> L30
            goto L72
        L30:
            r7 = move-exception
            goto L7a
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L39:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.f71708b
            goto L5f
        L41:
            kotlin.ResultKt.b(r7)
        L44:
            java.lang.Object r7 = r0.getValue()
            r3 = r7
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            r3.getClass()
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r7 = r0.i(r7, r3)
            if (r7 == 0) goto L44
            r1.d = r5
            java.lang.Object r7 = r6.Gc(r1)
            if (r7 != r2) goto L5f
            goto L71
        L5f:
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            boolean r3 = r7 instanceof kotlin.Result.Failure
            if (r3 != 0) goto L82
            com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody r7 = (com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody) r7     // Catch: java.lang.Throwable -> L30
            com.vuitton.android.domain.usecase.authentication.oauth.RegisterInitiateUseCase r3 = r6.s     // Catch: java.lang.Throwable -> L30
            r1.d = r4     // Catch: java.lang.Throwable -> L30
            java.lang.Object r7 = r3.a(r7, r1)     // Catch: java.lang.Throwable -> L30
            if (r7 != r2) goto L72
        L71:
            return r2
        L72:
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L30
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L30
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L30
            goto L82
        L7a:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r1 = new kotlin.Result$Failure
            r1.<init>(r7)
            r7 = r1
        L82:
            boolean r1 = r7 instanceof kotlin.Result.Failure
            if (r1 != 0) goto L8e
            r1 = r7
            java.lang.String r1 = (java.lang.String) r1
            kotlinx.coroutines.flow.MutableStateFlow r6 = r6.L
            r6.setValue(r1)
        L8e:
            java.lang.Throwable r6 = kotlin.Result.a(r7)
            if (r6 == 0) goto L9d
            java.lang.String r1 = "NativeRegisterViewModelImpl"
            java.lang.String r2 = "Unable to initiate registration"
            com.vuitton.foundation.logger.LegacyLogger r3 = com.vuitton.foundation.logger.LegacyLogger.f66205a
            r3.c(r1, r2, r6)
        L9d:
            java.lang.Object r6 = r0.getValue()
            r1 = r6
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r1.getClass()
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            boolean r6 = r0.i(r6, r1)
            if (r6 == 0) goto L9d
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.zc(com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void A(String str) {
        str.getClass();
        MutableStateFlow mutableStateFlow = this.H;
        ((NativeRegisterActivationUiModel) mutableStateFlow.getValue()).f53922b.a();
        NativeRegisterActivationUiModel nativeRegisterActivationUiModel = (NativeRegisterActivationUiModel) mutableStateFlow.getValue();
        FieldErrorUiModel fieldErrorUiModel = nativeRegisterActivationUiModel.f53922b;
        nativeRegisterActivationUiModel.getClass();
        str.getClass();
        fieldErrorUiModel.getClass();
        mutableStateFlow.setValue(new NativeRegisterActivationUiModel(str, fieldErrorUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void Fa(Step step, FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        FormFieldUiModel formFieldUiModelC;
        FormFieldUiModel formFieldUiModelC2;
        step.getClass();
        formSectionTypeUiModel.getClass();
        obj.getClass();
        int i2 = WhenMappings.f53722a[step.ordinal()];
        DynamicFormSupervisor dynamicFormSupervisor = this.p;
        DynamicFormSupervisor dynamicFormSupervisor2 = this.m;
        DynamicFormSupervisor dynamicFormSupervisor3 = this.l;
        MutableStateFlow mutableStateFlow = this.E;
        InAppDispatch inAppDispatch = this.O;
        MutableStateFlow mutableStateFlow2 = this.G;
        MutableStateFlow mutableStateFlow3 = this.F;
        if (i2 == 1) {
            dynamicFormSupervisor2.j(formSectionTypeUiModel, obj, new rq(9));
            mutableStateFlow.setValue(NativeRegisterCredentialsUiModel.a((NativeRegisterCredentialsUiModel) mutableStateFlow.getValue(), null, ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).i(), 3));
        } else if (i2 == 2) {
            rq rqVar = new rq(9);
            DynamicFormSupervisor dynamicFormSupervisor4 = this.n;
            dynamicFormSupervisor4.j(formSectionTypeUiModel, obj, rqVar);
            mutableStateFlow3.setValue(NativeRegisterPersonalInfoUiModel.a((NativeRegisterPersonalInfoUiModel) mutableStateFlow3.getValue(), ((FormUiModel) dynamicFormSupervisor4.getF57468c().getValue()).i()));
        } else if (i2 == 3) {
            this.f53718k.j(formSectionTypeUiModel, obj, new rq(9));
            Nc();
        } else if (i2 == 4) {
            dynamicFormSupervisor3.j(formSectionTypeUiModel, obj, new rq(9));
            rq rqVar2 = new rq(9);
            DynamicFormSupervisor dynamicFormSupervisor5 = this.o;
            dynamicFormSupervisor5.j(formSectionTypeUiModel, obj, rqVar2);
            dynamicFormSupervisor.j(formSectionTypeUiModel, obj, new rq(9));
            rq rqVar3 = new rq(9);
            DynamicFormSupervisor dynamicFormSupervisor6 = this.q;
            dynamicFormSupervisor6.j(formSectionTypeUiModel, obj, rqVar3);
            if (formSectionTypeUiModel == FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT) {
                Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                if (Mc(bool != null ? bool.booleanValue() : false)) {
                    L4(NativeRegisterTrackingUiModel.OnSmsMarketingConsentWithoutPhoneNumberEvent.f54028a);
                }
            }
            NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel = (NativeRegisterBirthInfoUiModel) mutableStateFlow2.getValue();
            FormUiModel formUiModel = (FormUiModel) dynamicFormSupervisor3.getF57468c().getValue();
            mutableStateFlow2.setValue(NativeRegisterBirthInfoUiModel.a(nativeRegisterBirthInfoUiModel, false, false, (formUiModel.i() || !((!InAppDispatchExtKt.j(inAppDispatch) && !InAppDispatchExtKt.b(inAppDispatch)) || (formFieldUiModelC = formUiModel.c(FormSectionTypeUiModel.BIRTHDATE)) == null || formFieldUiModelC.g() || (formFieldUiModelC2 = formUiModel.c(FormSectionTypeUiModel.PHONE_NUMBER1)) == null || !formFieldUiModelC2.g())) && ((FormUiModel) dynamicFormSupervisor5.getF57468c().getValue()).i() && ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).i() && ((FormUiModel) dynamicFormSupervisor6.getF57468c().getValue()).i(), null, null, false, false, false, 1019));
        }
        int i3 = WhenMappings.f53723b[formSectionTypeUiModel.ordinal()];
        MutableStateFlow mutableStateFlow4 = this.I;
        switch (i3) {
            case 1:
                NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel = (NativeRegisterCredentialsUiModel) mutableStateFlow.getValue();
                FormUiModel formUiModel2 = (FormUiModel) dynamicFormSupervisor2.getF57468c().getValue();
                FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.EMAIL;
                FormUiModel.Companion companion = FormUiModel.f57485b;
                mutableStateFlow.setValue(NativeRegisterCredentialsUiModel.a(nativeRegisterCredentialsUiModel, formUiModel2.e(formSectionTypeUiModel2, true), false, 6));
                EmailValidationRules emailValidationRules = this.g;
                emailValidationRules.f53487a = false;
                emailValidationRules.f53488b = null;
                break;
            case 2:
                if (obj.toString().length() == 0) {
                    ((NativeRegisterCredentialsUiModel) mutableStateFlow.getValue()).f53952b.c();
                }
                ((SnapshotMutableStateImpl) ((NativeRegisterCredentialsUiModel) mutableStateFlow.getValue()).f53952b.f53492a).setValue(null);
                break;
            case 4:
                ((NativeRegisterPersonalInfoUiModel) mutableStateFlow3.getValue()).f53988b.a();
                break;
            case 5:
                ((NativeRegisterPersonalInfoUiModel) mutableStateFlow3.getValue()).f53989c.a();
                break;
            case 6:
                ((NativeRegisterPersonalInfoUiModel) mutableStateFlow3.getValue()).d.a();
                break;
            case 7:
                ((NativeRegisterPersonalInfoUiModel) mutableStateFlow3.getValue()).f53990e.a();
                break;
            case 8:
                ((NativeRegisterPersonalInfoUiModel) mutableStateFlow3.getValue()).f53991f.a();
                break;
            case 9:
                Instant instant = (Instant) this.K.getValue();
                if (instant == null || (!InAppDispatchExtKt.j(inAppDispatch) ? !InAppDispatchExtKt.b(inAppDispatch) || ChronoUnit.YEARS.between(instant.atZone(ZoneId.systemDefault()), Instant.now().atZone(ZoneId.systemDefault())) >= 14 : ChronoUnit.YEARS.between(instant.atZone(ZoneId.systemDefault()), Instant.now().atZone(ZoneId.systemDefault())) >= 18)) {
                    ((NativeRegisterBirthInfoUiModel) mutableStateFlow2.getValue()).f53947j.a();
                } else {
                    FieldErrorUiModel fieldErrorUiModel = ((NativeRegisterBirthInfoUiModel) mutableStateFlow2.getValue()).f53947j;
                    StringResourceUiModel.ResId resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_date_of_birth_error_message, null, 2, null);
                    Application application = this.f13405a;
                    application.getClass();
                    fieldErrorUiModel.c(StringResourceUiModelKt.a(resId, application));
                    BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$onFieldUpdated$2(null, this), 3);
                }
                dynamicFormSupervisor3.i();
                mutableStateFlow2.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow2.getValue(), false, false, false, null, null, false, false, false, 1022));
                break;
            case 10:
                ((NativeRegisterBirthInfoUiModel) mutableStateFlow2.getValue()).f53946i.a();
                break;
            case 13:
                ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow4.getValue()).f53993b.a();
                break;
            case 14:
                ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow4.getValue()).f53994c.a();
                break;
            case 15:
                ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow4.getValue()).d.a();
                break;
            case 16:
                ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow4.getValue()).f53995e.a();
                break;
            case 17:
                ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow4.getValue()).f53996f.a();
                break;
            case 18:
                ((NativeRegisterRegistrationAddressUiModel) mutableStateFlow4.getValue()).g.a();
                break;
            case 19:
                boolean z = obj instanceof Boolean;
                Jc(formSectionTypeUiModel, Intrinsics.c(z ? (Boolean) obj : null, Boolean.TRUE));
                Boolean bool2 = z ? (Boolean) obj : null;
                boolean zBooleanValue = bool2 != null ? bool2.booleanValue() : false;
                dynamicFormSupervisor.j(FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT, Boolean.valueOf(zBooleanValue), new rq(9));
                for (FormSectionTypeUiModel formSectionTypeUiModel3 : CollectionsKt.P(FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT, FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT)) {
                    dynamicFormSupervisor.j(formSectionTypeUiModel3, Boolean.valueOf(zBooleanValue && Intrinsics.c(this.W.get(formSectionTypeUiModel3), Boolean.TRUE)), new rq(9));
                }
                Boolean boolD = FormUiModel.d((FormUiModel) dynamicFormSupervisor.getF57468c().getValue(), FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT);
                if (boolD != null) {
                    Mc(boolD.booleanValue());
                }
                FormUiModel formUiModel3 = (FormUiModel) dynamicFormSupervisor.getF57468c().getValue();
                FormSectionTypeUiModel formSectionTypeUiModel4 = FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT;
                formUiModel3.getClass();
                formSectionTypeUiModel4.getClass();
                if (formUiModel3.c(formSectionTypeUiModel4) != null) {
                    Kc(Boolean.valueOf(zBooleanValue));
                }
                Lc();
                break;
            case 20:
                Jc(formSectionTypeUiModel, Intrinsics.c(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE));
                Ic();
                Kc(obj);
                break;
            case 21:
            case 22:
                Jc(formSectionTypeUiModel, Intrinsics.c(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE));
                Ic();
                break;
            case 23:
                Jc(formSectionTypeUiModel, Intrinsics.c(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE));
                break;
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: G3, reason: from getter */
    public final Flow getU() {
        return this.U;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0099  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:42:0x013b  */
    /* JADX WARN: Code duplicated, block: B:43:0x014d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0175  */
    /* JADX WARN: Code duplicated, block: B:47:0x018f  */
    /* JADX WARN: Code duplicated, block: B:50:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:51:0x0201  */
    /* JADX WARN: Code duplicated, block: B:55:0x026e  */
    /* JADX WARN: Code duplicated, block: B:58:0x02b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:60:0x02b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:62:0x02be  */
    /* JADX WARN: Code duplicated, block: B:64:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:67:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:68:0x02ce A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:70:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:73:0x02da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:75:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:79:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:82:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:90:0x032c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:91:0x00e2 A[SYNTHETIC] */
    public final Object Gc(ContinuationImpl continuationImpl) {
        NativeRegisterViewModelImpl$createRegisterInitiateBody$1 nativeRegisterViewModelImpl$createRegisterInitiateBody$1;
        String str;
        GetAddressCivilitiesMappingUseCase getAddressCivilitiesMappingUseCase;
        Object objA;
        Instant instant;
        DynamicFormSupervisor dynamicFormSupervisor;
        String strI;
        Iterator it;
        Object next;
        Civility civility;
        String strJ;
        String strI2;
        PhoneNumber phoneNumber;
        UserInformation userInformation;
        DynamicFormSupervisor dynamicFormSupervisor2;
        String strG;
        RegistrationAddress registrationAddress;
        LoginParam loginParam;
        FormUiModel formUiModel;
        FormUiModel formUiModel2;
        FormUiModel formUiModel3;
        KisaConsents kisaConsents;
        Object objC;
        KisaConsents kisaConsents2;
        FormUiModel formUiModel4;
        FormUiModel formUiModel5;
        FormUiModel formUiModel6;
        UserInformation userInformation2;
        RegistrationAddress registrationAddress2;
        String str2;
        boolean zBooleanValue;
        Boolean boolD;
        Boolean boolD2;
        Boolean boolD3;
        Boolean boolD4;
        Boolean boolD5;
        Boolean boolD6;
        Boolean bool;
        boolean zC;
        Boolean boolValueOf;
        boolean zBooleanValue2;
        boolean zBooleanValue3;
        boolean zBooleanValue4;
        boolean zBooleanValue5;
        if (continuationImpl instanceof NativeRegisterViewModelImpl$createRegisterInitiateBody$1) {
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1 = (NativeRegisterViewModelImpl$createRegisterInitiateBody$1) continuationImpl;
            int i2 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l = i2 - Integer.MIN_VALUE;
            } else {
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1 = new NativeRegisterViewModelImpl$createRegisterInitiateBody$1(this, continuationImpl);
            }
        } else {
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1 = new NativeRegisterViewModelImpl$createRegisterInitiateBody$1(this, continuationImpl);
        }
        Object objC2 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53745j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = this.u;
        boolean z = false;
        Boolean boolValueOf2 = null;
        if (i3 == 0) {
            ResultKt.b(objC2);
            str = this.O.f67483j;
            Feature[] featureArr = {Feature.TWIST};
            getAddressCivilitiesMappingUseCase = this.x;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53739b = getAddressCivilitiesMappingUseCase;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53740c = str;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l = 1;
            objC2 = isFeatureAvailableUseCase.c(featureArr, false, nativeRegisterViewModelImpl$createRegisterInitiateBody$1);
            if (objC2 != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            str = (String) nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53740c;
            getAddressCivilitiesMappingUseCase = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53739b;
            ResultKt.b(objC2);
        } else {
            if (i3 == 2) {
                ResultKt.b(objC2);
                objA = ((Result) objC2).f71708b;
                Result.Companion companion = Result.INSTANCE;
                if (!(objA instanceof Result.Failure)) {
                    return objA;
                }
                List list = (List) objA;
                instant = (Instant) this.K.getValue();
                DynamicFormSupervisor dynamicFormSupervisor3 = this.n;
                dynamicFormSupervisor3.getClass();
                dynamicFormSupervisor = this.l;
                dynamicFormSupervisor.getClass();
                list.getClass();
                FormUiModel formUiModel7 = (FormUiModel) dynamicFormSupervisor3.getF57468c().getValue();
                FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.CIVILITY;
                FormUiModel.Companion companion2 = FormUiModel.f57485b;
                strI = StringKtExtKt.i(formUiModel7.e(formSectionTypeUiModel, true));
                it = list.iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((Civility) next).f67578a, strI));
                civility = (Civility) next;
                if (civility != null && (str2 = civility.f67579b) != null) {
                    strI = str2;
                }
                if (strI == null) {
                    strI = "";
                }
                String str3 = strI;
                String strE = ((FormUiModel) dynamicFormSupervisor3.getF57468c().getValue()).e(FormSectionTypeUiModel.FIRSTNAME1, true);
                String strE2 = ((FormUiModel) dynamicFormSupervisor3.getF57468c().getValue()).e(FormSectionTypeUiModel.LASTNAME1, true);
                String strI3 = StringKtExtKt.i(((FormUiModel) dynamicFormSupervisor3.getF57468c().getValue()).e(FormSectionTypeUiModel.FIRSTNAME2, true));
                String strI4 = StringKtExtKt.i(((FormUiModel) dynamicFormSupervisor3.getF57468c().getValue()).e(FormSectionTypeUiModel.LASTNAME2, true));
                if (instant != null) {
                    LocalDateTime localDateTimeOfInstant = LocalDateTime.ofInstant(instant, ZoneOffset.UTC);
                    localDateTimeOfInstant.getClass();
                    strJ = DateTimeUtils.j("yyyy-MM-dd", localDateTimeOfInstant);
                } else {
                    strJ = null;
                }
                String strE3 = ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).e(FormSectionTypeUiModel.COUNTRY, true);
                strI2 = StringKtExtKt.i(((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).e(FormSectionTypeUiModel.PHONE_NUMBER1, true));
                if (strI2 != null) {
                    phoneNumber = new PhoneNumber(strI2, PhoneNumberType.MOBILE, ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).e(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, true));
                } else {
                    phoneNumber = null;
                }
                userInformation = new UserInformation(str3, strE, strE2, strI3, strI4, strE3, strJ, phoneNumber);
                dynamicFormSupervisor2 = this.f53718k;
                strG = FormUiModel.g((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), FormSectionTypeUiModel.ADDRESS1, null, false, 6);
                if (strG != null) {
                    registrationAddress = new RegistrationAddress(strG, FormUiModel.g((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), FormSectionTypeUiModel.ADDRESS2, null, false, 6), FormUiModel.g((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), FormSectionTypeUiModel.ADDRESS3, null, false, 6), ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).e(FormSectionTypeUiModel.CITY, true), ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).e(FormSectionTypeUiModel.POSTAL_CODE, true), ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).e(FormSectionTypeUiModel.STATE, true));
                } else {
                    registrationAddress = null;
                }
                DynamicFormSupervisor dynamicFormSupervisor4 = this.m;
                loginParam = new LoginParam(((FormUiModel) dynamicFormSupervisor4.getF57468c().getValue()).e(FormSectionTypeUiModel.EMAIL, true), ((FormUiModel) dynamicFormSupervisor4.getF57468c().getValue()).e(FormSectionTypeUiModel.NEW_PASSWORD, true));
                formUiModel = (FormUiModel) this.o.getF57468c().getValue();
                formUiModel2 = (FormUiModel) this.p.getF57468c().getValue();
                formUiModel3 = (FormUiModel) this.q.getF57468c().getValue();
                Feature[] featureArr2 = {Feature.EMAIL_TRACKING_CONSENT};
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53739b = null;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53740c = userInformation;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.d = loginParam;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53741e = registrationAddress;
                kisaConsents = this.Y;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53742f = kisaConsents;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.g = formUiModel3;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53743h = formUiModel2;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53744i = formUiModel;
                nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l = 3;
                objC = isFeatureAvailableUseCase.c(featureArr2, false, nativeRegisterViewModelImpl$createRegisterInitiateBody$1);
                if (objC != coroutineSingletons) {
                    kisaConsents2 = kisaConsents;
                    formUiModel4 = formUiModel;
                    objC2 = objC;
                    formUiModel5 = formUiModel2;
                    formUiModel6 = formUiModel3;
                    userInformation2 = userInformation;
                    registrationAddress2 = registrationAddress;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            formUiModel4 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53744i;
            formUiModel5 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53743h;
            formUiModel6 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.g;
            kisaConsents2 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53742f;
            registrationAddress2 = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53741e;
            loginParam = nativeRegisterViewModelImpl$createRegisterInitiateBody$1.d;
            userInformation2 = (UserInformation) nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53740c;
            ResultKt.b(objC2);
        }
        zBooleanValue = ((Boolean) objC2).booleanValue();
        formUiModel4.getClass();
        formUiModel5.getClass();
        formUiModel6.getClass();
        boolD = FormUiModel.d(formUiModel4, FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT);
        boolD2 = FormUiModel.d(formUiModel4, FormSectionTypeUiModel.LEGACY_CONSENTS);
        boolD3 = FormUiModel.d(formUiModel4, FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS);
        boolD4 = FormUiModel.d(formUiModel5, FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT);
        boolD5 = FormUiModel.d(formUiModel5, FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT);
        boolD6 = FormUiModel.d(formUiModel5, FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT);
        bool = Boolean.TRUE;
        zC = Intrinsics.c(boolD, bool);
        if (zC) {
            if (boolD3 != null) {
                zBooleanValue5 = boolD3.booleanValue();
            } else if (boolD4 != null) {
                zBooleanValue5 = boolD4.booleanValue();
            } else {
                zBooleanValue5 = false;
            }
            boolValueOf = Boolean.valueOf(zBooleanValue5);
        } else {
            boolValueOf = boolD;
        }
        if (boolD != null) {
            zBooleanValue2 = boolD.booleanValue();
        } else if (boolD2 != null) {
            zBooleanValue2 = boolD2.booleanValue();
        } else {
            zBooleanValue2 = false;
        }
        if (zC) {
            if (boolD5 != null) {
                zBooleanValue4 = boolD5.booleanValue();
            } else {
                zBooleanValue4 = false;
            }
            boolD = Boolean.valueOf(zBooleanValue4);
        }
        Boolean bool2 = boolD;
        if (boolD6 != null) {
            zBooleanValue3 = boolD6.booleanValue();
        } else {
            zBooleanValue3 = false;
        }
        if (zBooleanValue) {
            if (Intrinsics.c(boolValueOf, bool) && Intrinsics.c(FormUiModel.d(formUiModel6, FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT), bool)) {
                z = true;
            }
            boolValueOf2 = Boolean.valueOf(z);
        }
        RegisterInitiateBody registerInitiateBody = new RegisterInitiateBody(userInformation2, registrationAddress2, loginParam, new RegisterConsents(zBooleanValue2, new UserConsents(kisaConsents2, new MarketingConsents(null, boolValueOf, null, null, Boolean.valueOf(zBooleanValue3), bool2, boolValueOf2))));
        Result.Companion companion3 = Result.INSTANCE;
        return registerInitiateBody;
        boolean zBooleanValue6 = ((Boolean) objC2).booleanValue();
        nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53739b = null;
        nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53740c = null;
        nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l = 2;
        objA = getAddressCivilitiesMappingUseCase.a(str, zBooleanValue6, nativeRegisterViewModelImpl$createRegisterInitiateBody$1);
        if (objA != coroutineSingletons) {
            Result.Companion companion4 = Result.INSTANCE;
            if (!(objA instanceof Result.Failure)) {
                return objA;
            }
            List list2 = (List) objA;
            instant = (Instant) this.K.getValue();
            DynamicFormSupervisor dynamicFormSupervisor5 = this.n;
            dynamicFormSupervisor5.getClass();
            dynamicFormSupervisor = this.l;
            dynamicFormSupervisor.getClass();
            list2.getClass();
            FormUiModel formUiModel8 = (FormUiModel) dynamicFormSupervisor5.getF57468c().getValue();
            FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.CIVILITY;
            FormUiModel.Companion companion5 = FormUiModel.f57485b;
            strI = StringKtExtKt.i(formUiModel8.e(formSectionTypeUiModel2, true));
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
                strI = str2;
            }
            if (strI == null) {
                strI = "";
            }
            String str4 = strI;
            String strE4 = ((FormUiModel) dynamicFormSupervisor5.getF57468c().getValue()).e(FormSectionTypeUiModel.FIRSTNAME1, true);
            String strE5 = ((FormUiModel) dynamicFormSupervisor5.getF57468c().getValue()).e(FormSectionTypeUiModel.LASTNAME1, true);
            String strI5 = StringKtExtKt.i(((FormUiModel) dynamicFormSupervisor5.getF57468c().getValue()).e(FormSectionTypeUiModel.FIRSTNAME2, true));
            String strI6 = StringKtExtKt.i(((FormUiModel) dynamicFormSupervisor5.getF57468c().getValue()).e(FormSectionTypeUiModel.LASTNAME2, true));
            if (instant != null) {
                LocalDateTime localDateTimeOfInstant2 = LocalDateTime.ofInstant(instant, ZoneOffset.UTC);
                localDateTimeOfInstant2.getClass();
                strJ = DateTimeUtils.j("yyyy-MM-dd", localDateTimeOfInstant2);
            } else {
                strJ = null;
            }
            String strE6 = ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).e(FormSectionTypeUiModel.COUNTRY, true);
            strI2 = StringKtExtKt.i(((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).e(FormSectionTypeUiModel.PHONE_NUMBER1, true));
            if (strI2 != null) {
                phoneNumber = new PhoneNumber(strI2, PhoneNumberType.MOBILE, ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).e(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, true));
            } else {
                phoneNumber = null;
            }
            userInformation = new UserInformation(str4, strE4, strE5, strI5, strI6, strE6, strJ, phoneNumber);
            dynamicFormSupervisor2 = this.f53718k;
            strG = FormUiModel.g((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), FormSectionTypeUiModel.ADDRESS1, null, false, 6);
            if (strG != null) {
                registrationAddress = new RegistrationAddress(strG, FormUiModel.g((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), FormSectionTypeUiModel.ADDRESS2, null, false, 6), FormUiModel.g((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), FormSectionTypeUiModel.ADDRESS3, null, false, 6), ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).e(FormSectionTypeUiModel.CITY, true), ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).e(FormSectionTypeUiModel.POSTAL_CODE, true), ((FormUiModel) dynamicFormSupervisor2.getF57468c().getValue()).e(FormSectionTypeUiModel.STATE, true));
            } else {
                registrationAddress = null;
            }
            DynamicFormSupervisor dynamicFormSupervisor6 = this.m;
            loginParam = new LoginParam(((FormUiModel) dynamicFormSupervisor6.getF57468c().getValue()).e(FormSectionTypeUiModel.EMAIL, true), ((FormUiModel) dynamicFormSupervisor6.getF57468c().getValue()).e(FormSectionTypeUiModel.NEW_PASSWORD, true));
            formUiModel = (FormUiModel) this.o.getF57468c().getValue();
            formUiModel2 = (FormUiModel) this.p.getF57468c().getValue();
            formUiModel3 = (FormUiModel) this.q.getF57468c().getValue();
            Feature[] featureArr3 = {Feature.EMAIL_TRACKING_CONSENT};
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53739b = null;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53740c = userInformation;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.d = loginParam;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53741e = registrationAddress;
            kisaConsents = this.Y;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53742f = kisaConsents;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.g = formUiModel3;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53743h = formUiModel2;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.f53744i = formUiModel;
            nativeRegisterViewModelImpl$createRegisterInitiateBody$1.l = 3;
            objC = isFeatureAvailableUseCase.c(featureArr3, false, nativeRegisterViewModelImpl$createRegisterInitiateBody$1);
            if (objC != coroutineSingletons) {
                kisaConsents2 = kisaConsents;
                formUiModel4 = formUiModel;
                objC2 = objC;
                formUiModel5 = formUiModel2;
                formUiModel6 = formUiModel3;
                userInformation2 = userInformation;
                registrationAddress2 = registrationAddress;
                zBooleanValue = ((Boolean) objC2).booleanValue();
                formUiModel4.getClass();
                formUiModel5.getClass();
                formUiModel6.getClass();
                boolD = FormUiModel.d(formUiModel4, FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT);
                boolD2 = FormUiModel.d(formUiModel4, FormSectionTypeUiModel.LEGACY_CONSENTS);
                boolD3 = FormUiModel.d(formUiModel4, FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS);
                boolD4 = FormUiModel.d(formUiModel5, FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT);
                boolD5 = FormUiModel.d(formUiModel5, FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT);
                boolD6 = FormUiModel.d(formUiModel5, FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT);
                bool = Boolean.TRUE;
                zC = Intrinsics.c(boolD, bool);
                if (zC) {
                    if (boolD3 != null) {
                        zBooleanValue5 = boolD3.booleanValue();
                    } else if (boolD4 != null) {
                        zBooleanValue5 = boolD4.booleanValue();
                    } else {
                        zBooleanValue5 = false;
                    }
                    boolValueOf = Boolean.valueOf(zBooleanValue5);
                } else {
                    boolValueOf = boolD;
                }
                if (boolD != null) {
                    zBooleanValue2 = boolD.booleanValue();
                } else if (boolD2 != null) {
                    zBooleanValue2 = boolD2.booleanValue();
                } else {
                    zBooleanValue2 = false;
                }
                if (zC) {
                    if (boolD5 != null) {
                        zBooleanValue4 = boolD5.booleanValue();
                    } else {
                        zBooleanValue4 = false;
                    }
                    boolD = Boolean.valueOf(zBooleanValue4);
                }
                Boolean bool3 = boolD;
                if (boolD6 != null) {
                    zBooleanValue3 = boolD6.booleanValue();
                } else {
                    zBooleanValue3 = false;
                }
                if (zBooleanValue) {
                    if (Intrinsics.c(boolValueOf, bool)) {
                        z = true;
                    }
                    boolValueOf2 = Boolean.valueOf(z);
                }
                RegisterInitiateBody registerInitiateBody2 = new RegisterInitiateBody(userInformation2, registrationAddress2, loginParam, new RegisterConsents(zBooleanValue2, new UserConsents(kisaConsents2, new MarketingConsents(null, boolValueOf, null, null, Boolean.valueOf(zBooleanValue3), bool3, boolValueOf2))));
                Result.Companion companion6 = Result.INSTANCE;
                return registerInitiateBody2;
            }
        }
        return coroutineSingletons;
    }

    public final void Hc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$goToNextStep$1(null, this), 3);
    }

    public final void Ic() {
        List listP = CollectionsKt.P(FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT, FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT, FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT);
        boolean z = false;
        if (!(listP instanceof Collection) || !listP.isEmpty()) {
            Iterator it = listP.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(FormUiModel.d((FormUiModel) this.p.getF57468c().getValue(), (FormSectionTypeUiModel) it.next()), Boolean.TRUE)) {
                    z = true;
                    break;
                }
            }
        }
        this.o.j(FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT, Boolean.valueOf(z), new rq(9));
        Lc();
    }

    public final void Jc(FormSectionTypeUiModel formSectionTypeUiModel, boolean z) {
        NativeRegisterTrackingUiModel onPrivacyPolicyConsentCheckBoxClick;
        FormUiModel formUiModel = (FormUiModel) this.p.getF57468c().getValue();
        Boolean boolD = FormUiModel.d(formUiModel, FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT);
        Boolean bool = Boolean.TRUE;
        boolean zC = Intrinsics.c(boolD, bool);
        boolean zC2 = Intrinsics.c(FormUiModel.d(formUiModel, FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT), bool);
        boolean zC3 = Intrinsics.c(FormUiModel.d(formUiModel, FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT), bool);
        ConsentDataTracking consentDataTracking = new ConsentDataTracking(zC, zC3, zC2, Intrinsics.c(FormUiModel.d((FormUiModel) this.q.getF57468c().getValue(), FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT), bool));
        MarketingChannelDataTracking marketingChannelDataTracking = new MarketingChannelDataTracking(zC, zC3, zC2);
        switch (WhenMappings.f53723b[formSectionTypeUiModel.ordinal()]) {
            case 19:
                onPrivacyPolicyConsentCheckBoxClick = new NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnPrivacyPolicyConsentCheckBoxClick(z, consentDataTracking, marketingChannelDataTracking);
                break;
            case 20:
                onPrivacyPolicyConsentCheckBoxClick = new NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailConsentCheckBoxClick(z, consentDataTracking, marketingChannelDataTracking);
                break;
            case 21:
                onPrivacyPolicyConsentCheckBoxClick = new NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnOnlinePlatformsConsentCheckBoxClick(z, consentDataTracking, marketingChannelDataTracking);
                break;
            case 22:
                onPrivacyPolicyConsentCheckBoxClick = new NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnSmsConsentCheckBoxClick(z, consentDataTracking, marketingChannelDataTracking);
                break;
            case 23:
                onPrivacyPolicyConsentCheckBoxClick = new NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailTrackingConsentCheckBoxClick(z, consentDataTracking, marketingChannelDataTracking);
                break;
            default:
                mt.f(formSectionTypeUiModel, "Unsupported consent checkbox type for tracking: ");
                return;
        }
        L4(onPrivacyPolicyConsentCheckBoxClick);
    }

    public final void Kc(Object obj) {
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        MutableStateFlow mutableStateFlow = this.G;
        mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), false, false, false, null, null, false, zBooleanValue, false, 959));
        DynamicFormSupervisor dynamicFormSupervisor = this.q;
        if (zBooleanValue) {
            Boolean bool2 = this.N;
            if (bool2 != null) {
                dynamicFormSupervisor.j(FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT, bool2, new rq(9));
                return;
            }
            return;
        }
        FormUiModel formUiModel = (FormUiModel) dynamicFormSupervisor.getF57468c().getValue();
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT;
        if (formUiModel.c(formSectionTypeUiModel) != null) {
            dynamicFormSupervisor.j(formSectionTypeUiModel, Boolean.FALSE, new rq(9));
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void L4(NativeRegisterTrackingUiModel nativeRegisterTrackingUiModel) {
        Hit defaultEventHit;
        Hit defaultEventHit2;
        nativeRegisterTrackingUiModel.getClass();
        if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.NativeRegisterCredentialsScreen.f53999a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_credentials_step", "account_creation_steps", "mylv_native_authentification", null, 17, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.NativeRegisterPersonalInformationScreen.f54000a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_personal_info_step", "account_creation_steps", "mylv_native_authentification", null, 17, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.NativeRegisterBirthInformationScreen.f53998a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_birth_info_step", "account_creation_steps", "mylv_native_authentification", null, 17, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.NativeRegisterActivateYourAccountScreen.f53997a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_activation_step", "account_creation_steps", "mylv_native_authentification", null, 17, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmCredentialCtaEvent.f54007a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "confirm_credentials_cta", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmCredentialSuccess.f54008a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "credentials_step_success", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoCtaEvent.f54009a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "confirm_personal_info_cta", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoSuccess.f54010a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "personal_info_step_success", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmBirthInfoCtaEvent.f54005a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "confirm_birth_info_cta", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmBirthInfoSuccess.f54006a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "birth_info_step_success", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmActivateAccountCtaEvent.f54003a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "activate_cta_click", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnConfirmActivateAccountSuccess.f54004a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "account_activation_step_success", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnResendCodeActivateAccountEvent.f54027a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "resend_account_activation_code", "mylv_native", "create_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnAccountRegistrationSuccessEvent.f54002a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(HitType.Register.f66517a, "account_creation", "registration_successful", "mylv_native", "create_an_account", "mylv_native_authentification", null, 64, null);
        } else if (nativeRegisterTrackingUiModel.equals(NativeRegisterTrackingUiModel.OnAccountRegistrationFailureEvent.f54001a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "registration_failed", "mylv_native", MvelScriptManager.VAR_EVENT, "mylv_native_authentification", null, 65, null);
        } else {
            if (nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnPrivacyPolicyConsentCheckBoxClick) {
                NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnPrivacyPolicyConsentCheckBoxClick onPrivacyPolicyConsentCheckBoxClick = (NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnPrivacyPolicyConsentCheckBoxClick) nativeRegisterTrackingUiModel;
                defaultEventHit = NativeRegisterTrackingUiModelKt.a("privacy_policy_".concat(onPrivacyPolicyConsentCheckBoxClick.f54020a ? "tick" : "untick"), onPrivacyPolicyConsentCheckBoxClick.f54021b, onPrivacyPolicyConsentCheckBoxClick.f54022c);
            } else if (nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailConsentCheckBoxClick) {
                NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailConsentCheckBoxClick onEmailConsentCheckBoxClick = (NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailConsentCheckBoxClick) nativeRegisterTrackingUiModel;
                defaultEventHit = NativeRegisterTrackingUiModelKt.a("email_".concat(onEmailConsentCheckBoxClick.f54011a ? "tick" : "untick"), onEmailConsentCheckBoxClick.f54012b, onEmailConsentCheckBoxClick.f54013c);
            } else if (nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailTrackingConsentCheckBoxClick) {
                NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailTrackingConsentCheckBoxClick onEmailTrackingConsentCheckBoxClick = (NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnEmailTrackingConsentCheckBoxClick) nativeRegisterTrackingUiModel;
                defaultEventHit = NativeRegisterTrackingUiModelKt.a("email_tracking_".concat(onEmailTrackingConsentCheckBoxClick.f54014a ? "tick" : "untick"), onEmailTrackingConsentCheckBoxClick.f54015b, onEmailTrackingConsentCheckBoxClick.f54016c);
            } else if (nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnOnlinePlatformsConsentCheckBoxClick) {
                NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnOnlinePlatformsConsentCheckBoxClick onOnlinePlatformsConsentCheckBoxClick = (NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnOnlinePlatformsConsentCheckBoxClick) nativeRegisterTrackingUiModel;
                defaultEventHit = NativeRegisterTrackingUiModelKt.a("online_platforms_".concat(onOnlinePlatformsConsentCheckBoxClick.f54017a ? "tick" : "untick"), onOnlinePlatformsConsentCheckBoxClick.f54018b, onOnlinePlatformsConsentCheckBoxClick.f54019c);
            } else if (nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnSmsConsentCheckBoxClick) {
                NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnSmsConsentCheckBoxClick onSmsConsentCheckBoxClick = (NativeRegisterTrackingUiModel.OnConsentCheckBoxClick.OnSmsConsentCheckBoxClick) nativeRegisterTrackingUiModel;
                defaultEventHit = NativeRegisterTrackingUiModelKt.a("sms_consent_".concat(onSmsConsentCheckBoxClick.f54023a ? "tick" : "untick"), onSmsConsentCheckBoxClick.f54024b, onSmsConsentCheckBoxClick.f54025c);
            } else if (nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnSmsMarketingConsentWithoutPhoneNumberEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "missing_phone_number_for_sms_marketing_consent", "mylv_native", "click", "mylv_native_authentification", o60.t("missing_phone_number_form"), 1, null);
            } else {
                if (!(nativeRegisterTrackingUiModel instanceof NativeRegisterTrackingUiModel.OnRegistrationCloseEvent)) {
                    v40.g();
                    return;
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "account_creation", "close", "mylv_native", "create_an_account", "mylv_native_authentification", CollectionsKt.O(new AdditionalProperty.ContentId(((NativeRegisterTrackingUiModel.OnRegistrationCloseEvent) nativeRegisterTrackingUiModel).f54026a)), 1, null);
            }
        }
        boolean z = defaultEventHit instanceof Hit.ScreenHit.DefaultScreenHit;
        TrackingAuthEntryPoint trackingAuthEntryPoint = this.Q;
        TrackingAuthOrigin trackingAuthOrigin = this.P;
        if (!z) {
            if (defaultEventHit instanceof Hit.EventHit.DefaultEventHit) {
                Hit.EventHit.DefaultEventHit defaultEventHit3 = (Hit.EventHit.DefaultEventHit) defaultEventHit;
                List list = defaultEventHit3.g;
                ListBuilder listBuilderV = CollectionsKt.v();
                if (trackingAuthOrigin != null) {
                    listBuilderV.add(new AdditionalProperty.Origin(trackingAuthOrigin.getTrackingKey()));
                }
                listBuilderV.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint.getTrackingKey()));
                ArrayList arrayListY = CollectionsKt.Y(list, CollectionsKt.r(listBuilderV));
                HitType hitType = defaultEventHit3.f66470a;
                String str = defaultEventHit3.f66471b;
                String str2 = defaultEventHit3.f66472c;
                String str3 = defaultEventHit3.d;
                String str4 = defaultEventHit3.f66473e;
                String str5 = defaultEventHit3.f66474f;
                hitType.getClass();
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(hitType, str, str2, str3, str4, str5, arrayListY);
            }
            this.f53712c.a(defaultEventHit);
        }
        Hit.ScreenHit.DefaultScreenHit defaultScreenHit = (Hit.ScreenHit.DefaultScreenHit) defaultEventHit;
        List list2 = defaultScreenHit.f66496e;
        ListBuilder listBuilderV2 = CollectionsKt.v();
        if (trackingAuthOrigin != null) {
            listBuilderV2.add(new AdditionalProperty.Origin(trackingAuthOrigin.getTrackingKey()));
        }
        listBuilderV2.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint.getTrackingKey()));
        ArrayList arrayListY2 = CollectionsKt.Y(list2, CollectionsKt.r(listBuilderV2));
        HitType hitType2 = defaultScreenHit.f66493a;
        String str6 = defaultScreenHit.f66494b;
        String str7 = defaultScreenHit.f66495c;
        String str8 = defaultScreenHit.d;
        hitType2.getClass();
        defaultEventHit2 = new Hit.ScreenHit.DefaultScreenHit(hitType2, str6, str7, str8, arrayListY2);
        defaultEventHit = defaultEventHit2;
        this.f53712c.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void La() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$goToPreviousStep$1(null, this), 3);
    }

    public final void Lc() {
        MutableStateFlow mutableStateFlow = this.G;
        mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), false, false, false, null, null, InAppDispatchExtKt.j(this.O) || Intrinsics.c(FormUiModel.d((FormUiModel) this.o.getF57468c().getValue(), FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT), Boolean.TRUE), false, false, 991));
    }

    public final boolean Mc(boolean z) {
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER1;
        DynamicFormSupervisor dynamicFormSupervisor = this.l;
        dynamicFormSupervisor.h(formSectionTypeUiModel, z);
        FormFieldUiModel formFieldUiModelC = ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).c(formSectionTypeUiModel);
        boolean z2 = (!z || formFieldUiModelC == null || formFieldUiModelC.g()) ? false : true;
        ((SnapshotMutableStateImpl) ((NativeRegisterBirthInfoUiModel) this.G.getValue()).f53946i.f53490b).setValue(Boolean.valueOf(z2));
        dynamicFormSupervisor.i();
        return z2;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void N4(long j2) {
        try {
            Result.Companion companion = Result.INSTANCE;
            this.K.setValue(Instant.ofEpochMilli(j2));
            LocalDateTime localDateTimeOfInstant = LocalDateTime.ofInstant(Instant.ofEpochMilli(j2), ZoneOffset.UTC);
            localDateTimeOfInstant.getClass();
            String strJ = DateTimeUtils.j("dd/MM/yyyy", localDateTimeOfInstant);
            MutableStateFlow mutableStateFlow = this.G;
            mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), false, false, false, strJ, Long.valueOf(j2), false, false, false, 999));
            Fa(Step.BIRTH_INFO, FormSectionTypeUiModel.BIRTHDATE, strJ);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
        }
    }

    public final void Nc() {
        FormUiModel formUiModel = (FormUiModel) this.f53718k.getF57468c().getValue();
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
        ref$BooleanRef2.f71917b = true;
        formUiModel.b(new k60(ref$BooleanRef, ref$BooleanRef2, 24));
        MutableStateFlow mutableStateFlow = this.I;
        NativeRegisterRegistrationAddressUiModel nativeRegisterRegistrationAddressUiModel = (NativeRegisterRegistrationAddressUiModel) mutableStateFlow.getValue();
        boolean z = ref$BooleanRef.f71917b && ref$BooleanRef2.f71917b && formUiModel.i();
        FieldErrorUiModel fieldErrorUiModel = nativeRegisterRegistrationAddressUiModel.f53993b;
        FieldErrorUiModel fieldErrorUiModel2 = nativeRegisterRegistrationAddressUiModel.f53994c;
        FieldErrorUiModel fieldErrorUiModel3 = nativeRegisterRegistrationAddressUiModel.d;
        FieldErrorUiModel fieldErrorUiModel4 = nativeRegisterRegistrationAddressUiModel.f53995e;
        FieldErrorUiModel fieldErrorUiModel5 = nativeRegisterRegistrationAddressUiModel.f53996f;
        FieldErrorUiModel fieldErrorUiModel6 = nativeRegisterRegistrationAddressUiModel.g;
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        fieldErrorUiModel3.getClass();
        fieldErrorUiModel4.getClass();
        fieldErrorUiModel5.getClass();
        fieldErrorUiModel6.getClass();
        mutableStateFlow.setValue(new NativeRegisterRegistrationAddressUiModel(z, fieldErrorUiModel, fieldErrorUiModel2, fieldErrorUiModel3, fieldErrorUiModel4, fieldErrorUiModel5, fieldErrorUiModel6));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0095  */
    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void Q9(Step step) {
        boolean z;
        FormFieldUiModel formFieldUiModelC;
        FormFieldUiModel formFieldUiModelC2;
        step.getClass();
        int i2 = WhenMappings.f53722a[step.ordinal()];
        if (i2 == 1) {
            MutableStateFlow mutableStateFlow = this.E;
            mutableStateFlow.setValue(NativeRegisterCredentialsUiModel.a((NativeRegisterCredentialsUiModel) mutableStateFlow.getValue(), null, ((FormUiModel) this.m.getF57468c().getValue()).i(), 3));
            return;
        }
        if (i2 == 2) {
            MutableStateFlow mutableStateFlow2 = this.F;
            mutableStateFlow2.setValue(NativeRegisterPersonalInfoUiModel.a((NativeRegisterPersonalInfoUiModel) mutableStateFlow2.getValue(), ((FormUiModel) this.n.getF57468c().getValue()).i()));
            return;
        }
        if (i2 == 3) {
            Nc();
            return;
        }
        if (i2 != 4) {
            return;
        }
        MutableStateFlow mutableStateFlow3 = this.G;
        NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel = (NativeRegisterBirthInfoUiModel) mutableStateFlow3.getValue();
        FormUiModel formUiModel = (FormUiModel) this.l.getF57468c().getValue();
        if (!formUiModel.i()) {
            InAppDispatch inAppDispatch = this.O;
            if ((InAppDispatchExtKt.j(inAppDispatch) || InAppDispatchExtKt.b(inAppDispatch)) && (formFieldUiModelC = formUiModel.c(FormSectionTypeUiModel.BIRTHDATE)) != null && !formFieldUiModelC.g() && (formFieldUiModelC2 = formUiModel.c(FormSectionTypeUiModel.PHONE_NUMBER1)) != null && formFieldUiModelC2.g()) {
                z = !((FormUiModel) this.o.getF57468c().getValue()).i() && ((FormUiModel) this.p.getF57468c().getValue()).i() && ((FormUiModel) this.q.getF57468c().getValue()).i();
            }
        } else if (((FormUiModel) this.o.getF57468c().getValue()).i()) {
        }
        mutableStateFlow3.setValue(NativeRegisterBirthInfoUiModel.a(nativeRegisterBirthInfoUiModel, false, false, z, null, null, false, false, false, 1019));
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void V5() {
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER_TYPE1;
        DynamicFormSupervisor dynamicFormSupervisor = this.l;
        dynamicFormSupervisor.h(formSectionTypeUiModel, false);
        dynamicFormSupervisor.h(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, false);
        FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.PHONE_NUMBER1;
        dynamicFormSupervisor.h(formSectionTypeUiModel2, false);
        dynamicFormSupervisor.i();
        MutableStateFlow mutableStateFlow = this.G;
        ((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue()).f53946i.a();
        dynamicFormSupervisor.j(formSectionTypeUiModel2, "", new rq(9));
        mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), false, false, false, null, null, false, false, true, 895));
        Hc();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: Z8, reason: from getter */
    public final String getV() {
        return this.V;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getX() {
        return this.X;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void c9() {
        MutableStateFlow mutableStateFlow = this.G;
        mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), false, false, false, null, null, false, false, false, 1022));
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: e, reason: from getter */
    public final Flow getB() {
        return this.B;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void g8(NativeRegisterAddressTrackingUiModel nativeRegisterAddressTrackingUiModel) {
        Hit defaultEventHit;
        nativeRegisterAddressTrackingUiModel.getClass();
        if (nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.AddressInfoScreen) {
            ListBuilder listBuilderV = CollectionsKt.v();
            NativeRegisterAddressTrackingUiModel.AddressInfoScreen addressInfoScreen = (NativeRegisterAddressTrackingUiModel.AddressInfoScreen) nativeRegisterAddressTrackingUiModel;
            TrackingAuthOrigin trackingAuthOrigin = addressInfoScreen.f53923a;
            if (trackingAuthOrigin != null) {
                listBuilderV.add(new AdditionalProperty.Origin(trackingAuthOrigin.getTrackingKey()));
            }
            TrackingAuthEntryPoint trackingAuthEntryPoint = addressInfoScreen.f53924b;
            if (trackingAuthEntryPoint != null) {
                listBuilderV.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint.getTrackingKey()));
            }
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "account_creation_address_info_step", "account_creation_step", "mylv_native_authentification", CollectionsKt.r(listBuilderV), 1, null);
        } else if (nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.AddressSearchScreen) {
            ListBuilder listBuilderV2 = CollectionsKt.v();
            NativeRegisterAddressTrackingUiModel.AddressSearchScreen addressSearchScreen = (NativeRegisterAddressTrackingUiModel.AddressSearchScreen) nativeRegisterAddressTrackingUiModel;
            TrackingAuthOrigin trackingAuthOrigin2 = addressSearchScreen.f53925a;
            if (trackingAuthOrigin2 != null) {
                listBuilderV2.add(new AdditionalProperty.Origin(trackingAuthOrigin2.getTrackingKey()));
            }
            TrackingAuthEntryPoint trackingAuthEntryPoint2 = addressSearchScreen.f53926b;
            if (trackingAuthEntryPoint2 != null) {
                listBuilderV2.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint2.getTrackingKey()));
            }
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "address_autocomplete", "account_creation_step", "mylv_native_authentification", CollectionsKt.r(listBuilderV2), 1, null);
        } else {
            boolean z = nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent;
            HitType.Interaction interaction = HitType.Interaction.f66511a;
            if (z) {
                ListBuilder listBuilderV3 = CollectionsKt.v();
                listBuilderV3.add(new AdditionalProperty.ContentId("email_sign_up"));
                NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent onConfirmAddressClickedEvent = (NativeRegisterAddressTrackingUiModel.OnConfirmAddressClickedEvent) nativeRegisterAddressTrackingUiModel;
                TrackingAuthOrigin trackingAuthOrigin3 = onConfirmAddressClickedEvent.f53930a;
                if (trackingAuthOrigin3 != null) {
                    listBuilderV3.add(new AdditionalProperty.Origin(trackingAuthOrigin3.getTrackingKey()));
                }
                TrackingAuthEntryPoint trackingAuthEntryPoint3 = onConfirmAddressClickedEvent.f53931b;
                if (trackingAuthEntryPoint3 != null) {
                    listBuilderV3.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint3.getTrackingKey()));
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "account_creation_address_info_step", "confirm_address_info", "mylv_native", "click", "mylv_native_authentification", CollectionsKt.r(listBuilderV3));
            } else if (nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent) {
                ListBuilder listBuilderV4 = CollectionsKt.v();
                listBuilderV4.add(new AdditionalProperty.ContentId("email_sign_up"));
                NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent onSkipAddressClickedEvent = (NativeRegisterAddressTrackingUiModel.OnSkipAddressClickedEvent) nativeRegisterAddressTrackingUiModel;
                TrackingAuthOrigin trackingAuthOrigin4 = onSkipAddressClickedEvent.f53938a;
                if (trackingAuthOrigin4 != null) {
                    listBuilderV4.add(new AdditionalProperty.Origin(trackingAuthOrigin4.getTrackingKey()));
                }
                TrackingAuthEntryPoint trackingAuthEntryPoint4 = onSkipAddressClickedEvent.f53939b;
                if (trackingAuthEntryPoint4 != null) {
                    listBuilderV4.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint4.getTrackingKey()));
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "account_creation_address_info_step", "skip_address_info", "mylv_native", "click", "mylv_native_authentification", CollectionsKt.r(listBuilderV4));
            } else if (nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.OnSendSearchClickedEvent) {
                ListBuilder listBuilderV5 = CollectionsKt.v();
                NativeRegisterAddressTrackingUiModel.OnSendSearchClickedEvent onSendSearchClickedEvent = (NativeRegisterAddressTrackingUiModel.OnSendSearchClickedEvent) nativeRegisterAddressTrackingUiModel;
                listBuilderV5.add(new AdditionalProperty.NumberOfTypedCharacters(onSendSearchClickedEvent.f53937c));
                TrackingAuthOrigin trackingAuthOrigin5 = onSendSearchClickedEvent.f53935a;
                if (trackingAuthOrigin5 != null) {
                    listBuilderV5.add(new AdditionalProperty.Origin(trackingAuthOrigin5.getTrackingKey()));
                }
                TrackingAuthEntryPoint trackingAuthEntryPoint5 = onSendSearchClickedEvent.f53936b;
                if (trackingAuthEntryPoint5 != null) {
                    listBuilderV5.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint5.getTrackingKey()));
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "address_autocomplete", "send_search", "mylv", "click", "mylv_native_authentification", CollectionsKt.r(listBuilderV5));
            } else if (nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.OnSelectAddressClickedEvent) {
                ListBuilder listBuilderV6 = CollectionsKt.v();
                NativeRegisterAddressTrackingUiModel.OnSelectAddressClickedEvent onSelectAddressClickedEvent = (NativeRegisterAddressTrackingUiModel.OnSelectAddressClickedEvent) nativeRegisterAddressTrackingUiModel;
                listBuilderV6.add(new AdditionalProperty.NumberOfTypedCharacters(onSelectAddressClickedEvent.f53934c));
                TrackingAuthOrigin trackingAuthOrigin6 = onSelectAddressClickedEvent.f53932a;
                if (trackingAuthOrigin6 != null) {
                    listBuilderV6.add(new AdditionalProperty.Origin(trackingAuthOrigin6.getTrackingKey()));
                }
                TrackingAuthEntryPoint trackingAuthEntryPoint6 = onSelectAddressClickedEvent.f53933b;
                if (trackingAuthEntryPoint6 != null) {
                    listBuilderV6.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint6.getTrackingKey()));
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "address_autocomplete", "select_address", "mylv", "click", "mylv_native_authentification", CollectionsKt.r(listBuilderV6));
            } else {
                if (!(nativeRegisterAddressTrackingUiModel instanceof NativeRegisterAddressTrackingUiModel.OnCloseSearchClickedEvent)) {
                    v40.g();
                    return;
                }
                ListBuilder listBuilderV7 = CollectionsKt.v();
                NativeRegisterAddressTrackingUiModel.OnCloseSearchClickedEvent onCloseSearchClickedEvent = (NativeRegisterAddressTrackingUiModel.OnCloseSearchClickedEvent) nativeRegisterAddressTrackingUiModel;
                listBuilderV7.add(new AdditionalProperty.NumberOfTypedCharacters(onCloseSearchClickedEvent.f53929c));
                TrackingAuthOrigin trackingAuthOrigin7 = onCloseSearchClickedEvent.f53927a;
                if (trackingAuthOrigin7 != null) {
                    listBuilderV7.add(new AdditionalProperty.Origin(trackingAuthOrigin7.getTrackingKey()));
                }
                TrackingAuthEntryPoint trackingAuthEntryPoint7 = onCloseSearchClickedEvent.f53928b;
                if (trackingAuthEntryPoint7 != null) {
                    listBuilderV7.add(new AdditionalProperty.EntryPoint(trackingAuthEntryPoint7.getTrackingKey()));
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "address_autocomplete", "close", "mylv", "click", "mylv_native_authentification", CollectionsKt.r(listBuilderV7));
            }
        }
        this.f53712c.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void i0(FormSectionTypeUiModel formSectionTypeUiModel) {
        formSectionTypeUiModel.getClass();
        if (formSectionTypeUiModel == FormSectionTypeUiModel.BIRTHDATE) {
            MutableStateFlow mutableStateFlow = this.G;
            mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), true, false, false, null, null, false, false, false, 1022));
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void j4(AutocompleteAddressResultUiModel autocompleteAddressResultUiModel) {
        autocompleteAddressResultUiModel.getClass();
        String str = autocompleteAddressResultUiModel.f52121a;
        DynamicFormSupervisor dynamicFormSupervisor = this.f53718k;
        if (str != null) {
            dynamicFormSupervisor.j(FormSectionTypeUiModel.ADDRESS1, str, new rq(9));
        }
        String str2 = autocompleteAddressResultUiModel.f52122b;
        if (str2 != null) {
            dynamicFormSupervisor.j(FormSectionTypeUiModel.ADDRESS2, str2, new rq(9));
        }
        String str3 = autocompleteAddressResultUiModel.f52123c;
        String str4 = autocompleteAddressResultUiModel.d;
        if (StringKtExtKt.g(str3) || StringKtExtKt.g(str4)) {
            FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.STATE;
            if (str3 == null) {
                str3 = "";
            }
            dynamicFormSupervisor.j(formSectionTypeUiModel, new FormEnumValueUiModel(str3, str4), new rq(9));
        }
        String str5 = autocompleteAddressResultUiModel.f52125f;
        if (str5 != null) {
            dynamicFormSupervisor.j(FormSectionTypeUiModel.POSTAL_CODE, str5, new rq(9));
        }
        String str6 = autocompleteAddressResultUiModel.f52124e;
        if (str6 != null) {
            dynamicFormSupervisor.j(FormSectionTypeUiModel.CITY, str6, new rq(9));
        }
        Nc();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: k, reason: from getter */
    public final Flow getS() {
        return this.S;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void n4(Step step) {
        step.getClass();
        int i2 = WhenMappings.f53722a[step.ordinal()];
        if (i2 == 1) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$confirmCredentials$1(null, this), 3);
            return;
        }
        if (i2 == 2) {
            Hc();
            L4(NativeRegisterTrackingUiModel.OnConfirmPersonalInfoSuccess.f54010a);
            return;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$confirmBirthInfo$1(null, this), 3);
                return;
            } else if (i2 == 5) {
                BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$confirmActivation$1(null, this), 3);
                return;
            } else {
                v40.g();
                return;
            }
        }
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER_TYPE1;
        DynamicFormSupervisor dynamicFormSupervisor = this.l;
        dynamicFormSupervisor.h(formSectionTypeUiModel, true);
        dynamicFormSupervisor.h(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, true);
        dynamicFormSupervisor.h(FormSectionTypeUiModel.PHONE_NUMBER1, true);
        dynamicFormSupervisor.i();
        MutableStateFlow mutableStateFlow = this.G;
        mutableStateFlow.setValue(NativeRegisterBirthInfoUiModel.a((NativeRegisterBirthInfoUiModel) mutableStateFlow.getValue(), false, false, false, null, null, false, false, false, 895));
        Hc();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    /* JADX INFO: renamed from: x2, reason: from getter */
    public final Flow getZ() {
        return this.z;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel
    public final void xb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeRegisterViewModelImpl$onResendCodeClick$1(null, this), 3);
    }
}
