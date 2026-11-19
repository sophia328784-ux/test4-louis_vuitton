package com.vuitton.android.presentation.screen.account.addresseditor;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.address.AddressBookMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.address.AddAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.DeleteAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.EditAddressUseCase;
import com.vuitton.android.domain.usecase.account.address.GetCNCityListUseCase;
import com.vuitton.android.domain.usecase.account.address.GetCNCountyListUseCase;
import com.vuitton.android.domain.usecase.account.address.GetPostalCodeAutocompleteUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetSecondaryAddressFormUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.error.AddressErrorMessageMapper;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorAutocompleteSetup;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorNavigation;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.account.addresseditor.validation.PhoneValidationRules;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.address.AddressRequestBody;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.forms.Civility;
import com.vuitton.foundation.model.domain.model.profile.Address;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import defpackage.v40;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B¡\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "addressFormSupervisor", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;", "addressErrorMessageMapper", "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;", "phoneValidationRules", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;", "getAddressCivilitiesMappingUseCase", "Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;", "editAddressUseCase", "Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;", "addAddressUseCase", "Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;", "deleteAddressUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;", "getMainAddressFormUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;", "getSecondaryAddressFormUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;", "getCNCityListUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;", "getCNCountyListUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;", "getPostalCodeAutocompleteUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressEditorViewModelImpl extends ViewModel implements AddressEditorViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final MutableStateFlow E;
    public final LinkedHashMap F;
    public final StateFlow G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicFormSupervisor f52213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f52214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f52215c;
    public final AddressErrorMessageMapper d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PhoneValidationRules f52216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetProfileUseCase f52217f;
    public final IsFeatureAvailableUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetAddressCivilitiesMappingUseCase f52218h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EditAddressUseCase f52219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AddAddressUseCase f52220j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DeleteAddressUseCase f52221k;
    public final GetMainAddressFormUseCase l;
    public final GetSecondaryAddressFormUseCase m;
    public final GetCNCityListUseCase n;
    public final GetCNCountyListUseCase o;
    public final GetPostalCodeAutocompleteUseCase p;
    public final NotificationBuilder q;
    public final boolean r;
    public final String s;
    public final InAppDispatch t;
    public List u;
    public final BufferedChannel v;
    public final Flow w;
    public final BufferedChannel x;
    public final Flow y;
    public final MutableStateFlow z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f52223b;

        static {
            int[] iArr = new int[AddressEditorViewType.values().length];
            try {
                iArr[AddressEditorViewType.ADD_MAIN_ADDRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AddressEditorViewType.ADD_SECONDARY_ADDRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AddressEditorViewType.EDIT_MAIN_ADDRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AddressEditorViewType.EDIT_SECONDARY_ADDRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f52222a = iArr;
            int[] iArr2 = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS1.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS2.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FormSectionTypeUiModel.COUNTY.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f52223b = iArr2;
        }
    }

    @Inject
    public AddressEditorViewModelImpl(SavedStateHandle savedStateHandle, DynamicFormSupervisor dynamicFormSupervisor, Logger logger, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, AddressErrorMessageMapper addressErrorMessageMapper, PhoneValidationRules phoneValidationRules, GetProfileUseCase getProfileUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetAddressCivilitiesMappingUseCase getAddressCivilitiesMappingUseCase, EditAddressUseCase editAddressUseCase, AddAddressUseCase addAddressUseCase, DeleteAddressUseCase deleteAddressUseCase, GetMainAddressFormUseCase getMainAddressFormUseCase, GetSecondaryAddressFormUseCase getSecondaryAddressFormUseCase, GetCNCityListUseCase getCNCityListUseCase, GetCNCountyListUseCase getCNCountyListUseCase, GetPostalCodeAutocompleteUseCase getPostalCodeAutocompleteUseCase, NotificationBuilder notificationBuilder) {
        String str;
        savedStateHandle.getClass();
        dynamicFormSupervisor.getClass();
        logger.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        addressErrorMessageMapper.getClass();
        phoneValidationRules.getClass();
        getProfileUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getAddressCivilitiesMappingUseCase.getClass();
        editAddressUseCase.getClass();
        addAddressUseCase.getClass();
        deleteAddressUseCase.getClass();
        getMainAddressFormUseCase.getClass();
        getSecondaryAddressFormUseCase.getClass();
        getCNCityListUseCase.getClass();
        getCNCountyListUseCase.getClass();
        getPostalCodeAutocompleteUseCase.getClass();
        notificationBuilder.getClass();
        this.f52213a = dynamicFormSupervisor;
        this.f52214b = logger;
        this.f52215c = monitor;
        this.d = addressErrorMessageMapper;
        this.f52216e = phoneValidationRules;
        this.f52217f = getProfileUseCase;
        this.g = isFeatureAvailableUseCase;
        this.f52218h = getAddressCivilitiesMappingUseCase;
        this.f52219i = editAddressUseCase;
        this.f52220j = addAddressUseCase;
        this.f52221k = deleteAddressUseCase;
        this.l = getMainAddressFormUseCase;
        this.m = getSecondaryAddressFormUseCase;
        this.n = getCNCityListUseCase;
        this.o = getCNCountyListUseCase;
        this.p = getPostalCodeAutocompleteUseCase;
        this.q = notificationBuilder;
        Boolean bool = (Boolean) savedStateHandle.a("IS_MAIN_ADDRESS");
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        this.r = zBooleanValue;
        String strH = StringKtExtKt.h((String) savedStateHandle.a("ADDRESS_ID"));
        strH = strH == null ? null : strH;
        this.s = strH;
        this.t = requireUserInAppDispatchUseCase.f49912a.b();
        this.u = EmptyList.f71768b;
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.v = bufferedChannelA;
        this.w = FlowKt.y(bufferedChannelA);
        BufferedChannel bufferedChannelA2 = ChannelKt.a(0, 7, null);
        this.x = bufferedChannelA2;
        this.y = FlowKt.y(bufferedChannelA2);
        Boolean bool2 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool2);
        this.z = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool2);
        this.A = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(strH == null ? zBooleanValue ? AddressEditorViewType.ADD_MAIN_ADDRESS : AddressEditorViewType.ADD_SECONDARY_ADDRESS : zBooleanValue ? AddressEditorViewType.EDIT_MAIN_ADDRESS : AddressEditorViewType.EDIT_SECONDARY_ADDRESS);
        this.B = mutableStateFlowA3;
        this.C = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.D = mutableStateFlowA4;
        this.E = StateFlowKt.a(null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.F = linkedHashMap;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, dynamicFormSupervisor.getF57468c(), mutableStateFlowA4};
        Flow<AddressEditorViewState> flow = new Flow<AddressEditorViewState>() { // from class: com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$special$$inlined$combine$1$3", f = "AddressEditorViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AddressEditorViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f52251b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f52252c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f52252c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    AddressEditorAutocompleteSetup addressEditorAutocompleteSetup;
                    FlowCollector flowCollector = this.f52252c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f52251b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[3];
                        obj2.getClass();
                        FormUiModel formUiModel = (FormUiModel) obj2;
                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) objArr[4];
                        Object obj3 = objArr[0];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[1];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[2];
                        obj5.getClass();
                        AddressEditorViewType addressEditorViewType = (AddressEditorViewType) obj5;
                        if (formSectionTypeUiModel != null) {
                            FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.COUNTRY;
                            FormUiModel.Companion companion = FormUiModel.f57485b;
                            addressEditorAutocompleteSetup = new AddressEditorAutocompleteSetup(formUiModel.e(formSectionTypeUiModel2, true), formUiModel.e(formSectionTypeUiModel, true));
                        } else {
                            addressEditorAutocompleteSetup = new AddressEditorAutocompleteSetup(null, null, 3, null);
                        }
                        AddressEditorViewState addressEditorViewState = new AddressEditorViewState(zBooleanValue, zBooleanValue2, addressEditorViewType, formUiModel, addressEditorAutocompleteSetup);
                        this.f52252c = null;
                        this.d = null;
                        this.f52251b = 1;
                        if (flowCollector.emit(addressEditorViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.G = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AddressEditorViewState(false, false, null, (FormUiModel) dynamicFormSupervisor.getF57468c().getValue(), null, 23, null));
        int i2 = WhenMappings.f52222a[((AddressEditorViewType) mutableStateFlowA3.getValue()).ordinal()];
        if (i2 == 1 || i2 == 2) {
            str = "Add";
        } else {
            if (i2 != 3 && i2 != 4) {
                v40.g();
                throw null;
            }
            str = "Edit";
        }
        DynatraceMonitorAction dynatraceMonitorAction = (DynatraceMonitorAction) p5();
        dynatraceMonitorAction.c(str, "addressFormOpenContext");
        dynatraceMonitorAction.b();
        Job job = (Job) linkedHashMap.get("loadDynamicAddressFormJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("loadDynamicAddressFormJob", BuildersKt.c(ViewModelKt.a(this), null, null, new AddressEditorViewModelImpl$loadDynamicAddressFormFor$1(this, null), 3));
        }
    }

    public static final void yc(AddressEditorViewModelImpl addressEditorViewModelImpl, FormSectionTypeUiModel formSectionTypeUiModel, String str) {
        DynamicFormSupervisor dynamicFormSupervisor = addressEditorViewModelImpl.f52213a;
        LinkedHashMap linkedHashMap = addressEditorViewModelImpl.F;
        if (InAppDispatchExtKt.c(addressEditorViewModelImpl.t)) {
            int i2 = WhenMappings.f52223b[formSectionTypeUiModel.ordinal()];
            if (i2 != 3) {
                if (i2 != 4) {
                    return;
                }
                dynamicFormSupervisor.d(FormSectionTypeUiModel.COUNTY, EmptyList.f71768b);
                if (StringsKt.w(str)) {
                    return;
                }
                Job job = (Job) linkedHashMap.get("refreshCNCountyFieldJob");
                if (job == null || !job.isActive()) {
                    linkedHashMap.put("refreshCNCountyFieldJob", BuildersKt.c(ViewModelKt.a(addressEditorViewModelImpl), null, null, new AddressEditorViewModelImpl$refreshCNCountyField$1(addressEditorViewModelImpl, str, null), 3));
                    return;
                }
                return;
            }
            FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.CITY;
            EmptyList emptyList = EmptyList.f71768b;
            dynamicFormSupervisor.d(formSectionTypeUiModel2, emptyList);
            dynamicFormSupervisor.d(FormSectionTypeUiModel.COUNTY, emptyList);
            if (StringsKt.w(str)) {
                return;
            }
            Job job2 = (Job) linkedHashMap.get("refreshCNCityListJob");
            if (job2 == null || !job2.isActive()) {
                linkedHashMap.put("refreshCNCityListJob", BuildersKt.c(ViewModelKt.a(addressEditorViewModelImpl), null, null, new AddressEditorViewModelImpl$refreshCNCityList$1(addressEditorViewModelImpl, str, null), 3));
            }
        }
    }

    public final Address Ac() {
        Profile profile;
        Object obj = null;
        String str = this.s;
        if (str == null || (profile = (Profile) this.C.getValue()) == null) {
            return null;
        }
        for (Object obj2 : profile.f68170i) {
            if (Intrinsics.c(((Address) obj2).f68151a, str)) {
                obj = obj2;
                break;
            }
        }
        return (Address) obj;
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void G6() {
        Object next;
        String str;
        AddressEditorViewType addressEditorViewType = (AddressEditorViewType) this.B.getValue();
        addressEditorViewType.getClass();
        boolean z = addressEditorViewType == AddressEditorViewType.ADD_MAIN_ADDRESS || addressEditorViewType == AddressEditorViewType.ADD_SECONDARY_ADDRESS;
        FormUiModel formUiModel = (FormUiModel) this.f52213a.getF57468c().getValue();
        Profile profile = (Profile) this.C.getValue();
        boolean zC = InAppDispatchExtKt.c(this.t);
        List list = this.u;
        formUiModel.getClass();
        list.getClass();
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.DESCRIPTION;
        boolean z2 = this.r;
        String strF = FormUiModel.f(formUiModel, formSectionTypeUiModel, (zC && z2) ? "常用地址" : "");
        FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.CIVILITY;
        String str2 = profile != null ? profile.f68169h : null;
        if (str2 == null) {
            str2 = "";
        }
        String strF2 = FormUiModel.f(formUiModel, formSectionTypeUiModel2, str2);
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Civility) next).f67578a, strF2));
        Civility civility = (Civility) next;
        String str3 = (civility == null || (str = civility.f67579b) == null) ? strF2 : str;
        FormSectionTypeUiModel formSectionTypeUiModel3 = FormSectionTypeUiModel.FIRSTNAME1;
        String str4 = profile != null ? profile.f68166c : null;
        if (str4 == null) {
            str4 = "";
        }
        String strF3 = FormUiModel.f(formUiModel, formSectionTypeUiModel3, str4);
        FormSectionTypeUiModel formSectionTypeUiModel4 = FormSectionTypeUiModel.LASTNAME1;
        String str5 = profile != null ? profile.f68167e : null;
        if (str5 == null) {
            str5 = "";
        }
        String strF4 = FormUiModel.f(formUiModel, formSectionTypeUiModel4, str5);
        FormSectionTypeUiModel formSectionTypeUiModel5 = FormSectionTypeUiModel.FIRSTNAME2;
        String str6 = profile != null ? profile.d : null;
        if (str6 == null) {
            str6 = "";
        }
        String strF5 = FormUiModel.f(formUiModel, formSectionTypeUiModel5, str6);
        FormSectionTypeUiModel formSectionTypeUiModel6 = FormSectionTypeUiModel.LASTNAME2;
        String str7 = profile != null ? profile.f68168f : null;
        String strF6 = FormUiModel.f(formUiModel, formSectionTypeUiModel6, str7 != null ? str7 : "");
        String strE = formUiModel.e(FormSectionTypeUiModel.ADDRESS1, true);
        String strE2 = formUiModel.e(FormSectionTypeUiModel.ADDRESS2, true);
        String strE3 = formUiModel.e(FormSectionTypeUiModel.ADDRESS3, true);
        String strE4 = formUiModel.e(FormSectionTypeUiModel.STREET_NUMBER, true);
        String strE5 = formUiModel.e(FormSectionTypeUiModel.STREET, true);
        String strE6 = formUiModel.e(FormSectionTypeUiModel.COUNTY, true);
        String strE7 = formUiModel.e(FormSectionTypeUiModel.CITY, true);
        String strE8 = formUiModel.e(FormSectionTypeUiModel.POSTAL_CODE, true);
        FormSectionTypeUiModel formSectionTypeUiModel7 = FormSectionTypeUiModel.STATE;
        AddressRequestBody addressRequestBody = new AddressRequestBody(this.s, strF, z2, str3, strF3, strF4, strF5, strF6, strE, strE2, strE3, strE4, strE5, strE6, strE7, strE8, formUiModel.e(formSectionTypeUiModel7, true), formUiModel.e(formSectionTypeUiModel7, false), formUiModel.e(FormSectionTypeUiModel.COUNTRY, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER2, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE2, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER3, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE3, true), null, null);
        if (z || this.s != null) {
            zc(z ? "addAddressJob" : "editAddressJob", new AddressEditorViewModelImpl$upsertAddress$1(z, this, addressRequestBody, null), z ? "Error while creating an address" : "Error while editing an address", AddressBookMonitoring.Action.SaveAddress.f48812a, "Save");
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getG() {
        return this.G;
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void a0(PhoneType phoneType) {
        phoneType.getClass();
        this.f52213a.a0(phoneType);
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getY() {
        return this.y;
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void e0(PhoneType phoneType) {
        phoneType.getClass();
        this.f52213a.e0(phoneType);
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        this.f52213a.j(formSectionTypeUiModel, obj, new AddressEditorViewModelImpl$onFieldUpdated$1(2, this, AddressEditorViewModelImpl.class, "prefillFieldWithApi", "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V", 0));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AddressEditorViewModelImpl$onFieldUpdated$2(this, formSectionTypeUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void i0(FormSectionTypeUiModel formSectionTypeUiModel) {
        formSectionTypeUiModel.getClass();
        if (formSectionTypeUiModel == this.D.getValue()) {
            this.v.b(AddressEditorNavigation.ToAddressAutocomplete.f52267a);
            ChannelResult.Companion companion = ChannelResult.f74759b;
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    /* JADX INFO: renamed from: l5, reason: from getter */
    public final Flow getW() {
        return this.w;
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void n0() {
        DynatraceMonitorAction dynatraceMonitorAction = (DynatraceMonitorAction) p5();
        dynatraceMonitorAction.c("Dismiss", "addressFormExitContext");
        dynatraceMonitorAction.b();
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final MonitorAction p5() {
        return this.f52215c.a(this.t, AddressBookMonitoring.Action.OpenAddEditAddress.f48810a);
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void w8(AutocompleteAddressResultUiModel autocompleteAddressResultUiModel, boolean z) {
        autocompleteAddressResultUiModel.getClass();
        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) this.D.getValue();
        if (formSectionTypeUiModel == null) {
            formSectionTypeUiModel = (FormSectionTypeUiModel) this.E.getValue();
        }
        FormSectionTypeUiModel formSectionTypeUiModel2 = formSectionTypeUiModel;
        DynamicFormSupervisor dynamicFormSupervisor = this.f52213a;
        if (formSectionTypeUiModel2 != null) {
            dynamicFormSupervisor.j(formSectionTypeUiModel2, autocompleteAddressResultUiModel.f52121a, new AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$1$1(2, this, AddressEditorViewModelImpl.class, "prefillFieldWithApi", "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V", 0));
        }
        if (z) {
            FormSectionTypeUiModel formSectionTypeUiModel3 = FormSectionTypeUiModel.STATE;
            String str = autocompleteAddressResultUiModel.d;
            String str2 = autocompleteAddressResultUiModel.f52123c;
            if (str2 == null) {
                str2 = "";
            }
            dynamicFormSupervisor.j(formSectionTypeUiModel3, new FormEnumValueUiModel(str2, str), new AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$2(2, this, AddressEditorViewModelImpl.class, "prefillFieldWithApi", "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V", 0));
            FormSectionTypeUiModel formSectionTypeUiModel4 = FormSectionTypeUiModel.POSTAL_CODE;
            String str3 = autocompleteAddressResultUiModel.f52125f;
            dynamicFormSupervisor.j(formSectionTypeUiModel4, str3 == null ? "" : str3, new AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$3(2, this, AddressEditorViewModelImpl.class, "prefillFieldWithApi", "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V", 0));
            FormSectionTypeUiModel formSectionTypeUiModel5 = FormSectionTypeUiModel.CITY;
            String str4 = autocompleteAddressResultUiModel.f52124e;
            dynamicFormSupervisor.j(formSectionTypeUiModel5, str4 != null ? str4 : "", new AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$4(2, this, AddressEditorViewModelImpl.class, "prefillFieldWithApi", "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V", 0));
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel
    public final void x0() {
        if (this.s == null) {
            return;
        }
        zc("deleteAddressJob", new AddressEditorViewModelImpl$deleteAddress$1(this, null), "Error while deleting an address", AddressBookMonitoring.Action.DeleteAddress.f48809a, "Delete");
    }

    public final void zc(String str, Function1 function1, String str2, AddressBookMonitoring.Action action, String str3) {
        LinkedHashMap linkedHashMap = this.F;
        Job job = (Job) linkedHashMap.get(str);
        if (job == null || !job.isActive()) {
            linkedHashMap.put(str, BuildersKt.c(ViewModelKt.a(this), null, null, new AddressEditorViewModelImpl$crudAddress$1(this, action, function1, str3, str2, null), 3));
        }
    }
}
