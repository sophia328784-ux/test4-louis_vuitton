package androidx.navigationevent;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import defpackage.b21;
import defpackage.lc0;
import defpackage.md;
import defpackage.pq0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002\f\rB\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0002\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/navigationevent/NavigationEventDispatcher;", "", "<init>", "()V", "Landroidx/navigationevent/OnBackCompletedFallback;", "onBackCompletedFallback", "(Landroidx/navigationevent/OnBackCompletedFallback;)V", "Landroidx/navigationevent/OnForwardCompletedFallback;", "onForwardCompletedFallback", "(Landroidx/navigationevent/OnBackCompletedFallback;Landroidx/navigationevent/OnForwardCompletedFallback;)V", "parent", "(Landroidx/navigationevent/NavigationEventDispatcher;)V", "Priority", "Companion", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavigationEventDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavigationEventDispatcher f18459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OnBackCompletedFallback f18460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnForwardCompletedFallback f18461c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NavigationEventProcessor f18462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableOrderedScatterSet f18463f;
    public final MutableOrderedScatterSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableOrderedScatterSet f18464h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/navigationevent/NavigationEventDispatcher$Companion;", "", "", "PRIORITY_OVERLAY", "I", "PRIORITY_DEFAULT", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/navigationevent/NavigationEventDispatcher$Priority;", "", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention
    public @interface Priority {
    }

    static {
        new Companion(null);
    }

    public NavigationEventDispatcher(NavigationEventDispatcher navigationEventDispatcher, OnBackCompletedFallback onBackCompletedFallback, OnForwardCompletedFallback onForwardCompletedFallback) {
        NavigationEventProcessor navigationEventProcessor;
        this.f18459a = navigationEventDispatcher;
        this.f18460b = onBackCompletedFallback;
        this.f18461c = onForwardCompletedFallback;
        this.d = true;
        this.f18462e = (navigationEventDispatcher == null || (navigationEventProcessor = navigationEventDispatcher.f18462e) == null) ? new NavigationEventProcessor() : navigationEventProcessor;
        this.f18463f = OrderedScatterSetKt.a();
        this.g = OrderedScatterSetKt.a();
        this.f18464h = OrderedScatterSetKt.a();
        if (navigationEventDispatcher != null) {
            navigationEventDispatcher.f18463f.h(this);
        }
    }

    public static void a(NavigationEventDispatcher navigationEventDispatcher, NavigationEventHandler navigationEventHandler) {
        navigationEventDispatcher.getClass();
        navigationEventHandler.getClass();
        navigationEventDispatcher.d();
        if (navigationEventDispatcher.g.b(navigationEventHandler)) {
            NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.f18462e;
            navigationEventProcessor.getClass();
            if (navigationEventHandler.g != null) {
                lc0.v("Handler '", navigationEventHandler, "' is already registered with a dispatcher");
                return;
            }
            navigationEventProcessor.f18480f.addFirst(navigationEventHandler);
            navigationEventHandler.g = navigationEventDispatcher;
            navigationEventProcessor.b();
        }
    }

    public final void b(NavigationEventInput navigationEventInput) {
        d();
        if (this.f18464h.b(navigationEventInput)) {
            this.f18462e.a(this, navigationEventInput, -1);
        }
    }

    public final void c(OnBackInvokedInput onBackInvokedInput, int i2) {
        d();
        if (i2 != 1 && i2 != 0) {
            b21.n(pq0.k(i2, "Unsupported priority value: "));
        } else if (this.f18464h.b(onBackInvokedInput)) {
            this.f18462e.a(this, onBackInvokedInput, i2);
        }
    }

    public final void d() {
        if (f()) {
            md.k("This NavigationEventDispatcher has already been disposed and cannot be used.");
        }
    }

    public final void e(NavigationEventInput navigationEventInput, NavigationEvent navigationEvent) {
        d();
        if (g()) {
            NavigationEventProcessor navigationEventProcessor = this.f18462e;
            navigationEventProcessor.getClass();
            if (navigationEventProcessor.f18481h != 0) {
                return;
            }
            NavigationEventHandler navigationEventHandlerC = navigationEventProcessor.c(-1);
            navigationEventProcessor.g = navigationEventHandlerC;
            navigationEventProcessor.f18481h = -1;
            navigationEventProcessor.f18482i = navigationEventInput;
            if (navigationEvent != null) {
                if (navigationEventHandlerC != null) {
                    navigationEventHandlerC.d = new NavigationEventTransitionState.InProgress(navigationEvent, -1);
                    navigationEventHandlerC.f(navigationEvent);
                }
                navigationEventProcessor.f18476a.setValue(new NavigationEventTransitionState.InProgress(navigationEvent, -1));
            }
        }
    }

    public final boolean f() {
        NavigationEventDispatcher navigationEventDispatcher = this.f18459a;
        return navigationEventDispatcher != null && navigationEventDispatcher.f();
    }

    public final boolean g() {
        NavigationEventDispatcher navigationEventDispatcher = this.f18459a;
        if (navigationEventDispatcher == null || navigationEventDispatcher.g()) {
            return this.d;
        }
        return false;
    }

    public NavigationEventDispatcher() {
        this(null, null, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventDispatcher(OnBackCompletedFallback onBackCompletedFallback) {
        this(null, onBackCompletedFallback, null);
        onBackCompletedFallback.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventDispatcher(OnBackCompletedFallback onBackCompletedFallback, OnForwardCompletedFallback onForwardCompletedFallback) {
        this(null, onBackCompletedFallback, onForwardCompletedFallback);
        onBackCompletedFallback.getClass();
        onForwardCompletedFallback.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventDispatcher(NavigationEventDispatcher navigationEventDispatcher) {
        this(navigationEventDispatcher, null, null);
        navigationEventDispatcher.getClass();
    }
}
