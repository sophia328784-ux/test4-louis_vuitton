package defpackage;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVCheckoutLocalProviderKt;
import com.vuitton.android.presentation.screen.booking.summary.components.bottomsheets.ExitWarningBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.CancelProductCustomizationBottomSheetKt;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import com.vuitton.android.presentation.screen.webview.WebViewUiModel;
import defpackage.l61;
import defpackage.sw;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m61 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebViewFragment f76194c;

    public /* synthetic */ m61(WebViewFragment webViewFragment, int i2) {
        this.f76193b = i2;
        this.f76194c = webViewFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76193b;
        final WebViewFragment webViewFragment = this.f76194c;
        final int i3 = 2;
        final int i4 = 1;
        boolean z = false;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i2) {
            case 0:
                int iIntValue = num.intValue();
                WebViewFragment.Companion companion = WebViewFragment.n1;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1849301008, new Function2() { // from class: com.vuitton.android.presentation.screen.webview.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            int i5 = i3;
                            final WebViewFragment webViewFragment2 = webViewFragment;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            final int i6 = 0;
                            final int i7 = 1;
                            switch (i5) {
                                case 0:
                                    Composer composer2 = (Composer) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion2 = WebViewFragment.n1;
                                    if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        WebViewFragment webViewFragment3 = webViewFragment;
                                        MutableState mutableStateB = SnapshotStateKt.b(webViewFragment3.T().x, composer2);
                                        MutableState mutableStateB2 = SnapshotStateKt.b(webViewFragment3.k1, composer2);
                                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                        LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                        int paddingTop = webViewFragment3.P().f51391b.f51467b.getPaddingTop();
                                        int paddingBottom = webViewFragment3.P().f51393e.getPaddingBottom();
                                        Boolean bool = (Boolean) mutableStateB2.getF10755b();
                                        bool.getClass();
                                        boolean zK = composer2.K(mutableStateB2) | composer2.y(lVModalBottomSheetStateF);
                                        Object objX = composer2.x();
                                        if (zK || objX == composer$Companion$Empty$1) {
                                            objX = new WebViewFragment$initContactUsComposeView$composeView$1$1$1$1$1(mutableStateB2, lVModalBottomSheetStateF, null);
                                            composer2.q(objX);
                                        }
                                        EffectsKt.e(composer2, bool, (Function2) objX);
                                        SheetValue sheetValueC = lVModalBottomSheetStateF.f48798a.c();
                                        boolean zY = composer2.y(webViewFragment3) | composer2.y(lVModalBottomSheetStateF);
                                        Object objX2 = composer2.x();
                                        if (zY || objX2 == composer$Companion$Empty$1) {
                                            objX2 = new WebViewFragment$initContactUsComposeView$composeView$1$1$1$2$1(webViewFragment3, lVModalBottomSheetStateF, null);
                                            composer2.q(objX2);
                                        }
                                        EffectsKt.e(composer2, sheetValueC, (Function2) objX2);
                                        LVCheckoutLocalProviderKt.a(ComposableLambdaKt.b(1856354276, new sw(lVModalBottomSheetStateF, lVModalBottomSheetStateF2, webViewFragment3, paddingTop, paddingBottom, mutableStateB), composer2), composer2, 6);
                                    } else {
                                        composer2.D();
                                    }
                                    break;
                                case 1:
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue3 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion3 = WebViewFragment.n1;
                                    if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        MutableState mutableStateC = FlowExtKt.c(webViewFragment2.m1, null, composer3, 0, 7);
                                        final LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, composer3, null);
                                        boolean zY2 = composer3.y(webViewFragment2);
                                        Object objX3 = composer3.x();
                                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                                            objX3 = new l61(webViewFragment2, 6);
                                            composer3.q(objX3);
                                        }
                                        BackHandlerKt.a(false, (Function0) objX3, composer3, 0, 1);
                                        Boolean bool2 = (Boolean) mutableStateC.getF10755b();
                                        bool2.booleanValue();
                                        boolean zK2 = composer3.K(mutableStateC) | composer3.y(lVModalBottomSheetStateF3);
                                        Object objX4 = composer3.x();
                                        if (zK2 || objX4 == composer$Companion$Empty$1) {
                                            objX4 = new WebViewFragment$initBookingExitComposeView$composeView$1$1$1$2$1(mutableStateC, lVModalBottomSheetStateF3, null);
                                            composer3.q(objX4);
                                        }
                                        EffectsKt.e(composer3, bool2, (Function2) objX4);
                                        if (lVModalBottomSheetStateF3.a()) {
                                            composer3.L(1472908183);
                                            String strC = StringResources_androidKt.c(composer3, R.string.alt_close);
                                            boolean zY3 = composer3.y(webViewFragment2);
                                            Object objX5 = composer3.x();
                                            if (zY3 || objX5 == composer$Companion$Empty$1) {
                                                objX5 = new l61(webViewFragment2, 7);
                                                composer3.q(objX5);
                                            }
                                            LVModalBottomSheetKt.b(null, strC, (Function0) objX5, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(-673153061, new Function3() { // from class: n61
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object A(Object obj5, Object obj6, Object obj7) {
                                                    int i8 = i6;
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF3;
                                                    WebViewFragment webViewFragment4 = webViewFragment2;
                                                    ColumnScope columnScope = (ColumnScope) obj5;
                                                    switch (i8) {
                                                        case 0:
                                                            Composer composer4 = (Composer) obj6;
                                                            int iIntValue4 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion4 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                                                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                                boolean zY4 = composer4.y(webViewFragment4);
                                                                Object objX6 = composer4.x();
                                                                if (zY4 || objX6 == composer$Companion$Empty$2) {
                                                                    objX6 = new l61(webViewFragment4, 12);
                                                                    composer4.q(objX6);
                                                                }
                                                                Function0 function0 = (Function0) objX6;
                                                                boolean zY5 = composer4.y(lVModalBottomSheetState) | composer4.y(webViewFragment4);
                                                                Object objX7 = composer4.x();
                                                                if (zY5 || objX7 == composer$Companion$Empty$2) {
                                                                    objX7 = new o61(lVModalBottomSheetState, webViewFragment4);
                                                                    composer4.q(objX7);
                                                                }
                                                                ExitWarningBottomSheetContentKt.a(function0, (Function0) objX7, composer4, 0);
                                                            } else {
                                                                composer4.D();
                                                            }
                                                            break;
                                                        default:
                                                            Composer composer5 = (Composer) obj6;
                                                            int iIntValue5 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion5 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                                                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                                                String strC2 = StringResources_androidKt.c(composer5, R.string.my_monogram_bottomsheet_configurator_subtitle);
                                                                String strC3 = StringResources_androidKt.c(composer5, R.string.my_monogram_bottomsheet_configurator_text);
                                                                boolean zY6 = composer5.y(webViewFragment4);
                                                                Object objX8 = composer5.x();
                                                                if (zY6 || objX8 == composer$Companion$Empty$2) {
                                                                    objX8 = new l61(webViewFragment4, 11);
                                                                    composer5.q(objX8);
                                                                }
                                                                Function0 function1 = (Function0) objX8;
                                                                boolean zY7 = composer5.y(webViewFragment4) | composer5.y(lVModalBottomSheetState);
                                                                Object objX9 = composer5.x();
                                                                if (zY7 || objX9 == composer$Companion$Empty$2) {
                                                                    objX9 = new o61(webViewFragment4, lVModalBottomSheetState);
                                                                    composer5.q(objX9);
                                                                }
                                                                CancelProductCustomizationBottomSheetKt.a(strC2, strC3, function1, (Function0) objX9, composer5, 0);
                                                            } else {
                                                                composer5.D();
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer3), composer3, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                                            composer3.F();
                                        } else {
                                            composer3.L(1473574838);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.D();
                                    }
                                    break;
                                default:
                                    Composer composer4 = (Composer) obj3;
                                    int iIntValue4 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion4 = WebViewFragment.n1;
                                    if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        MutableState mutableStateB3 = SnapshotStateKt.b(webViewFragment2.l1, composer4);
                                        boolean zY4 = composer4.y(webViewFragment2);
                                        Object objX6 = composer4.x();
                                        if (zY4 || objX6 == composer$Companion$Empty$1) {
                                            objX6 = new l61(webViewFragment2, 8);
                                            composer4.q(objX6);
                                        }
                                        BackHandlerKt.a(false, (Function0) objX6, composer4, 0, 1);
                                        final LVModalBottomSheetState lVModalBottomSheetStateF4 = LVModalBottomSheetKt.f(0, 7, composer4, null);
                                        Boolean bool3 = (Boolean) mutableStateB3.getF10755b();
                                        bool3.booleanValue();
                                        boolean zK3 = composer4.K(mutableStateB3) | composer4.y(webViewFragment2) | composer4.y(lVModalBottomSheetStateF4);
                                        Object objX7 = composer4.x();
                                        if (zK3 || objX7 == composer$Companion$Empty$1) {
                                            objX7 = new WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1(webViewFragment2, lVModalBottomSheetStateF4, mutableStateB3, null);
                                            composer4.q(objX7);
                                        }
                                        EffectsKt.e(composer4, bool3, (Function2) objX7);
                                        if (lVModalBottomSheetStateF4.a()) {
                                            composer4.L(982893904);
                                            String strC2 = StringResources_androidKt.c(composer4, R.string.alt_close);
                                            boolean zY5 = composer4.y(webViewFragment2);
                                            Object objX8 = composer4.x();
                                            if (zY5 || objX8 == composer$Companion$Empty$1) {
                                                objX8 = new l61(webViewFragment2, 9);
                                                composer4.q(objX8);
                                            }
                                            LVModalBottomSheetKt.b(null, strC2, (Function0) objX8, lVModalBottomSheetStateF4, null, 0L, false, null, ComposableLambdaKt.b(-714644001, new Function3() { // from class: n61
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object A(Object obj5, Object obj6, Object obj7) {
                                                    int i8 = i7;
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF4;
                                                    WebViewFragment webViewFragment4 = webViewFragment2;
                                                    ColumnScope columnScope = (ColumnScope) obj5;
                                                    switch (i8) {
                                                        case 0:
                                                            Composer composer5 = (Composer) obj6;
                                                            int iIntValue5 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion5 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                                                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                                                boolean zY6 = composer5.y(webViewFragment4);
                                                                Object objX9 = composer5.x();
                                                                if (zY6 || objX9 == composer$Companion$Empty$2) {
                                                                    objX9 = new l61(webViewFragment4, 12);
                                                                    composer5.q(objX9);
                                                                }
                                                                Function0 function0 = (Function0) objX9;
                                                                boolean zY7 = composer5.y(lVModalBottomSheetState) | composer5.y(webViewFragment4);
                                                                Object objX10 = composer5.x();
                                                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                                                    objX10 = new o61(lVModalBottomSheetState, webViewFragment4);
                                                                    composer5.q(objX10);
                                                                }
                                                                ExitWarningBottomSheetContentKt.a(function0, (Function0) objX10, composer5, 0);
                                                            } else {
                                                                composer5.D();
                                                            }
                                                            break;
                                                        default:
                                                            Composer composer6 = (Composer) obj6;
                                                            int iIntValue6 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion6 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                                String strC3 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_subtitle);
                                                                String strC4 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_text);
                                                                boolean zY8 = composer6.y(webViewFragment4);
                                                                Object objX11 = composer6.x();
                                                                if (zY8 || objX11 == composer$Companion$Empty$2) {
                                                                    objX11 = new l61(webViewFragment4, 11);
                                                                    composer6.q(objX11);
                                                                }
                                                                Function0 function1 = (Function0) objX11;
                                                                boolean zY9 = composer6.y(webViewFragment4) | composer6.y(lVModalBottomSheetState);
                                                                Object objX12 = composer6.x();
                                                                if (zY9 || objX12 == composer$Companion$Empty$2) {
                                                                    objX12 = new o61(webViewFragment4, lVModalBottomSheetState);
                                                                    composer6.q(objX12);
                                                                }
                                                                CancelProductCustomizationBottomSheetKt.a(strC3, strC4, function1, (Function0) objX12, composer6, 0);
                                                            } else {
                                                                composer6.D();
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer4), composer4, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                                            composer4.F();
                                        } else {
                                            composer4.L(986054354);
                                            composer4.F();
                                        }
                                    } else {
                                        composer4.D();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            case 1:
                int iIntValue2 = num.intValue();
                WebViewFragment.Companion companion2 = WebViewFragment.n1;
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1519646132, new Function2() { // from class: com.vuitton.android.presentation.screen.webview.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            int i5 = i4;
                            final WebViewFragment webViewFragment2 = webViewFragment;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            final int i6 = 0;
                            final int i7 = 1;
                            switch (i5) {
                                case 0:
                                    Composer composer2 = (Composer) obj3;
                                    int iIntValue3 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion3 = WebViewFragment.n1;
                                    if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        WebViewFragment webViewFragment3 = webViewFragment;
                                        MutableState mutableStateB = SnapshotStateKt.b(webViewFragment3.T().x, composer2);
                                        MutableState mutableStateB2 = SnapshotStateKt.b(webViewFragment3.k1, composer2);
                                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                        LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                        int paddingTop = webViewFragment3.P().f51391b.f51467b.getPaddingTop();
                                        int paddingBottom = webViewFragment3.P().f51393e.getPaddingBottom();
                                        Boolean bool = (Boolean) mutableStateB2.getF10755b();
                                        bool.getClass();
                                        boolean zK = composer2.K(mutableStateB2) | composer2.y(lVModalBottomSheetStateF);
                                        Object objX = composer2.x();
                                        if (zK || objX == composer$Companion$Empty$1) {
                                            objX = new WebViewFragment$initContactUsComposeView$composeView$1$1$1$1$1(mutableStateB2, lVModalBottomSheetStateF, null);
                                            composer2.q(objX);
                                        }
                                        EffectsKt.e(composer2, bool, (Function2) objX);
                                        SheetValue sheetValueC = lVModalBottomSheetStateF.f48798a.c();
                                        boolean zY = composer2.y(webViewFragment3) | composer2.y(lVModalBottomSheetStateF);
                                        Object objX2 = composer2.x();
                                        if (zY || objX2 == composer$Companion$Empty$1) {
                                            objX2 = new WebViewFragment$initContactUsComposeView$composeView$1$1$1$2$1(webViewFragment3, lVModalBottomSheetStateF, null);
                                            composer2.q(objX2);
                                        }
                                        EffectsKt.e(composer2, sheetValueC, (Function2) objX2);
                                        LVCheckoutLocalProviderKt.a(ComposableLambdaKt.b(1856354276, new sw(lVModalBottomSheetStateF, lVModalBottomSheetStateF2, webViewFragment3, paddingTop, paddingBottom, mutableStateB), composer2), composer2, 6);
                                    } else {
                                        composer2.D();
                                    }
                                    break;
                                case 1:
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue4 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion4 = WebViewFragment.n1;
                                    if (composer3.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        MutableState mutableStateC = FlowExtKt.c(webViewFragment2.m1, null, composer3, 0, 7);
                                        final LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, composer3, null);
                                        boolean zY2 = composer3.y(webViewFragment2);
                                        Object objX3 = composer3.x();
                                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                                            objX3 = new l61(webViewFragment2, 6);
                                            composer3.q(objX3);
                                        }
                                        BackHandlerKt.a(false, (Function0) objX3, composer3, 0, 1);
                                        Boolean bool2 = (Boolean) mutableStateC.getF10755b();
                                        bool2.booleanValue();
                                        boolean zK2 = composer3.K(mutableStateC) | composer3.y(lVModalBottomSheetStateF3);
                                        Object objX4 = composer3.x();
                                        if (zK2 || objX4 == composer$Companion$Empty$1) {
                                            objX4 = new WebViewFragment$initBookingExitComposeView$composeView$1$1$1$2$1(mutableStateC, lVModalBottomSheetStateF3, null);
                                            composer3.q(objX4);
                                        }
                                        EffectsKt.e(composer3, bool2, (Function2) objX4);
                                        if (lVModalBottomSheetStateF3.a()) {
                                            composer3.L(1472908183);
                                            String strC = StringResources_androidKt.c(composer3, R.string.alt_close);
                                            boolean zY3 = composer3.y(webViewFragment2);
                                            Object objX5 = composer3.x();
                                            if (zY3 || objX5 == composer$Companion$Empty$1) {
                                                objX5 = new l61(webViewFragment2, 7);
                                                composer3.q(objX5);
                                            }
                                            LVModalBottomSheetKt.b(null, strC, (Function0) objX5, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(-673153061, new Function3() { // from class: n61
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object A(Object obj5, Object obj6, Object obj7) {
                                                    int i8 = i6;
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF3;
                                                    WebViewFragment webViewFragment4 = webViewFragment2;
                                                    ColumnScope columnScope = (ColumnScope) obj5;
                                                    switch (i8) {
                                                        case 0:
                                                            Composer composer5 = (Composer) obj6;
                                                            int iIntValue5 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion5 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                                                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                                                boolean zY6 = composer5.y(webViewFragment4);
                                                                Object objX9 = composer5.x();
                                                                if (zY6 || objX9 == composer$Companion$Empty$2) {
                                                                    objX9 = new l61(webViewFragment4, 12);
                                                                    composer5.q(objX9);
                                                                }
                                                                Function0 function0 = (Function0) objX9;
                                                                boolean zY7 = composer5.y(lVModalBottomSheetState) | composer5.y(webViewFragment4);
                                                                Object objX10 = composer5.x();
                                                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                                                    objX10 = new o61(lVModalBottomSheetState, webViewFragment4);
                                                                    composer5.q(objX10);
                                                                }
                                                                ExitWarningBottomSheetContentKt.a(function0, (Function0) objX10, composer5, 0);
                                                            } else {
                                                                composer5.D();
                                                            }
                                                            break;
                                                        default:
                                                            Composer composer6 = (Composer) obj6;
                                                            int iIntValue6 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion6 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                                String strC3 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_subtitle);
                                                                String strC4 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_text);
                                                                boolean zY8 = composer6.y(webViewFragment4);
                                                                Object objX11 = composer6.x();
                                                                if (zY8 || objX11 == composer$Companion$Empty$2) {
                                                                    objX11 = new l61(webViewFragment4, 11);
                                                                    composer6.q(objX11);
                                                                }
                                                                Function0 function1 = (Function0) objX11;
                                                                boolean zY9 = composer6.y(webViewFragment4) | composer6.y(lVModalBottomSheetState);
                                                                Object objX12 = composer6.x();
                                                                if (zY9 || objX12 == composer$Companion$Empty$2) {
                                                                    objX12 = new o61(webViewFragment4, lVModalBottomSheetState);
                                                                    composer6.q(objX12);
                                                                }
                                                                CancelProductCustomizationBottomSheetKt.a(strC3, strC4, function1, (Function0) objX12, composer6, 0);
                                                            } else {
                                                                composer6.D();
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer3), composer3, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                                            composer3.F();
                                        } else {
                                            composer3.L(1473574838);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.D();
                                    }
                                    break;
                                default:
                                    Composer composer4 = (Composer) obj3;
                                    int iIntValue5 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion5 = WebViewFragment.n1;
                                    if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        MutableState mutableStateB3 = SnapshotStateKt.b(webViewFragment2.l1, composer4);
                                        boolean zY4 = composer4.y(webViewFragment2);
                                        Object objX6 = composer4.x();
                                        if (zY4 || objX6 == composer$Companion$Empty$1) {
                                            objX6 = new l61(webViewFragment2, 8);
                                            composer4.q(objX6);
                                        }
                                        BackHandlerKt.a(false, (Function0) objX6, composer4, 0, 1);
                                        final LVModalBottomSheetState lVModalBottomSheetStateF4 = LVModalBottomSheetKt.f(0, 7, composer4, null);
                                        Boolean bool3 = (Boolean) mutableStateB3.getF10755b();
                                        bool3.booleanValue();
                                        boolean zK3 = composer4.K(mutableStateB3) | composer4.y(webViewFragment2) | composer4.y(lVModalBottomSheetStateF4);
                                        Object objX7 = composer4.x();
                                        if (zK3 || objX7 == composer$Companion$Empty$1) {
                                            objX7 = new WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1(webViewFragment2, lVModalBottomSheetStateF4, mutableStateB3, null);
                                            composer4.q(objX7);
                                        }
                                        EffectsKt.e(composer4, bool3, (Function2) objX7);
                                        if (lVModalBottomSheetStateF4.a()) {
                                            composer4.L(982893904);
                                            String strC2 = StringResources_androidKt.c(composer4, R.string.alt_close);
                                            boolean zY5 = composer4.y(webViewFragment2);
                                            Object objX8 = composer4.x();
                                            if (zY5 || objX8 == composer$Companion$Empty$1) {
                                                objX8 = new l61(webViewFragment2, 9);
                                                composer4.q(objX8);
                                            }
                                            LVModalBottomSheetKt.b(null, strC2, (Function0) objX8, lVModalBottomSheetStateF4, null, 0L, false, null, ComposableLambdaKt.b(-714644001, new Function3() { // from class: n61
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object A(Object obj5, Object obj6, Object obj7) {
                                                    int i8 = i7;
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF4;
                                                    WebViewFragment webViewFragment4 = webViewFragment2;
                                                    ColumnScope columnScope = (ColumnScope) obj5;
                                                    switch (i8) {
                                                        case 0:
                                                            Composer composer5 = (Composer) obj6;
                                                            int iIntValue6 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion6 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer5.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                                                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                                boolean zY6 = composer5.y(webViewFragment4);
                                                                Object objX9 = composer5.x();
                                                                if (zY6 || objX9 == composer$Companion$Empty$2) {
                                                                    objX9 = new l61(webViewFragment4, 12);
                                                                    composer5.q(objX9);
                                                                }
                                                                Function0 function0 = (Function0) objX9;
                                                                boolean zY7 = composer5.y(lVModalBottomSheetState) | composer5.y(webViewFragment4);
                                                                Object objX10 = composer5.x();
                                                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                                                    objX10 = new o61(lVModalBottomSheetState, webViewFragment4);
                                                                    composer5.q(objX10);
                                                                }
                                                                ExitWarningBottomSheetContentKt.a(function0, (Function0) objX10, composer5, 0);
                                                            } else {
                                                                composer5.D();
                                                            }
                                                            break;
                                                        default:
                                                            Composer composer6 = (Composer) obj6;
                                                            int iIntValue7 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion7 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer6.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                                                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                                                String strC3 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_subtitle);
                                                                String strC4 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_text);
                                                                boolean zY8 = composer6.y(webViewFragment4);
                                                                Object objX11 = composer6.x();
                                                                if (zY8 || objX11 == composer$Companion$Empty$2) {
                                                                    objX11 = new l61(webViewFragment4, 11);
                                                                    composer6.q(objX11);
                                                                }
                                                                Function0 function1 = (Function0) objX11;
                                                                boolean zY9 = composer6.y(webViewFragment4) | composer6.y(lVModalBottomSheetState);
                                                                Object objX12 = composer6.x();
                                                                if (zY9 || objX12 == composer$Companion$Empty$2) {
                                                                    objX12 = new o61(webViewFragment4, lVModalBottomSheetState);
                                                                    composer6.q(objX12);
                                                                }
                                                                CancelProductCustomizationBottomSheetKt.a(strC3, strC4, function1, (Function0) objX12, composer6, 0);
                                                            } else {
                                                                composer6.D();
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer4), composer4, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                                            composer4.F();
                                        } else {
                                            composer4.L(986054354);
                                            composer4.F();
                                        }
                                    } else {
                                        composer4.D();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            case 2:
                int iIntValue3 = num.intValue();
                WebViewFragment.Companion companion3 = WebViewFragment.n1;
                if (composer.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1000346847, new m61(webViewFragment, 4), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            case 3:
                int iIntValue4 = num.intValue();
                WebViewFragment.Companion companion4 = WebViewFragment.n1;
                if (composer.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    final int i5 = z ? 1 : 0;
                    ThemeKt.a(null, ComposableLambdaKt.b(1596458789, new Function2() { // from class: com.vuitton.android.presentation.screen.webview.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            int i6 = i5;
                            final WebViewFragment webViewFragment2 = webViewFragment;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            final int i7 = 0;
                            final int i8 = 1;
                            switch (i6) {
                                case 0:
                                    Composer composer2 = (Composer) obj3;
                                    int iIntValue5 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion5 = WebViewFragment.n1;
                                    if (composer2.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        WebViewFragment webViewFragment3 = webViewFragment;
                                        MutableState mutableStateB = SnapshotStateKt.b(webViewFragment3.T().x, composer2);
                                        MutableState mutableStateB2 = SnapshotStateKt.b(webViewFragment3.k1, composer2);
                                        LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                        LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                        int paddingTop = webViewFragment3.P().f51391b.f51467b.getPaddingTop();
                                        int paddingBottom = webViewFragment3.P().f51393e.getPaddingBottom();
                                        Boolean bool = (Boolean) mutableStateB2.getF10755b();
                                        bool.getClass();
                                        boolean zK = composer2.K(mutableStateB2) | composer2.y(lVModalBottomSheetStateF);
                                        Object objX = composer2.x();
                                        if (zK || objX == composer$Companion$Empty$1) {
                                            objX = new WebViewFragment$initContactUsComposeView$composeView$1$1$1$1$1(mutableStateB2, lVModalBottomSheetStateF, null);
                                            composer2.q(objX);
                                        }
                                        EffectsKt.e(composer2, bool, (Function2) objX);
                                        SheetValue sheetValueC = lVModalBottomSheetStateF.f48798a.c();
                                        boolean zY = composer2.y(webViewFragment3) | composer2.y(lVModalBottomSheetStateF);
                                        Object objX2 = composer2.x();
                                        if (zY || objX2 == composer$Companion$Empty$1) {
                                            objX2 = new WebViewFragment$initContactUsComposeView$composeView$1$1$1$2$1(webViewFragment3, lVModalBottomSheetStateF, null);
                                            composer2.q(objX2);
                                        }
                                        EffectsKt.e(composer2, sheetValueC, (Function2) objX2);
                                        LVCheckoutLocalProviderKt.a(ComposableLambdaKt.b(1856354276, new sw(lVModalBottomSheetStateF, lVModalBottomSheetStateF2, webViewFragment3, paddingTop, paddingBottom, mutableStateB), composer2), composer2, 6);
                                    } else {
                                        composer2.D();
                                    }
                                    break;
                                case 1:
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue6 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion6 = WebViewFragment.n1;
                                    if (composer3.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                        MutableState mutableStateC = FlowExtKt.c(webViewFragment2.m1, null, composer3, 0, 7);
                                        final LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, composer3, null);
                                        boolean zY2 = composer3.y(webViewFragment2);
                                        Object objX3 = composer3.x();
                                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                                            objX3 = new l61(webViewFragment2, 6);
                                            composer3.q(objX3);
                                        }
                                        BackHandlerKt.a(false, (Function0) objX3, composer3, 0, 1);
                                        Boolean bool2 = (Boolean) mutableStateC.getF10755b();
                                        bool2.booleanValue();
                                        boolean zK2 = composer3.K(mutableStateC) | composer3.y(lVModalBottomSheetStateF3);
                                        Object objX4 = composer3.x();
                                        if (zK2 || objX4 == composer$Companion$Empty$1) {
                                            objX4 = new WebViewFragment$initBookingExitComposeView$composeView$1$1$1$2$1(mutableStateC, lVModalBottomSheetStateF3, null);
                                            composer3.q(objX4);
                                        }
                                        EffectsKt.e(composer3, bool2, (Function2) objX4);
                                        if (lVModalBottomSheetStateF3.a()) {
                                            composer3.L(1472908183);
                                            String strC = StringResources_androidKt.c(composer3, R.string.alt_close);
                                            boolean zY3 = composer3.y(webViewFragment2);
                                            Object objX5 = composer3.x();
                                            if (zY3 || objX5 == composer$Companion$Empty$1) {
                                                objX5 = new l61(webViewFragment2, 7);
                                                composer3.q(objX5);
                                            }
                                            LVModalBottomSheetKt.b(null, strC, (Function0) objX5, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(-673153061, new Function3() { // from class: n61
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object A(Object obj5, Object obj6, Object obj7) {
                                                    int i9 = i7;
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF3;
                                                    WebViewFragment webViewFragment4 = webViewFragment2;
                                                    ColumnScope columnScope = (ColumnScope) obj5;
                                                    switch (i9) {
                                                        case 0:
                                                            Composer composer5 = (Composer) obj6;
                                                            int iIntValue7 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion7 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer5.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                                                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                                                boolean zY6 = composer5.y(webViewFragment4);
                                                                Object objX9 = composer5.x();
                                                                if (zY6 || objX9 == composer$Companion$Empty$2) {
                                                                    objX9 = new l61(webViewFragment4, 12);
                                                                    composer5.q(objX9);
                                                                }
                                                                Function0 function0 = (Function0) objX9;
                                                                boolean zY7 = composer5.y(lVModalBottomSheetState) | composer5.y(webViewFragment4);
                                                                Object objX10 = composer5.x();
                                                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                                                    objX10 = new o61(lVModalBottomSheetState, webViewFragment4);
                                                                    composer5.q(objX10);
                                                                }
                                                                ExitWarningBottomSheetContentKt.a(function0, (Function0) objX10, composer5, 0);
                                                            } else {
                                                                composer5.D();
                                                            }
                                                            break;
                                                        default:
                                                            Composer composer6 = (Composer) obj6;
                                                            int iIntValue8 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion8 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer6.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                                                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                                                String strC3 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_subtitle);
                                                                String strC4 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_text);
                                                                boolean zY8 = composer6.y(webViewFragment4);
                                                                Object objX11 = composer6.x();
                                                                if (zY8 || objX11 == composer$Companion$Empty$2) {
                                                                    objX11 = new l61(webViewFragment4, 11);
                                                                    composer6.q(objX11);
                                                                }
                                                                Function0 function1 = (Function0) objX11;
                                                                boolean zY9 = composer6.y(webViewFragment4) | composer6.y(lVModalBottomSheetState);
                                                                Object objX12 = composer6.x();
                                                                if (zY9 || objX12 == composer$Companion$Empty$2) {
                                                                    objX12 = new o61(webViewFragment4, lVModalBottomSheetState);
                                                                    composer6.q(objX12);
                                                                }
                                                                CancelProductCustomizationBottomSheetKt.a(strC3, strC4, function1, (Function0) objX12, composer6, 0);
                                                            } else {
                                                                composer6.D();
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer3), composer3, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                                            composer3.F();
                                        } else {
                                            composer3.L(1473574838);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.D();
                                    }
                                    break;
                                default:
                                    Composer composer4 = (Composer) obj3;
                                    int iIntValue7 = ((Integer) obj4).intValue();
                                    WebViewFragment.Companion companion7 = WebViewFragment.n1;
                                    if (composer4.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                        MutableState mutableStateB3 = SnapshotStateKt.b(webViewFragment2.l1, composer4);
                                        boolean zY4 = composer4.y(webViewFragment2);
                                        Object objX6 = composer4.x();
                                        if (zY4 || objX6 == composer$Companion$Empty$1) {
                                            objX6 = new l61(webViewFragment2, 8);
                                            composer4.q(objX6);
                                        }
                                        BackHandlerKt.a(false, (Function0) objX6, composer4, 0, 1);
                                        final LVModalBottomSheetState lVModalBottomSheetStateF4 = LVModalBottomSheetKt.f(0, 7, composer4, null);
                                        Boolean bool3 = (Boolean) mutableStateB3.getF10755b();
                                        bool3.booleanValue();
                                        boolean zK3 = composer4.K(mutableStateB3) | composer4.y(webViewFragment2) | composer4.y(lVModalBottomSheetStateF4);
                                        Object objX7 = composer4.x();
                                        if (zK3 || objX7 == composer$Companion$Empty$1) {
                                            objX7 = new WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1(webViewFragment2, lVModalBottomSheetStateF4, mutableStateB3, null);
                                            composer4.q(objX7);
                                        }
                                        EffectsKt.e(composer4, bool3, (Function2) objX7);
                                        if (lVModalBottomSheetStateF4.a()) {
                                            composer4.L(982893904);
                                            String strC2 = StringResources_androidKt.c(composer4, R.string.alt_close);
                                            boolean zY5 = composer4.y(webViewFragment2);
                                            Object objX8 = composer4.x();
                                            if (zY5 || objX8 == composer$Companion$Empty$1) {
                                                objX8 = new l61(webViewFragment2, 9);
                                                composer4.q(objX8);
                                            }
                                            LVModalBottomSheetKt.b(null, strC2, (Function0) objX8, lVModalBottomSheetStateF4, null, 0L, false, null, ComposableLambdaKt.b(-714644001, new Function3() { // from class: n61
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object A(Object obj5, Object obj6, Object obj7) {
                                                    int i9 = i8;
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF4;
                                                    WebViewFragment webViewFragment4 = webViewFragment2;
                                                    ColumnScope columnScope = (ColumnScope) obj5;
                                                    switch (i9) {
                                                        case 0:
                                                            Composer composer5 = (Composer) obj6;
                                                            int iIntValue8 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion8 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer5.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                                                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                                                boolean zY6 = composer5.y(webViewFragment4);
                                                                Object objX9 = composer5.x();
                                                                if (zY6 || objX9 == composer$Companion$Empty$2) {
                                                                    objX9 = new l61(webViewFragment4, 12);
                                                                    composer5.q(objX9);
                                                                }
                                                                Function0 function0 = (Function0) objX9;
                                                                boolean zY7 = composer5.y(lVModalBottomSheetState) | composer5.y(webViewFragment4);
                                                                Object objX10 = composer5.x();
                                                                if (zY7 || objX10 == composer$Companion$Empty$2) {
                                                                    objX10 = new o61(lVModalBottomSheetState, webViewFragment4);
                                                                    composer5.q(objX10);
                                                                }
                                                                ExitWarningBottomSheetContentKt.a(function0, (Function0) objX10, composer5, 0);
                                                            } else {
                                                                composer5.D();
                                                            }
                                                            break;
                                                        default:
                                                            Composer composer6 = (Composer) obj6;
                                                            int iIntValue9 = ((Integer) obj7).intValue();
                                                            WebViewFragment.Companion companion9 = WebViewFragment.n1;
                                                            columnScope.getClass();
                                                            if (composer6.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                                                                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                                                String strC3 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_subtitle);
                                                                String strC4 = StringResources_androidKt.c(composer6, R.string.my_monogram_bottomsheet_configurator_text);
                                                                boolean zY8 = composer6.y(webViewFragment4);
                                                                Object objX11 = composer6.x();
                                                                if (zY8 || objX11 == composer$Companion$Empty$2) {
                                                                    objX11 = new l61(webViewFragment4, 11);
                                                                    composer6.q(objX11);
                                                                }
                                                                Function0 function1 = (Function0) objX11;
                                                                boolean zY9 = composer6.y(webViewFragment4) | composer6.y(lVModalBottomSheetState);
                                                                Object objX12 = composer6.x();
                                                                if (zY9 || objX12 == composer$Companion$Empty$2) {
                                                                    objX12 = new o61(webViewFragment4, lVModalBottomSheetState);
                                                                    composer6.q(objX12);
                                                                }
                                                                CancelProductCustomizationBottomSheetKt.a(strC3, strC4, function1, (Function0) objX12, composer6, 0);
                                                            } else {
                                                                composer6.D();
                                                            }
                                                            break;
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer4), composer4, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                                            composer4.F();
                                        } else {
                                            composer4.L(986054354);
                                            composer4.F();
                                        }
                                    } else {
                                        composer4.D();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                int iIntValue5 = num.intValue();
                WebViewFragment.Companion companion5 = WebViewFragment.n1;
                if (composer.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    WebViewFragment webViewFragment2 = this.f76194c;
                    MutableState mutableStateB = SnapshotStateKt.b(webViewFragment2.T().x, composer);
                    int paddingTop = webViewFragment2.P().f51391b.f51467b.getPaddingTop();
                    int paddingBottom = webViewFragment2.P().f51393e.getPaddingBottom();
                    if (((WebViewUiModel) mutableStateB.getF10755b()).f65535a.f51154a) {
                        composer.L(1445493309);
                        LVCheckoutLocalProviderKt.a(ComposableLambdaKt.b(412344549, new dh(webViewFragment2, paddingTop, paddingBottom, mutableStateB, 7), composer), composer, 6);
                        composer.F();
                    } else {
                        composer.L(1446142945);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
