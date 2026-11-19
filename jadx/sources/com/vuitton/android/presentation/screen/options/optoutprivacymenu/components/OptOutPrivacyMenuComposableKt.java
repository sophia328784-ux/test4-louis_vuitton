package com.vuitton.android.presentation.screen.options.optoutprivacymenu.components;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.models.OptOutPrivacyMenuTrackingUiModel;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import defpackage.of0;
import defpackage.r0;
import defpackage.rh0;
import defpackage.t30;
import defpackage.wd0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OptOutPrivacyMenuComposableKt {
    public static final void a(final OptOutPrivacyMenuViewModel optOutPrivacyMenuViewModel, WebViewRouter webViewRouter, Composer composer, int i2) {
        optOutPrivacyMenuViewModel.getClass();
        webViewRouter.getClass();
        GapComposer gapComposerH = composer.h(-863179147);
        int i3 = (gapComposerH.K(optOutPrivacyMenuViewModel) ? 4 : 2) | i2 | (gapComposerH.y(webViewRouter) ? 32 : 16);
        final int i4 = 1;
        final int i5 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(optOutPrivacyMenuViewModel.getF59964b(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            int i6 = i3 & 14;
            boolean z = i6 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Object obj = objX;
            if (z || objX == composer$Companion$Empty$1) {
                Function0 function0 = new Function0() { // from class: qh0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i7 = i5;
                        OptOutPrivacyMenuViewModel optOutPrivacyMenuViewModel2 = optOutPrivacyMenuViewModel;
                        switch (i7) {
                            case 0:
                                optOutPrivacyMenuViewModel2.H2(OptOutPrivacyMenuTrackingUiModel.OptOutPrivacyMenuScreen.f59981a);
                                break;
                            default:
                                optOutPrivacyMenuViewModel2.H2(OptOutPrivacyMenuTrackingUiModel.OptOutOthersScreen.f59980a);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function0);
                obj = function0;
            }
            Function0 function1 = (Function0) obj;
            boolean z2 = i6 == 4;
            Object objX2 = gapComposerH.x();
            Object obj2 = objX2;
            if (z2 || objX2 == composer$Companion$Empty$1) {
                Function0 function2 = new Function0() { // from class: qh0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i7 = i4;
                        OptOutPrivacyMenuViewModel optOutPrivacyMenuViewModel2 = optOutPrivacyMenuViewModel;
                        switch (i7) {
                            case 0:
                                optOutPrivacyMenuViewModel2.H2(OptOutPrivacyMenuTrackingUiModel.OptOutPrivacyMenuScreen.f59981a);
                                break;
                            default:
                                optOutPrivacyMenuViewModel2.H2(OptOutPrivacyMenuTrackingUiModel.OptOutOthersScreen.f59980a);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function2);
                obj2 = function2;
            }
            Function0 function3 = (Function0) obj2;
            boolean zY = (i6 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            Object obj3 = objX3;
            if (zY || objX3 == composer$Companion$Empty$1) {
                t30 t30Var = new t30(optOutPrivacyMenuViewModel, context, 29);
                gapComposerH.q(t30Var);
                obj3 = t30Var;
            }
            Function0 function4 = (Function0) obj3;
            boolean zY2 = (i6 == 4) | gapComposerH.y(navHostControllerA);
            Object objX4 = gapComposerH.x();
            Object obj4 = objX4;
            if (zY2 || objX4 == composer$Companion$Empty$1) {
                rh0 rh0Var = new rh0(optOutPrivacyMenuViewModel, navHostControllerA, 0);
                gapComposerH.q(rh0Var);
                obj4 = rh0Var;
            }
            Function0 function5 = (Function0) obj4;
            boolean zY3 = (i6 == 4) | gapComposerH.y(context) | gapComposerH.y(webViewRouter) | gapComposerH.K(mutableStateB);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                r0 r0Var = new r0(optOutPrivacyMenuViewModel, context, webViewRouter, mutableStateB, 16);
                gapComposerH.q(r0Var);
                objX5 = r0Var;
            }
            Function0 function6 = (Function0) objX5;
            int i7 = (gapComposerH.y(context) ? 1 : 0) | (i6 != 4 ? 0 : 1) | (gapComposerH.K(mutableStateB) ? 1 : 0);
            Object objX6 = gapComposerH.x();
            Object obj5 = objX6;
            if (i7 != 0 || objX6 == composer$Companion$Empty$1) {
                of0 of0Var = new of0(optOutPrivacyMenuViewModel, context, mutableStateB, 5);
                gapComposerH.q(of0Var);
                obj5 = of0Var;
            }
            OptOutPrivacyMenuNavHostKt.a(navHostControllerA, function1, function3, function4, function5, function6, (Function0) obj5, gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(optOutPrivacyMenuViewModel, webViewRouter, i2, 3);
        }
    }
}
