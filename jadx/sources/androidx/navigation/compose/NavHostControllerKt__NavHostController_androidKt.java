package androidx.navigation.compose;

import android.content.Context;
import androidx.navigation.NavHostController;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.internal.NavControllerImpl;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-compose_release"}, k = 5, mv = {2, 0, 0}, xi = 48, xs = "androidx/navigation/compose/NavHostControllerKt")
abstract /* synthetic */ class NavHostControllerKt__NavHostController_androidKt {
    public static final NavHostController a(Context context) {
        NavHostController navHostController = new NavHostController(context);
        NavControllerImpl navControllerImpl = navHostController.f18122b;
        NavigatorProvider navigatorProvider = navControllerImpl.t;
        NavigatorProvider navigatorProvider2 = navControllerImpl.t;
        navigatorProvider.a(new ComposeNavGraphNavigator(navigatorProvider2));
        navigatorProvider2.a(new ComposeNavigator());
        navigatorProvider2.a(new DialogNavigator());
        return navHostController;
    }
}
