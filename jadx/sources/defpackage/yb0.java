package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceActivity;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceComposableKt;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yb0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MaintenanceActivity f81340c;

    public /* synthetic */ yb0(MaintenanceActivity maintenanceActivity, int i2) {
        this.f81339b = i2;
        this.f81340c = maintenanceActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81339b;
        final MaintenanceActivity maintenanceActivity = this.f81340c;
        Object[] objArr = 0;
        final int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                MaintenanceActivity.Companion companion = MaintenanceActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-507359068, new yb0(maintenanceActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                MaintenanceActivity.Companion companion2 = MaintenanceActivity.q;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean zY = composer.y(maintenanceActivity);
                    Object objX = composer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zY || objX == composer$Companion$Empty$1) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        objX = new Function1() { // from class: zb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                int i4 = objArr2;
                                MaintenanceActivity maintenanceActivity2 = maintenanceActivity;
                                String str = (String) obj3;
                                switch (i4) {
                                    case 0:
                                        MaintenanceActivity.Companion companion3 = MaintenanceActivity.q;
                                        str.getClass();
                                        WebViewRouter webViewRouter = maintenanceActivity2.p;
                                        if (webViewRouter != null) {
                                            WebViewRouter.b(webViewRouter, maintenanceActivity2, str, false, 124);
                                            return Unit.f71739a;
                                        }
                                        Intrinsics.h("webViewRouter");
                                        throw null;
                                    default:
                                        MaintenanceActivity.Companion companion4 = MaintenanceActivity.q;
                                        str.getClass();
                                        ActivityExtKt.f(maintenanceActivity2, str);
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    boolean zY2 = composer.y(maintenanceActivity);
                    Object objX2 = composer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function1() { // from class: zb0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                int i4 = i3;
                                MaintenanceActivity maintenanceActivity2 = maintenanceActivity;
                                String str = (String) obj3;
                                switch (i4) {
                                    case 0:
                                        MaintenanceActivity.Companion companion3 = MaintenanceActivity.q;
                                        str.getClass();
                                        WebViewRouter webViewRouter = maintenanceActivity2.p;
                                        if (webViewRouter != null) {
                                            WebViewRouter.b(webViewRouter, maintenanceActivity2, str, false, 124);
                                            return Unit.f71739a;
                                        }
                                        Intrinsics.h("webViewRouter");
                                        throw null;
                                    default:
                                        MaintenanceActivity.Companion companion4 = MaintenanceActivity.q;
                                        str.getClass();
                                        ActivityExtKt.f(maintenanceActivity2, str);
                                        return Unit.f71739a;
                                }
                            }
                        };
                        composer.q(objX2);
                    }
                    MaintenanceComposableKt.c(null, function1, (Function1) objX2, composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
