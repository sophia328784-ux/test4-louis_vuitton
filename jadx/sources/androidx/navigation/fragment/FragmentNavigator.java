package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import defpackage.b21;
import defpackage.dt;
import defpackage.dy;
import defpackage.jx;
import defpackage.k2;
import defpackage.l00;
import defpackage.lt;
import defpackage.md;
import defpackage.tr;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name("fragment")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u000b\f\rB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/FragmentNavigator$Destination;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "containerId", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V", "Destination", "Companion", "ClearEntryStateViewModel", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class FragmentNavigator extends Navigator<Destination> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f18300j = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f18301c;
    public final FragmentManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f18303f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k2 f18304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l00 f18305i;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ClearEntryStateViewModel extends ViewModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public WeakReference f18306a;

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            super.onCleared();
            WeakReference weakReference = this.f18306a;
            if (weakReference == null) {
                Intrinsics.h("completeTransition");
                throw null;
            }
            Function0 function0 = (Function0) weakReference.get();
            if (function0 != null) {
                function0.mo47invoke();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_SAVED_IDS", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public FragmentNavigator(Context context, FragmentManager fragmentManager, int i2) {
        context.getClass();
        fragmentManager.getClass();
        this.f18301c = context;
        this.d = fragmentManager;
        this.f18302e = i2;
        this.f18303f = new LinkedHashSet();
        this.g = new ArrayList();
        this.f18304h = new k2(this, 1);
        this.f18305i = new l00(this, 0);
    }

    public static void k(FragmentNavigator fragmentNavigator, String str, int i2) {
        boolean z = (i2 & 2) == 0;
        boolean z2 = (i2 & 4) != 0;
        ArrayList arrayList = fragmentNavigator.g;
        if (z2) {
            CollectionsKt.a0(arrayList, new lt(str, 5));
        }
        arrayList.add(new Pair(str, Boolean.valueOf(z)));
    }

    public static boolean n() {
        return Log.isLoggable("FragmentManager", 2) || Log.isLoggable("FragmentNavigator", 2);
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination a() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        FragmentManager fragmentManager = this.d;
        if (fragmentManager.S()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            boolean zIsEmpty = ((List) b().f18213e.getValue()).isEmpty();
            if (navOptions == null || zIsEmpty || !navOptions.f18175b || !this.f18303f.remove(navBackStackEntry.g)) {
                FragmentTransaction fragmentTransactionM = m(navBackStackEntry, navOptions);
                String str = navBackStackEntry.g;
                if (!zIsEmpty) {
                    NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.N((List) b().f18213e.getValue());
                    if (navBackStackEntry2 != null) {
                        k(this, navBackStackEntry2.g, 6);
                    }
                    k(this, str, 6);
                    fragmentTransactionM.d(str);
                }
                fragmentTransactionM.e();
                if (n()) {
                    navBackStackEntry.toString();
                }
                b().h(navBackStackEntry);
            } else {
                fragmentManager.d0(navBackStackEntry.g);
                b().h(navBackStackEntry);
            }
        }
    }

    @Override // androidx.navigation.Navigator
    public final void e(final NavController.NavControllerNavigatorState navControllerNavigatorState) {
        super.e(navControllerNavigatorState);
        n();
        FragmentOnAttachListener fragmentOnAttachListener = new FragmentOnAttachListener() { // from class: androidx.navigation.fragment.a
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void a(FragmentManager fragmentManager, Fragment fragment) {
                Object objPrevious;
                int i2 = FragmentNavigator.f18300j;
                fragmentManager.getClass();
                NavController.NavControllerNavigatorState navControllerNavigatorState2 = navControllerNavigatorState;
                List list = (List) navControllerNavigatorState2.f18213e.getValue();
                ListIterator listIterator = list.listIterator(list.size());
                do {
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).g, fragment.getTag()));
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
                boolean zN = FragmentNavigator.n();
                FragmentNavigator fragmentNavigator = this;
                if (zN) {
                    Objects.toString(fragment);
                    Objects.toString(navBackStackEntry);
                    Objects.toString(fragmentNavigator.d);
                }
                if (navBackStackEntry != null) {
                    fragment.getViewLifecycleOwnerLiveData().observe(fragment, new FragmentNavigator$sam$androidx_lifecycle_Observer$0(new jx(fragmentNavigator, fragment, navBackStackEntry, 2)));
                    fragment.getD().a(fragmentNavigator.f18304h);
                    fragmentNavigator.l(fragment, navBackStackEntry, navControllerNavigatorState2);
                }
            }
        };
        FragmentManager fragmentManager = this.d;
        fragmentManager.q.add(fragmentOnAttachListener);
        fragmentManager.o.add(new FragmentManager.OnBackStackChangedListener() { // from class: androidx.navigation.fragment.FragmentNavigator$onAttach$2
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void a(Fragment fragment, boolean z) {
                Object obj;
                Object objPrevious;
                FragmentNavigator fragmentNavigator = this;
                ArrayList arrayList = fragmentNavigator.g;
                fragment.getClass();
                NavController.NavControllerNavigatorState navControllerNavigatorState2 = navControllerNavigatorState;
                ArrayList arrayListY = CollectionsKt.Y((Collection) navControllerNavigatorState2.f18213e.getValue(), (Iterable) navControllerNavigatorState2.f18214f.getValue());
                ListIterator listIterator = arrayListY.listIterator(arrayListY.size());
                do {
                    obj = null;
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).g, fragment.getTag()));
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
                boolean z2 = z && arrayList.isEmpty() && fragment.isRemoving();
                for (Object obj2 : arrayList) {
                    if (Intrinsics.c(((Pair) obj2).f71705b, fragment.getTag())) {
                        obj = obj2;
                        break;
                    }
                }
                Pair pair = (Pair) obj;
                if (pair != null) {
                    arrayList.remove(pair);
                }
                if (!z2 && FragmentNavigator.n()) {
                    Objects.toString(fragment);
                    Objects.toString(navBackStackEntry);
                }
                boolean z3 = pair != null && ((Boolean) pair.f71706c).booleanValue();
                if (!z && !z3 && navBackStackEntry == null) {
                    b21.n(tr.f("The fragment ", fragment, " is unknown to the FragmentNavigator. Please use the navigate() function to add fragments to the FragmentNavigator managed FragmentManager."));
                    return;
                }
                if (navBackStackEntry != null) {
                    fragmentNavigator.l(fragment, navBackStackEntry, navControllerNavigatorState2);
                    if (z2) {
                        if (FragmentNavigator.n()) {
                            fragment.toString();
                            navBackStackEntry.toString();
                        }
                        navControllerNavigatorState2.e(navBackStackEntry, false);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void b(Fragment fragment, boolean z) {
                Object objPrevious;
                fragment.getClass();
                if (z) {
                    NavController.NavControllerNavigatorState navControllerNavigatorState2 = navControllerNavigatorState;
                    List list = (List) navControllerNavigatorState2.f18213e.getValue();
                    ListIterator listIterator = list.listIterator(list.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            objPrevious = null;
                            break;
                        }
                        objPrevious = listIterator.previous();
                    } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).g, fragment.getTag()));
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
                    if (FragmentNavigator.n()) {
                        Objects.toString(fragment);
                        Objects.toString(navBackStackEntry);
                    }
                    if (navBackStackEntry != null) {
                        navControllerNavigatorState2.f(navBackStackEntry);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void onBackStackChanged() {
            }
        });
    }

    @Override // androidx.navigation.Navigator
    public final void f(NavBackStackEntry navBackStackEntry) {
        String str = navBackStackEntry.g;
        FragmentManager fragmentManager = this.d;
        if (fragmentManager.S()) {
            return;
        }
        FragmentTransaction fragmentTransactionM = m(navBackStackEntry, null);
        List list = (List) b().f18213e.getValue();
        if (list.size() > 1) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.G(list.size() - 2, list);
            if (navBackStackEntry2 != null) {
                k(this, navBackStackEntry2.g, 6);
            }
            k(this, str, 4);
            fragmentManager.W(str);
            k(this, str, 2);
            fragmentTransactionM.d(str);
        }
        fragmentTransactionM.e();
        b().c(navBackStackEntry);
    }

    @Override // androidx.navigation.Navigator
    public final void g(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("androidx-nav-fragment:navigator:savedIds");
        if (stringArrayList != null) {
            LinkedHashSet linkedHashSet = this.f18303f;
            linkedHashSet.clear();
            CollectionsKt.j(linkedHashSet, stringArrayList);
        }
    }

    @Override // androidx.navigation.Navigator
    public final Bundle h() {
        LinkedHashSet linkedHashSet = this.f18303f;
        if (linkedHashSet.isEmpty()) {
            return null;
        }
        return BundleKt.a(new Pair("androidx-nav-fragment:navigator:savedIds", new ArrayList(linkedHashSet)));
    }

    @Override // androidx.navigation.Navigator
    public final void i(NavBackStackEntry navBackStackEntry, boolean z) {
        FragmentManager fragmentManager = this.d;
        if (fragmentManager.S()) {
            return;
        }
        List list = (List) b().f18213e.getValue();
        int iIndexOf = list.indexOf(navBackStackEntry);
        List listSubList = list.subList(iIndexOf, list.size());
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.B(list);
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) CollectionsKt.G(iIndexOf - 1, list);
        if (navBackStackEntry3 != null) {
            k(this, navBackStackEntry3.g, 6);
        }
        List list2 = listSubList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) obj;
            TransformingSequence transformingSequenceR = SequencesKt.r(CollectionsKt.o(this.g), new dy(15));
            String str = navBackStackEntry4.g;
            TransformingSequence.AnonymousClass1 anonymousClass1 = new TransformingSequence.AnonymousClass1();
            int i2 = 0;
            while (true) {
                if (!anonymousClass1.f74508b.hasNext()) {
                    i2 = -1;
                    break;
                }
                Object next = anonymousClass1.next();
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                if (Intrinsics.c(str, next)) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 >= 0 || !Intrinsics.c(navBackStackEntry4.g, navBackStackEntry2.g)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            k(this, ((NavBackStackEntry) it.next()).g, 4);
        }
        if (z) {
            for (NavBackStackEntry navBackStackEntry5 : CollectionsKt.f0(list2)) {
                if (Intrinsics.c(navBackStackEntry5, navBackStackEntry2)) {
                    Objects.toString(navBackStackEntry5);
                } else {
                    fragmentManager.g0(navBackStackEntry5.g);
                    this.f18303f.add(navBackStackEntry5.g);
                }
            }
        } else {
            fragmentManager.W(navBackStackEntry.g);
        }
        if (n()) {
            Objects.toString(navBackStackEntry);
        }
        b().e(navBackStackEntry, z);
    }

    public final void l(Fragment fragment, NavBackStackEntry navBackStackEntry, NavController.NavControllerNavigatorState navControllerNavigatorState) {
        fragment.getClass();
        ViewModelStore viewModelStore = fragment.getF13587c();
        viewModelStore.getClass();
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        dy dyVar = new dy(16);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        initializerViewModelFactoryBuilder.a(reflectionFactory.b(ClearEntryStateViewModel.class), dyVar);
        ((ClearEntryStateViewModel) new ViewModelProvider(viewModelStore, initializerViewModelFactoryBuilder.b(), CreationExtras.Empty.f13578c).a(reflectionFactory.b(ClearEntryStateViewModel.class))).f18306a = new WeakReference(new dt(navBackStackEntry, navControllerNavigatorState, this, fragment));
    }

    public final FragmentTransaction m(NavBackStackEntry navBackStackEntry, NavOptions navOptions) {
        NavDestination navDestination = navBackStackEntry.f18113c;
        navDestination.getClass();
        Bundle bundleA = navBackStackEntry.f18117i.a();
        String str = ((Destination) navDestination).f18307h;
        if (str == null) {
            md.k("Fragment class was not set");
            return null;
        }
        char cCharAt = str.charAt(0);
        Context context = this.f18301c;
        if (cCharAt == '.') {
            str = context.getPackageName() + str;
        }
        FragmentManager fragmentManager = this.d;
        Fragment fragmentA = fragmentManager.L().a(context.getClassLoader(), str);
        fragmentA.getClass();
        fragmentA.setArguments(bundleA);
        FragmentTransaction fragmentTransactionD = fragmentManager.d();
        int i2 = navOptions != null ? navOptions.f18178f : -1;
        int i3 = navOptions != null ? navOptions.g : -1;
        int i4 = navOptions != null ? navOptions.f18179h : -1;
        int i5 = navOptions != null ? navOptions.f18180i : -1;
        if (i2 != -1 || i3 != -1 || i4 != -1 || i5 != -1) {
            if (i2 == -1) {
                i2 = 0;
            }
            if (i3 == -1) {
                i3 = 0;
            }
            if (i4 == -1) {
                i4 = 0;
            }
            fragmentTransactionD.n(i2, i3, i4, i5 != -1 ? i5 : 0);
        }
        fragmentTransactionD.m(this.f18302e, fragmentA, navBackStackEntry.g);
        fragmentTransactionD.p(fragmentA);
        fragmentTransactionD.p = true;
        return fragmentTransactionD;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/Navigator;", "fragmentNavigator", "<init>", "(Landroidx/navigation/Navigator;)V", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class Destination extends NavDestination {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f18307h;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.b(FragmentNavigator.class));
            navigatorProvider.getClass();
        }

        @Override // androidx.navigation.NavDestination
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && (obj instanceof Destination) && super.equals(obj) && Intrinsics.c(this.f18307h, ((Destination) obj).f18307h);
        }

        @Override // androidx.navigation.NavDestination
        public final int hashCode() {
            int iHashCode = super.hashCode() * 31;
            String str = this.f18307h;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public final void m(Context context, AttributeSet attributeSet) {
            context.getClass();
            attributeSet.getClass();
            super.m(context, attributeSet);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.f18312b);
            typedArrayObtainAttributes.getClass();
            String string = typedArrayObtainAttributes.getString(0);
            if (string != null) {
                this.f18307h = string;
            }
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this.f18307h;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            return sb.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> navigator) {
            super(navigator);
            navigator.getClass();
        }
    }
}
