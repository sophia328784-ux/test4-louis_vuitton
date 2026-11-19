package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt$valueIterator$1;
import androidx.core.os.BundleKt;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.savedstate.SavedStateReader;
import defpackage.ag0;
import defpackage.eg0;
import defpackage.fc;
import defpackage.fg0;
import defpackage.gc;
import defpackage.lc0;
import defpackage.md;
import defpackage.pq0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0006¢\u0006\u0004\b\u0004\u0010\b¨\u0006\f"}, d2 = {"Landroidx/navigation/NavDestination;", "", "", "navigatorName", "<init>", "(Ljava/lang/String;)V", "Landroidx/navigation/Navigator;", "navigator", "(Landroidx/navigation/Navigator;)V", "ClassType", "DeepLinkMatch", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavDestination {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NavDestinationImpl f18152c;
    public NavGraph d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f18153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SparseArrayCompat f18154f;

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavDestination$ClassType;", "", "Lkotlin/reflect/KClass;", "value", "<init>", "(Lkotlin/reflect/KClass;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention
    public @interface ClassType {
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R$\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/navigation/NavDestination$Companion;", "", "", "", "Ljava/lang/Class;", "classes", "Ljava/util/Map;", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(NavContext navContext, int i2) {
            navContext.getClass();
            if (i2 <= 16777215) {
                return String.valueOf(i2);
            }
            try {
                Context context = navContext.f18331a;
                context.getClass();
                String resourceName = context.getResources().getResourceName(i2);
                resourceName.getClass();
                return resourceName;
            } catch (Resources.NotFoundException unused) {
                return String.valueOf(i2);
            }
        }

        public static Sequence b(NavDestination navDestination) {
            navDestination.getClass();
            return SequencesKt.n(navDestination, new ag0(8));
        }

        public static boolean c(NavDestination navDestination, KClass kClass) {
            navDestination.getClass();
            kClass.getClass();
            return RouteSerializerKt.b(SerializersKt.b(kClass)) == navDestination.f18152c.f18344e;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/navigation/NavDestination$DeepLinkMatch;", "", "Landroidx/navigation/NavDestination;", "destination", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "matchingArgs", "", "isExactDeepLink", "", "matchingPathSegments", "hasMatchingAction", "mimeTypeMatchLevel", "<init>", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NavDestination f18155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f18156c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f18157e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f18158f;
        public final int g;

        public DeepLinkMatch(NavDestination navDestination, Bundle bundle, boolean z, int i2, boolean z2, int i3) {
            navDestination.getClass();
            this.f18155b = navDestination;
            this.f18156c = bundle;
            this.d = z;
            this.f18157e = i2;
            this.f18158f = z2;
            this.g = i3;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final int compareTo(DeepLinkMatch deepLinkMatch) {
            deepLinkMatch.getClass();
            boolean z = this.d;
            if (z && !deepLinkMatch.d) {
                return 1;
            }
            if (!z && deepLinkMatch.d) {
                return -1;
            }
            int i2 = deepLinkMatch.f18157e;
            boolean z2 = deepLinkMatch.f18158f;
            Bundle bundle = deepLinkMatch.f18156c;
            int i3 = this.f18157e - i2;
            if (i3 > 0) {
                return 1;
            }
            if (i3 < 0) {
                return -1;
            }
            Bundle bundle2 = this.f18156c;
            if (bundle2 != null && bundle == null) {
                return 1;
            }
            if (bundle2 == null && bundle != null) {
                return -1;
            }
            if (bundle2 != null) {
                bundle2.getClass();
                int size = bundle2.size();
                bundle.getClass();
                bundle.getClass();
                int size2 = size - bundle.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z3 = this.f18158f;
            if (z3 && !z2) {
                return 1;
            }
            if (z3 || !z2) {
                return this.g - deepLinkMatch.g;
            }
            return -1;
        }
    }

    static {
        new LinkedHashMap();
    }

    public NavDestination(String str) {
        str.getClass();
        this.f18151b = str;
        this.f18152c = new NavDestinationImpl(this);
        this.f18154f = new SparseArrayCompat(0, 1, null);
    }

    public final void a(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        NavDestinationImpl navDestinationImpl = this.f18152c;
        navDestinationImpl.getClass();
        ArrayList arrayListA = NavArgumentKt.a(navDestinationImpl.d, new fg0(navDeepLink, 0));
        if (arrayListA.isEmpty()) {
            navDestinationImpl.f18343c.add(navDeepLink);
        } else {
            lc0.q("Deep link ", navDeepLink.f18131a, " can't be used to open destination ", navDestinationImpl.f18341a, ".\nFollowing required arguments are missing: ", arrayListA);
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this != obj) {
            if (obj != null && (obj instanceof NavDestination)) {
                NavDestinationImpl navDestinationImpl = this.f18152c;
                ArrayList arrayList = navDestinationImpl.f18343c;
                NavDestination navDestination = (NavDestination) obj;
                SparseArrayCompat sparseArrayCompat = navDestination.f18154f;
                NavDestinationImpl navDestinationImpl2 = navDestination.f18152c;
                boolean zC = Intrinsics.c(arrayList, navDestinationImpl2.f18343c);
                final SparseArrayCompat sparseArrayCompat2 = this.f18154f;
                if (sparseArrayCompat2.e() != sparseArrayCompat.e()) {
                    z = false;
                    break;
                }
                Iterator it = SequencesKt.b(new IntIterator() { // from class: androidx.collection.SparseArrayKt$keyIterator$1

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f3387b;

                    @Override // java.util.Iterator
                    public final boolean hasNext() {
                        return this.f3387b < sparseArrayCompat2.e();
                    }

                    @Override // kotlin.collections.IntIterator
                    public final int nextInt() {
                        int i2 = this.f3387b;
                        this.f3387b = i2 + 1;
                        return sparseArrayCompat2.c(i2);
                    }
                }).getF74480a();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    int iIntValue = ((Number) it.next()).intValue();
                    if (!Intrinsics.c(sparseArrayCompat2.b(iIntValue), sparseArrayCompat.b(iIntValue))) {
                        z = false;
                        break;
                    }
                }
                if (h().size() != navDestination.h().size()) {
                    z2 = false;
                    break;
                }
                Iterator it2 = CollectionsKt.o(h().entrySet()).f71766a.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = true;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it2.next();
                    if (!navDestination.h().containsKey(entry.getKey()) || !Intrinsics.c(navDestination.h().get(entry.getKey()), entry.getValue())) {
                        z2 = false;
                        break;
                    }
                }
                if (navDestinationImpl.f18344e != navDestinationImpl2.f18344e || !Intrinsics.c(navDestinationImpl.f18345f, navDestinationImpl2.f18345f) || !zC || !z || !z2) {
                }
            }
            return false;
        }
        return true;
    }

    public final Bundle f(Bundle bundle) {
        Object obj;
        LinkedHashMap linkedHashMap = this.f18152c.d;
        if (bundle == null && linkedHashMap.isEmpty()) {
            return null;
        }
        MapsKt.c();
        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            navArgument.getClass();
            str.getClass();
            if (navArgument.f18104c && (obj = navArgument.f18105e) != null) {
                navArgument.f18102a.e(bundleA, str, obj);
            }
        }
        if (bundle != null) {
            bundleA.putAll(bundle);
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                NavArgument navArgument2 = (NavArgument) entry2.getValue();
                boolean z = navArgument2.d;
                NavType navType = navArgument2.f18102a;
                if (!z) {
                    str2.getClass();
                    if (navArgument2.f18103b || !bundleA.containsKey(str2) || !SavedStateReader.n(str2, bundleA)) {
                        try {
                            navType.a(str2, bundleA);
                        } catch (IllegalStateException unused) {
                        }
                    }
                    lc0.s(pq0.r("Wrong argument type for '", str2, "' in argument savedState. "), navType.b(), " expected.");
                    return null;
                }
            }
        }
        return bundleA;
    }

    public final Map h() {
        return MapsKt.o(this.f18152c.d);
    }

    public int hashCode() {
        NavDestinationImpl navDestinationImpl = this.f18152c;
        int i2 = navDestinationImpl.f18344e * 31;
        String str = navDestinationImpl.f18345f;
        int iHashCode = i2 + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : navDestinationImpl.f18343c) {
            int i3 = iHashCode * 31;
            String str2 = navDeepLink.f18131a;
            int iHashCode2 = (i3 + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = navDeepLink.f18132b;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = navDeepLink.f18133c;
            iHashCode = iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }
        SparseArrayCompat sparseArrayCompat = this.f18154f;
        sparseArrayCompat.getClass();
        SparseArrayKt$valueIterator$1 sparseArrayKt$valueIterator$1 = new SparseArrayKt$valueIterator$1(sparseArrayCompat);
        while (sparseArrayKt$valueIterator$1.hasNext()) {
            NavAction navAction = (NavAction) sparseArrayKt$valueIterator$1.next();
            int i4 = ((iHashCode * 31) + navAction.f18099a) * 31;
            NavOptions navOptions = navAction.f18100b;
            iHashCode = i4 + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle bundle = navAction.f18101c;
            if (bundle != null) {
                iHashCode = SavedStateReader.c(bundle) + (iHashCode * 31);
            }
        }
        for (String str5 : h().keySet()) {
            int iB = fc.b(iHashCode * 31, 31, str5);
            Object obj = h().get(str5);
            iHashCode = iB + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:60:0x010e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0127  */
    public DeepLinkMatch i(NavDeepLinkRequest navDeepLinkRequest) {
        boolean zF;
        boolean zF2;
        int iA;
        DeepLinkMatch deepLinkMatch;
        Regex regex;
        MatchResult matchResultE;
        NavDestinationImpl navDestinationImpl = this.f18152c;
        LinkedHashMap linkedHashMap = navDestinationImpl.d;
        Uri uri = navDeepLinkRequest.f18147a;
        ArrayList<NavDeepLink> arrayList = navDestinationImpl.f18343c;
        if (arrayList.isEmpty()) {
            return null;
        }
        DeepLinkMatch deepLinkMatch2 = null;
        for (NavDeepLink navDeepLink : arrayList) {
            String str = navDeepLinkRequest.f18149c;
            String str2 = navDeepLinkRequest.f18148b;
            navDeepLink.getClass();
            Lazy lazy = navDeepLink.o;
            String str3 = navDeepLink.f18133c;
            Lazy lazy2 = navDeepLink.f18135f;
            String str4 = navDeepLink.f18132b;
            if (((Regex) lazy2.getF71699b()) == null) {
                zF = true;
            } else if (uri == null) {
                zF = false;
            } else {
                Regex regex2 = (Regex) lazy2.getF71699b();
                regex2.getClass();
                zF = regex2.f(uri.toString());
            }
            if (zF) {
                if (str4 == null ? true : str2 == null ? false : str4.equals(str2)) {
                    if (str3 == null) {
                        zF2 = true;
                    } else if (str == null) {
                        zF2 = false;
                    } else {
                        Regex regex3 = (Regex) lazy.getF71699b();
                        regex3.getClass();
                        zF2 = regex3.f(str);
                    }
                    if (zF2) {
                        Bundle bundleD = uri != null ? navDeepLink.d(uri, linkedHashMap) : null;
                        int iB = navDeepLink.b(uri);
                        boolean z = str2 != null && str2.equals(str4);
                        if (str == null || str3 == null) {
                            iA = -1;
                        } else {
                            Regex regex4 = (Regex) lazy.getF71699b();
                            regex4.getClass();
                            if (regex4.f(str)) {
                                iA = new NavDeepLink.MimeType(str3).compareTo(new NavDeepLink.MimeType(str));
                            } else {
                                iA = -1;
                            }
                        }
                        if (bundleD != null) {
                            deepLinkMatch = new DeepLinkMatch(navDestinationImpl.f18341a, bundleD, navDeepLink.p, iB, z, iA);
                            if (deepLinkMatch2 != null || deepLinkMatch.compareTo(deepLinkMatch2) > 0) {
                                deepLinkMatch2 = deepLinkMatch;
                            }
                        } else if (z || iA > -1) {
                            linkedHashMap.getClass();
                            MapsKt.c();
                            Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                            if (uri != null && (regex = (Regex) lazy2.getF71699b()) != null && (matchResultE = regex.e(uri.toString())) != null) {
                                navDeepLink.e(matchResultE, bundleA, linkedHashMap);
                                if (((Boolean) navDeepLink.g.getF71699b()).booleanValue()) {
                                    navDeepLink.f(uri, bundleA, linkedHashMap);
                                }
                            }
                            if (NavArgumentKt.a(linkedHashMap, new eg0(1, bundleA)).isEmpty()) {
                                deepLinkMatch = new DeepLinkMatch(navDestinationImpl.f18341a, bundleD, navDeepLink.p, iB, z, iA);
                                if (deepLinkMatch2 != null) {
                                    deepLinkMatch2 = deepLinkMatch;
                                } else {
                                    deepLinkMatch2 = deepLinkMatch;
                                }
                            }
                        }
                    }
                }
            }
        }
        return deepLinkMatch2;
    }

    public void m(Context context, AttributeSet attributeSet) {
        context.getClass();
        attributeSet.getClass();
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.f18224e);
        typedArrayObtainAttributes.getClass();
        o(typedArrayObtainAttributes.getString(2));
        if (typedArrayObtainAttributes.hasValue(1)) {
            int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
            NavDestinationImpl navDestinationImpl = this.f18152c;
            navDestinationImpl.f18344e = resourceId;
            navDestinationImpl.f18342b = null;
            NavContext navContext = new NavContext(context);
            int i2 = navDestinationImpl.f18344e;
            g.getClass();
            navDestinationImpl.f18342b = Companion.a(navContext, i2);
        }
        this.f18153e = typedArrayObtainAttributes.getText(0);
        typedArrayObtainAttributes.recycle();
    }

    public final void n(int i2, NavAction navAction) {
        navAction.getClass();
        if (!(this instanceof ActivityNavigator.Destination)) {
            if (i2 != 0) {
                this.f18154f.d(i2, navAction);
                return;
            } else {
                md.n("Cannot have an action with actionId 0");
                return;
            }
        }
        throw new UnsupportedOperationException("Cannot add action " + i2 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    public final void o(String str) {
        NavDestinationImpl navDestinationImpl = this.f18152c;
        if (str == null) {
            navDestinationImpl.f18344e = 0;
            navDestinationImpl.f18342b = null;
        } else {
            navDestinationImpl.getClass();
            if (StringsKt.w(str)) {
                md.n("Cannot have an empty route");
                return;
            }
            g.getClass();
            String strConcat = "android-app://androidx.navigation/".concat(str);
            NavDeepLink.Builder builder = new NavDeepLink.Builder();
            builder.f18140a = strConcat;
            ArrayList arrayListA = NavArgumentKt.a(navDestinationImpl.d, new fg0(new NavDeepLink(builder.f18140a, builder.f18141b, builder.f18142c), 1));
            if (!arrayListA.isEmpty()) {
                StringBuilder sbR = pq0.r("Cannot set route \"", str, "\" for destination ");
                sbR.append(navDestinationImpl.f18341a);
                sbR.append(". Following required arguments are missing: ");
                sbR.append(arrayListA);
                throw new IllegalArgumentException(sbR.toString().toString());
            }
            navDestinationImpl.g = LazyKt.b(new gc(strConcat, 2));
            navDestinationImpl.f18344e = strConcat.hashCode();
            navDestinationImpl.f18342b = null;
        }
        navDestinationImpl.f18345f = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        NavDestinationImpl navDestinationImpl = this.f18152c;
        String str = navDestinationImpl.f18342b;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(navDestinationImpl.f18344e));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = navDestinationImpl.f18345f;
        if (str2 != null && !StringsKt.w(str2)) {
            sb.append(" route=");
            sb.append(navDestinationImpl.f18345f);
        }
        if (this.f18153e != null) {
            sb.append(" label=");
            sb.append(this.f18153e);
        }
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavDestination(Navigator<? extends NavDestination> navigator) {
        navigator.getClass();
        NavigatorProvider.Companion companion = NavigatorProvider.f18207b;
        Class<?> cls = navigator.getClass();
        companion.getClass();
        this(NavigatorProvider.Companion.a(cls));
    }
}
