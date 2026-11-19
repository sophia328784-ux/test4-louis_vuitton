package androidx.activity;

import android.window.OnBackInvokedDispatcher;
import androidx.activity.OnBackPressedDispatcher.OnBackPressedEventInput;
import androidx.core.util.Consumer;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.OnBackInvokedDefaultInput;
import androidx.navigationevent.OnBackInvokedOverlayInput;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.fw;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\nB!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB\u0015\b\u0017\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher;", "", "Ljava/lang/Runnable;", "fallbackOnBackPressed", "Landroidx/core/util/Consumer;", "", "onHasEnabledCallbacksChanged", "<init>", "(Ljava/lang/Runnable;Landroidx/core/util/Consumer;)V", "(Ljava/lang/Runnable;)V", "OnBackPressedEventInput", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OnBackPressedDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Consumer f678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f679c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;", "Landroidx/navigationevent/NavigationEventInput;", "<init>", "(Landroidx/activity/OnBackPressedDispatcher;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class OnBackPressedEventInput extends NavigationEventInput {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final NavigationEventDispatcher f680c;

        public OnBackPressedEventInput() {
            NavigationEventDispatcher navigationEventDispatcher = new NavigationEventDispatcher(new fw(OnBackPressedDispatcher.this, 28));
            navigationEventDispatcher.b(this);
            this.f680c = navigationEventDispatcher;
        }

        @Override // androidx.navigationevent.NavigationEventInput
        public final void b(boolean z) {
            OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
            onBackPressedDispatcher.getClass();
            Consumer consumer = onBackPressedDispatcher.f678b;
            if (consumer != null) {
                consumer.accept(Boolean.valueOf(z));
            }
        }
    }

    public OnBackPressedDispatcher(Runnable runnable, Consumer<Boolean> consumer) {
        this.f677a = runnable;
        this.f678b = consumer;
        this.f679c = LazyKt.b(new Function0() { // from class: androidx.activity.c
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f693b.new OnBackPressedEventInput();
            }
        });
    }

    public final void a(OnBackPressedCallback onBackPressedCallback) {
        onBackPressedCallback.getClass();
        OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedCallback.OnBackPressedEventHandler(onBackPressedCallback, new OnBackPressedCallbackInfo(onBackPressedCallback, null, 2, null));
        onBackPressedCallback.f670a.add(onBackPressedEventHandler);
        NavigationEventDispatcher.a(c().f680c, onBackPressedEventHandler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.activity.OnBackPressedDispatcher$addCallback$observer$1, androidx.lifecycle.LifecycleObserver] */
    public final void b(OnBackPressedCallback onBackPressedCallback, LifecycleOwner lifecycleOwner) {
        onBackPressedCallback.getClass();
        final Lifecycle f13561b = lifecycleOwner.getF13561b();
        if (f13561b.getF13454i() == Lifecycle.State.DESTROYED) {
            return;
        }
        final OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedCallback.OnBackPressedEventHandler(onBackPressedCallback, new OnBackPressedCallbackInfo(onBackPressedCallback, lifecycleOwner));
        onBackPressedCallback.f670a.add(onBackPressedEventHandler);
        onBackPressedEventHandler.j(false);
        NavigationEventDispatcher.a(c().f680c, onBackPressedEventHandler);
        final ?? r1 = new LifecycleEventObserver(this, f13561b) { // from class: androidx.activity.OnBackPressedDispatcher$addCallback$observer$1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Lifecycle f682c;

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public static final /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f683a;

                static {
                    int[] iArr = new int[Lifecycle.Event.values().length];
                    try {
                        iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    f683a = iArr;
                }
            }

            {
                this.f682c = f13561b;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                int i2 = WhenMappings.f683a[event.ordinal()];
                OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler2 = this.f681b;
                if (i2 == 1) {
                    onBackPressedEventHandler2.j(true);
                    return;
                }
                if (i2 == 2) {
                    onBackPressedEventHandler2.j(false);
                } else {
                    if (i2 != 3) {
                        return;
                    }
                    onBackPressedEventHandler2.h();
                    this.f682c.d(this);
                }
            }
        };
        f13561b.a(r1);
        onBackPressedCallback.f672c.add(new AutoCloseable() { // from class: ug0
            @Override // java.lang.AutoCloseable
            public final void close() {
                f13561b.d(r1);
            }
        });
    }

    public final OnBackPressedEventInput c() {
        return (OnBackPressedEventInput) this.f679c.getF71699b();
    }

    public final void d(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        onBackInvokedDispatcher.getClass();
        c().f680c.c(new OnBackInvokedDefaultInput(onBackInvokedDispatcher), 1);
        c().f680c.c(new OnBackInvokedOverlayInput(onBackInvokedDispatcher), 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OnBackPressedDispatcher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this(runnable, null);
    }

    public /* synthetic */ OnBackPressedDispatcher(Runnable runnable, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : runnable);
    }
}
