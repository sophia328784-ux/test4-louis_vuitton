package com.vuitton.android.presentation.screen.livevideo;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.media3.exoplayer.ExoPlayer;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoState;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.md;
import defpackage.o60;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "getLiveVideo", "Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoTracker;", "tracker", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveVideoViewModelImpl extends ViewModel implements LiveVideoViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetLiveVideoUseCase f58942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LiveVideoTracker f58943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58944c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f58945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f58946f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StateFlow f58947h;

    @Inject
    public LiveVideoViewModelImpl(SavedStateHandle savedStateHandle, GetLiveVideoUseCase getLiveVideoUseCase, LiveVideoTracker liveVideoTracker) {
        savedStateHandle.getClass();
        getLiveVideoUseCase.getClass();
        liveVideoTracker.getClass();
        this.f58942a = getLiveVideoUseCase;
        this.f58943b = liveVideoTracker;
        VideoIdUiModel videoIdUiModel = (VideoIdUiModel) savedStateHandle.a("VIDEO_ID");
        this.f58944c = videoIdUiModel != null ? videoIdUiModel.f51799b : null;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(LiveVideoState.LOADING);
        this.d = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.f58945e = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.f58946f = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.g = mutableStateFlowA4;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<LiveVideoViewState> flow = new Flow<LiveVideoViewState>() { // from class: com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$special$$inlined$combine$1$3", f = "LiveVideoViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super LiveVideoViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f58954b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f58955c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f58955c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f58955c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f58954b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        LiveVideoViewState liveVideoViewState = new LiveVideoViewState((LiveVideoState) obj2, ((Boolean) obj3).booleanValue(), (String) objArr[2], (ExoPlayer) objArr[3]);
                        this.f58955c = null;
                        this.d = null;
                        this.f58954b = 1;
                        if (flowCollector.emit(liveVideoViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$special$$inlined$combine$1.2
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
        this.f58947h = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new LiveVideoViewState(null, false, null, null, 15, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new LiveVideoViewModelImpl$getVideoInfo$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel
    public final void K6(ExoPlayer exoPlayer) {
        this.g.setValue(exoPlayer);
    }

    @Override // com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel
    public final void U1(String str, String str2) {
        LiveVideoTracker liveVideoTracker = this.f58943b;
        liveVideoTracker.getClass();
        liveVideoTracker.f58941a.a(new Hit.EventHit.DefaultEventHit(null, "LVPass/magazine/fashion_show/".concat(str), str2, "fashion_show", "replay", null, o60.t(str), 33, null));
    }

    @Override // com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF58947h() {
        return this.f58947h;
    }

    @Override // com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel
    public final void o1(String str, boolean z) {
        LiveVideoTracker liveVideoTracker = this.f58943b;
        liveVideoTracker.getClass();
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("play_");
        } else {
            sb.append("pause_");
        }
        sb.append("live");
        liveVideoTracker.f58941a.a(new Hit.EventHit.DefaultEventHit(null, "LVPass/magazine/fashion_show/".concat(str), sb.toString(), "fashion_show", "live", null, o60.t(str), 33, null));
    }
}
