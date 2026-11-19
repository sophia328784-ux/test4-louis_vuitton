package com.vuitton.android.presentation.screen.wishlist.components;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistMocksKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import defpackage.oo;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f65725b;

    public /* synthetic */ a(int i2) {
        this.f65725b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f65725b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$WishlistProductItemKt composableSingletons$WishlistProductItemKt = ComposableSingletons$WishlistProductItemKt.f65684a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_590637934$lambda$0");
                    WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) WishlistMocksKt.f65744a.getF71699b();
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new oo(17);
                        composer.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new oo(18);
                        composer.q(objX2);
                    }
                    Function0 function1 = (Function0) objX2;
                    Object objX3 = composer.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = ComposableSingletons$WishlistProductItemKt$lambda$590637934$1$3$1.f65686b;
                        composer.q(objX3);
                    }
                    Function1 function2 = (Function1) objX3;
                    Object objX4 = composer.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = ComposableSingletons$WishlistProductItemKt$lambda$590637934$1$4$1.f65687b;
                        composer.q(objX4);
                    }
                    WishlistProductItemKt.a(dTFunctionNameModifier, wishlistItemUiModel, true, false, function0, function1, function2, (Function1) objX4, composer, 14380422, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$WishlistScreenKt composableSingletons$WishlistScreenKt = ComposableSingletons$WishlistScreenKt.f65688a;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Object objX5 = composer2.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new SnackbarHostState();
                        composer2.q(objX5);
                    }
                    SnackbarHostState snackbarHostState = (SnackbarHostState) objX5;
                    WishlistViewState wishlistViewState = new WishlistViewState(InAppDispatchMockKt.f59833a, false, false, null, null, false, null, false, null, null, 1012, null);
                    WindowInsets windowInsetsA = WindowInsetsExtKt.a();
                    ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$WishlistScreenKt.f65690c;
                    Object objX6 = composer2.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new oo(19);
                        composer2.q(objX6);
                    }
                    Function0 function3 = (Function0) objX6;
                    Object objX7 = composer2.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = ComposableSingletons$WishlistScreenKt$lambda$371452118$1$3$1.f65691b;
                        composer2.q(objX7);
                    }
                    Function2 function4 = (Function2) objX7;
                    Object objX8 = composer2.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = ComposableSingletons$WishlistScreenKt$lambda$371452118$1$4$1.f65692b;
                        composer2.q(objX8);
                    }
                    Function1 function5 = (Function1) objX8;
                    Object objX9 = composer2.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = ComposableSingletons$WishlistScreenKt$lambda$371452118$1$5$1.f65693b;
                        composer2.q(objX9);
                    }
                    Function1 function6 = (Function1) objX9;
                    Object objX10 = composer2.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = ComposableSingletons$WishlistScreenKt$lambda$371452118$1$6$1.f65694b;
                        composer2.q(objX10);
                    }
                    WishlistScreenKt.b(null, snackbarHostState, wishlistViewState, composableLambdaImpl, false, windowInsetsA, function3, function4, function5, function6, (Function1) objX10, composer2, 920153136, 6);
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
