package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.internal.NavGraphImpl;
import defpackage.fc;
import defpackage.lc0;
import defpackage.md;
import defpackage.nz;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name("navigation")
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/navigation/NavGraphNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "<init>", "(Landroidx/navigation/NavigatorProvider;)V", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavGraphNavigator extends Navigator<NavGraph> {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NavigatorProvider f18170c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/NavGraphNavigator$Companion;", "", "", "NAME", "Ljava/lang/String;", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        super("navigation");
        navigatorProvider.getClass();
        this.f18170c = navigatorProvider;
    }

    @Override // androidx.navigation.Navigator
    public final void d(List list, NavOptions navOptions) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            NavDestination navDestination = navBackStackEntry.f18113c;
            navDestination.getClass();
            NavGraph navGraph = (NavGraph) navDestination;
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.f71921b = navBackStackEntry.f18117i.a();
            NavGraphImpl navGraphImpl = navGraph.f18165h;
            int i2 = navGraphImpl.f18348c;
            String str = navGraphImpl.f18349e;
            if (i2 == 0 && str == null) {
                NavDestinationImpl navDestinationImpl = navGraph.f18152c;
                String strValueOf = navDestinationImpl.f18342b;
                if (strValueOf == null) {
                    strValueOf = String.valueOf(navDestinationImpl.f18344e);
                }
                strValueOf.getClass();
                if (navGraphImpl.f18346a.f18152c.f18344e == 0) {
                    strValueOf = "the root navigation";
                }
                tg0.c("no start destination defined via app:startDestination for ".concat(strValueOf));
                return;
            }
            NavDestination navDestinationC = str != null ? navGraphImpl.c(str, false) : (NavDestination) navGraphImpl.f18347b.b(i2);
            if (navDestinationC == null) {
                if (navGraphImpl.d == null) {
                    String strValueOf2 = navGraphImpl.f18349e;
                    if (strValueOf2 == null) {
                        strValueOf2 = String.valueOf(navGraphImpl.f18348c);
                    }
                    navGraphImpl.d = strValueOf2;
                }
                String str2 = navGraphImpl.d;
                str2.getClass();
                md.n(fc.h("navigation destination ", str2, " is not a direct child of this NavGraph"));
                return;
            }
            NavDestinationImpl navDestinationImpl2 = navDestinationC.f18152c;
            if (str != null) {
                if (!str.equals(navDestinationImpl2.f18345f)) {
                    NavDestination.DeepLinkMatch deepLinkMatchA = navDestinationImpl2.a(str);
                    Bundle bundle = deepLinkMatchA != null ? deepLinkMatchA.f18156c : null;
                    if (bundle != null && !bundle.isEmpty()) {
                        MapsKt.c();
                        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        bundleA.putAll(bundle);
                        Bundle bundle2 = (Bundle) ref$ObjectRef.f71921b;
                        if (bundle2 != null) {
                            bundleA.putAll(bundle2);
                        }
                        ref$ObjectRef.f71921b = bundleA;
                    }
                }
                if (navDestinationC.h().isEmpty()) {
                    continue;
                } else {
                    ArrayList arrayListA = NavArgumentKt.a(navDestinationC.h(), new nz(3, ref$ObjectRef));
                    if (!arrayListA.isEmpty()) {
                        lc0.p("Cannot navigate to startDestination ", navDestinationC, ". Missing required arguments [", arrayListA, 93);
                        return;
                    }
                }
            }
            this.f18170c.c(navDestinationC.f18151b).d(CollectionsKt.O(b().a(navDestinationC, navDestinationC.f((Bundle) ref$ObjectRef.f71921b))), navOptions);
        }
    }

    @Override // androidx.navigation.Navigator
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public NavGraph a() {
        return new NavGraph(this);
    }
}
