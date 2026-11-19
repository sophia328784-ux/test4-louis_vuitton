package androidx.navigation;

import androidx.navigation.CollectionNavType;
import androidx.navigation.NavDestination;
import androidx.navigation.NavType;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.navigation.serialization.RouteBuilder;
import androidx.navigation.serialization.RouteSerializerKt;
import com.batch.android.s.b;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.descriptors.ContextAwareKt;

/* JADX INFO: loaded from: classes.dex */
@NavDestinationDsl
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u0000*\n\b\u0000\u0010\u0002 \u0001*\u00020\u00012\u00020\u0003B-\b\u0000\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bB#\b\u0017\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\fB#\b\u0016\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\rBD\b\u0016\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0004\u0012\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000e\u0012\u001b\u0010\u0013\u001a\u0017\u0012\u0004\u0012\u00020\u0010\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0011¢\u0006\u0002\b\u00120\u000f¢\u0006\u0004\b\n\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/NavDestination;", "D", "", "Landroidx/navigation/Navigator;", "navigator", "", b.a.f24015b, "", "route", "<init>", "(Landroidx/navigation/Navigator;ILjava/lang/String;)V", "(Landroidx/navigation/Navigator;I)V", "(Landroidx/navigation/Navigator;Ljava/lang/String;)V", "Lkotlin/reflect/KClass;", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "typeMap", "(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavDestinationBuilder<D extends NavDestination> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Navigator f18159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f18161c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f18162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f18163f;
    public final LinkedHashMap g;

    public NavDestinationBuilder(Navigator<? extends D> navigator, KClass<?> kClass, Map<KType, NavType<?>> map) {
        navigator.getClass();
        map.getClass();
        int iB = kClass != null ? RouteSerializerKt.b(SerializersKt.b(kClass)) : -1;
        String str = null;
        if (kClass != null) {
            KSerializer kSerializerB = SerializersKt.b(kClass);
            if (kSerializerB instanceof PolymorphicSerializer) {
                StringBuilder sb = new StringBuilder("Cannot generate route pattern from polymorphic class ");
                KClass kClassA = ContextAwareKt.a(((PolymorphicSerializer) kSerializerB).getF19838b());
                throw new IllegalArgumentException(n00.r(kClassA != null ? kClassA.B() : null, ". Routes can only be generated from concrete classes or objects.", sb));
            }
            final RouteBuilder routeBuilder = new RouteBuilder(kSerializerB);
            Function3 function3 = new Function3() { // from class: androidx.navigation.serialization.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj).intValue();
                    String str2 = (String) obj2;
                    NavType navType = (NavType) obj3;
                    str2.getClass();
                    navType.getClass();
                    boolean z = navType instanceof CollectionNavType;
                    RouteBuilder routeBuilder2 = routeBuilder;
                    int i2 = RouteBuilder.WhenMappings.f18365a[((z || routeBuilder2.f18362a.getF19838b().j(iIntValue)) ? RouteBuilder.ParamType.QUERY : RouteBuilder.ParamType.PATH).ordinal()];
                    if (i2 == 1) {
                        routeBuilder2.f18364c += '/' + d21.d('}', "{", str2);
                    } else {
                        if (i2 != 2) {
                            v40.g();
                            return null;
                        }
                        routeBuilder2.a(str2, "{" + str2 + '}');
                    }
                    return Unit.f71739a;
                }
            };
            int f75661c = kSerializerB.getF19838b().getF75661c();
            for (int i2 = 0; i2 < f75661c; i2++) {
                String strF = kSerializerB.getF19838b().f(i2);
                NavType navTypeA = RouteSerializerKt.a(kSerializerB.getF19838b().h(i2), map);
                if (navTypeA == null) {
                    md.n(RouteSerializerKt.f(strF, kSerializerB.getF19838b().h(i2).getF75659a(), kSerializerB.getF19838b().getF75659a(), map.toString()));
                    throw null;
                }
                function3.A(Integer.valueOf(i2), strF, navTypeA);
            }
            str = routeBuilder.f18363b + routeBuilder.f18364c + routeBuilder.d;
        }
        this(navigator, iB, str);
        if (kClass != null) {
            for (NamedNavArgument namedNavArgument : RouteSerializerKt.c(SerializersKt.b(kClass), map)) {
                this.f18162e.put(namedNavArgument.f18097a, namedNavArgument.f18098b);
            }
        }
        this.d = map;
    }

    public NavDestination a() {
        NavDestination navDestinationB = b();
        navDestinationB.f18153e = null;
        NavDestinationImpl navDestinationImpl = navDestinationB.f18152c;
        for (Map.Entry entry : this.f18162e.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            str.getClass();
            navArgument.getClass();
            navDestinationImpl.getClass();
            navDestinationImpl.d.put(str, navArgument);
        }
        Iterator it = this.f18163f.iterator();
        while (it.hasNext()) {
            navDestinationB.a((NavDeepLink) it.next());
        }
        for (Map.Entry entry2 : this.g.entrySet()) {
            navDestinationB.n(((Number) entry2.getKey()).intValue(), (NavAction) entry2.getValue());
        }
        String str2 = this.f18161c;
        if (str2 != null) {
            navDestinationB.o(str2);
        }
        int i2 = this.f18160b;
        if (i2 != -1) {
            navDestinationImpl.f18344e = i2;
            navDestinationImpl.f18342b = null;
        }
        return navDestinationB;
    }

    public NavDestination b() {
        return this.f18159a.a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public NavDestinationBuilder(Navigator<? extends D> navigator, int i2) {
        this(navigator, i2, (String) null);
        navigator.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(Navigator<? extends D> navigator, String str) {
        this(navigator, -1, str);
        navigator.getClass();
    }

    public NavDestinationBuilder(Navigator<? extends D> navigator, int i2, String str) {
        navigator.getClass();
        this.f18159a = navigator;
        this.f18160b = i2;
        this.f18161c = str;
        this.f18162e = new LinkedHashMap();
        this.f18163f = new ArrayList();
        this.g = new LinkedHashMap();
    }
}
