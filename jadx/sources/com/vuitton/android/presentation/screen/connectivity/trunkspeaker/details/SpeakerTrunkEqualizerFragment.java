package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.SeekBar;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.LPDeviceStatus;
import com.linkplay.lpmdpkit.observer.LPDeviceInfoObservable;
import com.linkplay.lpmdpkit.observer.LPDeviceMediaInfoObservable;
import com.linkplay.lpmdpkit.observer.LPDeviceObserverManager;
import com.linkplay.lpmdpkit.observer.LPNotification;
import com.linkplay.lpmdpkit.observer.LPNotificationType;
import com.linkplay.passthrough.LPPassthrough;
import com.linkplay.passthrough.LPPassthroughListener;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerEqualizerBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.g01;
import defpackage.h01;
import defpackage.i01;
import defpackage.j01;
import defpackage.jo0;
import defpackage.k01;
import defpackage.l01;
import defpackage.md;
import defpackage.qr;
import defpackage.rp0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u000fB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/linkplay/passthrough/LPPassthroughListener;", "Lcom/linkplay/lpmdpkit/observer/LPDeviceMediaInfoObservable;", "Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SpeakerTrunkEqualizerFragment extends Hilt_SpeakerTrunkEqualizerFragment implements LPPassthroughListener, LPDeviceMediaInfoObservable, LPDeviceInfoObservable {
    public final FragmentViewBindingDelegate F;
    public final Lazy G;
    public boolean H;
    public LPPassthrough I;
    public Handler J;
    public GenericBottomSheet K;
    public LVEventSender L;
    public static final /* synthetic */ KProperty[] N = {Reflection.f71922a.h(new PropertyReference1Impl(SpeakerTrunkEqualizerFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerEqualizerBinding;", 0))};
    public static final Companion M = new Companion(null);
    public static final String O = "SpeakerTrunkEqualizerFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment$Companion;", "", "", "KEY_DEVICE", "Ljava/lang/String;", "", "BTN_PLAY_STATUS", "I", "UPDATE_MEDIA_INFO", "MILLISECONDS_LIMIT", "MILLISECONDS_TO_SECONDS_FACTOR", "PLAYER_JUMP_15_SECONDS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56479a;

        static {
            int[] iArr = new int[LPNotificationType.values().length];
            try {
                iArr[LPNotificationType.DEVICE_INFO_CHANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LPNotificationType.META_DATA_CHANGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f56479a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1", f = "SpeakerTrunkEqualizerFragment.kt", l = {89}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56483b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1", f = "SpeakerTrunkEqualizerFragment.kt", l = {92}, m = "invokeSuspend", v = 2)
        final class C02751 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f56485b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SpeakerTrunkEqualizerFragment f56486c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$RefreshTrunkSpeakerItemEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$1", f = "SpeakerTrunkEqualizerFragment.kt", l = {93}, m = "invokeSuspend", v = 2)
            final class C02761 extends SuspendLambda implements Function2<AppEvent.RefreshTrunkSpeakerItemEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f56487b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ SpeakerTrunkEqualizerFragment f56488c;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$1$1, reason: invalid class name and collision with other inner class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$1$1", f = "SpeakerTrunkEqualizerFragment.kt", l = {}, m = "invokeSuspend", v = 2)
                final class C02771 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ SpeakerTrunkEqualizerFragment f56489b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C02771(SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment, Continuation continuation) {
                        super(2, continuation);
                        this.f56489b = speakerTrunkEqualizerFragment;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new C02771(this.f56489b, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((C02771) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        ResultKt.b(obj);
                        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                        SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f56489b;
                        TrunkGeneralHelper.d(speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.Q(), new l01(0), new g01(6, speakerTrunkEqualizerFragment), 16);
                        return Unit.f71739a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02761(SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f56488c = speakerTrunkEqualizerFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C02761(this.f56488c, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02761) create((AppEvent.RefreshTrunkSpeakerItemEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f56487b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                        MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
                        C02771 c02771 = new C02771(this.f56488c, null);
                        this.f56487b = 1;
                        if (BuildersKt.f(mainCoroutineDispatcher, c02771, this) == coroutineSingletons) {
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

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02751(SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment, Continuation continuation) {
                super(2, continuation);
                this.f56486c = speakerTrunkEqualizerFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02751(this.f56486c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02751) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f56485b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f56486c;
                    LVEventSender lVEventSender = speakerTrunkEqualizerFragment.L;
                    if (lVEventSender == null) {
                        Intrinsics.h("eventSender");
                        throw null;
                    }
                    final SharedFlow sharedFlow = lVEventSender.f43512c;
                    Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f56491b;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "SpeakerTrunkEqualizerFragment.kt", l = {217}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f56492b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f56493c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f56492b = obj;
                                    this.f56493c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.f56491b = flowCollector;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f56493c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f56493c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f56492b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f56493c;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    if (obj instanceof AppEvent.RefreshTrunkSpeakerItemEvent) {
                                        anonymousClass1.f56493c = 1;
                                        if (this.f56491b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                            return coroutineSingletons;
                                        }
                                    }
                                } else {
                                    if (i3 != 1) {
                                        md.k("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    ResultKt.b(obj2);
                                }
                                return Unit.f71739a;
                            }
                        }

                        @Override // kotlinx.coroutines.flow.Flow
                        public final Object f(FlowCollector flowCollector, Continuation continuation) {
                            Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation);
                            return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                        }
                    };
                    C02761 c02761 = new C02761(speakerTrunkEqualizerFragment, null);
                    this.f56485b = 1;
                    if (FlowKt.g(flow, c02761, this) == coroutineSingletons) {
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

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SpeakerTrunkEqualizerFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f56483b;
            if (i2 == 0) {
                ResultKt.b(obj);
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = SpeakerTrunkEqualizerFragment.this;
                Lifecycle f13561b = speakerTrunkEqualizerFragment.getF13561b();
                f13561b.getClass();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C02751 c02751 = new C02751(speakerTrunkEqualizerFragment, null);
                this.f56483b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, c02751, this) == coroutineSingletons) {
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

    public SpeakerTrunkEqualizerFragment() {
        super(R.layout.fragment_trunk_speaker_equalizer);
        this.F = FragmentExtKt.d(this, SpeakerTrunkEqualizerFragment$binding$2.f56480b);
        this.G = LazyKt.b(new g01(0, this));
        this.H = true;
    }

    public static final void O(SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment, FragmentActivity fragmentActivity, LPDevice lPDevice, Function1 function1) {
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        TrunkGeneralHelper.d(fragmentActivity, lPDevice, new jo0(function1, 6), new g01(1, speakerTrunkEqualizerFragment), 16);
    }

    public final FragmentTrunkSpeakerEqualizerBinding P() {
        return (FragmentTrunkSpeakerEqualizerBinding) this.F.c(this, N[0]);
    }

    public final LPDevice Q() {
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        String str = (String) this.G.getF71699b();
        if (str == null || str.length() == 0) {
            return null;
        }
        return LPDeviceManager.getInstance().deviceForID(str);
    }

    public final LPDevice R() {
        LPDevice lPDeviceDeviceForID;
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        String str = (String) this.G.getF71699b();
        LPDevice lPDeviceDeviceForID2 = (str == null || str.length() == 0) ? null : LPDeviceManager.getInstance().deviceForID(str);
        if (lPDeviceDeviceForID2 == null) {
            return null;
        }
        LPDeviceStatus deviceStatus = lPDeviceDeviceForID2.getDeviceStatus();
        String master_uuid = deviceStatus != null ? deviceStatus.getMaster_uuid() : null;
        return (master_uuid == null || master_uuid.length() == 0 || (lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(lPDeviceDeviceForID2.getDeviceStatus().getMaster_uuid())) == null) ? lPDeviceDeviceForID2 : lPDeviceDeviceForID;
    }

    public final synchronized void S() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new i01(6, this));
        }
    }

    public final synchronized void T() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new i01(1, this));
        }
    }

    public final synchronized void U(int i2) {
        int i3;
        try {
            LPDevice lPDeviceR = R();
            if (lPDeviceR == null) {
                return;
            }
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            int progress = P().f51342f.getProgress();
            ref$IntRef.f71919b = progress;
            if (i2 != -1 && (i3 = progress + i2) > 0) {
                ref$IntRef.f71919b = i3;
            }
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            TrunkGeneralHelper.d(getActivity(), lPDeviceR, new rp0(ref$IntRef, this, 25), null, 24);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void V() {
        FragmentManager supportFragmentManager;
        GenericBottomSheet genericBottomSheet;
        GenericBottomSheet genericBottomSheet2;
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null || (genericBottomSheet = this.K) == null || genericBottomSheet.isVisible() || (genericBottomSheet2 = this.K) == null) {
            return;
        }
        genericBottomSheet2.show(supportFragmentManager, GenericBottomSheet.S);
    }

    @Override // com.linkplay.passthrough.LPPassthroughListener
    public final void connectionStateChanged(boolean z) {
        if (z && this.H) {
            LPPassthrough lPPassthrough = this.I;
            if (lPPassthrough != null) {
                lPPassthrough.write("MCU+PAS+EQG&");
            }
            this.H = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        LPPassthrough lPPassthrough = this.I;
        if (lPPassthrough != null) {
            lPPassthrough.disConnect();
        }
        this.J = null;
        super.onDestroyView();
    }

    @Override // com.linkplay.passthrough.LPPassthroughListener
    public final void onException(Exception exc, int i2) {
        exc.getClass();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.Hilt_SpeakerTrunkEqualizerFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        LPDeviceObserverManager.getInstance().unregister(this);
        super.onPause();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.Hilt_SpeakerTrunkEqualizerFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        LPDeviceObserverManager.getInstance().register(this);
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        TrunkGeneralHelper.d(getActivity(), Q(), new h01(5, this), null, 24);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.Hilt_SpeakerTrunkEqualizerFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        GenericBottomSheet.Companion companion = GenericBottomSheet.R;
        String string = getString(R.string.speaker_trunk_device_not_available);
        string.getClass();
        final GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion, string, null, getString(R.string.btn_close), 16);
        genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$onViewCreated$1$1
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
            public final void a() {
                FragmentManager supportFragmentManager;
                FragmentActivity activity = genericBottomSheetB.getActivity();
                if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
                    return;
                }
                supportFragmentManager.V();
            }
        };
        this.K = genericBottomSheetB;
        int i2 = 1;
        this.J = new Handler(Looper.getMainLooper(), new qr(this, i2));
        ViewExtKt.d(P().f51341e, new h01(8, this));
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        TrunkGeneralHelper.d(getActivity(), Q(), new h01(10, this), null, 24);
        P().f51339b.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$initSeekBarEqualizer$1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i3, boolean z) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f56481a;
                SpeakerTrunkEqualizerFragment.O(speakerTrunkEqualizerFragment, speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.Q(), new k01(speakerTrunkEqualizerFragment, speakerTrunkEqualizerFragment.P().f51339b.getProgress(), 0));
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar);
            }
        });
        P().f51340c.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$initSeekBarEqualizer$2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i3, boolean z) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f56482a;
                SpeakerTrunkEqualizerFragment.O(speakerTrunkEqualizerFragment, speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.Q(), new k01(speakerTrunkEqualizerFragment, speakerTrunkEqualizerFragment.P().f51340c.getProgress(), 1));
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar);
            }
        });
        TrunkGeneralHelper.d(getActivity(), Q(), new h01(9, this), null, 24);
        P().d.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$setupVolume$2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i3, boolean z) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f56501a;
                SpeakerTrunkEqualizerFragment.O(speakerTrunkEqualizerFragment, speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.Q(), new k01(speakerTrunkEqualizerFragment, speakerTrunkEqualizerFragment.P().d.getProgress(), 3));
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar);
            }
        });
        FragmentTrunkSpeakerEqualizerBinding fragmentTrunkSpeakerEqualizerBindingP = P();
        ViewExtKt.d(fragmentTrunkSpeakerEqualizerBindingP.f51345j, new h01(11, this));
        ViewExtKt.d(fragmentTrunkSpeakerEqualizerBindingP.f51344i, new h01(0, this));
        ViewExtKt.d(fragmentTrunkSpeakerEqualizerBindingP.f51346k, new h01(i2, this));
        ViewExtKt.d(fragmentTrunkSpeakerEqualizerBindingP.g, new h01(2, this));
        ViewExtKt.d(fragmentTrunkSpeakerEqualizerBindingP.f51343h, new h01(3, this));
        P().f51342f.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.SpeakerTrunkEqualizerFragment$setupPlayProgress$1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i3, boolean z) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                seekBar.getClass();
                SpeakerTrunkEqualizerFragment.Companion companion2 = SpeakerTrunkEqualizerFragment.M;
                SpeakerTrunkEqualizerFragment speakerTrunkEqualizerFragment = this.f56499a;
                int progress = speakerTrunkEqualizerFragment.P().f51342f.getProgress();
                TrunkGeneralHelper trunkGeneralHelper2 = TrunkGeneralHelper.f56577a;
                TrunkGeneralHelper.d(speakerTrunkEqualizerFragment.getActivity(), speakerTrunkEqualizerFragment.R(), new k01(progress, speakerTrunkEqualizerFragment), null, 24);
                SensorsDataAutoTrackHelper.trackViewOnClick(seekBar);
            }
        });
    }

    @Override // com.linkplay.passthrough.LPPassthroughListener
    public final void passThroughMessageCome(String str) {
        int i2;
        int i3;
        str.getClass();
        if (StringsKt.P(str, "MCU+PAS+", false) && 201 <= (i3 = Integer.parseInt(str.substring(8, 11))) && i3 < 212) {
            P().f51339b.setProgress(StringsKt.P(str, "MCU+PAS+", false) ? Integer.parseInt(str.substring(9, 11)) - 1 : 0);
            return;
        }
        if (StringsKt.P(str, "MCU+PAS+", false) && 101 <= (i2 = Integer.parseInt(str.substring(8, 11))) && i2 < 112) {
            P().f51340c.setProgress(StringsKt.P(str, "MCU+PAS+", false) ? Integer.parseInt(str.substring(9, 11)) - 1 : 0);
        } else if (StringsKt.P(str, "AXX+VOL+", false)) {
            P().d.setProgress(StringsKt.P(str, "AXX+VOL+", false) ? Integer.parseInt(str.substring(8, 11)) : 0);
        }
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceInfoObservable
    public final void updateDeviceInfo(LPNotification lPNotification) {
        lPNotification.getClass();
        TrunkGeneralHelper.f56577a.c(getActivity(), R(), new j01(lPNotification, this, 1), null, false);
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceMediaInfoObservable
    public final void updateMediaInfo(LPNotification lPNotification) {
        lPNotification.getClass();
        TrunkGeneralHelper.f56577a.c(getActivity(), R(), new j01(lPNotification, this, 0), null, false);
    }
}
