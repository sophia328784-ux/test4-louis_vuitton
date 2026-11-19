package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist;

import android.os.Bundle;
import android.view.DragEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.linkplay.core.device.LPDevice;
import com.linkplay.lpmdpkit.observer.LPDeviceInfoObservable;
import com.linkplay.lpmdpkit.observer.LPNotification;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.databinding.FragmentTrunkSpeakerWifiDeviceListBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.TrunkSpeakerRouter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.LVTrunkSpotifyHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.c61;
import defpackage.ln0;
import defpackage.md;
import defpackage.p11;
import defpackage.v40;
import defpackage.y61;
import defpackage.z61;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u000fB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;", "Landroid/view/View$OnDragListener;", "Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WifiDeviceListFragment extends Hilt_WifiDeviceListFragment implements WifiDeviceListAdapter.Listener, View.OnDragListener, LPDeviceInfoObservable {
    public final FragmentViewBindingDelegate F;
    public final Lazy G;
    public LVEventSender H;
    public TrunkSpeakerRouter I;
    public WifiTrunkDevice J;
    public int K;
    public static final /* synthetic */ KProperty[] M = {Reflection.f71922a.h(new PropertyReference1Impl(WifiDeviceListFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerWifiDeviceListBinding;", 0))};
    public static final Companion L = new Companion(null);
    public static final String N = "WifiDeviceListFragment";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1", f = "WifiDeviceListFragment.kt", l = {64}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56539b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1", f = "WifiDeviceListFragment.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
        final class C02781 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f56541b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ WifiDeviceListFragment f56542c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$RefreshTrunkSpeakerItemEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$1", f = "WifiDeviceListFragment.kt", l = {EACTags.APPLICATION_IMAGE}, m = "invokeSuspend", v = 2)
            final class C02791 extends SuspendLambda implements Function2<AppEvent.RefreshTrunkSpeakerItemEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f56543b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ WifiDeviceListFragment f56544c;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$1$1, reason: invalid class name and collision with other inner class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$1$1", f = "WifiDeviceListFragment.kt", l = {}, m = "invokeSuspend", v = 2)
                final class C02801 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ WifiDeviceListFragment f56545b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C02801(WifiDeviceListFragment wifiDeviceListFragment, Continuation continuation) {
                        super(2, continuation);
                        this.f56545b = wifiDeviceListFragment;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new C02801(this.f56545b, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((C02801) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        ResultKt.b(obj);
                        Companion companion = WifiDeviceListFragment.L;
                        this.f56545b.Q();
                        return Unit.f71739a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02791(WifiDeviceListFragment wifiDeviceListFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f56544c = wifiDeviceListFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C02791(this.f56544c, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02791) create((AppEvent.RefreshTrunkSpeakerItemEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f56543b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                        MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
                        C02801 c02801 = new C02801(this.f56544c, null);
                        this.f56543b = 1;
                        if (BuildersKt.f(mainCoroutineDispatcher, c02801, this) == coroutineSingletons) {
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
            public C02781(WifiDeviceListFragment wifiDeviceListFragment, Continuation continuation) {
                super(2, continuation);
                this.f56542c = wifiDeviceListFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02781(this.f56542c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02781) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f56541b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    WifiDeviceListFragment wifiDeviceListFragment = this.f56542c;
                    LVEventSender lVEventSender = wifiDeviceListFragment.H;
                    if (lVEventSender == null) {
                        Intrinsics.h("eventSender");
                        throw null;
                    }
                    final SharedFlow sharedFlow = lVEventSender.f43512c;
                    Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f56547b;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "WifiDeviceListFragment.kt", l = {217}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f56548b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f56549c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f56548b = obj;
                                    this.f56549c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.f56547b = flowCollector;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f56549c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f56549c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f56548b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f56549c;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    if (obj instanceof AppEvent.RefreshTrunkSpeakerItemEvent) {
                                        anonymousClass1.f56549c = 1;
                                        if (this.f56547b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    C02791 c02791 = new C02791(wifiDeviceListFragment, null);
                    this.f56541b = 1;
                    if (FlowKt.g(flow, c02791, this) == coroutineSingletons) {
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
            return WifiDeviceListFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f56539b;
            if (i2 == 0) {
                ResultKt.b(obj);
                WifiDeviceListFragment wifiDeviceListFragment = WifiDeviceListFragment.this;
                Lifecycle lifecycle = wifiDeviceListFragment.getF13561b();
                lifecycle.getClass();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C02781 c02781 = new C02781(wifiDeviceListFragment, null);
                this.f56539b = 1;
                if (RepeatOnLifecycleKt.a(lifecycle, state, c02781, this) == coroutineSingletons) {
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

    public WifiDeviceListFragment() {
        super(R.layout.fragment_trunk_speaker_wifi_device_list);
        this.F = FragmentExtKt.d(this, WifiDeviceListFragment$binding$2.f56537b);
        this.G = LazyKt.b(new y61(this, 2));
        this.K = -1;
    }

    public final FragmentTrunkSpeakerWifiDeviceListBinding O() {
        return (FragmentTrunkSpeakerWifiDeviceListBinding) this.F.c(this, M[0]);
    }

    public final void P(LPDevice lPDevice, LPDevice lPDevice2, ArrayList arrayList) {
        lPDevice.getClass();
        lPDevice2.getClass();
        O().d.setVisibility(0);
        arrayList.add(lPDevice);
        TrunkRoomHelper.a(lPDevice2, arrayList, new y61(this, 0), new y61(this, 1));
    }

    public final synchronized void Q() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new z61(this, 0));
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListAdapter.Listener
    public final void m(WifiTrunkDevice wifiTrunkDevice) {
        FragmentManager supportFragmentManager;
        if (wifiTrunkDevice instanceof WifiTrunkDevice.SimpleSpeaker) {
            TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
            TrunkGeneralHelper.d(getActivity(), ((WifiTrunkDevice.SimpleSpeaker) wifiTrunkDevice).f56557b, new c61(this, wifiTrunkDevice, 9), null, 24);
            return;
        }
        if (!(wifiTrunkDevice instanceof WifiTrunkDevice.RoomSpeaker)) {
            v40.g();
            return;
        }
        if (this.I == null) {
            Intrinsics.h("trunkSpeakerRouter");
            throw null;
        }
        FragmentActivity activity = getActivity();
        WifiTrunkDevice.RoomSpeaker roomSpeaker = (WifiTrunkDevice.RoomSpeaker) wifiTrunkDevice;
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.fade_out, R.anim.no_animation, R.anim.push_right_out);
        RoomDetailFragment.L.getClass();
        RoomDetailFragment roomDetailFragment = new RoomDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("DEVICE", roomSpeaker);
        roomDetailFragment.setArguments(bundle);
        fragmentTransactionD.i(R.id.fragment_container, roomDetailFragment, RoomDetailFragment.N, 1);
        WifiDeviceDetailFragment.N.getClass();
        fragmentTransactionD.d(WifiDeviceDetailFragment.P);
        FragmentTransactionExtKt.a(fragmentTransactionD, activity);
        fragmentTransactionD.e();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        O().f51359e.setAdapter(null);
        super.onDestroyView();
    }

    @Override // android.view.View.OnDragListener
    public final boolean onDrag(View view, DragEvent dragEvent) {
        int childAdapterPosition;
        Throwable th;
        Lazy lazy = this.G;
        view.getClass();
        dragEvent.getClass();
        Object localState = dragEvent.getLocalState();
        localState.getClass();
        ViewParent parent = ((View) localState).getParent();
        parent.getClass();
        FrameLayout frameLayout = (FrameLayout) parent;
        try {
            Result.Companion companion = Result.INSTANCE;
            childAdapterPosition = O().f51359e.getChildAdapterPosition(frameLayout);
            if (childAdapterPosition != -1) {
                try {
                    Object obj = ((WifiDeviceListAdapter) lazy.getF71699b()).d.get(childAdapterPosition);
                    obj.getClass();
                    this.J = (WifiTrunkDevice) obj;
                } catch (Throwable th2) {
                    th = th2;
                    Result.Companion companion2 = Result.INSTANCE;
                    new Result.Failure(th);
                }
            }
        } catch (Throwable th3) {
            childAdapterPosition = -1;
            th = th3;
        }
        View viewFindChildViewUnder = O().f51359e.findChildViewUnder(dragEvent.getX(), dragEvent.getY());
        int action = dragEvent.getAction();
        if (action == 2) {
            if (viewFindChildViewUnder == null) {
                return true;
            }
            this.K = O().f51359e.getChildAdapterPosition(viewFindChildViewUnder);
            return true;
        }
        if (action != 3) {
            if (action != 4) {
                return true;
            }
            frameLayout.findViewById(R.id.overlay_layout).setVisibility(8);
            return true;
        }
        if (this.K == childAdapterPosition || viewFindChildViewUnder == null) {
            return true;
        }
        Object obj2 = ((WifiDeviceListAdapter) lazy.getF71699b()).d.get(this.K);
        obj2.getClass();
        WifiTrunkDevice wifiTrunkDevice = (WifiTrunkDevice) obj2;
        WifiTrunkDevice wifiTrunkDevice2 = this.J;
        if (wifiTrunkDevice2 == null) {
            return true;
        }
        if (wifiTrunkDevice instanceof WifiTrunkDevice.SimpleSpeaker) {
            P(((WifiTrunkDevice.SimpleSpeaker) wifiTrunkDevice2).f56557b, ((WifiTrunkDevice.SimpleSpeaker) wifiTrunkDevice).f56557b, new ArrayList());
            return true;
        }
        if (!(wifiTrunkDevice instanceof WifiTrunkDevice.RoomSpeaker)) {
            v40.g();
            return false;
        }
        WifiTrunkDevice.RoomSpeaker roomSpeaker = (WifiTrunkDevice.RoomSpeaker) wifiTrunkDevice;
        P(((WifiTrunkDevice.SimpleSpeaker) wifiTrunkDevice2).f56557b, roomSpeaker.f56555b, new ArrayList(roomSpeaker.f56556c));
        return true;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.Hilt_WifiDeviceListFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Q();
        O().f51357b.setText(LVTrunkSpotifyHelper.a(getActivity()));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.Hilt_WifiDeviceListFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        FragmentExtKt.a(this, O().f51358c.f51464c.f51465b, null, 6);
        O().f51358c.f51464c.f51466c.setAccessibilityHeading(true);
        O().f51358c.f51464c.f51466c.setText(getString(R.string.trunk_speaker));
        RecyclerView recyclerView = O().f51359e;
        recyclerView.setAdapter((WifiDeviceListAdapter) this.G.getF71699b());
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        layoutManager.getClass();
        ((GridLayoutManager) layoutManager).K = new GridLayoutManager.SpanSizeLookup() { // from class: com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListFragment$initRecyclerView$1$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public final int c(int i2) {
                WifiDeviceListFragment.Companion companion = WifiDeviceListFragment.L;
                return ((WifiDeviceListAdapter) this.f56538c.G.getF71699b()).getItemViewType(i2) == 1 ? 2 : 1;
            }
        };
        recyclerView.setOnDragListener(this);
        O().f51360f.setOnRefreshListener(new ln0(this, 26));
        ViewExtKt.d(O().f51357b, new p11(this, 22));
    }

    @Override // com.linkplay.lpmdpkit.observer.LPDeviceInfoObservable
    public final void updateDeviceInfo(LPNotification lPNotification) {
        lPNotification.getClass();
    }
}
