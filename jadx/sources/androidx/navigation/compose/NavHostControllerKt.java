package androidx.navigation.compose;

import android.content.Context;
import android.os.Bundle;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import defpackage.n50;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"androidx/navigation/compose/NavHostControllerKt__NavHostController_androidKt"}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class NavHostControllerKt {
    public static final NavHostController a(Navigator[] navigatorArr, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        final Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        Object[] objArrCopyOf = Arrays.copyOf(navigatorArr, navigatorArr.length);
        SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new n50(22), new Function1() { // from class: androidx.navigation.compose.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) throws Throwable {
                NavHostController navHostControllerA = NavHostControllerKt__NavHostController_androidKt.a(context);
                navHostControllerA.g((Bundle) obj);
                return navHostControllerA;
            }
        });
        boolean zY = composer.y(context);
        Object objX = composer.x();
        if (zY || objX == Composer.Companion.f7939a) {
            objX = new Function0() { // from class: androidx.navigation.compose.a
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return NavHostControllerKt__NavHostController_androidKt.a(context);
                }
            };
            composer.q(objX);
        }
        NavHostController navHostController = (NavHostController) RememberSaveableKt.c(objArrCopyOf, saverKt$Saver$1, (Function0) objX, composer, 0, 4);
        for (Navigator navigator : navigatorArr) {
            navHostController.f18122b.t.a(navigator);
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return navHostController;
    }
}
