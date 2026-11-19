package androidx.transition;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransitionImpl;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.y81;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class FragmentTransitionSupport extends FragmentTransitionImpl {

    /* JADX INFO: renamed from: androidx.transition.FragmentTransitionSupport$1, reason: invalid class name */
    class AnonymousClass1 extends Transition.EpicenterCallback {
    }

    /* JADX INFO: renamed from: androidx.transition.FragmentTransitionSupport$5, reason: invalid class name */
    class AnonymousClass5 extends Transition.EpicenterCallback {
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void a(View view, Object obj) {
        ((Transition) obj).b(view);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void b(Object obj, ArrayList arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        int i2 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.F.size();
            while (i2 < size) {
                b(transitionSet.W(i2), arrayList);
                i2++;
            }
            return;
        }
        if (FragmentTransitionImpl.k(transition.f19997f) && FragmentTransitionImpl.k(transition.g)) {
            int size2 = arrayList.size();
            while (i2 < size2) {
                transition.b((View) arrayList.get(i2));
                i2++;
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void c(Object obj) {
        ((TransitionSeekController) obj).d();
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void d(Object obj, androidx.fragment.app.b bVar) {
        ((TransitionSeekController) obj).j(bVar);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void e(ViewGroup viewGroup, Object obj) {
        TransitionManager.a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean g(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object h(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object i(ViewGroup viewGroup, Object obj) {
        Transition transition = (Transition) obj;
        ArrayList arrayList = TransitionManager.f20022c;
        if (!arrayList.contains(viewGroup) && viewGroup.isLaidOut() && Build.VERSION.SDK_INT >= 34) {
            if (transition.B()) {
                arrayList.add(viewGroup);
                Transition transitionClone = transition.clone();
                TransitionSet transitionSet = new TransitionSet();
                transitionSet.V(transitionClone);
                TransitionManager.c(viewGroup, transitionSet);
                viewGroup.setTag(R.id.transition_current_scene, null);
                TransitionManager.MultiListener multiListener = new TransitionManager.MultiListener();
                multiListener.f20023b = transitionSet;
                multiListener.f20024c = viewGroup;
                viewGroup.addOnAttachStateChangeListener(multiListener);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
                viewGroup.invalidate();
                Transition.SeekController seekController = new Transition.SeekController(transitionSet);
                transitionSet.z = seekController;
                transitionSet.a(seekController);
                return transitionSet.z;
            }
            md.n("The Transition must support seeking.");
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean l() {
        return true;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean m(Object obj) {
        boolean zB = ((Transition) obj).B();
        if (!zB) {
            Objects.toString(obj);
        }
        return zB;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object n(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.V(transition);
            transitionSet.V(transition2);
            transitionSet.X(1);
            transition = transitionSet;
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet2 = new TransitionSet();
        if (transition != null) {
            transitionSet2.V(transition);
        }
        transitionSet2.V(transition3);
        return transitionSet2;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object o(Object obj, Object obj2) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.V((Transition) obj);
        }
        transitionSet.V((Transition) obj2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void p(Object obj, final View view, final ArrayList arrayList) {
        ((Transition) obj).a(new Transition.TransitionListener() { // from class: androidx.transition.FragmentTransitionSupport.2
            @Override // androidx.transition.Transition.TransitionListener
            public final void a() {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void f() {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void g(Transition transition) {
                transition.H(this);
                transition.a(this);
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void i(Transition transition) {
                transition.H(this);
                view.setVisibility(8);
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((View) arrayList2.get(i2)).setVisibility(0);
                }
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void k(Transition transition) {
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void q(Object obj, final Object obj2, final ArrayList arrayList, final Object obj3, final ArrayList arrayList2) {
        ((Transition) obj).a(new TransitionListenerAdapter() { // from class: androidx.transition.FragmentTransitionSupport.3
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public final void g(Transition transition) {
                FragmentTransitionSupport fragmentTransitionSupport = FragmentTransitionSupport.this;
                Object obj4 = obj2;
                if (obj4 != null) {
                    fragmentTransitionSupport.z(obj4, arrayList, null);
                }
                Object obj5 = obj3;
                if (obj5 != null) {
                    fragmentTransitionSupport.z(obj5, arrayList2, null);
                }
            }

            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public final void i(Transition transition) {
                transition.H(this);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void r(Object obj, float f2) {
        TransitionSeekController transitionSeekController = (TransitionSeekController) obj;
        if (transitionSeekController.isReady()) {
            long jB = (long) (f2 * transitionSeekController.b());
            if (jB == 0) {
                jB = 1;
            }
            if (jB == transitionSeekController.b()) {
                jB = transitionSeekController.b() - 1;
            }
            transitionSeekController.h(jB);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void s(View view, Object obj) {
        if (view != null) {
            FragmentTransitionImpl.j(view, new Rect());
            ((Transition) obj).O(new AnonymousClass1());
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void t(Object obj, Rect rect) {
        ((Transition) obj).O(new AnonymousClass5());
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void u(Fragment fragment, Object obj, CancellationSignal cancellationSignal, Runnable runnable) {
        v(obj, cancellationSignal, null, runnable);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void v(Object obj, CancellationSignal cancellationSignal, z1 z1Var, final Runnable runnable) {
        Transition transition = (Transition) obj;
        y81 y81Var = new y81(z1Var, transition, runnable, 9);
        synchronized (cancellationSignal) {
            while (cancellationSignal.f12080c) {
                try {
                    try {
                        cancellationSignal.wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (cancellationSignal.f12079b != y81Var) {
                cancellationSignal.f12079b = y81Var;
                if (cancellationSignal.f12078a) {
                    y81Var.b();
                }
            }
        }
        transition.a(new Transition.TransitionListener() { // from class: androidx.transition.FragmentTransitionSupport.4
            @Override // androidx.transition.Transition.TransitionListener
            public final void a() {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void f() {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void g(Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void i(Transition transition2) {
                runnable.run();
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void k(Transition transition2) {
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void w(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList arrayList2 = transitionSet.g;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransitionImpl.f((View) arrayList.get(i2), arrayList2);
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void x(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            ArrayList arrayList3 = transitionSet.g;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            z(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object y(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.V((Transition) obj);
        return transitionSet;
    }

    public final void z(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        Transition transition = (Transition) obj;
        int i2 = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.F.size();
            while (i2 < size) {
                z(transitionSet.W(i2), arrayList, arrayList2);
                i2++;
            }
            return;
        }
        if (FragmentTransitionImpl.k(transition.f19997f)) {
            ArrayList arrayList3 = transition.g;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                while (i2 < size2) {
                    transition.b((View) arrayList2.get(i2));
                    i2++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    transition.J((View) arrayList.get(size3));
                }
            }
        }
    }
}
