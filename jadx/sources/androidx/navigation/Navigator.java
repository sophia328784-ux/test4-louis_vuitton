package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavDestination;
import defpackage.ag0;
import defpackage.lc0;
import defpackage.md;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0002\t\nB\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "D", "", "<init>", "()V", "", "name", "(Ljava/lang/String;)V", "Name", "Extras", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class Navigator<D extends NavDestination> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NavController.NavControllerNavigatorState f18205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f18206b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/navigation/Navigator$Extras;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface Extras {
    }

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/Navigator$Name;", "", "", "value", "<init>", "(Ljava/lang/String;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention
    public @interface Name {
        String value();
    }

    public Navigator(String str) {
        str.getClass();
    }

    public abstract NavDestination a();

    public final NavigatorState b() {
        NavController.NavControllerNavigatorState navControllerNavigatorState = this.f18205a;
        if (navControllerNavigatorState != null) {
            return navControllerNavigatorState;
        }
        md.k("You cannot access the Navigator's state until the Navigator is attached");
        return null;
    }

    public NavDestination c(NavDestination navDestination, Bundle bundle, NavOptions navOptions) {
        return navDestination;
    }

    public void d(List list, NavOptions navOptions) {
        int i2 = 28;
        FilteringSequence.AnonymousClass1 anonymousClass1 = new FilteringSequence.AnonymousClass1();
        while (anonymousClass1.hasNext()) {
            b().g((NavBackStackEntry) anonymousClass1.next());
        }
    }

    public void e(NavController.NavControllerNavigatorState navControllerNavigatorState) {
        this.f18205a = navControllerNavigatorState;
        this.f18206b = true;
    }

    public void f(NavBackStackEntry navBackStackEntry) {
        NavDestination navDestination = navBackStackEntry.f18113c;
        if (navDestination == null) {
            navDestination = null;
        }
        if (navDestination == null) {
            return;
        }
        c(navDestination, null, NavOptionsBuilderKt.a(new ag0(18)));
        b().c(navBackStackEntry);
    }

    public void g(Bundle bundle) {
    }

    public Bundle h() {
        return null;
    }

    public void i(NavBackStackEntry navBackStackEntry, boolean z) {
        List list = (List) b().f18213e.getValue();
        if (!list.contains(navBackStackEntry)) {
            lc0.o("popBackStack was called with ", navBackStackEntry, " which does not exist in back stack ", list);
            return;
        }
        ListIterator listIterator = list.listIterator(list.size());
        NavBackStackEntry navBackStackEntry2 = null;
        while (j()) {
            navBackStackEntry2 = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.c(navBackStackEntry2, navBackStackEntry)) {
                break;
            }
        }
        if (navBackStackEntry2 != null) {
            b().d(navBackStackEntry2, z);
        }
    }

    public boolean j() {
        return true;
    }

    public Navigator() {
    }
}
