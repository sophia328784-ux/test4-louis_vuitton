package androidx.navigationevent;

import defpackage.md;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigationevent/NavigationEventInput;", "", "<init>", "()V", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NavigationEventInput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NavigationEventDispatcher f18474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f18475b;

    public final void a() {
        NavigationEventDispatcher navigationEventDispatcher = this.f18474a;
        if (navigationEventDispatcher == null) {
            md.k("This input is not added to any dispatcher.");
            return;
        }
        if (!this.f18475b) {
            navigationEventDispatcher.e(this, null);
        }
        navigationEventDispatcher.d();
        if (navigationEventDispatcher.g()) {
            NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.f18462e;
            OnBackCompletedFallback onBackCompletedFallback = navigationEventDispatcher.f18460b;
            navigationEventProcessor.getClass();
            if (equals(navigationEventProcessor.f18482i) && -1 == navigationEventProcessor.f18481h) {
                NavigationEventHandler navigationEventHandlerC = navigationEventProcessor.g;
                if (navigationEventHandlerC == null) {
                    navigationEventHandlerC = navigationEventProcessor.c(-1);
                }
                navigationEventProcessor.g = null;
                navigationEventProcessor.f18481h = 0;
                navigationEventProcessor.f18482i = null;
                if (navigationEventHandlerC != null) {
                    navigationEventHandlerC.d = NavigationEventTransitionState.Idle.f18485a;
                    navigationEventHandlerC.d();
                } else if (onBackCompletedFallback != null) {
                    onBackCompletedFallback.g();
                }
                navigationEventProcessor.f18476a.setValue(NavigationEventTransitionState.Idle.f18485a);
            }
        }
        this.f18475b = false;
    }

    public void b(boolean z) {
    }
}
