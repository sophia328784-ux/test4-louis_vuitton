package com.vuitton.android.presentation.screen.connectivity.home;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.databinding.ConnectivityNotPairedLayoutBinding;
import com.vuitton.android.presentation.databinding.ConnectivityPairedLayoutBinding;
import com.vuitton.android.presentation.databinding.FragmentConnectivityBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.connectivity.ConnectedObjectUiModel;
import com.vuitton.android.presentation.screen.connectivity.DiscoverConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.TrunkSpeakerConnectivityItem;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.models.ConnectivityTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailActivity;
import com.vuitton.android.presentation.screen.connectivity.section.SectionType;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.dp;
import defpackage.ep;
import defpackage.fp;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
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
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u000eB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u0005¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ConnectivityFragment extends Hilt_ConnectivityFragment implements ConnectivityView, ConnectivityAdapter.Listener {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public ConnectivityRouter H;
    public LVEventSender I;
    public IsFeatureAvailableUseCase J;
    public final Lazy K;
    public final Lazy L;
    public final Lazy M;
    public final Lazy N;
    public boolean O;
    public boolean P;
    public static final /* synthetic */ KProperty[] R = {Reflection.f71922a.h(new PropertyReference1Impl(ConnectivityFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentConnectivityBinding;", 0))};
    public static final Companion Q = new Companion(null);
    public static final String S = "ConnectivityFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$Companion;", "", "", "KEY_DEEPLINK", "Ljava/lang/String;", "KEY_PAIRING_V2", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1", f = "ConnectivityFragment.kt", l = {118}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56054b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1", f = "ConnectivityFragment.kt", l = {124}, m = "invokeSuspend", v = 2)
        final class C02731 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f56056b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ConnectivityFragment f56057c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$2", f = "ConnectivityFragment.kt", l = {131}, m = "invokeSuspend", v = 2)
            final class AnonymousClass2 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f56058b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ Object f56059c;
                public final /* synthetic */ ConnectivityFragment d;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$2$1, reason: invalid class name and collision with other inner class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$2$1", f = "ConnectivityFragment.kt", l = {}, m = "invokeSuspend", v = 2)
                final class C02741 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ ConnectivityFragment f56060b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C02741(ConnectivityFragment connectivityFragment, Continuation continuation) {
                        super(2, continuation);
                        this.f56060b = connectivityFragment;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new C02741(this.f56060b, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((C02741) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        TrunkSpeakerConnectivityItem trunkSpeakerConnectivityItemA;
                        ArrayList arrayList;
                        TrunkSpeakerConnectivityItem trunkSpeakerConnectivityItemA2;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        ResultKt.b(obj);
                        Companion companion = ConnectivityFragment.Q;
                        List<LPDevice> devices = LPDeviceManager.getInstance().getDevices();
                        devices.getClass();
                        ArrayList arrayList2 = new ArrayList(TrunkRoomHelper.b(devices));
                        ConnectivityFragment connectivityFragment = this.f56060b;
                        if (connectivityFragment.isAdded() && !connectivityFragment.isHidden()) {
                            if (arrayList2.isEmpty()) {
                                ConnectivityAdapter connectivityAdapterO = connectivityFragment.O();
                                if (connectivityAdapterO != null && (trunkSpeakerConnectivityItemA2 = connectivityAdapterO.a()) != null) {
                                    connectivityAdapterO.f56044f.remove(trunkSpeakerConnectivityItemA2);
                                    connectivityAdapterO.notifyDataSetChanged();
                                }
                                ConnectivityAdapter connectivityAdapterO2 = connectivityFragment.O();
                                if (connectivityAdapterO2 != null && (arrayList = connectivityAdapterO2.f56044f) != null && arrayList.isEmpty()) {
                                    connectivityFragment.B();
                                }
                            } else {
                                ConnectivityAdapter connectivityAdapterO3 = connectivityFragment.O();
                                if ((connectivityAdapterO3 != null ? connectivityAdapterO3.a() : null) != null) {
                                    ConnectivityAdapter connectivityAdapterO4 = connectivityFragment.O();
                                    if (connectivityAdapterO4 != null && (trunkSpeakerConnectivityItemA = connectivityAdapterO4.a()) != null) {
                                        ArrayList arrayList3 = trunkSpeakerConnectivityItemA.f55967b;
                                        arrayList3.clear();
                                        arrayList3.addAll(arrayList2);
                                        ArrayList arrayList4 = connectivityAdapterO4.f56044f;
                                        TrunkSpeakerConnectivityItem trunkSpeakerConnectivityItemA3 = connectivityAdapterO4.a();
                                        arrayList4.getClass();
                                        int iIndexOf = arrayList4.indexOf(trunkSpeakerConnectivityItemA3);
                                        if (iIndexOf != -1) {
                                            connectivityAdapterO4.notifyItemChanged(iIndexOf);
                                        }
                                    }
                                } else if (connectivityFragment.P().d.g.getVisibility() == 0) {
                                    ConnectivityAdapter connectivityAdapterO5 = connectivityFragment.O();
                                    if (connectivityAdapterO5 != null) {
                                        TrunkSpeakerConnectivityItem trunkSpeakerConnectivityItem = new TrunkSpeakerConnectivityItem(arrayList2);
                                        ArrayList arrayList5 = connectivityAdapterO5.f56044f;
                                        if (connectivityAdapterO5.a() == null) {
                                            arrayList5.add(trunkSpeakerConnectivityItem);
                                            connectivityAdapterO5.notifyItemInserted(arrayList5.size() - 1);
                                        }
                                    }
                                } else {
                                    ConnectivityViewModel connectivityViewModelR = connectivityFragment.R();
                                    LVViewModel.Bc(connectivityViewModelR, null, new ConnectivityViewModel$getConnectedObjects$1(connectivityViewModelR, false, null), 3);
                                }
                            }
                        }
                        return Unit.f71739a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(ConnectivityFragment connectivityFragment, Continuation continuation) {
                    super(2, continuation);
                    this.d = connectivityFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.d, continuation);
                    anonymousClass2.f56059c = obj;
                    return anonymousClass2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass2) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    AppEvent appEvent = (AppEvent) this.f56059c;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f56058b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        boolean zC = Intrinsics.c(appEvent, AppEvent.ConnectivityRefreshFromServerEvent.f43495a);
                        ConnectivityFragment connectivityFragment = this.d;
                        if (zC) {
                            connectivityFragment.P = true;
                        } else if (Intrinsics.c(appEvent, AppEvent.RefreshTrunkSpeakerItemEvent.f43506a)) {
                            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
                            C02741 c02741 = new C02741(connectivityFragment, null);
                            this.f56059c = null;
                            this.f56058b = 1;
                            if (BuildersKt.f(mainCoroutineDispatcher, c02741, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
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
            public C02731(ConnectivityFragment connectivityFragment, Continuation continuation) {
                super(2, continuation);
                this.f56057c = connectivityFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02731(this.f56057c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02731) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f56056b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    ConnectivityFragment connectivityFragment = this.f56057c;
                    LVEventSender lVEventSender = connectivityFragment.I;
                    if (lVEventSender == null) {
                        Intrinsics.h("eventSender");
                        throw null;
                    }
                    final SharedFlow sharedFlow = lVEventSender.f43512c;
                    Flow<AppEvent> flow = new Flow<AppEvent>() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$invokeSuspend$$inlined$filter$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f56062b;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$invokeSuspend$$inlined$filter$1$2", f = "ConnectivityFragment.kt", l = {217}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f56063b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f56064c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f56063b = obj;
                                    this.f56064c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.f56062b = flowCollector;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f56064c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f56064c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f56063b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f56064c;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    AppEvent appEvent = (AppEvent) obj;
                                    if (Intrinsics.c(appEvent, AppEvent.ConnectivityRefreshFromServerEvent.f43495a) || Intrinsics.c(appEvent, AppEvent.RefreshTrunkSpeakerItemEvent.f43506a)) {
                                        anonymousClass1.f56064c = 1;
                                        if (this.f56062b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(connectivityFragment, null);
                    this.f56056b = 1;
                    if (FlowKt.g(flow, anonymousClass2, this) == coroutineSingletons) {
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
            return ConnectivityFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f56054b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ConnectivityFragment connectivityFragment = ConnectivityFragment.this;
                Lifecycle f13561b = connectivityFragment.getF13561b();
                f13561b.getClass();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C02731 c02731 = new C02731(connectivityFragment, null);
                this.f56054b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, c02731, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onViewCreated$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Profile, Unit> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Profile profile = (Profile) obj;
            ConnectivityFragment connectivityFragment = (ConnectivityFragment) this.receiver;
            if (profile != null) {
                connectivityFragment.S(profile, (String) connectivityFragment.R().n.getValue());
            }
            connectivityFragment.S(null, null);
            ConnectivityViewModel connectivityViewModelR = connectivityFragment.R();
            LVViewModel.Bc(connectivityViewModelR, null, new ConnectivityViewModel$getConnectedObjects$1(connectivityViewModelR, connectivityFragment.P, null), 3);
            return Unit.f71739a;
        }
    }

    public ConnectivityFragment() {
        super(R.layout.fragment_connectivity);
        this.F = FragmentExtKt.d(this, ConnectivityFragment$binding$2.f56053b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.G = new ViewModelLazy(Reflection.f71922a.b(ConnectivityViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13583b();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory f13584c;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (f13584c = hasDefaultViewModelProviderFactory.getF13584c()) == null) ? this.getF13584c() : f13584c;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.K = LazyKt.b(new ep(this, 1));
        this.L = LazyKt.b(new ep(this, 2));
        this.M = LazyKt.b(new ep(this, 3));
        this.N = LazyKt.b(new ep(this, 4));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void B() {
        this.P = false;
        if (!this.O) {
            R().f56078j.a(ConnectivityTrackingUiModelKt.a(ConnectivityTrackingUiModel.ConnectivityScreen.f56257a));
            this.O = true;
        }
        FragmentConnectivityBinding fragmentConnectivityBindingP = P();
        fragmentConnectivityBindingP.d.f51215b.setVisibility(8);
        fragmentConnectivityBindingP.f51226f.setVisibility(8);
        fragmentConnectivityBindingP.f51224c.f51209b.setVisibility(0);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void D(String str) {
        str.getClass();
        R().f56078j.a(ConnectivityTrackingUiModelKt.a(new ConnectivityTrackingUiModel.PairWatchV2SuccessEvent(str)));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void H(String str, Integer num, Integer num2) {
        FragmentManager supportFragmentManager;
        if (num != null && num.intValue() == 2002) {
            str = requireContext().getString(R.string.p12_error_watchalreadypaired);
        } else if (num != null && num.intValue() == 4000) {
            str = requireContext().getString(R.string.p12_errormessage_WatchNotFound);
        } else if (str == null) {
            if (num2 != null) {
                str = num2 + ": " + requireContext().getString(R.string.error_generic);
            } else {
                str = requireContext().getString(R.string.error_generic);
                str.getClass();
            }
        }
        str.getClass();
        FragmentActivity activity = getActivity();
        if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
            GenericBottomSheet.Companion.b(GenericBottomSheet.R, str, null, null, 28).show(supportFragmentManager, GenericBottomSheet.S);
        }
        P().f51225e.setVisibility(8);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void I() {
        P().d.g.setVisibility(8);
        P().d.f51218f.setVisibility(0);
        ConnectivityViewModel connectivityViewModelR = R();
        LVViewModel.Bc(connectivityViewModelR, null, new ConnectivityViewModel$refreshDeviceListAfterPairingADevice$1(connectivityViewModelR, null), 3);
        P().f51225e.setVisibility(8);
    }

    public final ConnectivityAdapter O() {
        RecyclerView.Adapter adapter = P().d.g.getAdapter();
        if (adapter instanceof ConnectivityAdapter) {
            return (ConnectivityAdapter) adapter;
        }
        return null;
    }

    public final FragmentConnectivityBinding P() {
        return (FragmentConnectivityBinding) this.F.c(this, R[0]);
    }

    public final ConnectivityRouter Q() {
        ConnectivityRouter connectivityRouter = this.H;
        if (connectivityRouter != null) {
            return connectivityRouter;
        }
        Intrinsics.h("connectivityRouter");
        throw null;
    }

    public final ConnectivityViewModel R() {
        return (ConnectivityViewModel) this.G.getF71699b();
    }

    public final void S(Profile profile, String str) {
        ConnectivityPairedLayoutBinding connectivityPairedLayoutBinding = P().d;
        final RecyclerView recyclerView = connectivityPairedLayoutBinding.g;
        if (str == null) {
            str = "";
        }
        recyclerView.setAdapter(new ConnectivityAdapter(this, profile, str, null, 8, null));
        final Context context = recyclerView.getContext();
        recyclerView.setLayoutManager(new LinearLayoutManager(context) { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$initPairedObjectsLayout$1$1$1
            @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
            public final boolean h(RecyclerView.LayoutParams layoutParams) {
                layoutParams.getClass();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = (recyclerView.getResources().getDisplayMetrics().widthPixels - ResourcesExtKt.a(40)) / 2;
                return true;
            }
        });
        Button button = connectivityPairedLayoutBinding.f51216c;
        int i2 = 1;
        dp dpVar = new dp(this, i2);
        int i3 = 2;
        if ((2 & 4) != 0) {
            dpVar = null;
        }
        int i4 = 0;
        if (!((Boolean) this.M.getF71699b()).booleanValue() && !((Boolean) this.L.getF71699b()).booleanValue() && !((Boolean) this.K.getF71699b()).booleanValue()) {
            i2 = 0;
        }
        if (i2 == 0) {
            i4 = 8;
        } else if (dpVar != null) {
            dpVar.invoke(button);
        }
        button.setVisibility(i4);
        ViewExtKt.d(connectivityPairedLayoutBinding.f51217e, new dp(this, i3));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void b(ArrayList arrayList) {
        this.P = false;
        if (!this.O) {
            R().f56078j.a(ConnectivityTrackingUiModelKt.a(ConnectivityTrackingUiModel.ConnectivityScreen.f56257a));
            this.O = true;
        }
        ConnectivityAdapter connectivityAdapterO = O();
        if (connectivityAdapterO != null) {
            synchronized (connectivityAdapterO) {
                connectivityAdapterO.f56044f.clear();
                connectivityAdapterO.f56044f.addAll(arrayList);
                connectivityAdapterO.notifyDataSetChanged();
            }
        }
        FragmentConnectivityBinding fragmentConnectivityBindingP = P();
        fragmentConnectivityBindingP.f51224c.f51209b.setVisibility(8);
        fragmentConnectivityBindingP.f51226f.setVisibility(8);
        P().d.g.setVisibility(0);
        P().d.f51218f.setVisibility(8);
        fragmentConnectivityBindingP.d.f51215b.setVisibility(0);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void d(Throwable th) {
        th.getClass();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new fp(activity, 0));
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView
    public final void k(ArrayList arrayList) {
        LinearLayout linearLayout = P().d.d;
        linearLayout.removeAllViews();
        if (((Boolean) this.N.getF71699b()).booleanValue()) {
            Context contextRequireContext = requireContext();
            contextRequireContext.getClass();
            DiscoverConnectivityView discoverConnectivityView = new DiscoverConnectivityView(contextRequireContext);
            String string = getString(R.string.horizon_speaker_short_title);
            string.getClass();
            String string2 = getString(R.string.perfume_discover);
            string2.getClass();
            DiscoverConnectivityView.b(discoverConnectivityView, 2131231376, string, string2, null, 24);
            discoverConnectivityView.setOnDiscoverButtonClickListener(new ep(this, 8));
            linearLayout.addView(discoverConnectivityView);
        }
        if (((Boolean) this.M.getF71699b()).booleanValue()) {
            Context contextRequireContext2 = requireContext();
            contextRequireContext2.getClass();
            DiscoverConnectivityView discoverConnectivityView2 = new DiscoverConnectivityView(contextRequireContext2);
            String string3 = getString(R.string.trunk_speaker);
            string3.getClass();
            String string4 = getString(R.string.connectivity_discover_trunk_speaker);
            string4.getClass();
            DiscoverConnectivityView.b(discoverConnectivityView2, 2131231377, string3, string4, null, 24);
            discoverConnectivityView2.setOnDiscoverButtonClickListener(new ep(this, 9));
            linearLayout.addView(discoverConnectivityView2);
        }
        Context contextRequireContext3 = requireContext();
        contextRequireContext3.getClass();
        DiscoverConnectivityView discoverConnectivityView3 = new DiscoverConnectivityView(contextRequireContext3);
        String string5 = getString(R.string.connectivity_thv3_long_title);
        string5.getClass();
        String string6 = getString(R.string.connected_watch_subtitle);
        string6.getClass();
        DiscoverConnectivityView.b(discoverConnectivityView3, 2131231380, string5, string6, null, 24);
        discoverConnectivityView3.setOnDiscoverButtonClickListener(new ep(this, 6));
        linearLayout.addView(discoverConnectivityView3);
        Context contextRequireContext4 = requireContext();
        contextRequireContext4.getClass();
        DiscoverConnectivityView discoverConnectivityView4 = new DiscoverConnectivityView(contextRequireContext4);
        String string7 = getString(R.string.connectivity_my_earphones_title);
        string7.getClass();
        String string8 = getString(R.string.connectivity_discover_earphones);
        string8.getClass();
        DiscoverConnectivityView.b(discoverConnectivityView4, 2131231354, string7, string8, null, 24);
        discoverConnectivityView4.setOnDiscoverButtonClickListener(new ep(this, 10));
        linearLayout.addView(discoverConnectivityView4);
        if (((Boolean) this.L.getF71699b()).booleanValue()) {
            Context contextRequireContext5 = requireContext();
            contextRequireContext5.getClass();
            DiscoverConnectivityView discoverConnectivityView5 = new DiscoverConnectivityView(contextRequireContext5);
            String string9 = getString(R.string.light_up_trainers);
            string9.getClass();
            String string10 = getString(R.string.connectivity_discover_trainers);
            string10.getClass();
            DiscoverConnectivityView.b(discoverConnectivityView5, 2131231373, string9, string10, null, 24);
            discoverConnectivityView5.setOnDiscoverButtonClickListener(new ep(this, 7));
            linearLayout.addView(discoverConnectivityView5);
        }
        if (((Boolean) this.K.getF71699b()).booleanValue()) {
            Context contextRequireContext6 = requireContext();
            contextRequireContext6.getClass();
            DiscoverConnectivityView discoverConnectivityView6 = new DiscoverConnectivityView(contextRequireContext6);
            String string11 = getString(R.string.light_up_keepall);
            string11.getClass();
            String string12 = getString(R.string.connectivity_discover_keepall);
            string12.getClass();
            DiscoverConnectivityView.b(discoverConnectivityView6, 2131231370, string11, string12, null, 24);
            discoverConnectivityView6.setOnDiscoverButtonClickListener(new ep(this, 5));
            linearLayout.addView(discoverConnectivityView6);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter.Listener
    public final void l(final ConnectedObjectUiModel connectedObjectUiModel) {
        FragmentManager supportFragmentManager;
        connectedObjectUiModel.getClass();
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        GenericBottomSheet.Companion companion = GenericBottomSheet.R;
        String string = getString(R.string.connectivity_remove_connected_object_popup_message);
        string.getClass();
        GenericBottomSheet genericBottomSheetB = GenericBottomSheet.Companion.b(companion, string, getString(R.string.cancel), getString(R.string.button_yes), 16);
        genericBottomSheetB.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$removeConnectedObject$1$1
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
            public final void a() {
                ConnectedObjectUiModel connectedObjectUiModel2 = connectedObjectUiModel;
                if (connectedObjectUiModel2 instanceof LightUpProductUiModel) {
                    ConnectivityViewModel connectivityViewModelR = this.R();
                    LVViewModel.Bc(connectivityViewModelR, new ConnectivityViewModel$removeLightUpProduct$1(connectivityViewModelR, null), new ConnectivityViewModel$removeLightUpProduct$2(connectivityViewModelR, (LightUpProductUiModel) connectedObjectUiModel2, null), 2);
                }
            }
        };
        genericBottomSheetB.show(supportFragmentManager, GenericBottomSheet.S);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        ConnectivityViewModel connectivityViewModelR = R();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        connectivityViewModelR.Ac(viewLifecycleOwner);
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.Hilt_ConnectivityFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ConnectivityViewModel connectivityViewModelR = R();
        LVViewModel.Bc(connectivityViewModelR, null, new ConnectivityViewModel$onScreenResumed$1(connectivityViewModelR, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.home.Hilt_ConnectivityFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        PairWatchV2Ui pairWatchV2Ui;
        Parcelable parcelable;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        ConnectivityViewModel connectivityViewModelR = R();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        connectivityViewModelR.yc(viewLifecycleOwner, this);
        FragmentConnectivityBinding fragmentConnectivityBindingP = P();
        LinearLayout linearLayout = P().f51223b;
        linearLayout.getClass();
        ViewExtKt.b(2, linearLayout);
        ViewExtKt.b(1, P().g.f51463b);
        ToolbarTitleBinding toolbarTitleBinding = fragmentConnectivityBindingP.g.f51464c;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
        appCompatTextView.setText(getString(R.string.homepage_connectedobjects_title));
        appCompatTextView.setAccessibilityHeading(true);
        R().l.observe(getViewLifecycleOwner(), new ConnectivityFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass2(1, this, ConnectivityFragment.class, "handleProfile", "handleProfile(Lcom/vuitton/foundation/model/domain/model/profile/Profile;)V", 0)));
        ConnectivityNotPairedLayoutBinding connectivityNotPairedLayoutBinding = P().f51224c;
        int i2 = 0;
        ViewExtKt.d(connectivityNotPairedLayoutBinding.f51210c, new dp(this, i2));
        ViewExtKt.d(connectivityNotPairedLayoutBinding.f51214i, new dp(this, 9));
        ViewExtKt.d(connectivityNotPairedLayoutBinding.d, new dp(this, 10));
        int i3 = 11;
        ViewExtKt.e(connectivityNotPairedLayoutBinding.f51211e, new ep(this, i3), new dp(this, i3), 2);
        int i4 = 12;
        ViewExtKt.e(connectivityNotPairedLayoutBinding.f51213h, new ep(this, i4), new dp(this, i4), 2);
        int i5 = 13;
        ViewExtKt.e(connectivityNotPairedLayoutBinding.g, new ep(this, i5), new dp(this, i5), 2);
        ViewExtKt.e(connectivityNotPairedLayoutBinding.f51212f, new ep(this, i2), new dp(this, 4), 2);
        ConnectivityViewModel connectivityViewModelR2 = R();
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(connectivityViewModelR2);
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(closeableCoroutineScopeA, DefaultIoScheduler.f75161b, null, new ConnectivityViewModel$getProfile$1(connectivityViewModelR2, null), 2);
        if (getArguments() != null) {
            Bundle arguments = getArguments();
            String string = arguments != null ? arguments.getString("DEEPLINK") : null;
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                if (Build.VERSION.SDK_INT >= 33) {
                    parcelable = (Parcelable) arguments2.getParcelable("PAIRING_V2", PairWatchV2Ui.class);
                } else {
                    Parcelable parcelable2 = arguments2.getParcelable("PAIRING_V2");
                    if (!(parcelable2 instanceof PairWatchV2Ui)) {
                        parcelable2 = null;
                    }
                    parcelable = (PairWatchV2Ui) parcelable2;
                }
                pairWatchV2Ui = (PairWatchV2Ui) parcelable;
            } else {
                pairWatchV2Ui = null;
            }
            if (pairWatchV2Ui == null) {
                pairWatchV2Ui = null;
            }
            if (pairWatchV2Ui != null) {
                P().f51225e.setVisibility(0);
                P().f51225e.sendAccessibilityEvent(32768);
                ConnectivityViewModel connectivityViewModelR3 = R();
                LVViewModel.Bc(connectivityViewModelR3, new ConnectivityViewModel$pairWatchV2$1(connectivityViewModelR3, null), new ConnectivityViewModel$pairWatchV2$2(connectivityViewModelR3, pairWatchV2Ui, null), 2);
                return;
            }
            if (string == null || StringsKt.w(string)) {
                return;
            }
            if (string.equals(DeepLink.WATCHFACES.getHost())) {
                Q();
                FragmentActivity activity = getActivity();
                SectionType sectionType = SectionType.WATCH;
                sectionType.getClass();
                if (activity != null) {
                    ConnectivitySectionDetailActivity.p.getClass();
                    Intent intentPutExtra = new Intent(activity, (Class<?>) ConnectivitySectionDetailActivity.class).putExtra("SECTION_TYPE", sectionType).putExtra("SHOULD_SHOW_WATCH_FACES_PAGE", true);
                    intentPutExtra.getClass();
                    activity.startActivity(intentPutExtra);
                    return;
                }
                return;
            }
            if (string.equals(DeepLink.EARPHONES.getHost())) {
                Q();
                ConnectivityRouter.a(getActivity(), SectionType.EARPHONE);
                return;
            }
            if (string.equals(DeepLink.WATCH.getHost())) {
                Q();
                ConnectivityRouter.a(getActivity(), SectionType.WATCH);
            } else if (string.equals(DeepLink.WATCH_V3.getHost())) {
                Q();
                ConnectivityRouter.a(getActivity(), SectionType.WATCH_V3);
            } else if (string.equals(DeepLink.TRUNK.getHost())) {
                Q();
                ConnectivityRouter.a(getActivity(), SectionType.TRUNK_SPEAKER);
            }
        }
    }
}
