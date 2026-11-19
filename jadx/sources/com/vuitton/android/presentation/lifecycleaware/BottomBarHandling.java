package com.vuitton.android.presentation.lifecycleaware;

import androidx.core.view.KeyEventDispatcher$Component;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.vuitton.android.presentation.screen.navigationbar.BottomBarListener;
import defpackage.md;
import defpackage.o60;
import defpackage.tr;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\b\tB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/fragment/app/Fragment;", "fragment", "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;", "bottomBarConfig", "<init>", "(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V", "BottomBarConfig", "ContentArrangement", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BottomBarHandling implements DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Fragment f51575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BottomBarListener f51576c;
    public final MutableStateFlow d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;", "", "ABOVE_BOTTOM_BAR", "MAX_SIZE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ContentArrangement {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ContentArrangement[] $VALUES;
        public static final ContentArrangement ABOVE_BOTTOM_BAR;
        public static final ContentArrangement MAX_SIZE;

        static {
            ContentArrangement contentArrangement = new ContentArrangement("ABOVE_BOTTOM_BAR", 0);
            ABOVE_BOTTOM_BAR = contentArrangement;
            ContentArrangement contentArrangement2 = new ContentArrangement("MAX_SIZE", 1);
            MAX_SIZE = contentArrangement2;
            ContentArrangement[] contentArrangementArr = {contentArrangement, contentArrangement2};
            $VALUES = contentArrangementArr;
            $ENTRIES = EnumEntriesKt.a(contentArrangementArr);
        }

        public static ContentArrangement valueOf(String str) {
            return (ContentArrangement) Enum.valueOf(ContentArrangement.class, str);
        }

        public static ContentArrangement[] values() {
            return (ContentArrangement[]) $VALUES.clone();
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.lifecycleaware.BottomBarHandling$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.lifecycleaware.BottomBarHandling$onCreate$1", f = "BottomBarHandling.kt", l = {EACTags.APPLICATION_IMAGE}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f51584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LifecycleOwner f51585c;
        public final /* synthetic */ BottomBarHandling d;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.lifecycleaware.BottomBarHandling$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.lifecycleaware.BottomBarHandling$onCreate$1$1", f = "BottomBarHandling.kt", l = {200}, m = "invokeSuspend", v = 2)
        final class C02581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f51586b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ BottomBarHandling f51587c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.lifecycleaware.BottomBarHandling$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.lifecycleaware.BottomBarHandling$onCreate$1$1$1", f = "BottomBarHandling.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C02591 extends SuspendLambda implements Function2<BottomBarConfig, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ BottomBarHandling f51588b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02591(BottomBarHandling bottomBarHandling, Continuation continuation) {
                    super(2, continuation);
                    this.f51588b = bottomBarHandling;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C02591(this.f51588b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02591) create((BottomBarConfig) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    BottomBarHandling.a(this.f51588b);
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02581(BottomBarHandling bottomBarHandling, Continuation continuation) {
                super(2, continuation);
                this.f51587c = bottomBarHandling;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02581(this.f51587c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02581) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f51586b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    BottomBarHandling bottomBarHandling = this.f51587c;
                    MutableStateFlow mutableStateFlow = bottomBarHandling.d;
                    C02591 c02591 = new C02591(bottomBarHandling, null);
                    mutableStateFlow.getClass();
                    this.f51586b = 1;
                    if (FlowKt.g(mutableStateFlow, c02591, this) == coroutineSingletons) {
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
        public AnonymousClass1(LifecycleOwner lifecycleOwner, BottomBarHandling bottomBarHandling, Continuation continuation) {
            super(2, continuation);
            this.f51585c = lifecycleOwner;
            this.d = bottomBarHandling;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f51585c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f51584b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Lifecycle.State state = Lifecycle.State.CREATED;
                C02581 c02581 = new C02581(this.d, null);
                this.f51584b = 1;
                if (RepeatOnLifecycleKt.b(this.f51585c, state, c02581, this) == coroutineSingletons) {
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

    public BottomBarHandling(Fragment fragment, BottomBarConfig bottomBarConfig) {
        fragment.getClass();
        bottomBarConfig.getClass();
        this.f51575b = fragment;
        this.d = StateFlowKt.a(bottomBarConfig);
        fragment.getD().a(this);
    }

    public static final void a(BottomBarHandling bottomBarHandling) {
        if (bottomBarHandling.f51576c == null) {
            md.k("Do not call `dispatchBottomBarConfig` for this activity");
            return;
        }
        boolean z = ((BottomBarConfig) bottomBarHandling.d.getValue()).f51580b;
        BottomBarListener bottomBarListener = bottomBarHandling.f51576c;
        if (z) {
            if (bottomBarListener != null) {
                bottomBarListener.b();
                return;
            } else {
                md.n("Required value was null.");
                return;
            }
        }
        if (bottomBarListener != null) {
            bottomBarListener.a();
        } else {
            md.n("Required value was null.");
        }
    }

    public final void b(boolean z) {
        while (true) {
            MutableStateFlow mutableStateFlow = this.d;
            Object value = mutableStateFlow.getValue();
            BottomBarConfig bottomBarConfig = (BottomBarConfig) value;
            ContentArrangement contentArrangement = bottomBarConfig.d;
            boolean z2 = bottomBarConfig.f51582e;
            boolean z3 = bottomBarConfig.f51583f;
            int i2 = bottomBarConfig.g;
            contentArrangement.getClass();
            boolean z4 = z;
            if (mutableStateFlow.i(value, new BottomBarConfig(z4, 0, contentArrangement, z2, z3, i2))) {
                return;
            } else {
                z = z4;
            }
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        Fragment fragment = this.f51575b;
        KeyEventDispatcher$Component activity = fragment.getActivity();
        BottomBarListener bottomBarListener = activity instanceof BottomBarListener ? (BottomBarListener) activity : null;
        this.f51576c = bottomBarListener;
        if (bottomBarListener == null) {
            return;
        }
        BuildersKt.c(LifecycleOwnerKt.a(lifecycleOwner), null, null, new AnonymousClass1(lifecycleOwner, this, null), 3);
        new BackStackVisibilityListener(fragment, new BackStackVisibilityListener.OnBackStackVisibilityListener() { // from class: com.vuitton.android.presentation.lifecycleaware.BottomBarHandling.onCreate.2
            @Override // com.vuitton.android.presentation.lifecycleaware.BackStackVisibilityListener.OnBackStackVisibilityListener
            public final void a() {
                BottomBarHandling.a(BottomBarHandling.this);
            }
        });
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.f51576c = null;
        this.f51575b.getD().d(this);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\rB=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;", "Ljava/io/Serializable;", "", "isBottomBarVisible", "", "animationDuration", "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;", "contentArrangement", "shouldDisplaySearchBar", "shouldDisplayNavItems", "switchAnimationDuration", "<init>", "(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BottomBarConfig implements Serializable {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Companion f51577h = new Companion(null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final BottomBarConfig f51578i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final BottomBarConfig f51579j;
        public static final long serialVersionUID = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f51580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f51581c;
        public final ContentArrangement d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f51582e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f51583f;
        public final int g;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;", "", "", "serialVersionUID", "J", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            ContentArrangement contentArrangement = ContentArrangement.ABOVE_BOTTOM_BAR;
            boolean z = false;
            int i2 = 0;
            f51578i = new BottomBarConfig(true, 125, contentArrangement, false, z, i2, 56, null);
            f51579j = new BottomBarConfig(z, i2, ContentArrangement.MAX_SIZE, false, false, 0, 56, null);
            new BottomBarConfig(true, 0, contentArrangement, true, true, 400);
            new BottomBarConfig(true, 0, contentArrangement, true, false, 400);
        }

        public /* synthetic */ BottomBarConfig(boolean z, int i2, ContentArrangement contentArrangement, boolean z2, boolean z3, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, i2, contentArrangement, (i4 & 8) != 0 ? false : z2, (i4 & 16) != 0 ? true : z3, (i4 & 32) != 0 ? 400 : i3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BottomBarConfig)) {
                return false;
            }
            BottomBarConfig bottomBarConfig = (BottomBarConfig) obj;
            return this.f51580b == bottomBarConfig.f51580b && this.f51581c == bottomBarConfig.f51581c && this.d == bottomBarConfig.d && this.f51582e == bottomBarConfig.f51582e && this.f51583f == bottomBarConfig.f51583f && this.g == bottomBarConfig.g;
        }

        public final int hashCode() {
            return Integer.hashCode(this.g) + o60.b(o60.b((this.d.hashCode() + tr.b(this.f51581c, Boolean.hashCode(this.f51580b) * 31, 31)) * 31, 31, this.f51582e), 31, this.f51583f);
        }

        public final String toString() {
            return "BottomBarConfig(isBottomBarVisible=" + this.f51580b + ", animationDuration=" + this.f51581c + ", contentArrangement=" + this.d + ", shouldDisplaySearchBar=" + this.f51582e + ", shouldDisplayNavItems=" + this.f51583f + ", switchAnimationDuration=" + this.g + ")";
        }

        public BottomBarConfig(boolean z, int i2, ContentArrangement contentArrangement, boolean z2, boolean z3, int i3) {
            contentArrangement.getClass();
            this.f51580b = z;
            this.f51581c = i2;
            this.d = contentArrangement;
            this.f51582e = z2;
            this.f51583f = z3;
            this.g = i3;
        }
    }
}
