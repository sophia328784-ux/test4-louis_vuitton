package androidx.navigationevent;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import defpackage.md;
import defpackage.s6;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigationevent/OnBackInvokedInput;", "Landroidx/navigationevent/NavigationEventInput;", "Landroidx/navigationevent/OnBackInvokedDefaultInput;", "Landroidx/navigationevent/OnBackInvokedOverlayInput;", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class OnBackInvokedInput extends NavigationEventInput {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnBackInvokedDispatcher f18488c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OnBackInvokedCallback f18489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18490f;

    public OnBackInvokedInput(OnBackInvokedDispatcher onBackInvokedDispatcher, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f18488c = onBackInvokedDispatcher;
        this.d = i2;
        this.f18489e = Build.VERSION.SDK_INT == 33 ? new s6(this, 2) : new OnBackAnimationCallback() { // from class: androidx.navigationevent.OnBackInvokedInput$createOnBackAnimationCallback$1
            public final void onBackCancelled() {
                OnBackInvokedInput onBackInvokedInput = this.f18491a;
                NavigationEventDispatcher navigationEventDispatcher = onBackInvokedInput.f18474a;
                if (navigationEventDispatcher == null) {
                    md.k("This input is not added to any dispatcher.");
                    return;
                }
                if (!onBackInvokedInput.f18475b) {
                    navigationEventDispatcher.e(onBackInvokedInput, null);
                }
                navigationEventDispatcher.d();
                if (navigationEventDispatcher.g()) {
                    NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.f18462e;
                    navigationEventProcessor.getClass();
                    if (onBackInvokedInput.equals(navigationEventProcessor.f18482i) && -1 == navigationEventProcessor.f18481h) {
                        NavigationEventHandler navigationEventHandlerC = navigationEventProcessor.g;
                        if (navigationEventHandlerC == null) {
                            navigationEventHandlerC = navigationEventProcessor.c(-1);
                        }
                        navigationEventProcessor.g = null;
                        navigationEventProcessor.f18481h = 0;
                        navigationEventProcessor.f18482i = null;
                        if (navigationEventHandlerC != null) {
                            navigationEventHandlerC.d = NavigationEventTransitionState.Idle.f18485a;
                            navigationEventHandlerC.c();
                        }
                        navigationEventProcessor.f18476a.setValue(NavigationEventTransitionState.Idle.f18485a);
                    }
                }
                onBackInvokedInput.f18475b = false;
            }

            public final void onBackInvoked() {
                this.f18491a.a();
            }

            public final void onBackProgressed(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent navigationEventA = NavigationEventKt.a(backEvent);
                OnBackInvokedInput onBackInvokedInput = this.f18491a;
                NavigationEventDispatcher navigationEventDispatcher = onBackInvokedInput.f18474a;
                if (navigationEventDispatcher == null) {
                    md.k("This input is not added to any dispatcher.");
                    return;
                }
                if (onBackInvokedInput.f18475b) {
                    navigationEventDispatcher.d();
                    if (navigationEventDispatcher.g()) {
                        NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.f18462e;
                        navigationEventProcessor.getClass();
                        if (onBackInvokedInput.equals(navigationEventProcessor.f18482i) && -1 == navigationEventProcessor.f18481h) {
                            NavigationEventHandler navigationEventHandlerC = navigationEventProcessor.g;
                            if (navigationEventHandlerC == null) {
                                navigationEventHandlerC = navigationEventProcessor.c(-1);
                            }
                            if (navigationEventHandlerC != null) {
                                navigationEventHandlerC.d = new NavigationEventTransitionState.InProgress(navigationEventA, -1);
                                navigationEventHandlerC.e(navigationEventA);
                            }
                            navigationEventProcessor.f18476a.setValue(new NavigationEventTransitionState.InProgress(navigationEventA, -1));
                        }
                    }
                }
            }

            public final void onBackStarted(BackEvent backEvent) {
                backEvent.getClass();
                NavigationEvent navigationEventA = NavigationEventKt.a(backEvent);
                OnBackInvokedInput onBackInvokedInput = this.f18491a;
                NavigationEventDispatcher navigationEventDispatcher = onBackInvokedInput.f18474a;
                if (navigationEventDispatcher == null) {
                    md.k("This input is not added to any dispatcher.");
                } else {
                    if (onBackInvokedInput.f18475b) {
                        return;
                    }
                    navigationEventDispatcher.e(onBackInvokedInput, navigationEventA);
                    onBackInvokedInput.f18475b = true;
                }
            }
        };
    }

    @Override // androidx.navigationevent.NavigationEventInput
    public final void b(boolean z) {
        if (z && !this.f18490f) {
            this.f18488c.registerOnBackInvokedCallback(this.d, this.f18489e);
            this.f18490f = true;
        } else {
            if (z || !this.f18490f) {
                return;
            }
            this.f18488c.unregisterOnBackInvokedCallback(this.f18489e);
            this.f18490f = false;
        }
    }
}
