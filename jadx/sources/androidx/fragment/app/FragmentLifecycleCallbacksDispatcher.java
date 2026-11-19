package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;", "", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "<init>", "(Landroidx/fragment/app/FragmentManager;)V", "FragmentLifecycleCallbacksHolder", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FragmentLifecycleCallbacksDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FragmentManager f13260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f13261b;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;", "", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "callback", "", "recursive", "<init>", "(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FragmentLifecycleCallbacksHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FragmentManager.FragmentLifecycleCallbacks f13262a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f13263b;

        public FragmentLifecycleCallbacksHolder(FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
            fragmentLifecycleCallbacks.getClass();
            this.f13262a = fragmentLifecycleCallbacks;
            this.f13263b = z;
        }
    }

    public FragmentLifecycleCallbacksDispatcher(FragmentManager fragmentManager) {
        fragmentManager.getClass();
        this.f13260a = fragmentManager;
        this.f13261b = new CopyOnWriteArrayList();
    }

    public final void a(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.a(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentActivityCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void b(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Context context = fragmentManager.x.f13255c;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.b(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentAttached(fragmentManager, fragment, context);
            }
        }
    }

    public final void c(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.c(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void d(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.d(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentDestroyed(fragmentManager, fragment);
            }
        }
    }

    public final void e(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.e(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentDetached(fragmentManager, fragment);
            }
        }
    }

    public final void f(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.f(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentPaused(fragmentManager, fragment);
            }
        }
    }

    public final void g(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Context context = fragmentManager.x.f13255c;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.g(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentPreAttached(fragmentManager, fragment, context);
            }
        }
    }

    public final void h(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.h(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentPreCreated(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void i(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.i(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentResumed(fragmentManager, fragment);
            }
        }
    }

    public final void j(Fragment fragment, Bundle bundle, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.j(fragment, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentSaveInstanceState(fragmentManager, fragment, bundle);
            }
        }
    }

    public final void k(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.k(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentStarted(fragmentManager, fragment);
            }
        }
    }

    public final void l(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.l(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentStopped(fragmentManager, fragment);
            }
        }
    }

    public final void m(Fragment fragment, View view, Bundle bundle, boolean z) {
        fragment.getClass();
        view.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.m(fragment, view, bundle, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentViewCreated(fragmentManager, fragment, view, bundle);
            }
        }
    }

    public final void n(Fragment fragment, boolean z) {
        fragment.getClass();
        FragmentManager fragmentManager = this.f13260a;
        Fragment fragment2 = fragmentManager.z;
        if (fragment2 != null) {
            FragmentManager parentFragmentManager = fragment2.getParentFragmentManager();
            parentFragmentManager.getClass();
            parentFragmentManager.p.n(fragment, true);
        }
        for (FragmentLifecycleCallbacksHolder fragmentLifecycleCallbacksHolder : this.f13261b) {
            if (!z || fragmentLifecycleCallbacksHolder.f13263b) {
                fragmentLifecycleCallbacksHolder.f13262a.onFragmentViewDestroyed(fragmentManager, fragment);
            }
        }
    }
}
