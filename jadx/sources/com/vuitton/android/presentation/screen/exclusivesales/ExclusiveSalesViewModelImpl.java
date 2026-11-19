package com.vuitton.android.presentation.screen.exclusivesales;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.account.RefreshFacadeUserSessionUseCase;
import com.vuitton.android.domain.usecase.exclusivesales.GetUserExclusiveSalesUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesTrackingUiModel;
import com.vuitton.android.presentation.screen.exclusivesales.models.ExclusiveSalesViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.md;
import defpackage.o60;
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
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;", "refreshFacadeUserSessionUseCase", "Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;", "getUserExclusiveSalesUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ExclusiveSalesViewModelImpl extends ViewModel implements ExclusiveSalesViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f57531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RefreshFacadeUserSessionUseCase f57532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetUserExclusiveSalesUseCase f57533c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationBuilder f57534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BufferedChannel f57535f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f57536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StateFlow f57537i;

    @Inject
    public ExclusiveSalesViewModelImpl(Logger logger, RefreshFacadeUserSessionUseCase refreshFacadeUserSessionUseCase, GetUserExclusiveSalesUseCase getUserExclusiveSalesUseCase, AnalyticsTracker analyticsTracker, NotificationBuilder notificationBuilder) {
        logger.getClass();
        refreshFacadeUserSessionUseCase.getClass();
        getUserExclusiveSalesUseCase.getClass();
        analyticsTracker.getClass();
        notificationBuilder.getClass();
        this.f57531a = logger;
        this.f57532b = refreshFacadeUserSessionUseCase;
        this.f57533c = getUserExclusiveSalesUseCase;
        this.d = analyticsTracker;
        this.f57534e = notificationBuilder;
        this.f57535f = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.g = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(EmptyList.f71768b);
        this.f57536h = mutableStateFlowA2;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2};
        Flow<ExclusiveSalesViewState> flow = new Flow<ExclusiveSalesViewState>() { // from class: com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$special$$inlined$combine$1$3", f = "ExclusiveSalesViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ExclusiveSalesViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f57544b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f57545c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f57545c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f57545c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f57544b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        ExclusiveSalesViewState exclusiveSalesViewState = new ExclusiveSalesViewState(zBooleanValue, (List) obj3);
                        this.f57545c = null;
                        this.d = null;
                        this.f57544b = 1;
                        if (flowCollector.emit(exclusiveSalesViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl$special$$inlined$combine$1.2
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
        this.f57537i = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new ExclusiveSalesViewState(false, null, 3, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new ExclusiveSalesViewModelImpl$getExclusiveSales$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModel
    public final void C8(ExclusiveSalesTrackingUiModel.ExclusiveSalesSelectionEvent exclusiveSalesSelectionEvent) {
        String str = exclusiveSalesSelectionEvent.f57570a;
        this.d.a(new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/myExclusiveSales", str, "MyLV", "exclusive_offer_section", null, o60.t(str), 33, null));
    }

    @Override // com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF57537i() {
        return this.f57537i;
    }

    @Override // com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModel
    public final Flow b() {
        return FlowKt.y(this.f57535f);
    }
}
