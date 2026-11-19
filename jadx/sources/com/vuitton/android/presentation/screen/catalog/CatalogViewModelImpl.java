package com.vuitton.android.presentation.screen.catalog;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.catalog.GetCatalogUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import defpackage.md;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "contactUsDelegate", "Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;", "getCatalogUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "getAllAccessibilityValuesUseCase", "<init>", "(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CatalogViewModelImpl extends ViewModel implements CatalogViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContactUsDelegate f55233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetCatalogUseCase f55234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetAllAccessibilityValuesUseCase f55235c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f55236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f55237f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f55238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f55239i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StateFlow f55240j;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$1", f = "CatalogViewModelImpl.kt", l = {EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f55241b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CatalogViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object value;
            A11ySettings a11ySettings;
            CatalogViewModelImpl catalogViewModelImpl = CatalogViewModelImpl.this;
            ContactUsDelegate contactUsDelegate = catalogViewModelImpl.f55233a;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f55241b;
            if (i2 == 0) {
                ResultKt.b(obj);
                BuildersKt.c(ViewModelKt.a(catalogViewModelImpl), null, null, new CatalogViewModelImpl$getCatalog$1(catalogViewModelImpl, null), 3);
                MutableStateFlow mutableStateFlow = catalogViewModelImpl.f55239i;
                do {
                    value = mutableStateFlow.getValue();
                    GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase = catalogViewModelImpl.f55235c;
                    AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
                    AccessibilityPreferenceType accessibilityPreferenceType2 = AccessibilityPreferenceType.DISABLE_AUTOPLAY;
                    AccessibilityPreferenceType accessibilityPreferenceType3 = AccessibilityPreferenceType.ENHANCED_CONTRAST;
                    Object objA = getAllAccessibilityValuesUseCase.a(accessibilityPreferenceType, accessibilityPreferenceType2, accessibilityPreferenceType3);
                    if (Result.a(objA) == null) {
                        Map map = (Map) objA;
                        Boolean bool = (Boolean) map.get(accessibilityPreferenceType2);
                        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                        Boolean bool2 = (Boolean) map.get(accessibilityPreferenceType3);
                        boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                        Boolean bool3 = (Boolean) map.get(accessibilityPreferenceType);
                        a11ySettings = new A11ySettings(zBooleanValue, zBooleanValue2, bool3 != null ? bool3.booleanValue() : false);
                    } else {
                        a11ySettings = new A11ySettings(false, false, false, 7, null);
                    }
                } while (!mutableStateFlow.i(value, a11ySettings));
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f55241b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
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

    @Inject
    public CatalogViewModelImpl(ContactUsDelegate contactUsDelegate, GetCatalogUseCase getCatalogUseCase, GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase) {
        contactUsDelegate.getClass();
        getCatalogUseCase.getClass();
        getAllAccessibilityValuesUseCase.getClass();
        this.f55233a = contactUsDelegate;
        this.f55234b = getCatalogUseCase;
        this.f55235c = getAllAccessibilityValuesUseCase;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.d = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.f55236e = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(Boolean.TRUE);
        this.f55237f = mutableStateFlowA3;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.g = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.f55238h = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(new A11ySettings(false, false, false, 7, null));
        this.f55239i = mutableStateFlowA6;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, contactUsDelegate.i(), mutableStateFlowA6};
        Flow<CatalogViewState> flow = new Flow<CatalogViewState>() { // from class: com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$special$$inlined$combine$1$3", f = "CatalogViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super CatalogViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f55248b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f55249c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f55249c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f55249c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f55248b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        CatalogUiModel catalogUiModel = (CatalogUiModel) objArr[0];
                        List list = (List) objArr[1];
                        Object obj2 = objArr[2];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[3];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[4];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[5];
                        obj5.getClass();
                        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj5;
                        Object obj6 = objArr[6];
                        obj6.getClass();
                        CatalogViewState catalogViewState = new CatalogViewState(catalogUiModel, list, zBooleanValue, zBooleanValue2, zBooleanValue3, contactUsUiModel, (A11ySettings) obj6);
                        this.f55249c = null;
                        this.d = null;
                        this.f55248b = 1;
                        if (flowCollector.emit(catalogViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl$special$$inlined$combine$1.2
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
        this.f55240j = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new CatalogViewState(null, null, false, false, false, null, null, CertificateBody.profileType, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f55233a.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f55233a.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f55233a.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f55233a.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f55233a.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f55233a.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f55233a.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.CatalogViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF55240j() {
        return this.f55240j;
    }

    @Override // com.vuitton.android.presentation.screen.catalog.CatalogViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new CatalogViewModelImpl$setUserChatConsentEnabled$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f55233a.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f55233a.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f55233a.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f55233a.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f55233a.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f55233a.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f55233a.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f55233a.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f55233a.z();
    }
}
