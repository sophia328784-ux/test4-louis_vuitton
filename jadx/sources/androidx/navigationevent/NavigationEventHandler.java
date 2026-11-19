package androidx.navigationevent;

import androidx.navigationevent.NavigationEventInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigationevent/NavigationEventHandler;", "Landroidx/navigationevent/NavigationEventInfo;", "T", "", "initialInfo", "", "isBackEnabled", "isForwardEnabled", "<init>", "(Landroidx/navigationevent/NavigationEventInfo;ZZ)V", "(Landroidx/navigationevent/NavigationEventInfo;Z)V", "navigationevent"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class NavigationEventHandler<T extends NavigationEventInfo> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NavigationEventInfo f18465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f18466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f18467c;
    public NavigationEventTransitionState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f18468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18469f;
    public NavigationEventDispatcher g;

    public NavigationEventHandler(T t, boolean z, boolean z2) {
        t.getClass();
        this.f18465a = t;
        EmptyList emptyList = EmptyList.f71768b;
        this.f18466b = emptyList;
        this.f18467c = emptyList;
        this.d = NavigationEventTransitionState.Idle.f18485a;
        this.f18468e = z;
        this.f18469f = z2;
    }

    public final boolean a() {
        NavigationEventDispatcher navigationEventDispatcher = this.g;
        if (navigationEventDispatcher == null || navigationEventDispatcher.g()) {
            return this.f18468e;
        }
        return false;
    }

    public final boolean b() {
        NavigationEventDispatcher navigationEventDispatcher = this.g;
        if (navigationEventDispatcher == null || navigationEventDispatcher.g()) {
            return this.f18469f;
        }
        return false;
    }

    public void c() {
    }

    public void d() {
        throw new UnsupportedOperationException("A handler that receives a 'backCompleted' event must override 'onBackCompleted()' to handle the callback.");
    }

    public void e(NavigationEvent navigationEvent) {
    }

    public void f(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
    }

    public void g() {
    }

    public final void h() {
        NavigationEventDispatcher navigationEventDispatcher = this.g;
        if (navigationEventDispatcher == null || !navigationEventDispatcher.g.i(this)) {
            return;
        }
        NavigationEventProcessor navigationEventProcessor = navigationEventDispatcher.f18462e;
        navigationEventProcessor.getClass();
        if (equals(navigationEventProcessor.g)) {
            int i2 = navigationEventProcessor.f18481h;
            if (i2 == -1) {
                this.d = NavigationEventTransitionState.Idle.f18485a;
                c();
            } else if (i2 == 1) {
                this.d = NavigationEventTransitionState.Idle.f18485a;
                g();
            }
            navigationEventProcessor.g = null;
            navigationEventProcessor.f18481h = 0;
            navigationEventProcessor.f18482i = null;
        }
        navigationEventProcessor.f18479e.remove(this);
        navigationEventProcessor.f18480f.remove(this);
        this.g = null;
        navigationEventProcessor.b();
    }

    public final void i(boolean z) {
        NavigationEventProcessor navigationEventProcessor;
        if (this.f18468e == z) {
            return;
        }
        this.f18468e = z;
        NavigationEventDispatcher navigationEventDispatcher = this.g;
        if (navigationEventDispatcher == null || (navigationEventProcessor = navigationEventDispatcher.f18462e) == null) {
            return;
        }
        navigationEventProcessor.b();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavigationEventHandler(T t, boolean z) {
        this(t, z, false);
        t.getClass();
    }
}
