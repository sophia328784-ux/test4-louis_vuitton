package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt$valueIterator$1;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavGraphImpl;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002:\u0001\u0007B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavDestination;", "", "Landroidx/navigation/Navigator;", "navGraphNavigator", "<init>", "(Landroidx/navigation/Navigator;)V", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavGraph extends NavDestination implements Iterable<NavDestination>, KMappedMarker {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Companion f18164i = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NavGraphImpl f18165h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/navigation/NavGraph$Companion;", "", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(Navigator<? extends NavGraph> navigator) {
        super(navigator);
        navigator.getClass();
        this.f18165h = new NavGraphImpl(this);
    }

    @Override // androidx.navigation.NavDestination
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NavGraph) || !super.equals(obj)) {
            return false;
        }
        NavGraphImpl navGraphImpl = this.f18165h;
        int iE = navGraphImpl.f18347b.e();
        NavGraphImpl navGraphImpl2 = ((NavGraph) obj).f18165h;
        if (iE != navGraphImpl2.f18347b.e() || navGraphImpl.f18348c != navGraphImpl2.f18348c) {
            return false;
        }
        SparseArrayCompat sparseArrayCompat = navGraphImpl.f18347b;
        sparseArrayCompat.getClass();
        for (NavDestination navDestination : SequencesKt.b(new SparseArrayKt$valueIterator$1(sparseArrayCompat))) {
            if (!navDestination.equals(navGraphImpl2.f18347b.b(navDestination.f18152c.f18344e))) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.navigation.NavDestination
    public final int hashCode() {
        NavGraphImpl navGraphImpl = this.f18165h;
        int iC = navGraphImpl.f18348c;
        SparseArrayCompat sparseArrayCompat = navGraphImpl.f18347b;
        int iE = sparseArrayCompat.e();
        for (int i2 = 0; i2 < iE; i2++) {
            iC = (((iC * 31) + sparseArrayCompat.c(i2)) * 31) + ((NavDestination) sparseArrayCompat.f(i2)).hashCode();
        }
        return iC;
    }

    @Override // androidx.navigation.NavDestination
    public final NavDestination.DeepLinkMatch i(NavDeepLinkRequest navDeepLinkRequest) {
        NavDestination.DeepLinkMatch deepLinkMatchI = super.i(navDeepLinkRequest);
        NavGraphImpl navGraphImpl = this.f18165h;
        navGraphImpl.getClass();
        return navGraphImpl.e(deepLinkMatchI, navDeepLinkRequest, false, navGraphImpl.f18346a);
    }

    @Override // java.lang.Iterable
    public final Iterator<NavDestination> iterator() {
        NavGraphImpl navGraphImpl = this.f18165h;
        navGraphImpl.getClass();
        return new NavGraphImpl$iterator$1(navGraphImpl);
    }

    @Override // androidx.navigation.NavDestination
    public final void m(Context context, AttributeSet attributeSet) {
        context.getClass();
        attributeSet.getClass();
        super.m(context, attributeSet);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.d);
        typedArrayObtainAttributes.getClass();
        int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
        NavGraphImpl navGraphImpl = this.f18165h;
        navGraphImpl.f(resourceId);
        NavContext navContext = new NavContext(context);
        int i2 = navGraphImpl.f18348c;
        NavDestination.g.getClass();
        navGraphImpl.d = NavDestination.Companion.a(navContext, i2);
        typedArrayObtainAttributes.recycle();
    }

    public final NavDestination.DeepLinkMatch p(NavDeepLinkRequest navDeepLinkRequest, NavDestination navDestination) {
        navDestination.getClass();
        return this.f18165h.e(super.i(navDeepLinkRequest), navDeepLinkRequest, true, navDestination);
    }

    public final NavDestination.DeepLinkMatch q(String str, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatchQ;
        navDestination.getClass();
        NavGraphImpl navGraphImpl = this.f18165h;
        navGraphImpl.getClass();
        NavGraph navGraph = navGraphImpl.f18346a;
        navGraph.getClass();
        NavDestination.DeepLinkMatch deepLinkMatchA = navGraph.f18152c.a(str);
        ArrayList arrayList = new ArrayList();
        Iterator<NavDestination> it = navGraph.iterator();
        while (true) {
            deepLinkMatchQ = null;
            if (!it.hasNext()) {
                break;
            }
            NavDestination next = it.next();
            if (!Intrinsics.c(next, navDestination)) {
                if (next instanceof NavGraph) {
                    deepLinkMatchQ = ((NavGraph) next).q(str, false, navGraph);
                } else {
                    next.getClass();
                    deepLinkMatchQ = next.f18152c.a(str);
                }
            }
            if (deepLinkMatchQ != null) {
                arrayList.add(deepLinkMatchQ);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch = (NavDestination.DeepLinkMatch) CollectionsKt.R(arrayList);
        NavGraph navGraph2 = navGraph.d;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatchQ = navGraph2.q(str, true, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.R(ArraysKt.v(new NavDestination.DeepLinkMatch[]{deepLinkMatchA, deepLinkMatch, deepLinkMatchQ}));
    }

    @Override // androidx.navigation.NavDestination
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavGraphImpl navGraphImpl = this.f18165h;
        String str = navGraphImpl.f18349e;
        navGraphImpl.getClass();
        NavDestination navDestinationC = (str == null || StringsKt.w(str)) ? null : navGraphImpl.c(str, true);
        if (navDestinationC == null) {
            navDestinationC = navGraphImpl.b(navGraphImpl.f18348c);
        }
        sb.append(" startDestination=");
        if (navDestinationC == null) {
            String str2 = navGraphImpl.f18349e;
            if (str2 != null) {
                sb.append(str2);
            } else {
                String str3 = navGraphImpl.d;
                if (str3 != null) {
                    sb.append(str3);
                } else {
                    sb.append("0x" + Integer.toHexString(navGraphImpl.f18348c));
                }
            }
        } else {
            sb.append("{");
            sb.append(navDestinationC.toString());
            sb.append("}");
        }
        return sb.toString();
    }
}
