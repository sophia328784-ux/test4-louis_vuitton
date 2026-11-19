package com.vuitton.android.presentation.screen.story;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.batch.android.s.b;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.StoryMonitoring;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.story.GetStoryUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.story.components.StoryTrackingUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryCloseUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryHeaderUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.o60;
import defpackage.v40;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/story/StoryViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;", "getStoryUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "getAllAccessibilityValuesUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Landroidx/lifecycle/SavedStateHandle;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoryViewModelImpl extends ViewModel implements StoryViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f65100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetStoryUseCase f65101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f65102c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f65103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f65104f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f65105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f65106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f65107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f65108k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MonitorAction o;
    public final StateFlow p;

    @Inject
    public StoryViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Monitor monitor, GetStoryUseCase getStoryUseCase, GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase, AnalyticsTracker analyticsTracker, SavedStateHandle savedStateHandle) {
        requireUserInAppDispatchUseCase.getClass();
        monitor.getClass();
        getStoryUseCase.getClass();
        getAllAccessibilityValuesUseCase.getClass();
        analyticsTracker.getClass();
        savedStateHandle.getClass();
        this.f65100a = monitor;
        this.f65101b = getStoryUseCase;
        this.f65102c = analyticsTracker;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        String str = (String) savedStateHandle.a("KEY_STORY_ID");
        str = str == null ? "" : str;
        this.d = str;
        Boolean bool = (Boolean) savedStateHandle.a("KEY_SKIP_ON_ERROR");
        this.f65103e = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool2);
        this.f65104f = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool2);
        this.g = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.f65105h = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(EmptyList.f71768b);
        this.f65106i = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(0);
        this.f65107j = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.f65108k = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool2);
        this.l = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool2);
        this.m = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(bool2);
        this.n = mutableStateFlowA9;
        DynatraceMonitorAction dynatraceMonitorActionA = monitor.a(inAppDispatchB, StoryMonitoring.Action.OpenStory.f48806a);
        dynatraceMonitorActionA.c(str, b.a.f24015b);
        this.o = dynatraceMonitorActionA;
        BuildersKt.c(ViewModelKt.a(this), null, null, new StoryViewModelImpl$getStory$2(this, str, null), 3);
        AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
        AccessibilityPreferenceType accessibilityPreferenceType2 = AccessibilityPreferenceType.DISABLE_AUTOPLAY;
        AccessibilityPreferenceType accessibilityPreferenceType3 = AccessibilityPreferenceType.ENHANCED_CONTRAST;
        Object objA = getAllAccessibilityValuesUseCase.a(accessibilityPreferenceType, accessibilityPreferenceType2, accessibilityPreferenceType3);
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            Map map = (Map) objA;
            mutableStateFlowA7.setValue(MapsKt.d(map, accessibilityPreferenceType));
            mutableStateFlowA8.setValue(MapsKt.d(map, accessibilityPreferenceType2));
            mutableStateFlowA9.setValue(MapsKt.d(map, accessibilityPreferenceType3));
        }
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9};
        Flow<StoryViewState> flow = new Flow<StoryViewState>() { // from class: com.vuitton.android.presentation.screen.story.StoryViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.story.StoryViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.story.StoryViewModelImpl$special$$inlined$combine$1$3", f = "StoryViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super StoryViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f65113b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f65114c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f65114c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f65114c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f65113b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        StoryHeaderUiModel storyHeaderUiModel = obj4 instanceof StoryHeaderUiModel ? (StoryHeaderUiModel) obj4 : null;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        List list = (List) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        int iIntValue = ((Integer) obj6).intValue();
                        StoryCloseUiModel storyCloseUiModel = (StoryCloseUiModel) objArr[5];
                        Object obj7 = objArr[6];
                        obj7.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[7];
                        obj8.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj8).booleanValue();
                        Object obj9 = objArr[8];
                        obj9.getClass();
                        StoryViewState storyViewState = new StoryViewState(zBooleanValue, zBooleanValue2, storyHeaderUiModel, list, iIntValue, storyCloseUiModel, zBooleanValue3, zBooleanValue4, ((Boolean) obj9).booleanValue());
                        this.f65114c = null;
                        this.d = null;
                        this.f65113b = 1;
                        if (flowCollector.emit(storyViewState, this) == coroutineSingletons) {
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
                Object objA2 = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.story.StoryViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA2 == CoroutineSingletons.COROUTINE_SUSPENDED ? objA2 : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.p = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new StoryViewState(false, false, null, null, 0, null, false, false, false, 511, null));
    }

    @Override // com.vuitton.android.presentation.screen.story.StoryViewModel
    public final void D7() {
        Object value;
        MutableStateFlow mutableStateFlow = this.f65107j;
        if (((Number) mutableStateFlow.getValue()).intValue() > 0) {
            K4(new StoryTrackingUiModel.NavigationInStoryEvent(StoryNavigationType.PREVIOUS));
            do {
                value = mutableStateFlow.getValue();
                ((Number) value).intValue();
            } while (!mutableStateFlow.i(value, Integer.valueOf(((Number) mutableStateFlow.getValue()).intValue() - 1)));
        }
    }

    @Override // com.vuitton.android.presentation.screen.story.StoryViewModel
    public final void K4(StoryTrackingUiModel storyTrackingUiModel) {
        Hit defaultEventHit;
        storyTrackingUiModel.getClass();
        String str = this.d;
        str.getClass();
        if (storyTrackingUiModel instanceof StoryTrackingUiModel.StoryScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Story/".concat(str), "LVPass/Story/".concat(str), "event_story", o60.t(str), 1, null);
        } else if (storyTrackingUiModel instanceof StoryTrackingUiModel.NavigationInStoryEvent) {
            String strConcat = "LVPass/Story/".concat(str);
            String lowerCase = ((StoryTrackingUiModel.NavigationInStoryEvent) storyTrackingUiModel).f65149a.name().toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, strConcat, lowerCase, "immersive_story", "navigation", null, CollectionsKt.O(new AdditionalProperty.ContentId(str)), 33, null);
        } else if (storyTrackingUiModel instanceof StoryTrackingUiModel.OnHitCTAStoryEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Story/".concat(str), "redirect_cta", "immersive_story", "navigation", null, o60.t(str), 33, null);
        } else {
            if (!(storyTrackingUiModel instanceof StoryTrackingUiModel.OnCloseStoryEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Story/".concat(str), "close_story", "immersive_story", "navigation", null, o60.t(str), 33, null);
        }
        this.f65102c.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.story.StoryViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.story.StoryViewModel
    public final void j5() {
        Object value;
        MutableStateFlow mutableStateFlow = this.f65107j;
        if (((Number) mutableStateFlow.getValue()).intValue() >= ((List) this.f65106i.getValue()).size() - 1) {
            v9(StoryCloseUiModel.LAST_SLIDE_CHECKED);
            return;
        }
        K4(new StoryTrackingUiModel.NavigationInStoryEvent(StoryNavigationType.NEXT));
        do {
            value = mutableStateFlow.getValue();
            ((Number) value).intValue();
        } while (!mutableStateFlow.i(value, Integer.valueOf(((Number) mutableStateFlow.getValue()).intValue() + 1)));
    }

    @Override // com.vuitton.android.presentation.screen.story.StoryViewModel
    public final void v9(StoryCloseUiModel storyCloseUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        storyCloseUiModel.getClass();
        K4(StoryTrackingUiModel.OnCloseStoryEvent.f65150a);
        do {
            mutableStateFlow = this.f65108k;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, storyCloseUiModel));
    }
}
