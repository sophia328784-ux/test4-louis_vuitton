package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoRoutes;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyPictureComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderIntroComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pe implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78834b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f78835c;
    public final /* synthetic */ BeautyVtoViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavBackStack f78836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f78837f;

    public /* synthetic */ pe(BeautyVtoViewModel beautyVtoViewModel, NavBackStack navBackStack, Function0 function0, Function0 function1) {
        this.d = beautyVtoViewModel;
        this.f78836e = navBackStack;
        this.f78835c = function0;
        this.f78837f = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f78834b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final NavBackStack navBackStack = this.f78836e;
        final int i3 = 1;
        final int i4 = 0;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((BeautyVtoRoutes.PicturePreview) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    final BeautyVtoViewModel beautyVtoViewModel = this.d;
                    boolean zY = composer.y(beautyVtoViewModel) | composer.y(navBackStack);
                    final Function0 function0 = this.f78835c;
                    boolean zK = zY | composer.K(function0);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new Function0() { // from class: ne
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i5 = i4;
                                Function0 function1 = function0;
                                NavBackStack navBackStack2 = navBackStack;
                                BeautyVtoViewModel beautyVtoViewModel2 = beautyVtoViewModel;
                                switch (i5) {
                                    case 0:
                                        beautyVtoViewModel2.Hb();
                                        navBackStack2.getClass();
                                        if (!Nav3ExtKt.b(navBackStack2)) {
                                            function1.mo47invoke();
                                        }
                                        break;
                                    default:
                                        beautyVtoViewModel2.v3();
                                        Nav3ExtKt.a(navBackStack2, BeautyVtoRoutes.ShadeFinderScan.INSTANCE);
                                        function1.mo47invoke();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer.q(objX);
                    }
                    BeautyPictureComposableKt.b(beautyVtoViewModel, (Function0) objX, function0, this.f78837f, composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((BeautyVtoRoutes.ShadeFinderIntro) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    final BeautyVtoViewModel beautyVtoViewModel2 = this.d;
                    boolean zY2 = composer2.y(beautyVtoViewModel2) | composer2.y(navBackStack);
                    final Function0 function1 = this.f78837f;
                    boolean zK2 = zY2 | composer2.K(function1);
                    Object objX2 = composer2.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function0() { // from class: ne
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i5 = i3;
                                Function0 function2 = function1;
                                NavBackStack navBackStack2 = navBackStack;
                                BeautyVtoViewModel beautyVtoViewModel3 = beautyVtoViewModel2;
                                switch (i5) {
                                    case 0:
                                        beautyVtoViewModel3.Hb();
                                        navBackStack2.getClass();
                                        if (!Nav3ExtKt.b(navBackStack2)) {
                                            function2.mo47invoke();
                                        }
                                        break;
                                    default:
                                        beautyVtoViewModel3.v3();
                                        Nav3ExtKt.a(navBackStack2, BeautyVtoRoutes.ShadeFinderScan.INSTANCE);
                                        function2.mo47invoke();
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(objX2);
                    }
                    ShadeFinderIntroComposableKt.b(this.f78835c, (Function0) objX2, composer2, 0);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ pe(Function0 function0, BeautyVtoViewModel beautyVtoViewModel, NavBackStack navBackStack, Function0 function1) {
        this.f78835c = function0;
        this.d = beautyVtoViewModel;
        this.f78836e = navBackStack;
        this.f78837f = function1;
    }
}
