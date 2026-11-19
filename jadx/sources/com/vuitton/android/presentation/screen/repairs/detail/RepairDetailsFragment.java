package com.vuitton.android.presentation.screen.repairs.detail;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
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
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.RepairRouter;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ks0;
import defpackage.ln0;
import defpackage.md;
import defpackage.xn0;
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
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Companion", "", "topPadding", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class RepairDetailsFragment extends Hilt_RepairDetailsFragment {
    public static final Companion P = new Companion(null);
    public static final String Q = "RepairDetailsFragment";
    public final ViewModelLazy F;
    public final ViewModelLazy G;
    public final ViewModelLazy H;
    public RepairRouter I;
    public LVEventSender J;
    public ContactUsNavigator K;
    public ChatAttachable L;
    public final Lazy M;
    public final Lazy N;
    public final ActivityResultLauncher O;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;", "", "", "KEY_CARE_SERVICE", "Ljava/lang/String;", "KEY_CARE_SERVICE_ID", "KEY_SELECTED_ADDRESS_REQUEST", "KEY_SELECTED_ADDRESS_BUNDLE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1", f = "RepairDetailsFragment.kt", l = {147}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63727b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1", f = "RepairDetailsFragment.kt", l = {150}, m = "invokeSuspend", v = 2)
        final class C03081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63729b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RepairDetailsFragment f63730c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$RefreshRepairAddressEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1$1", f = "RepairDetailsFragment.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C03091 extends SuspendLambda implements Function2<AppEvent.RefreshRepairAddressEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ RepairDetailsFragment f63731b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C03091(RepairDetailsFragment repairDetailsFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f63731b = repairDetailsFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C03091(this.f63731b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C03091) create((AppEvent.RefreshRepairAddressEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    Companion companion = RepairDetailsFragment.P;
                    this.f63731b.S().b6(null);
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03081(RepairDetailsFragment repairDetailsFragment, Continuation continuation) {
                super(2, continuation);
                this.f63730c = repairDetailsFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C03081(this.f63730c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03081) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63729b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    RepairDetailsFragment repairDetailsFragment = this.f63730c;
                    LVEventSender lVEventSender = repairDetailsFragment.J;
                    if (lVEventSender == null) {
                        Intrinsics.h("eventSender");
                        throw null;
                    }
                    final SharedFlow sharedFlow = lVEventSender.f43512c;
                    Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f63733b;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$1$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "RepairDetailsFragment.kt", l = {217}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f63734b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f63735c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f63734b = obj;
                                    this.f63735c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.f63733b = flowCollector;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f63735c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f63735c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f63734b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f63735c;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    if (obj instanceof AppEvent.RefreshRepairAddressEvent) {
                                        anonymousClass1.f63735c = 1;
                                        if (this.f63733b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    C03091 c03091 = new C03091(repairDetailsFragment, null);
                    this.f63729b = 1;
                    if (FlowKt.g(flow, c03091, this) == coroutineSingletons) {
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
            return RepairDetailsFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63727b;
            if (i2 == 0) {
                ResultKt.b(obj);
                RepairDetailsFragment repairDetailsFragment = RepairDetailsFragment.this;
                Lifecycle f13561b = repairDetailsFragment.getF13561b();
                f13561b.getClass();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C03081 c03081 = new C03081(repairDetailsFragment, null);
                this.f63727b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, c03081, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2", f = "RepairDetailsFragment.kt", l = {156}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63736b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1", f = "RepairDetailsFragment.kt", l = {159}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f63738b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ RepairDetailsFragment f63739c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1$1", f = "RepairDetailsFragment.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C03101 extends SuspendLambda implements Function2<AppEvent.RefreshRepairsEvent, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ RepairDetailsFragment f63740b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C03101(RepairDetailsFragment repairDetailsFragment, Continuation continuation) {
                    super(2, continuation);
                    this.f63740b = repairDetailsFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C03101(this.f63740b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C03101) create((AppEvent.RefreshRepairsEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    Companion companion = RepairDetailsFragment.P;
                    RepairDetailsFragment repairDetailsFragment = this.f63740b;
                    CareServiceUiModel careServiceUiModel = (CareServiceUiModel) repairDetailsFragment.M.getF71699b();
                    if (careServiceUiModel != null) {
                        repairDetailsFragment.R().Z0(careServiceUiModel.f63994b);
                    }
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(RepairDetailsFragment repairDetailsFragment, Continuation continuation) {
                super(2, continuation);
                this.f63739c = repairDetailsFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass1(this.f63739c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f63738b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    RepairDetailsFragment repairDetailsFragment = this.f63739c;
                    LVEventSender lVEventSender = repairDetailsFragment.J;
                    if (lVEventSender == null) {
                        Intrinsics.h("eventSender");
                        throw null;
                    }
                    final SharedFlow sharedFlow = lVEventSender.f43512c;
                    Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1$invokeSuspend$$inlined$filterIsInstance$1

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        public final class AnonymousClass2<T> implements FlowCollector {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public final /* synthetic */ FlowCollector f63742b;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$onCreate$2$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "RepairDetailsFragment.kt", l = {217}, m = "emit", v = 2)
                            public final class AnonymousClass1 extends ContinuationImpl {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ Object f63743b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f63744c;

                                public AnonymousClass1(Continuation continuation) {
                                    super(continuation);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    this.f63743b = obj;
                                    this.f63744c |= Integer.MIN_VALUE;
                                    return AnonymousClass2.this.emit(null, this);
                                }
                            }

                            public AnonymousClass2(FlowCollector flowCollector) {
                                this.f63742b = flowCollector;
                            }

                            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1;
                                if (continuation instanceof AnonymousClass1) {
                                    anonymousClass1 = (AnonymousClass1) continuation;
                                    int i2 = anonymousClass1.f63744c;
                                    if ((i2 & Integer.MIN_VALUE) != 0) {
                                        anonymousClass1.f63744c = i2 - Integer.MIN_VALUE;
                                    } else {
                                        anonymousClass1 = new AnonymousClass1(continuation);
                                    }
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                                Object obj2 = anonymousClass1.f63743b;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i3 = anonymousClass1.f63744c;
                                if (i3 == 0) {
                                    ResultKt.b(obj2);
                                    if (obj instanceof AppEvent.RefreshRepairsEvent) {
                                        anonymousClass1.f63744c = 1;
                                        if (this.f63742b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
                    C03101 c03101 = new C03101(repairDetailsFragment, null);
                    this.f63738b = 1;
                    if (FlowKt.g(flow, c03101, this) == coroutineSingletons) {
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

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return RepairDetailsFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63736b;
            if (i2 == 0) {
                ResultKt.b(obj);
                RepairDetailsFragment repairDetailsFragment = RepairDetailsFragment.this;
                Lifecycle f13561b = repairDetailsFragment.getF13561b();
                f13561b.getClass();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(repairDetailsFragment, null);
                this.f63736b = 1;
                if (RepeatOnLifecycleKt.a(f13561b, state, anonymousClass1, this) == coroutineSingletons) {
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

    public RepairDetailsFragment() {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        final Function0 function0 = null;
        this.F = new ViewModelLazy(reflectionFactory.b(RepairViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.requireActivity().getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        final Function0<Fragment> function1 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function1.mo47invoke();
            }
        });
        this.G = new ViewModelLazy(reflectionFactory.b(DistantRepairAssessmentViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$5
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
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function0;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$6
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$7
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function2.mo47invoke();
            }
        });
        this.H = new ViewModelLazy(reflectionFactory.b(DatePickerViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$8
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA2.getF71699b()).getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA2.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? this.getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$special$$inlined$viewModels$default$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function0;
                if (function3 != null && (creationExtras = (CreationExtras) function3.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA2.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.M = LazyKt.b(new xn0(this, 14));
        this.N = LazyKt.b(new Function0<CareServiceIdUiModel>() { // from class: com.vuitton.android.presentation.screen.repairs.detail.RepairDetailsFragment$careServiceId$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                Parcelable parcelable;
                Bundle bundleRequireArguments = this.f63726b.requireArguments();
                bundleRequireArguments.getClass();
                if (Build.VERSION.SDK_INT >= 33) {
                    parcelable = (Parcelable) bundleRequireArguments.getParcelable("CARE_SERVICE_ID", CareServiceIdUiModel.class);
                } else {
                    Parcelable parcelable2 = bundleRequireArguments.getParcelable("CARE_SERVICE_ID");
                    if (!(parcelable2 instanceof CareServiceIdUiModel)) {
                        parcelable2 = null;
                    }
                    parcelable = (CareServiceIdUiModel) parcelable2;
                }
                CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) parcelable;
                String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
                if (str != null) {
                    return new CareServiceIdUiModel(str);
                }
                return null;
            }
        });
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ln0(this, 8));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.O = activityResultLauncherRegisterForActivityResult;
    }

    public static Unit O(RepairDetailsFragment repairDetailsFragment, CareServiceDetailUiModel careServiceDetailUiModel, String str, Bundle bundle) {
        Parcelable parcelable;
        str.getClass();
        bundle.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundle.getParcelable("SELECTED_ADDRESS_BUNDLE", AddressUiModel.class);
        } else {
            Parcelable parcelable2 = bundle.getParcelable("SELECTED_ADDRESS_BUNDLE");
            if (!(parcelable2 instanceof AddressUiModel)) {
                parcelable2 = null;
            }
            parcelable = (AddressUiModel) parcelable2;
        }
        AddressUiModel addressUiModel = (AddressUiModel) parcelable;
        if (addressUiModel != null) {
            repairDetailsFragment.S().T8(addressUiModel, careServiceDetailUiModel);
        }
        return Unit.f71739a;
    }

    public static CareServiceUiModel P(RepairDetailsFragment repairDetailsFragment) {
        Parcelable parcelable;
        Bundle bundleRequireArguments = repairDetailsFragment.requireArguments();
        bundleRequireArguments.getClass();
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) bundleRequireArguments.getParcelable("CARE_SERVICE", CareServiceUiModel.class);
        } else {
            Parcelable parcelable2 = bundleRequireArguments.getParcelable("CARE_SERVICE");
            if (!(parcelable2 instanceof CareServiceUiModel)) {
                parcelable2 = null;
            }
            parcelable = (CareServiceUiModel) parcelable2;
        }
        if (parcelable instanceof CareServiceUiModel) {
            return (CareServiceUiModel) parcelable;
        }
        return null;
    }

    public final RepairRouter Q() {
        RepairRouter repairRouter = this.I;
        if (repairRouter != null) {
            return repairRouter;
        }
        Intrinsics.h("repairRouter");
        throw null;
    }

    public final RepairViewModel R() {
        return (RepairViewModel) this.F.getF71699b();
    }

    public final DistantRepairAssessmentViewModel S() {
        return (DistantRepairAssessmentViewModel) this.G.getF71699b();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass2(null), 3);
        S().b6(null);
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
        composeView.setContent(new ComposableLambdaImpl(-1323171928, true, new ks0(this, 0)));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        Context context = getContext();
        if (context != null) {
            View view = getView();
            ContextExtKt.d(context, view != null ? view.getWindowToken() : null);
        }
        super.onDestroyView();
    }
}
