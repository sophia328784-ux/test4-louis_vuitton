package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.NavigatorState;
import androidx.navigation.fragment.DialogFragmentNavigator;
import defpackage.b21;
import defpackage.md;
import defpackage.n00;
import defpackage.zy0;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name("dialog")
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\t\nB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/navigation/fragment/DialogFragmentNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V", "Destination", "Companion", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DialogFragmentNavigator extends Navigator<Destination> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f18293h = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f18294c;
    public final FragmentManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f18295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DialogFragmentNavigator$observer$1 f18296f;
    public final LinkedHashMap g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/fragment/DialogFragmentNavigator$Companion;", "", "", "TAG", "Ljava/lang/String;", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.navigation.fragment.DialogFragmentNavigator$observer$1] */
    public DialogFragmentNavigator(Context context, FragmentManager fragmentManager) {
        context.getClass();
        fragmentManager.getClass();
        this.f18294c = context;
        this.d = fragmentManager;
        this.f18295e = new LinkedHashSet();
        this.f18296f = new LifecycleEventObserver() { // from class: androidx.navigation.fragment.DialogFragmentNavigator$observer$1

            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final /* synthetic */ int[] f18299a;

                static {
                    int[] iArr = new int[Lifecycle.Event.values().length];
                    try {
                        iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    f18299a = iArr;
                }
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                int iNextIndex;
                int i2 = WhenMappings.f18299a[event.ordinal()];
                DialogFragmentNavigator dialogFragmentNavigator = this.f18298b;
                if (i2 == 1) {
                    DialogFragment dialogFragment = (DialogFragment) lifecycleOwner;
                    int i3 = DialogFragmentNavigator.f18293h;
                    Iterable iterable = (Iterable) dialogFragmentNavigator.b().f18213e.getValue();
                    if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                        Iterator it = iterable.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.c(((NavBackStackEntry) it.next()).g, dialogFragment.getTag())) {
                                return;
                            }
                        }
                    }
                    dialogFragment.dismiss();
                    return;
                }
                Object obj = null;
                if (i2 == 2) {
                    DialogFragment dialogFragment2 = (DialogFragment) lifecycleOwner;
                    int i4 = DialogFragmentNavigator.f18293h;
                    for (Object obj2 : (Iterable) dialogFragmentNavigator.b().f18214f.getValue()) {
                        if (Intrinsics.c(((NavBackStackEntry) obj2).g, dialogFragment2.getTag())) {
                            obj = obj2;
                        }
                    }
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                    if (navBackStackEntry != null) {
                        dialogFragmentNavigator.b().b(navBackStackEntry);
                        return;
                    }
                    return;
                }
                if (i2 != 3) {
                    if (i2 != 4) {
                        return;
                    }
                    DialogFragment dialogFragment3 = (DialogFragment) lifecycleOwner;
                    int i5 = DialogFragmentNavigator.f18293h;
                    for (Object obj3 : (Iterable) dialogFragmentNavigator.b().f18214f.getValue()) {
                        if (Intrinsics.c(((NavBackStackEntry) obj3).g, dialogFragment3.getTag())) {
                            obj = obj3;
                        }
                    }
                    NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
                    if (navBackStackEntry2 != null) {
                        dialogFragmentNavigator.b().b(navBackStackEntry2);
                    }
                    dialogFragment3.getD().d(this);
                    return;
                }
                DialogFragment dialogFragment4 = (DialogFragment) lifecycleOwner;
                if (dialogFragment4.requireDialog().isShowing()) {
                    return;
                }
                int i6 = DialogFragmentNavigator.f18293h;
                List list = (List) dialogFragmentNavigator.b().f18213e.getValue();
                ListIterator listIterator = list.listIterator(list.size());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (Intrinsics.c(((NavBackStackEntry) listIterator.previous()).g, dialogFragment4.getTag())) {
                            iNextIndex = listIterator.nextIndex();
                            break;
                        }
                    } else {
                        iNextIndex = -1;
                        break;
                    }
                }
                NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) CollectionsKt.G(iNextIndex, list);
                if (!Intrinsics.c(CollectionsKt.N(list), navBackStackEntry3)) {
                    dialogFragment4.toString();
                }
                if (navBackStackEntry3 != null) {
                    dialogFragmentNavigator.l(iNextIndex, navBackStackEntry3, false);
                }
            }
        };
        this.g = new LinkedHashMap();
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
            k(navBackStackEntry).show(fragmentManager, navBackStackEntry.g);
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.N((List) b().f18213e.getValue());
            boolean zU = CollectionsKt.u((Iterable) b().f18214f.getValue(), navBackStackEntry2);
            b().h(navBackStackEntry);
            if (navBackStackEntry2 != null && !zU) {
                b().b(navBackStackEntry2);
            }
        }
    }

    @Override // androidx.navigation.Navigator
    public final void e(NavController.NavControllerNavigatorState navControllerNavigatorState) {
        Lifecycle d;
        super.e(navControllerNavigatorState);
        Iterator it = ((List) navControllerNavigatorState.f18213e.getValue()).iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            FragmentManager fragmentManager = this.d;
            if (!zHasNext) {
                fragmentManager.q.add(new FragmentOnAttachListener() { // from class: pt
                    @Override // androidx.fragment.app.FragmentOnAttachListener
                    public final void a(FragmentManager fragmentManager2, Fragment fragment) {
                        int i2 = DialogFragmentNavigator.f18293h;
                        fragmentManager2.getClass();
                        DialogFragmentNavigator dialogFragmentNavigator = this.f78922b;
                        LinkedHashSet linkedHashSet = dialogFragmentNavigator.f18295e;
                        if (TypeIntrinsics.a(linkedHashSet).remove(fragment.getTag())) {
                            fragment.getD().a(dialogFragmentNavigator.f18296f);
                        }
                        LinkedHashMap linkedHashMap = dialogFragmentNavigator.g;
                        TypeIntrinsics.c(linkedHashMap).remove(fragment.getTag());
                    }
                });
                return;
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            DialogFragment dialogFragment = (DialogFragment) fragmentManager.G(navBackStackEntry.g);
            if (dialogFragment == null || (d = dialogFragment.getD()) == null) {
                this.f18295e.add(navBackStackEntry.g);
            } else {
                d.a(this.f18296f);
            }
        }
    }

    @Override // androidx.navigation.Navigator
    public final void f(NavBackStackEntry navBackStackEntry) {
        FragmentManager fragmentManager = this.d;
        if (fragmentManager.S()) {
            return;
        }
        String str = navBackStackEntry.g;
        DialogFragment dialogFragment = (DialogFragment) this.g.get(str);
        if (dialogFragment == null) {
            Fragment fragmentG = fragmentManager.G(str);
            dialogFragment = fragmentG instanceof DialogFragment ? (DialogFragment) fragmentG : null;
        }
        if (dialogFragment != null) {
            dialogFragment.getD().d(this.f18296f);
            dialogFragment.dismiss();
        }
        k(navBackStackEntry).show(fragmentManager, str);
        NavigatorState navigatorStateB = b();
        List list = (List) navigatorStateB.f18213e.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.c(navBackStackEntry2.g, str)) {
                MutableStateFlow mutableStateFlow = navigatorStateB.f18212c;
                mutableStateFlow.setValue(SetsKt.g(SetsKt.g((Set) mutableStateFlow.getValue(), navBackStackEntry2), navBackStackEntry));
                navigatorStateB.c(navBackStackEntry);
                return;
            }
        }
        zy0.c("List contains no element matching the predicate.");
    }

    @Override // androidx.navigation.Navigator
    public final void i(NavBackStackEntry navBackStackEntry, boolean z) {
        FragmentManager fragmentManager = this.d;
        if (fragmentManager.S()) {
            return;
        }
        List list = (List) b().f18213e.getValue();
        int iIndexOf = list.indexOf(navBackStackEntry);
        Iterator it = CollectionsKt.f0(list.subList(iIndexOf, list.size())).iterator();
        while (it.hasNext()) {
            Fragment fragmentG = fragmentManager.G(((NavBackStackEntry) it.next()).g);
            if (fragmentG != null) {
                ((DialogFragment) fragmentG).dismiss();
            }
        }
        l(iIndexOf, navBackStackEntry, z);
    }

    public final DialogFragment k(NavBackStackEntry navBackStackEntry) {
        NavDestination navDestination = navBackStackEntry.f18113c;
        navDestination.getClass();
        Destination destination = (Destination) navDestination;
        String str = destination.f18297h;
        if (str == null) {
            md.k("DialogFragment class was not set");
            return null;
        }
        char cCharAt = str.charAt(0);
        Context context = this.f18294c;
        if (cCharAt == '.') {
            str = context.getPackageName() + str;
        }
        Fragment fragmentA = this.d.L().a(context.getClassLoader(), str);
        fragmentA.getClass();
        if (DialogFragment.class.isAssignableFrom(fragmentA.getClass())) {
            DialogFragment dialogFragment = (DialogFragment) fragmentA;
            dialogFragment.setArguments(navBackStackEntry.f18117i.a());
            dialogFragment.getD().a(this.f18296f);
            this.g.put(navBackStackEntry.g, dialogFragment);
            return dialogFragment;
        }
        StringBuilder sb = new StringBuilder("Dialog destination ");
        String str2 = destination.f18297h;
        if (str2 != null) {
            b21.n(n00.r(str2, " is not an instance of DialogFragment", sb));
            return null;
        }
        md.k("DialogFragment class was not set");
        return null;
    }

    public final void l(int i2, NavBackStackEntry navBackStackEntry, boolean z) {
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.G(i2 - 1, (List) b().f18213e.getValue());
        boolean zU = CollectionsKt.u((Iterable) b().f18214f.getValue(), navBackStackEntry2);
        b().e(navBackStackEntry, z);
        if (navBackStackEntry2 == null || zU) {
            return;
        }
        b().b(navBackStackEntry2);
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/FloatingWindow;", "Landroidx/navigation/Navigator;", "fragmentNavigator", "<init>", "(Landroidx/navigation/Navigator;)V", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "navigation-fragment_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class Destination extends NavDestination implements FloatingWindow {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f18297h;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.b(DialogFragmentNavigator.class));
            navigatorProvider.getClass();
        }

        @Override // androidx.navigation.NavDestination
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && (obj instanceof Destination) && super.equals(obj) && Intrinsics.c(this.f18297h, ((Destination) obj).f18297h);
        }

        @Override // androidx.navigation.NavDestination
        public final int hashCode() {
            int iHashCode = super.hashCode() * 31;
            String str = this.f18297h;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public final void m(Context context, AttributeSet attributeSet) {
            context.getClass();
            attributeSet.getClass();
            super.m(context, attributeSet);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.f18311a);
            typedArrayObtainAttributes.getClass();
            String string = typedArrayObtainAttributes.getString(0);
            if (string != null) {
                this.f18297h = string;
            }
            typedArrayObtainAttributes.recycle();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> navigator) {
            super(navigator);
            navigator.getClass();
        }
    }
}
