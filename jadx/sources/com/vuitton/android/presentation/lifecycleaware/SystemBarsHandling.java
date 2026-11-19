package com.vuitton.android.presentation.lifecycleaware;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import defpackage.md;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/fragment/app/Fragment;", "fragment", "Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;", "systemBarsConfig", "<init>", "(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V", "SystemBarsConfig", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SystemBarsHandling implements DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Fragment f51593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f51594c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling$onCreate$1", f = "SystemBarsHandling.kt", l = {EACTags.SEX}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f51598b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LifecycleOwner f51599c;
        public final /* synthetic */ SystemBarsHandling d;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling$onCreate$1$1", f = "SystemBarsHandling.kt", l = {103}, m = "invokeSuspend", v = 2)
        final class C02601 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f51600b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SystemBarsHandling f51601c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling$onCreate$1$1$1", f = "SystemBarsHandling.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C02611 extends SuspendLambda implements Function2<SystemBarsConfig, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ SystemBarsHandling f51602b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02611(SystemBarsHandling systemBarsHandling, Continuation continuation) {
                    super(2, continuation);
                    this.f51602b = systemBarsHandling;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C02611(this.f51602b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02611) create((SystemBarsConfig) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    SystemBarsHandling.a(this.f51602b);
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02601(SystemBarsHandling systemBarsHandling, Continuation continuation) {
                super(2, continuation);
                this.f51601c = systemBarsHandling;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02601(this.f51601c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02601) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f51600b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    SystemBarsHandling systemBarsHandling = this.f51601c;
                    MutableStateFlow mutableStateFlow = systemBarsHandling.f51594c;
                    C02611 c02611 = new C02611(systemBarsHandling, null);
                    mutableStateFlow.getClass();
                    this.f51600b = 1;
                    if (FlowKt.g(mutableStateFlow, c02611, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                md.k("SharedFlow never completes, this call should never return.");
                return null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LifecycleOwner lifecycleOwner, SystemBarsHandling systemBarsHandling, Continuation continuation) {
            super(2, continuation);
            this.f51599c = lifecycleOwner;
            this.d = systemBarsHandling;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f51599c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f51598b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Lifecycle.State state = Lifecycle.State.CREATED;
                C02601 c02601 = new C02601(this.d, null);
                this.f51598b = 1;
                if (RepeatOnLifecycleKt.b(this.f51599c, state, c02601, this) == coroutineSingletons) {
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

    public SystemBarsHandling(Fragment fragment, SystemBarsConfig systemBarsConfig) {
        fragment.getClass();
        systemBarsConfig.getClass();
        this.f51593b = fragment;
        this.f51594c = StateFlowKt.a(systemBarsConfig);
        fragment.getD().a(this);
    }

    public static final void a(SystemBarsHandling systemBarsHandling) {
        FragmentActivity activity = systemBarsHandling.f51593b.getActivity();
        if (activity != null) {
            SystemBarsConfig systemBarsConfig = (SystemBarsConfig) systemBarsHandling.f51594c.getValue();
            EdgeToEdgeKt.d(activity, systemBarsConfig.f51596b, systemBarsConfig.d);
            boolean z = systemBarsConfig.f51595a;
            boolean z2 = systemBarsConfig.f51597c;
            EdgeToEdgeKt.c(activity, z, 1);
            EdgeToEdgeKt.c(activity, z2, 2);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        BuildersKt.c(LifecycleOwnerKt.a(lifecycleOwner), null, null, new AnonymousClass1(lifecycleOwner, this, null), 3);
        new BackStackVisibilityListener(this.f51593b, new BackStackVisibilityListener.OnBackStackVisibilityListener() { // from class: com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling.onCreate.2
            @Override // com.vuitton.android.presentation.lifecycleaware.BackStackVisibilityListener.OnBackStackVisibilityListener
            public final void a() {
                SystemBarsHandling.a(SystemBarsHandling.this);
            }
        });
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.f51593b.getD().d(this);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;", "", "", "isStatusBarVisible", "Lcom/vuitton/android/core/type/SystemIcons;", "statusBarIcons", "isNavigationBarVisible", "navigationBarIcons", "<init>", "(ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SystemBarsConfig {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f51595a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f51596b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f51597c;
        public final boolean d;

        /* JADX WARN: Illegal instructions before constructor call */
        public SystemBarsConfig(boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            z = (i2 & 1) != 0 ? true : z;
            if ((i2 & 2) != 0) {
                SystemIcons.f43533b.getClass();
                z2 = SystemIcons.f43534c;
            }
            z3 = (i2 & 4) != 0 ? true : z3;
            if ((i2 & 8) != 0) {
                SystemIcons.f43533b.getClass();
                z4 = false;
            }
            this(z, z2, z3, z4, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SystemBarsConfig)) {
                return false;
            }
            SystemBarsConfig systemBarsConfig = (SystemBarsConfig) obj;
            if (this.f51595a != systemBarsConfig.f51595a) {
                return false;
            }
            boolean z = systemBarsConfig.f51596b;
            SystemIcons.Companion companion = SystemIcons.f43533b;
            return this.f51596b == z && this.f51597c == systemBarsConfig.f51597c && this.d == systemBarsConfig.d;
        }

        public final int hashCode() {
            int iHashCode = Boolean.hashCode(this.f51595a) * 31;
            SystemIcons.Companion companion = SystemIcons.f43533b;
            return Boolean.hashCode(this.d) + o60.b(o60.b(iHashCode, 31, this.f51596b), 31, this.f51597c);
        }

        public final String toString() {
            return "SystemBarsConfig(isStatusBarVisible=" + this.f51595a + ", statusBarIcons=" + SystemIcons.a(this.f51596b) + ", isNavigationBarVisible=" + this.f51597c + ", navigationBarIcons=" + SystemIcons.a(this.d) + ")";
        }

        public SystemBarsConfig(boolean z, boolean z2, boolean z3, boolean z4, DefaultConstructorMarker defaultConstructorMarker) {
            this.f51595a = z;
            this.f51596b = z2;
            this.f51597c = z3;
            this.d = z4;
        }
    }
}
