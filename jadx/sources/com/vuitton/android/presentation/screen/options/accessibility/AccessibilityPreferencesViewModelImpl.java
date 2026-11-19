package com.vuitton.android.presentation.screen.options.accessibility;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.IsAccessibilitySystemContrastEnabledUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.SaveAccessibilityPreferencesUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesFeatureFlags;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesTrackingUiModel;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesViewState;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.cj;
import defpackage.md;
import defpackage.o60;
import defpackage.v40;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;", "getPreferencesUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;", "isSystemContrastEnabledUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;", "savePreferencesUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccessibilityPreferencesViewModelImpl extends AndroidViewModel implements AccessibilityPreferencesViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f59680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsAccessibilitySystemContrastEnabledUseCase f59681c;
    public final SaveAccessibilityPreferencesUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f59682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f59683f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f59684h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f59685i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SharedFlowImpl f59686j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StateFlow f59687k;
    public final SharedFlowImpl l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public AccessibilityPreferencesViewModelImpl(Application application, AnalyticsTracker analyticsTracker, final IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetAccessibilityPreferencesUseCase getAccessibilityPreferencesUseCase, IsAccessibilitySystemContrastEnabledUseCase isAccessibilitySystemContrastEnabledUseCase, SaveAccessibilityPreferencesUseCase saveAccessibilityPreferencesUseCase) {
        super(application);
        application.getClass();
        analyticsTracker.getClass();
        isFeatureAvailableUseCase.getClass();
        getAccessibilityPreferencesUseCase.getClass();
        isAccessibilitySystemContrastEnabledUseCase.getClass();
        saveAccessibilityPreferencesUseCase.getClass();
        this.f59680b = analyticsTracker;
        this.f59681c = isAccessibilitySystemContrastEnabledUseCase;
        this.d = saveAccessibilityPreferencesUseCase;
        final MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.valueOf(isAccessibilitySystemContrastEnabledUseCase.f49065a.a()));
        this.f59682e = mutableStateFlowA;
        Flow<AccessibilityPreferencesFeatureFlags> flow = new Flow<AccessibilityPreferencesFeatureFlags>() { // from class: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f59696b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ IsFeatureAvailableUseCase f59697c;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$map$1$2", f = "AccessibilityPreferencesViewModelImpl.kt", l = {219, 220, 221, 222, 217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f59698b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f59699c;
                    public FlowCollector d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public int f59700e;
                    public int g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public boolean f59702h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public boolean f59703i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    public boolean f59704j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    public boolean f59705k;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f59698b = obj;
                        this.f59699c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
                    this.f59696b = flowCollector;
                    this.f59697c = isFeatureAvailableUseCase;
                }

                /* JADX WARN: Code duplicated, block: B:34:0x0101  */
                /* JADX WARN: Code duplicated, block: B:38:0x012b  */
                /* JADX WARN: Code duplicated, block: B:7:0x0017  */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x0149, code lost:
                
                    if (r9.emit(r13, r2) == r3) goto L41;
                 */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r21, kotlin.coroutines.Continuation r22) {
                    /*
                        Method dump skipped, instruction units count: 335
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = mutableStateFlowA.f(new AnonymousClass2(flowCollector, isFeatureAvailableUseCase), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        SharingStarted sharingStarted = SharingStarted.Companion.f74988c;
        StateFlow stateFlowA = FlowKt.A(flow, closeableCoroutineScopeA, sharingStarted, new AccessibilityPreferencesFeatureFlags(false, false, false, false, false, 31, null));
        this.f59683f = stateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.g = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.f59684h = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.f59685i = mutableStateFlowA4;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 7);
        this.f59686j = sharedFlowImplB;
        final Flow[] flowArr = {mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, stateFlowA};
        this.f59687k = FlowKt.A(new Flow<AccessibilityPreferencesViewState>() { // from class: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$combine$1$3", f = "AccessibilityPreferencesViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AccessibilityPreferencesViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59692b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59693c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f59693c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59693c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59692b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        AccessibilityPreferencesViewState accessibilityPreferencesViewState = new AccessibilityPreferencesViewState(zBooleanValue, zBooleanValue2, zBooleanValue3, (AccessibilityPreferencesFeatureFlags) obj5);
                        this.f59693c = null;
                        this.d = null;
                        this.f59692b = 1;
                        if (flowCollector.emit(accessibilityPreferencesViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), sharingStarted, new AccessibilityPreferencesViewState(false, false, false, null, 15, null));
        this.l = sharedFlowImplB;
        Object objC = getAccessibilityPreferencesUseCase.f49062a.c(true);
        Result.Companion companion = Result.INSTANCE;
        if (objC instanceof Result.Failure) {
            return;
        }
        Map map = (Map) objC;
        Object obj = map.get(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION);
        Boolean bool2 = Boolean.TRUE;
        mutableStateFlowA2.setValue(Boolean.valueOf(Intrinsics.c(obj, bool2)));
        mutableStateFlowA3.setValue(Boolean.valueOf(Intrinsics.c(map.get(AccessibilityPreferenceType.DISABLE_AUTOPLAY), bool2)));
        mutableStateFlowA4.setValue(Boolean.valueOf(Intrinsics.c(map.get(AccessibilityPreferenceType.ENHANCED_CONTRAST), bool2)));
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    public final void I8(AccessibilityPreferencesTrackingUiModel accessibilityPreferencesTrackingUiModel) {
        Hit defaultEventHit;
        if (accessibilityPreferencesTrackingUiModel.equals(AccessibilityPreferencesTrackingUiModel.Screen.f59734a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "accessibility_menu", "accessibility_menu", "accessibility", null, 17, null);
        } else if (accessibilityPreferencesTrackingUiModel.equals(AccessibilityPreferencesTrackingUiModel.Close.f59727a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "accessibility_menu", "close", "MyLV", "click", null, null, 97, null);
        } else if (accessibilityPreferencesTrackingUiModel instanceof AccessibilityPreferencesTrackingUiModel.SimplifyNavigationChanged) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "accessibility_menu", "modify_simplify_navigation", "MyLV", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(String.valueOf(((AccessibilityPreferencesTrackingUiModel.SimplifyNavigationChanged) accessibilityPreferencesTrackingUiModel).f59735a))), 33, null);
        } else if (accessibilityPreferencesTrackingUiModel instanceof AccessibilityPreferencesTrackingUiModel.DisableAutoplayChanged) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "accessibility_menu", "modify_disable_autoplay", "MyLV", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(String.valueOf(((AccessibilityPreferencesTrackingUiModel.DisableAutoplayChanged) accessibilityPreferencesTrackingUiModel).f59728a))), 33, null);
        } else if (accessibilityPreferencesTrackingUiModel instanceof AccessibilityPreferencesTrackingUiModel.EnhancedContrastChanged) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "accessibility_menu", "modify_enhanced_contrast", "MyLV", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(String.valueOf(((AccessibilityPreferencesTrackingUiModel.EnhancedContrastChanged) accessibilityPreferencesTrackingUiModel).f59729a))), 33, null);
        } else if (accessibilityPreferencesTrackingUiModel instanceof AccessibilityPreferencesTrackingUiModel.Save) {
            AccessibilityPreferencesTrackingUiModel.Save save = (AccessibilityPreferencesTrackingUiModel.Save) accessibilityPreferencesTrackingUiModel;
            boolean z = save.f59731a;
            boolean z2 = save.f59732b;
            boolean z3 = save.f59733c;
            StringBuilder sbM = cj.m("simplifyNavigation:", "|enhancedContrast:", "|disableAutoplay:", z, z2);
            sbM.append(z3);
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "accessibility_menu", "save", "MyLV", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(sbM.toString())), 33, null);
        } else {
            if (!accessibilityPreferencesTrackingUiModel.equals(AccessibilityPreferencesTrackingUiModel.OpenStatement.f59730a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "accessibility_menu", "open_statement", "MyLV", "click", null, o60.t("Accessibility-Statement"), 33, null);
        }
        this.f59680b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    public final void K1(boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        I8(new AccessibilityPreferencesTrackingUiModel.EnhancedContrastChanged(z));
        do {
            mutableStateFlow = this.f59685i;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.valueOf(z)));
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF59687k() {
        return this.f59687k;
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    public final void d9() {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.f59682e;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.valueOf(this.f59681c.f49065a.a())));
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    /* JADX INFO: renamed from: i7, reason: from getter */
    public final SharedFlowImpl getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    public final void o9(boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        I8(new AccessibilityPreferencesTrackingUiModel.SimplifyNavigationChanged(z));
        do {
            mutableStateFlow = this.g;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.valueOf(z)));
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    public final void s1(boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        I8(new AccessibilityPreferencesTrackingUiModel.DisableAutoplayChanged(z));
        do {
            mutableStateFlow = this.f59684h;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.valueOf(z)));
    }

    @Override // com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel
    public final void s4() {
        MutableStateFlow mutableStateFlow = this.g;
        boolean zBooleanValue = ((Boolean) mutableStateFlow.getValue()).booleanValue();
        MutableStateFlow mutableStateFlow2 = this.f59685i;
        boolean zBooleanValue2 = ((Boolean) mutableStateFlow2.getValue()).booleanValue();
        MutableStateFlow mutableStateFlow3 = this.f59684h;
        I8(new AccessibilityPreferencesTrackingUiModel.Save(zBooleanValue, zBooleanValue2, ((Boolean) mutableStateFlow3.getValue()).booleanValue()));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AccessibilityPreferencesViewModelImpl$saveValues$1(this, MapsKt.i(new Pair(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION, mutableStateFlow.getValue()), new Pair(AccessibilityPreferenceType.DISABLE_AUTOPLAY, mutableStateFlow3.getValue()), new Pair(AccessibilityPreferenceType.ENHANCED_CONTRAST, mutableStateFlow2.getValue())), null), 3);
    }
}
