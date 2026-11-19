package com.vuitton.android.presentation.screen.repairs.list;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.md;
import defpackage.ms0;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RepairListBffFragment extends Hilt_RepairListBffFragment implements ChatHostActivity {
    public static final Companion L = new Companion(null);
    public static final String M = "RepairListBffFragment";
    public final ViewModelLazy F;
    public RepairRouter G;
    public LVEventSender H;
    public ContributionLinkNavigator I;
    public ContactUsNavigator J;
    public ChatAttachable K;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1", f = "RepairListBffFragment.kt", l = {EACTags.APPLICATION_IMAGE}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63872b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1", f = "RepairListBffFragment.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
        final class C03131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63874b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RepairListBffFragment f63875c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1$1", f = "RepairListBffFragment.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C03141 extends SuspendLambda implements Function2<AppEvent.RefreshRepairsEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ RepairListBffFragment f63876b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C03141(RepairListBffFragment repairListBffFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f63876b = repairListBffFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C03141(this.f63876b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C03141) create((AppEvent.RefreshRepairsEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    Companion companion = RepairListBffFragment.L;
                    this.f63876b.P().k0(false);
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03131(RepairListBffFragment repairListBffFragment, Continuation continuation) {
                super(2, continuation);
                this.f63875c = repairListBffFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C03131(this.f63875c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03131) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63874b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    RepairListBffFragment repairListBffFragment = this.f63875c;
                    LVEventSender lVEventSender = repairListBffFragment.H;
                    if (lVEventSender == null) {
                        Intrinsics.h("eventSender");
                        throw null;
                    }
                    final SharedFlow sharedFlow = lVEventSender.f43512c;
                    Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f63878b;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "RepairListBffFragment.kt", l = {217}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f63879b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f63880c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f63879b = obj;
                                    this.f63880c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.f63878b = flowCollector;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f63880c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f63880c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f63879b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f63880c;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    if (obj instanceof AppEvent.RefreshRepairsEvent) {
                                        anonymousClass1.f63880c = 1;
                                        if (this.f63878b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    C03141 c03141 = new C03141(repairListBffFragment, null);
                    this.f63874b = 1;
                    if (FlowKt.g(flow, c03141, this) == coroutineSingletons) {
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
            return RepairListBffFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63872b;
            if (i2 == 0) {
                ResultKt.b(obj);
                RepairListBffFragment repairListBffFragment = RepairListBffFragment.this;
                Lifecycle f13561b = repairListBffFragment.getF13561b();
                f13561b.getClass();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C03131 c03131 = new C03131(repairListBffFragment, null);
                this.f63872b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, c03131, this) == coroutineSingletons) {
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

    public RepairListBffFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$special$$inlined$viewModels$default$2
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
        this.F = new ViewModelLazy(Reflection.f71922a.b(RepairBffViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.list.RepairListBffFragment$special$$inlined$viewModels$default$4
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
    }

    public final RepairRouter O() {
        RepairRouter repairRouter = this.G;
        if (repairRouter != null) {
            return repairRouter;
        }
        Intrinsics.h("repairRouter");
        throw null;
    }

    public final RepairBffViewModel P() {
        return (RepairBffViewModel) this.F.getF71699b();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        SystemIcons.f43533b.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, SystemIcons.f43534c, 7, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setContent(new ComposableLambdaImpl(-589610831, true, new ms0(this, 0)));
        return composeView;
    }
}
