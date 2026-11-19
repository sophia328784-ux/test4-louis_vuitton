package androidx.navigation.internal;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt$valueIterator$1;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import defpackage.lc0;
import defpackage.md;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/internal/NavGraphImpl;", "", "Landroidx/navigation/NavGraph;", "graph", "<init>", "(Landroidx/navigation/NavGraph;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavGraphImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NavGraph f18346a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArrayCompat f18347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18348c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f18349e;

    public NavGraphImpl(NavGraph navGraph) {
        navGraph.getClass();
        this.f18346a = navGraph;
        this.f18347b = new SparseArrayCompat(0, 1, null);
    }

    public final void a(NavDestination navDestination) {
        navDestination.getClass();
        NavDestinationImpl navDestinationImpl = navDestination.f18152c;
        int i2 = navDestinationImpl.f18344e;
        String str = navDestinationImpl.f18345f;
        if (i2 == 0 && str == null) {
            md.n("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
            return;
        }
        NavGraph navGraph = this.f18346a;
        String str2 = navGraph.f18152c.f18345f;
        if (str2 != null && Intrinsics.c(str, str2)) {
            tg0.h("Destination ", navDestination, " cannot have the same route as graph ", navGraph);
            return;
        }
        if (i2 == navGraph.f18152c.f18344e) {
            tg0.h("Destination ", navDestination, " cannot have the same id as graph ", navGraph);
            return;
        }
        SparseArrayCompat sparseArrayCompat = this.f18347b;
        NavDestination navDestination2 = (NavDestination) sparseArrayCompat.b(i2);
        if (navDestination2 == navDestination) {
            return;
        }
        if (navDestination.d != null) {
            md.k("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
            return;
        }
        if (navDestination2 != null) {
            navDestination2.d = null;
        }
        navDestination.d = navGraph;
        sparseArrayCompat.d(navDestination.f18152c.f18344e, navDestination);
    }

    public final NavDestination b(int i2) {
        return d(i2, this.f18346a, null, false);
    }

    public final NavDestination c(String str, boolean z) {
        Object next;
        NavGraph navGraph;
        NavDestination navDestination;
        str.getClass();
        SparseArrayCompat sparseArrayCompat = this.f18347b;
        sparseArrayCompat.getClass();
        Iterator f74480a = SequencesKt.b(new SparseArrayKt$valueIterator$1(sparseArrayCompat)).getF74480a();
        do {
            if (!f74480a.hasNext()) {
                next = null;
                break;
            }
            next = f74480a.next();
            navDestination = (NavDestination) next;
            if (StringsKt.s(navDestination.f18152c.f18345f, str, false)) {
                break;
            }
        } while (navDestination.f18152c.a(str) == null);
        NavDestination navDestination2 = (NavDestination) next;
        if (navDestination2 != null) {
            return navDestination2;
        }
        if (!z || (navGraph = this.f18346a.d) == null) {
            return null;
        }
        NavGraphImpl navGraphImpl = navGraph.f18165h;
        navGraphImpl.getClass();
        if (StringsKt.w(str)) {
            return null;
        }
        return navGraphImpl.c(str, true);
    }

    public final NavDestination d(int i2, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        SparseArrayCompat sparseArrayCompat = this.f18347b;
        NavDestination navDestinationD = (NavDestination) sparseArrayCompat.b(i2);
        if (navDestination2 != null) {
            if (Intrinsics.c(navDestinationD, navDestination2) && Intrinsics.c(navDestinationD.d, navDestination2.d)) {
                return navDestinationD;
            }
            navDestinationD = null;
        } else if (navDestinationD != null) {
            return navDestinationD;
        }
        NavGraph navGraph = this.f18346a;
        if (z) {
            Iterator f74480a = SequencesKt.b(new SparseArrayKt$valueIterator$1(sparseArrayCompat)).getF74480a();
            do {
                if (!f74480a.hasNext()) {
                    navDestinationD = null;
                    break;
                }
                NavDestination navDestination3 = (NavDestination) f74480a.next();
                navDestinationD = (!(navDestination3 instanceof NavGraph) || navDestination3.equals(navDestination)) ? null : ((NavGraph) navDestination3).f18165h.d(i2, navGraph, navDestination2, true);
            } while (navDestinationD == null);
        }
        if (navDestinationD != null) {
            return navDestinationD;
        }
        NavGraph navGraph2 = navGraph.d;
        if (navGraph2 == null || navGraph2.equals(navDestination)) {
            return null;
        }
        NavGraph navGraph3 = navGraph.d;
        navGraph3.getClass();
        return navGraph3.f18165h.d(i2, navGraph, navDestination2, z);
    }

    public final NavDestination.DeepLinkMatch e(NavDestination.DeepLinkMatch deepLinkMatch, NavDeepLinkRequest navDeepLinkRequest, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatchP;
        navDestination.getClass();
        ArrayList arrayList = new ArrayList();
        NavGraph navGraph = this.f18346a;
        Iterator<NavDestination> it = navGraph.iterator();
        while (true) {
            deepLinkMatchP = null;
            if (!it.hasNext()) {
                break;
            }
            NavDestination next = it.next();
            deepLinkMatchP = Intrinsics.c(next, navDestination) ? null : next.i(navDeepLinkRequest);
            if (deepLinkMatchP != null) {
                arrayList.add(deepLinkMatchP);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch2 = (NavDestination.DeepLinkMatch) CollectionsKt.R(arrayList);
        NavGraph navGraph2 = navGraph.d;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatchP = navGraph2.p(navDeepLinkRequest, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.R(ArraysKt.v(new NavDestination.DeepLinkMatch[]{deepLinkMatch, deepLinkMatch2, deepLinkMatchP}));
    }

    public final void f(int i2) {
        NavGraph navGraph = this.f18346a;
        if (i2 == navGraph.f18152c.f18344e) {
            lc0.m("Start destination ", i2, " cannot use the same id as the graph ", navGraph);
            return;
        }
        if (this.f18349e != null) {
            g(null);
        }
        this.f18348c = i2;
        this.d = null;
    }

    public final void g(String str) {
        int iHashCode;
        if (str == null) {
            iHashCode = 0;
        } else {
            NavGraph navGraph = this.f18346a;
            if (str.equals(navGraph.f18152c.f18345f)) {
                tg0.h("Start destination ", str, " cannot use the same route as the graph ", navGraph);
                return;
            } else if (StringsKt.w(str)) {
                md.n("Cannot have an empty start destination route");
                return;
            } else {
                NavDestination.g.getClass();
                iHashCode = "android-app://androidx.navigation/".concat(str).hashCode();
            }
        }
        this.f18348c = iHashCode;
        this.f18349e = str;
    }
}
