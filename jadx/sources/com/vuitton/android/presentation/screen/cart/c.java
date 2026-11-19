package com.vuitton.android.presentation.screen.cart;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.cart.components.packaging.PackagingComposableKt;
import com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesComposableKt;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f54987b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f54988c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavHostController f54989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f54990f;

    public /* synthetic */ c(boolean z, Function2 function2, NavHostController navHostController, ReinsuranceViewModel reinsuranceViewModel) {
        this.f54988c = z;
        this.d = function2;
        this.f54989e = navHostController;
        this.f54990f = reinsuranceViewModel;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2 = this.f54987b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.f54990f;
        Function2 function2 = this.d;
        boolean z = this.f54988c;
        switch (i2) {
            case 0:
                ReinsuranceViewModel reinsuranceViewModel = (ReinsuranceViewModel) obj5;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Unit unit = Unit.f71739a;
                boolean zB = composer.b(z) | composer.K(function2);
                Object objX = composer.x();
                if (zB || objX == composer$Companion$Empty$1) {
                    objX = new NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1(z, function2, null);
                    composer.q(objX);
                }
                EffectsKt.e(composer, unit, (Function2) objX);
                NavHostController navHostController = this.f54989e;
                boolean zY = composer.y(navHostController);
                Object objX2 = composer.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    NativeCartNavHostKt$NativeCartNavHost$7$1$4$2$1 nativeCartNavHostKt$NativeCartNavHost$7$1$4$2$1 = new NativeCartNavHostKt$NativeCartNavHost$7$1$4$2$1(0, navHostController, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                    composer.q(nativeCartNavHostKt$NativeCartNavHost$7$1$4$2$1);
                    objX2 = nativeCartNavHostKt$NativeCartNavHost$7$1$4$2$1;
                }
                PackagingComposableKt.a(z, (Function0) objX2, reinsuranceViewModel, composer, 0);
                return unit;
            default:
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) obj5;
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Unit unit2 = Unit.f71739a;
                boolean zB2 = composer2.b(z) | composer2.K(function2);
                Object objX3 = composer2.x();
                if (zB2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new NativeCartNavHostKt$NativeCartNavHost$7$1$2$1$1(z, function2, null);
                    composer2.q(objX3);
                }
                EffectsKt.e(composer2, unit2, (Function2) objX3);
                NavHostController navHostController2 = this.f54989e;
                boolean zY2 = composer2.y(navHostController2);
                Object objX4 = composer2.x();
                if (zY2 || objX4 == composer$Companion$Empty$1) {
                    NativeCartNavHostKt$NativeCartNavHost$7$1$2$2$1 nativeCartNavHostKt$NativeCartNavHost$7$1$2$2$1 = new NativeCartNavHostKt$NativeCartNavHost$7$1$2$2$1(0, navHostController2, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                    composer2.q(nativeCartNavHostKt$NativeCartNavHost$7$1$2$2$1);
                    objX4 = nativeCartNavHostKt$NativeCartNavHost$7$1$2$2$1;
                }
                PerfumeSamplesComposableKt.a(nativeCartViewModel, z, (Function0) objX4, composer2, 0);
                return unit2;
        }
    }

    public /* synthetic */ c(boolean z, Function2 function2, NativeCartViewModel nativeCartViewModel, NavHostController navHostController) {
        this.f54988c = z;
        this.d = function2;
        this.f54990f = nativeCartViewModel;
        this.f54989e = navHostController;
    }
}
