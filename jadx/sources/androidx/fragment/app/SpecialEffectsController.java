package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b \u0018\u00002\u00020\u0001:\u0004\u0006\u0007\b\tB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController;", "", "Landroid/view/ViewGroup;", "container", "<init>", "(Landroid/view/ViewGroup;)V", "Companion", "Effect", "FragmentStateManagerOperation", "Operation", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class SpecialEffectsController {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f13360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f13361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f13362c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13364f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Companion;", "", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Effect;", "", "<init>", "()V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class Effect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f13365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f13366b;

        public boolean a() {
            return this instanceof DefaultSpecialEffectsController.AnimatorEffect;
        }

        public void b(ViewGroup viewGroup) {
            viewGroup.getClass();
        }

        public void c(ViewGroup viewGroup) {
            viewGroup.getClass();
        }

        public void d(BackEventCompat backEventCompat, ViewGroup viewGroup) {
            viewGroup.getClass();
        }

        public void e(ViewGroup viewGroup) {
            viewGroup.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "lifecycleImpact", "Landroidx/fragment/app/FragmentStateManager;", "fragmentStateManager", "<init>", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FragmentStateManagerOperation extends Operation {
        public final FragmentStateManager l;

        /* JADX WARN: Illegal instructions before constructor call */
        public FragmentStateManagerOperation(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
            state.getClass();
            lifecycleImpact.getClass();
            fragmentStateManager.getClass();
            Fragment fragment = fragmentStateManager.f13315c;
            fragment.getClass();
            super(state, lifecycleImpact, fragment);
            this.l = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public final void b() {
            super.b();
            this.f13369c.mTransitioning = false;
            this.l.i();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public final void e() {
            if (this.f13372h) {
                return;
            }
            this.f13372h = true;
            Operation.LifecycleImpact lifecycleImpact = this.f13368b;
            Operation.LifecycleImpact lifecycleImpact2 = Operation.LifecycleImpact.ADDING;
            FragmentStateManager fragmentStateManager = this.l;
            if (lifecycleImpact != lifecycleImpact2) {
                if (lifecycleImpact == Operation.LifecycleImpact.REMOVING) {
                    Fragment fragment = fragmentStateManager.f13315c;
                    fragment.getClass();
                    View viewRequireView = fragment.requireView();
                    viewRequireView.getClass();
                    if (FragmentManager.O(2)) {
                        Objects.toString(viewRequireView.findFocus());
                        viewRequireView.toString();
                        fragment.toString();
                    }
                    viewRequireView.clearFocus();
                    return;
                }
                return;
            }
            Fragment fragment2 = fragmentStateManager.f13315c;
            fragment2.getClass();
            View viewFindFocus = fragment2.mView.findFocus();
            if (viewFindFocus != null) {
                fragment2.setFocusedView(viewFindFocus);
                if (FragmentManager.O(2)) {
                    viewFindFocus.toString();
                    fragment2.toString();
                }
            }
            View viewRequireView2 = this.f13369c.requireView();
            viewRequireView2.getClass();
            if (viewRequireView2.getParent() == null) {
                if (FragmentManager.O(2)) {
                    fragment2.toString();
                    viewRequireView2.toString();
                }
                fragmentStateManager.a();
                viewRequireView2.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            if (viewRequireView2.getAlpha() == Call.Parameters.DEFAULT_CAMERA_ZOOM && viewRequireView2.getVisibility() == 0) {
                if (FragmentManager.O(2)) {
                    viewRequireView2.toString();
                }
                viewRequireView2.setVisibility(4);
            }
            viewRequireView2.setAlpha(fragment2.getPostOnViewCreatedAlpha());
            if (FragmentManager.O(2)) {
                fragment2.getPostOnViewCreatedAlpha();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation;", "", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "lifecycleImpact", "Landroidx/fragment/app/Fragment;", "fragment", "<init>", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;)V", "LifecycleImpact", "State", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class Operation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public State f13367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LifecycleImpact f13368b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Fragment f13369c;
        public final ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f13370e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f13371f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f13372h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f13373i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ArrayList f13374j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ArrayList f13375k;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "", "NONE", "ADDING", "REMOVING", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class LifecycleImpact {
            private static final /* synthetic */ LifecycleImpact[] $VALUES;
            public static final LifecycleImpact ADDING;
            public static final LifecycleImpact NONE;
            public static final LifecycleImpact REMOVING;

            static {
                LifecycleImpact lifecycleImpact = new LifecycleImpact("NONE", 0);
                NONE = lifecycleImpact;
                LifecycleImpact lifecycleImpact2 = new LifecycleImpact("ADDING", 1);
                ADDING = lifecycleImpact2;
                LifecycleImpact lifecycleImpact3 = new LifecycleImpact("REMOVING", 2);
                REMOVING = lifecycleImpact3;
                $VALUES = new LifecycleImpact[]{lifecycleImpact, lifecycleImpact2, lifecycleImpact3};
            }

            public static LifecycleImpact valueOf(String str) {
                return (LifecycleImpact) Enum.valueOf(LifecycleImpact.class, str);
            }

            public static LifecycleImpact[] values() {
                return (LifecycleImpact[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0001\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "", "Companion", "REMOVED", "VISIBLE", "GONE", "INVISIBLE", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class State {
            private static final /* synthetic */ State[] $VALUES;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final State GONE;
            public static final State INVISIBLE;
            public static final State REMOVED;
            public static final State VISIBLE;

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;", "", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                }

                public static State a(View view) {
                    view.getClass();
                    return (view.getAlpha() == Call.Parameters.DEFAULT_CAMERA_ZOOM && view.getVisibility() == 0) ? State.INVISIBLE : b(view.getVisibility());
                }

                public static State b(int i2) {
                    if (i2 == 0) {
                        return State.VISIBLE;
                    }
                    if (i2 == 4) {
                        return State.INVISIBLE;
                    }
                    if (i2 == 8) {
                        return State.GONE;
                    }
                    md.n(pq0.k(i2, "Unknown visibility "));
                    return null;
                }
            }

            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f13376a;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.REMOVED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[State.VISIBLE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[State.GONE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[State.INVISIBLE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    f13376a = iArr;
                }
            }

            static {
                State state = new State("REMOVED", 0);
                REMOVED = state;
                State state2 = new State("VISIBLE", 1);
                VISIBLE = state2;
                State state3 = new State("GONE", 2);
                GONE = state3;
                State state4 = new State("INVISIBLE", 3);
                INVISIBLE = state4;
                $VALUES = new State[]{state, state2, state3, state4};
                INSTANCE = new Companion(null);
            }

            public static State valueOf(String str) {
                return (State) Enum.valueOf(State.class, str);
            }

            public static State[] values() {
                return (State[]) $VALUES.clone();
            }

            public final void a(View view, ViewGroup viewGroup) {
                view.getClass();
                viewGroup.getClass();
                FragmentManager.O(2);
                int i2 = WhenMappings.f13376a[ordinal()];
                if (i2 == 1) {
                    ViewParent parent = view.getParent();
                    ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup2 != null) {
                        if (FragmentManager.O(2)) {
                            view.toString();
                            viewGroup2.toString();
                        }
                        viewGroup2.removeView(view);
                        return;
                    }
                    return;
                }
                if (i2 == 2) {
                    if (FragmentManager.O(2)) {
                        Objects.toString(view);
                    }
                    ViewParent parent2 = view.getParent();
                    if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                        if (FragmentManager.O(2)) {
                            view.toString();
                            Objects.toString(viewGroup);
                        }
                        viewGroup.addView(view);
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i2 == 3) {
                    if (FragmentManager.O(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(8);
                } else {
                    if (i2 != 4) {
                        return;
                    }
                    if (FragmentManager.O(2)) {
                        Objects.toString(view);
                    }
                    view.setVisibility(4);
                }
            }
        }

        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f13377a;

            static {
                int[] iArr = new int[LifecycleImpact.values().length];
                try {
                    iArr[LifecycleImpact.ADDING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LifecycleImpact.REMOVING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[LifecycleImpact.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f13377a = iArr;
            }
        }

        public Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment) {
            state.getClass();
            lifecycleImpact.getClass();
            fragment.getClass();
            this.f13367a = state;
            this.f13368b = lifecycleImpact;
            this.f13369c = fragment;
            this.d = new ArrayList();
            this.f13373i = true;
            ArrayList arrayList = new ArrayList();
            this.f13374j = arrayList;
            this.f13375k = arrayList;
        }

        public final void a(ViewGroup viewGroup) {
            viewGroup.getClass();
            this.f13372h = false;
            if (this.f13370e) {
                return;
            }
            this.f13370e = true;
            if (this.f13374j.isEmpty()) {
                b();
                return;
            }
            for (Effect effect : CollectionsKt.y0(this.f13375k)) {
                effect.getClass();
                if (!effect.f13366b) {
                    effect.b(viewGroup);
                }
                effect.f13366b = true;
            }
        }

        public void b() {
            this.f13372h = false;
            if (this.f13371f) {
                return;
            }
            if (FragmentManager.O(2)) {
                toString();
            }
            this.f13371f = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }

        public final void c(Effect effect) {
            effect.getClass();
            ArrayList arrayList = this.f13374j;
            if (arrayList.remove(effect) && arrayList.isEmpty()) {
                b();
            }
        }

        public final void d(State state, LifecycleImpact lifecycleImpact) {
            state.getClass();
            lifecycleImpact.getClass();
            int i2 = WhenMappings.f13377a[lifecycleImpact.ordinal()];
            Fragment fragment = this.f13369c;
            if (i2 == 1) {
                if (this.f13367a == State.REMOVED) {
                    if (FragmentManager.O(2)) {
                        Objects.toString(fragment);
                        Objects.toString(this.f13368b);
                    }
                    this.f13367a = State.VISIBLE;
                    this.f13368b = LifecycleImpact.ADDING;
                    this.f13373i = true;
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (FragmentManager.O(2)) {
                    Objects.toString(fragment);
                    Objects.toString(this.f13367a);
                    Objects.toString(this.f13368b);
                }
                this.f13367a = State.REMOVED;
                this.f13368b = LifecycleImpact.REMOVING;
                this.f13373i = true;
                return;
            }
            if (i2 == 3 && this.f13367a != State.REMOVED) {
                if (FragmentManager.O(2)) {
                    Objects.toString(fragment);
                    Objects.toString(this.f13367a);
                    Objects.toString(state);
                }
                this.f13367a = state;
            }
        }

        public void e() {
            this.f13372h = true;
        }

        public final String toString() {
            StringBuilder sbR = pq0.r("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
            sbR.append(this.f13367a);
            sbR.append(" lifecycleImpact = ");
            sbR.append(this.f13368b);
            sbR.append(" fragment = ");
            sbR.append(this.f13369c);
            sbR.append('}');
            return sbR.toString();
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13378a;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            try {
                iArr[Operation.LifecycleImpact.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f13378a = iArr;
        }
    }

    public SpecialEffectsController(ViewGroup viewGroup) {
        viewGroup.getClass();
        this.f13360a = viewGroup;
        this.f13361b = new ArrayList();
        this.f13362c = new ArrayList();
    }

    public static final SpecialEffectsController i(ViewGroup viewGroup, FragmentManager fragmentManager) {
        g.getClass();
        viewGroup.getClass();
        fragmentManager.getClass();
        SpecialEffectsControllerFactory specialEffectsControllerFactoryN = fragmentManager.N();
        specialEffectsControllerFactoryN.getClass();
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        DefaultSpecialEffectsController defaultSpecialEffectsControllerA = specialEffectsControllerFactoryN.a(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, defaultSpecialEffectsControllerA);
        return defaultSpecialEffectsControllerA;
    }

    public static boolean j(ArrayList arrayList) {
        boolean z;
        Iterator it = arrayList.iterator();
        loop0: while (true) {
            z = true;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                Operation operation = (Operation) it.next();
                if (!operation.f13375k.isEmpty()) {
                    ArrayList arrayList2 = operation.f13375k;
                    if (arrayList2 != null && arrayList2.isEmpty()) {
                        break;
                    }
                    Iterator it2 = arrayList2.iterator();
                    do {
                        if (!it2.hasNext()) {
                            break;
                        }
                    } while (((Effect) it2.next()).a());
                }
                z = false;
            }
        }
        if (z) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                CollectionsKt.j(arrayList3, ((Operation) it3.next()).f13375k);
            }
            if (!arrayList3.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public final void a(Operation operation) {
        operation.getClass();
        if (operation.f13373i) {
            Operation.State state = operation.f13367a;
            View viewRequireView = operation.f13369c.requireView();
            viewRequireView.getClass();
            state.a(viewRequireView, this.f13360a);
            operation.f13373i = false;
        }
    }

    public abstract void b(ArrayList arrayList, boolean z);

    public final void c(List list) {
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((Operation) it.next()).f13375k);
        }
        List listY0 = CollectionsKt.y0(CollectionsKt.B0(arrayList));
        int size = listY0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Effect) listY0.get(i2)).c(this.f13360a);
        }
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            a((Operation) list.get(i3));
        }
        List listY1 = CollectionsKt.y0(list2);
        int size3 = listY1.size();
        for (int i4 = 0; i4 < size3; i4++) {
            Operation operation = (Operation) listY1.get(i4);
            if (operation.f13375k.isEmpty()) {
                operation.b();
            }
        }
    }

    public final void d(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.f13361b) {
            try {
                Fragment fragment = fragmentStateManager.f13315c;
                fragment.getClass();
                Operation operationF = f(fragment);
                if (operationF == null) {
                    Fragment fragment2 = fragmentStateManager.f13315c;
                    operationF = (fragment2.mTransitioning || fragment2.mRemoving) ? g(fragment2) : null;
                }
                if (operationF != null) {
                    operationF.d(state, lifecycleImpact);
                    return;
                }
                final FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager);
                this.f13361b.add(fragmentStateManagerOperation);
                final int i2 = 0;
                fragmentStateManagerOperation.d.add(new Runnable(this) { // from class: androidx.fragment.app.g

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ SpecialEffectsController f13390c;

                    {
                        this.f13390c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i3 = i2;
                        SpecialEffectsController.FragmentStateManagerOperation fragmentStateManagerOperation2 = fragmentStateManagerOperation;
                        SpecialEffectsController specialEffectsController = this.f13390c;
                        switch (i3) {
                            case 0:
                                SpecialEffectsController.Companion companion = SpecialEffectsController.g;
                                if (specialEffectsController.f13361b.contains(fragmentStateManagerOperation2)) {
                                    SpecialEffectsController.Operation.State state2 = fragmentStateManagerOperation2.f13367a;
                                    View view = fragmentStateManagerOperation2.f13369c.mView;
                                    view.getClass();
                                    state2.a(view, specialEffectsController.f13360a);
                                }
                                break;
                            default:
                                SpecialEffectsController.Companion companion2 = SpecialEffectsController.g;
                                specialEffectsController.f13361b.remove(fragmentStateManagerOperation2);
                                specialEffectsController.f13362c.remove(fragmentStateManagerOperation2);
                                break;
                        }
                    }
                });
                final int i3 = 1;
                fragmentStateManagerOperation.d.add(new Runnable(this) { // from class: androidx.fragment.app.g

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ SpecialEffectsController f13390c;

                    {
                        this.f13390c = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i4 = i3;
                        SpecialEffectsController.FragmentStateManagerOperation fragmentStateManagerOperation2 = fragmentStateManagerOperation;
                        SpecialEffectsController specialEffectsController = this.f13390c;
                        switch (i4) {
                            case 0:
                                SpecialEffectsController.Companion companion = SpecialEffectsController.g;
                                if (specialEffectsController.f13361b.contains(fragmentStateManagerOperation2)) {
                                    SpecialEffectsController.Operation.State state2 = fragmentStateManagerOperation2.f13367a;
                                    View view = fragmentStateManagerOperation2.f13369c.mView;
                                    view.getClass();
                                    state2.a(view, specialEffectsController.f13360a);
                                }
                                break;
                            default:
                                SpecialEffectsController.Companion companion2 = SpecialEffectsController.g;
                                specialEffectsController.f13361b.remove(fragmentStateManagerOperation2);
                                specialEffectsController.f13362c.remove(fragmentStateManagerOperation2);
                                break;
                        }
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        boolean z;
        if (this.f13364f) {
            return;
        }
        if (!this.f13360a.isAttachedToWindow()) {
            h();
            this.f13363e = false;
            return;
        }
        synchronized (this.f13361b) {
            try {
                ArrayList<Operation> arrayListZ0 = CollectionsKt.z0(this.f13362c);
                this.f13362c.clear();
                Iterator it = arrayListZ0.iterator();
                while (true) {
                    z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    Operation operation = (Operation) it.next();
                    if (this.f13361b.isEmpty() || !operation.f13369c.mTransitioning) {
                        z = false;
                    }
                    operation.g = z;
                }
                for (Operation operation2 : arrayListZ0) {
                    if (this.d) {
                        if (FragmentManager.O(2)) {
                            Objects.toString(operation2);
                        }
                        operation2.b();
                    } else {
                        if (FragmentManager.O(2)) {
                            Objects.toString(operation2);
                        }
                        operation2.a(this.f13360a);
                    }
                    this.d = false;
                    if (!operation2.f13371f) {
                        this.f13362c.add(operation2);
                    }
                }
                if (!this.f13361b.isEmpty()) {
                    m();
                    ArrayList arrayListZ1 = CollectionsKt.z0(this.f13361b);
                    if (arrayListZ1.isEmpty()) {
                        return;
                    }
                    this.f13361b.clear();
                    this.f13362c.addAll(arrayListZ1);
                    FragmentManager.O(2);
                    b(arrayListZ1, this.f13363e);
                    boolean zJ = j(arrayListZ1);
                    Iterator it2 = arrayListZ1.iterator();
                    boolean z2 = true;
                    while (it2.hasNext()) {
                        if (!((Operation) it2.next()).f13369c.mTransitioning) {
                            z2 = false;
                        }
                    }
                    if (!z2 || zJ) {
                        z = false;
                    }
                    this.d = z;
                    FragmentManager.O(2);
                    if (!z2) {
                        l(arrayListZ1);
                        c(arrayListZ1);
                    } else if (zJ) {
                        l(arrayListZ1);
                        int size = arrayListZ1.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            a((Operation) arrayListZ1.get(i2));
                        }
                    }
                    this.f13363e = false;
                    FragmentManager.O(2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Operation f(Fragment fragment) {
        Object next;
        Iterator it = this.f13361b.iterator();
        while (it.hasNext()) {
            next = it.next();
            Operation operation = (Operation) next;
            if (Intrinsics.c(operation.f13369c, fragment) && !operation.f13370e) {
                return (Operation) next;
            }
        }
        next = null;
        return (Operation) next;
    }

    public final Operation g(Fragment fragment) {
        Object next;
        Iterator it = this.f13362c.iterator();
        while (it.hasNext()) {
            next = it.next();
            Operation operation = (Operation) next;
            if (Intrinsics.c(operation.f13369c, fragment) && !operation.f13370e) {
                return (Operation) next;
            }
        }
        next = null;
        return (Operation) next;
    }

    public final void h() {
        FragmentManager.O(2);
        boolean zIsAttachedToWindow = this.f13360a.isAttachedToWindow();
        synchronized (this.f13361b) {
            try {
                m();
                l(this.f13361b);
                ArrayList<Operation> arrayListZ0 = CollectionsKt.z0(this.f13362c);
                Iterator it = arrayListZ0.iterator();
                while (it.hasNext()) {
                    ((Operation) it.next()).g = false;
                }
                for (Operation operation : arrayListZ0) {
                    if (FragmentManager.O(2)) {
                        if (!zIsAttachedToWindow) {
                            Objects.toString(this.f13360a);
                        }
                        Objects.toString(operation);
                    }
                    operation.a(this.f13360a);
                }
                ArrayList<Operation> arrayListZ1 = CollectionsKt.z0(this.f13361b);
                Iterator it2 = arrayListZ1.iterator();
                while (it2.hasNext()) {
                    ((Operation) it2.next()).g = false;
                }
                for (Operation operation2 : arrayListZ1) {
                    if (FragmentManager.O(2)) {
                        if (!zIsAttachedToWindow) {
                            Objects.toString(this.f13360a);
                        }
                        Objects.toString(operation2);
                    }
                    operation2.a(this.f13360a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k() {
        Object objPrevious;
        synchronized (this.f13361b) {
            try {
                m();
                ArrayList arrayList = this.f13361b;
                ListIterator listIterator = arrayList.listIterator(arrayList.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                    Operation operation = (Operation) objPrevious;
                    Operation.State.Companion companion = Operation.State.INSTANCE;
                    View view = operation.f13369c.mView;
                    view.getClass();
                    companion.getClass();
                    Operation.State stateA = Operation.State.Companion.a(view);
                    Operation.State state = operation.f13367a;
                    Operation.State state2 = Operation.State.VISIBLE;
                    if (state == state2 && stateA != state2) {
                        break;
                    }
                }
                Operation operation2 = (Operation) objPrevious;
                Fragment fragment = operation2 != null ? operation2.f13369c : null;
                this.f13364f = fragment != null ? fragment.isPostponed() : false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l(List list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Operation) list.get(i2)).e();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectionsKt.j(arrayList, ((Operation) it.next()).f13375k);
        }
        List listY0 = CollectionsKt.y0(CollectionsKt.B0(arrayList));
        int size2 = listY0.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Effect effect = (Effect) listY0.get(i3);
            effect.getClass();
            ViewGroup viewGroup = this.f13360a;
            viewGroup.getClass();
            if (!effect.f13365a) {
                effect.e(viewGroup);
            }
            effect.f13365a = true;
        }
    }

    public final void m() {
        for (Operation operation : this.f13361b) {
            if (operation.f13368b == Operation.LifecycleImpact.ADDING) {
                View viewRequireView = operation.f13369c.requireView();
                viewRequireView.getClass();
                Operation.State.Companion companion = Operation.State.INSTANCE;
                int visibility = viewRequireView.getVisibility();
                companion.getClass();
                operation.d(Operation.State.Companion.b(visibility), Operation.LifecycleImpact.NONE);
            }
        }
    }
}
