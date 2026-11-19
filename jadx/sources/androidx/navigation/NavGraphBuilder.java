package androidx.navigation;

import androidx.navigation.internal.NavGraphImpl;
import androidx.navigation.serialization.RouteSerializerKt;
import com.batch.android.s.b;
import defpackage.c90;
import defpackage.md;
import defpackage.wp;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;

/* JADX INFO: loaded from: classes.dex */
@NavDestinationDsl
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\b\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\b\u0010\fBH\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\r\u0012\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\r\u0012\u001b\u0010\u0012\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0010¢\u0006\u0002\b\u00110\u000e¢\u0006\u0004\b\b\u0010\u0013BD\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0014\u0012\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\r\u0012\u001b\u0010\u0012\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0010¢\u0006\u0002\b\u00110\u000e¢\u0006\u0004\b\b\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/navigation/NavGraphBuilder;", "Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavigatorProvider;", "provider", "", b.a.f24015b, "startDestination", "<init>", "(Landroidx/navigation/NavigatorProvider;II)V", "", "route", "(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V", "Lkotlin/reflect/KClass;", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "typeMap", "(Landroidx/navigation/NavigatorProvider;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Ljava/util/Map;)V", "", "(Landroidx/navigation/NavigatorProvider;Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/util/Map;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavGraphBuilder extends NavDestinationBuilder<NavGraph> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NavigatorProvider f18166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18167i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f18168j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final KClass f18169k;
    public final Object l;
    public final ArrayList m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, KClass<?> kClass, KClass<?> kClass2, Map<KType, NavType<?>> map) {
        super(navigatorProvider.b(NavGraphNavigator.class), kClass2, map);
        navigatorProvider.getClass();
        kClass.getClass();
        map.getClass();
        this.m = new ArrayList();
        this.f18166h = navigatorProvider;
        this.f18169k = kClass;
    }

    public final NavGraph c() {
        NavGraph navGraph = (NavGraph) super.a();
        ArrayList<NavDestination> arrayList = this.m;
        arrayList.getClass();
        NavGraphImpl navGraphImpl = navGraph.f18165h;
        navGraphImpl.getClass();
        for (NavDestination navDestination : arrayList) {
            if (navDestination != null) {
                navGraphImpl.a(navDestination);
            }
        }
        Object obj = this.l;
        KClass kClass = this.f18169k;
        String str = this.f18168j;
        int i2 = this.f18167i;
        if (i2 == 0 && str == null && kClass == null && obj == null) {
            if (this.f18161c != null) {
                md.k("You must set a start destination route");
                return null;
            }
            md.k("You must set a start destination id");
            return null;
        }
        if (str != null) {
            navGraphImpl.g(str);
            return navGraph;
        }
        if (kClass != null) {
            KSerializer kSerializerB = SerializersKt.b(kClass);
            int iB = RouteSerializerKt.b(kSerializerB);
            NavDestination navDestinationB = navGraphImpl.b(iB);
            if (navDestinationB == null) {
                wp.e("Cannot find startDestination ", kSerializerB.getF19838b().getF75659a(), " from NavGraph. Ensure the starting NavDestination was added with route from KClass.");
                return null;
            }
            String str2 = navDestinationB.f18152c.f18345f;
            str2.getClass();
            navGraphImpl.g(str2);
            navGraphImpl.f18348c = iB;
            return navGraph;
        }
        if (obj == null) {
            navGraphImpl.f(i2);
            return navGraph;
        }
        KSerializer kSerializerB2 = SerializersKt.b(Reflection.f71922a.b(obj.getClass()));
        c90 c90Var = new c90(obj, 2);
        int iB2 = RouteSerializerKt.b(kSerializerB2);
        NavDestination navDestinationB2 = navGraphImpl.b(iB2);
        if (navDestinationB2 != null) {
            navGraphImpl.g((String) c90Var.invoke(navDestinationB2));
            navGraphImpl.f18348c = iB2;
        } else {
            wp.e("Cannot find startDestination ", kSerializerB2.getF19838b().getF75659a(), " from NavGraph. Ensure the starting NavDestination was added with route from KClass.");
        }
        return navGraph;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, String str, String str2) {
        super(navigatorProvider.b(NavGraphNavigator.class), str2);
        navigatorProvider.getClass();
        str.getClass();
        this.m = new ArrayList();
        this.f18166h = navigatorProvider;
        this.f18168j = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public NavGraphBuilder(NavigatorProvider navigatorProvider, int i2, int i3) {
        super(navigatorProvider.b(NavGraphNavigator.class), i2);
        navigatorProvider.getClass();
        this.m = new ArrayList();
        this.f18166h = navigatorProvider;
        this.f18167i = i3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, Object obj, KClass<?> kClass, Map<KType, NavType<?>> map) {
        super(navigatorProvider.b(NavGraphNavigator.class), kClass, map);
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        this.m = new ArrayList();
        this.f18166h = navigatorProvider;
        this.l = obj;
    }
}
