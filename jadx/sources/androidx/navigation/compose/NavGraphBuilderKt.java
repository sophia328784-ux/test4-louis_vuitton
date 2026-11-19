package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NavArgument;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavGraphBuilder;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-compose_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavGraphBuilderKt {
    public static final void a(NavGraphBuilder navGraphBuilder, KClass kClass, Map map, EmptyList emptyList, Function1 function1, Function1 function2, Function1 function3, Function1 function4, ComposableLambdaImpl composableLambdaImpl) {
        ComposeNavigatorDestinationBuilder composeNavigatorDestinationBuilder = new ComposeNavigatorDestinationBuilder((ComposeNavigator) navGraphBuilder.f18166h.b(ComposeNavigator.class), kClass, map, composableLambdaImpl);
        Iterator<E> it = emptyList.iterator();
        while (it.hasNext()) {
            NavDeepLink navDeepLink = (NavDeepLink) it.next();
            navDeepLink.getClass();
            composeNavigatorDestinationBuilder.f18163f.add(navDeepLink);
        }
        composeNavigatorDestinationBuilder.f18241j = function1;
        composeNavigatorDestinationBuilder.f18242k = function2;
        composeNavigatorDestinationBuilder.l = function3;
        composeNavigatorDestinationBuilder.m = function4;
        navGraphBuilder.m.add(composeNavigatorDestinationBuilder.a());
    }

    public static void b(NavGraphBuilder navGraphBuilder, String str, ComposableLambdaImpl composableLambdaImpl) {
        EmptyList<NamedNavArgument> emptyList = EmptyList.f71768b;
        ComposeNavigatorDestinationBuilder composeNavigatorDestinationBuilder = new ComposeNavigatorDestinationBuilder((ComposeNavigator) navGraphBuilder.f18166h.b(ComposeNavigator.class), str, composableLambdaImpl);
        for (NamedNavArgument namedNavArgument : emptyList) {
            String str2 = namedNavArgument.f18097a;
            NavArgument navArgument = namedNavArgument.f18098b;
            str2.getClass();
            navArgument.getClass();
            composeNavigatorDestinationBuilder.f18162e.put(str2, navArgument);
        }
        Iterator<E> it = emptyList.iterator();
        while (it.hasNext()) {
            NavDeepLink navDeepLink = (NavDeepLink) it.next();
            navDeepLink.getClass();
            composeNavigatorDestinationBuilder.f18163f.add(navDeepLink);
        }
        composeNavigatorDestinationBuilder.f18241j = null;
        composeNavigatorDestinationBuilder.f18242k = null;
        composeNavigatorDestinationBuilder.l = null;
        composeNavigatorDestinationBuilder.m = null;
        navGraphBuilder.m.add(composeNavigatorDestinationBuilder.a());
    }
}
