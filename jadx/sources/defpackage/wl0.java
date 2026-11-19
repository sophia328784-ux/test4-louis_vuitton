package defpackage;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.ViewModelLazy;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVPdpLocalProviderKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.extensions.StringAndroidExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductImageUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import defpackage.lk;
import defpackage.of0;
import defpackage.rh0;
import defpackage.ul0;
import defpackage.xl0;
import defpackage.yl0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wl0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpActivity f80896c;

    public /* synthetic */ wl0(PdpActivity pdpActivity, int i2) {
        this.f80895b = i2;
        this.f80896c = pdpActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80895b;
        final PdpActivity pdpActivity = this.f80896c;
        int i3 = 1;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                PdpActivity.Companion companion = PdpActivity.D;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1644456718, new wl0(pdpActivity, i3), composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            default:
                PdpActivity.Companion companion2 = PdpActivity.D;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVPdpLocalProviderKt.a(ComposableLambdaKt.b(-1431535099, new Function2() { // from class: com.vuitton.android.presentation.screen.pdp.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            final PdpActivity pdpActivity2;
                            SnackbarHostState snackbarHostState;
                            NavBackStack navBackStack;
                            Context context;
                            final MutableState mutableState;
                            int i4;
                            PdpActivity pdpActivity3 = pdpActivity;
                            ViewModelLazy viewModelLazy = pdpActivity3.q;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            PdpActivity.Companion companion3 = PdpActivity.D;
                            int i5 = 2;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                MutableState mutableStateB = SnapshotStateKt.b(pdpActivity3.I().getY0(), composer2);
                                Context context2 = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                                PdpTracker pdpTracker = (PdpTracker) composer2.k(PdpTrackerEntryPointKt.f61588a);
                                boolean z = ((PdpViewState) mutableStateB.getF10755b()).f61570h;
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (z) {
                                    composer2.L(-2131595767);
                                    boolean zY = composer2.y(pdpActivity3) | composer2.y(pdpTracker);
                                    Object objX = composer2.x();
                                    if (zY || objX == composer$Companion$Empty$1) {
                                        objX = new rh0(pdpActivity3, pdpTracker, 28);
                                        composer2.q(objX);
                                    }
                                    ScreenshotListenerKt.a((Function0) objX, composer2, 0);
                                    composer2.F();
                                } else {
                                    composer2.L(-2131269027);
                                    composer2.F();
                                }
                                if (((PdpViewState) mutableStateB.getF10755b()).m) {
                                    composer2.L(-2130806755);
                                    composer2.F();
                                } else {
                                    composer2.L(-2131206531);
                                    ProductUiModel productUiModel = ((PdpViewState) mutableStateB.getF10755b()).f61566b;
                                    String str = productUiModel != null ? productUiModel.f61737e : null;
                                    boolean zY2 = composer2.y(pdpActivity3) | composer2.K(mutableStateB);
                                    Object objX2 = composer2.x();
                                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                                        objX2 = new PdpActivity$onCreate$3$1$1$2$1(pdpActivity3, mutableStateB, null);
                                        composer2.q(objX2);
                                    }
                                    EffectsKt.e(composer2, str, (Function2) objX2);
                                    composer2.F();
                                }
                                HapticFeedback hapticFeedback = (HapticFeedback) composer2.k(CompositionLocalsKt.l);
                                Object objX3 = composer2.x();
                                if (objX3 == composer$Companion$Empty$1) {
                                    objX3 = new SnackbarHostState();
                                    composer2.q(objX3);
                                }
                                SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX3;
                                float fB = ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2).getF5031b());
                                float fB2 = ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(composer2), composer2).getD());
                                Unit unit = Unit.f71739a;
                                boolean zY3 = composer2.y(pdpActivity3) | composer2.y(hapticFeedback) | composer2.y(context2) | composer2.K(mutableStateB);
                                Object objX4 = composer2.x();
                                if (zY3 || objX4 == composer$Companion$Empty$1) {
                                    pdpActivity2 = pdpActivity3;
                                    PdpActivity$onCreate$3$1$1$3$1 pdpActivity$onCreate$3$1$1$3$1 = new PdpActivity$onCreate$3$1$1$3$1(context2, snackbarHostState2, mutableStateB, hapticFeedback, pdpActivity2, null);
                                    snackbarHostState = snackbarHostState2;
                                    composer2.q(pdpActivity$onCreate$3$1$1$3$1);
                                    objX4 = pdpActivity$onCreate$3$1$1$3$1;
                                } else {
                                    snackbarHostState = snackbarHostState2;
                                    pdpActivity2 = pdpActivity3;
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX4);
                                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) viewModelLazy.getF71699b();
                                boolean zY4 = composer2.y(pdpActivity2);
                                Object objX5 = composer2.x();
                                int i6 = 6;
                                if (zY4 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new xl0(pdpActivity2, i6);
                                    composer2.q(objX5);
                                }
                                HandleNotificationsPermissionStateKt.a(permissionsViewModel, (Function0) objX5, composer2, 0);
                                boolean z2 = ((PdpViewState) mutableStateB.getF10755b()).m && !pdpActivity2.I().F();
                                Object objX6 = composer2.x();
                                if (objX6 == composer$Companion$Empty$1) {
                                    objX6 = new ul0(3);
                                    composer2.q(objX6);
                                }
                                BackHandlerKt.a(z2, (Function0) objX6, composer2, 48, 0);
                                NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{PdpRoutes.Pdp.INSTANCE}, composer2);
                                PdpViewModel pdpViewModelI = pdpActivity2.I();
                                ReinsuranceViewModel reinsuranceViewModel = (ReinsuranceViewModel) pdpActivity2.r.getF71699b();
                                PermissionsViewModel permissionsViewModel2 = (PermissionsViewModel) viewModelLazy.getF71699b();
                                boolean zY5 = composer2.y(pdpActivity2);
                                Object objX7 = composer2.x();
                                if (zY5 || objX7 == composer$Companion$Empty$1) {
                                    PdpActivity pdpActivity4 = pdpActivity2;
                                    navBackStack = navBackStackA;
                                    context = context2;
                                    mutableState = mutableStateB;
                                    i4 = 3;
                                    PdpActivity$onCreate$3$1$1$6$1 pdpActivity$onCreate$3$1$1$6$1 = new PdpActivity$onCreate$3$1$1$6$1(0, pdpActivity4, PdpActivity.class, "onShadeFinderClicked", "onShadeFinderClicked()V", 0);
                                    pdpActivity2 = pdpActivity4;
                                    composer2.q(pdpActivity$onCreate$3$1$1$6$1);
                                    objX7 = pdpActivity$onCreate$3$1$1$6$1;
                                } else {
                                    navBackStack = navBackStackA;
                                    context = context2;
                                    mutableState = mutableStateB;
                                    i4 = 3;
                                }
                                KFunction kFunction = (KFunction) objX7;
                                boolean zY6 = composer2.y(pdpActivity2) | composer2.K(mutableState);
                                Object objX8 = composer2.x();
                                if (zY6 || objX8 == composer$Companion$Empty$1) {
                                    objX8 = new yl0(pdpActivity2, mutableState, i5);
                                    composer2.q(objX8);
                                }
                                Function0 function0 = (Function0) objX8;
                                boolean zK = composer2.K(mutableState) | composer2.y(pdpActivity2);
                                Object objX9 = composer2.x();
                                if (zK || objX9 == composer$Companion$Empty$1) {
                                    objX9 = new yl0(mutableState, pdpActivity2, i4);
                                    composer2.q(objX9);
                                }
                                Function0 function1 = (Function0) objX9;
                                boolean zK2 = composer2.K(mutableState) | composer2.y(pdpActivity2);
                                Object objX10 = composer2.x();
                                int i7 = 4;
                                if (zK2 || objX10 == composer$Companion$Empty$1) {
                                    objX10 = new yl0(mutableState, pdpActivity2, i7);
                                    composer2.q(objX10);
                                }
                                Function0 function2 = (Function0) objX10;
                                boolean zY7 = composer2.y(pdpActivity2);
                                Object objX11 = composer2.x();
                                if (zY7 || objX11 == composer$Companion$Empty$1) {
                                    objX11 = new xl0(pdpActivity2, 9);
                                    composer2.q(objX11);
                                }
                                Function0 function3 = (Function0) objX11;
                                boolean zK3 = composer2.K(mutableState) | composer2.y(pdpActivity2);
                                Object objX12 = composer2.x();
                                int i8 = 5;
                                if (zK3 || objX12 == composer$Companion$Empty$1) {
                                    objX12 = new yl0(mutableState, pdpActivity2, i8);
                                    composer2.q(objX12);
                                }
                                Function0 function4 = (Function0) objX12;
                                boolean zK4 = composer2.K(mutableState) | composer2.y(pdpActivity2);
                                Object objX13 = composer2.x();
                                if (zK4 || objX13 == composer$Companion$Empty$1) {
                                    objX13 = new yl0(pdpActivity2, mutableState, 6);
                                    composer2.q(objX13);
                                }
                                Function0 function5 = (Function0) objX13;
                                boolean zY8 = composer2.y(pdpActivity2) | composer2.K(mutableState);
                                Object objX14 = composer2.x();
                                int i9 = 7;
                                if (zY8 || objX14 == composer$Companion$Empty$1) {
                                    objX14 = new yl0(pdpActivity2, mutableState, i9);
                                    composer2.q(objX14);
                                }
                                Function0 function6 = (Function0) objX14;
                                boolean zY9 = composer2.y(pdpActivity2);
                                Object objX15 = composer2.x();
                                if (zY9 || objX15 == composer$Companion$Empty$1) {
                                    final int i10 = 4;
                                    objX15 = new Function1() { // from class: am0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i11 = i10;
                                            PdpActivity pdpActivity5 = pdpActivity2;
                                            switch (i11) {
                                                case 0:
                                                    String str2 = (String) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    str2.getClass();
                                                    ActivityExtKt.f(pdpActivity5, str2);
                                                    return Unit.f71739a;
                                                case 1:
                                                    ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj5;
                                                    PdpActivity.Companion companion5 = PdpActivity.D;
                                                    contributionLinkUiModel.getClass();
                                                    boolean z3 = contributionLinkUiModel instanceof ContributionLinkUiModel.ShadeFinder;
                                                    PdpActivity pdpActivity6 = pdpActivity2;
                                                    if (!z3) {
                                                        ContributionLinkNavigator contributionLinkNavigator = pdpActivity6.w;
                                                        if (contributionLinkNavigator == null) {
                                                            Intrinsics.h("contributionLinkNavigator");
                                                            throw null;
                                                        }
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, pdpActivity6, contributionLinkUiModel, null, null, null, 28);
                                                    } else if (ContextCompat.checkSelfPermission(pdpActivity6, "android.permission.CAMERA") != 0) {
                                                        pdpActivity6.C = new xl0(pdpActivity6, 10);
                                                        pdpActivity6.B.a("android.permission.CAMERA");
                                                    } else if (pdpActivity6.I().N7()) {
                                                        pdpActivity6.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity6));
                                                    } else {
                                                        pdpActivity6.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
                                                    }
                                                    return Unit.f71739a;
                                                case 2:
                                                    PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj5;
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    pdpVirtualStudioConfigValues.getClass();
                                                    pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToVirtualStudioOsaPage(pdpVirtualStudioConfigValues, pdpVirtualStudioConfigValues.f61576c), pdpActivity5));
                                                    return Unit.f71739a;
                                                case 3:
                                                    PdpBottomSheetType.Permissions permissions = (PdpBottomSheetType.Permissions) obj5;
                                                    PdpActivity.Companion companion7 = PdpActivity.D;
                                                    permissions.getClass();
                                                    ((PermissionsViewModel) pdpActivity5.q.getF71699b()).v5(PermissionContext.BACK_IN_STOCK);
                                                    if (permissions.f61384a instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                                                        pdpActivity5.B().p(pdpActivity5, true);
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    String str3 = (String) obj5;
                                                    PdpActivity.Companion companion8 = PdpActivity.D;
                                                    str3.getClass();
                                                    String str4 = StringExtKt.a(str3) ? str3 : null;
                                                    if (str4 != null) {
                                                        pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(str4, false, 2, null), pdpActivity5));
                                                    } else {
                                                        Logger logger = pdpActivity5.s;
                                                        if (logger == null) {
                                                            Intrinsics.h("logger");
                                                            throw null;
                                                        }
                                                        logger.c("WebViewRouter", "Invalid URL : ".concat(str3), null);
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer2.q(objX15);
                                }
                                Function1 function7 = (Function1) objX15;
                                boolean zK5 = composer2.K(mutableState) | composer2.y(context) | composer2.y(pdpActivity2);
                                Object objX16 = composer2.x();
                                if (zK5 || objX16 == composer$Companion$Empty$1) {
                                    objX16 = new of0(context, pdpActivity2, mutableState, 21);
                                    composer2.q(objX16);
                                }
                                Function0 function8 = (Function0) objX16;
                                boolean zY10 = composer2.y(pdpActivity2);
                                Object objX17 = composer2.x();
                                if (zY10 || objX17 == composer$Companion$Empty$1) {
                                    objX17 = new xl0(pdpActivity2, 0);
                                    composer2.q(objX17);
                                }
                                Function0 function9 = (Function0) objX17;
                                boolean zY11 = composer2.y(pdpActivity2);
                                Object objX18 = composer2.x();
                                if (zY11 || objX18 == composer$Companion$Empty$1) {
                                    objX18 = new xl0(pdpActivity2, 1);
                                    composer2.q(objX18);
                                }
                                Function0 function10 = (Function0) objX18;
                                Function0 function11 = (Function0) kFunction;
                                boolean zK6 = composer2.K(mutableState) | composer2.y(pdpActivity2);
                                Object objX19 = composer2.x();
                                if (zK6 || objX19 == composer$Companion$Empty$1) {
                                    objX19 = new yl0(mutableState, pdpActivity2, 0);
                                    composer2.q(objX19);
                                }
                                Function0 function12 = (Function0) objX19;
                                boolean zY12 = composer2.y(pdpActivity2);
                                Object objX20 = composer2.x();
                                if (zY12 || objX20 == composer$Companion$Empty$1) {
                                    objX20 = new xl0(pdpActivity2, 2);
                                    composer2.q(objX20);
                                }
                                Function0 function13 = (Function0) objX20;
                                boolean zY13 = composer2.y(pdpActivity2);
                                Object objX21 = composer2.x();
                                if (zY13 || objX21 == composer$Companion$Empty$1) {
                                    objX21 = new xl0(pdpActivity2, 3);
                                    composer2.q(objX21);
                                }
                                Function0 function14 = (Function0) objX21;
                                boolean zY14 = composer2.y(pdpActivity2);
                                Object objX22 = composer2.x();
                                if (zY14 || objX22 == composer$Companion$Empty$1) {
                                    objX22 = new xl0(pdpActivity2, 4);
                                    composer2.q(objX22);
                                }
                                Function0 function15 = (Function0) objX22;
                                NavBackStack navBackStack2 = navBackStack;
                                boolean zK7 = composer2.K(mutableState) | composer2.y(navBackStack2);
                                Object objX23 = composer2.x();
                                if (zK7 || objX23 == composer$Companion$Empty$1) {
                                    objX23 = new rh0(navBackStack2, mutableState, 26);
                                    composer2.q(objX23);
                                }
                                Function0 function16 = (Function0) objX23;
                                boolean zY15 = composer2.y(pdpActivity2);
                                Object objX24 = composer2.x();
                                if (zY15 || objX24 == composer$Companion$Empty$1) {
                                    objX24 = new xl0(pdpActivity2, 5);
                                    composer2.q(objX24);
                                }
                                Function0 function17 = (Function0) objX24;
                                boolean zY16 = composer2.y(pdpActivity2);
                                Object objX25 = composer2.x();
                                if (zY16 || objX25 == composer$Companion$Empty$1) {
                                    objX25 = new xl0(pdpActivity2, 7);
                                    composer2.q(objX25);
                                }
                                Function0 function18 = (Function0) objX25;
                                boolean zY17 = composer2.y(pdpActivity2);
                                Object objX26 = composer2.x();
                                if (zY17 || objX26 == composer$Companion$Empty$1) {
                                    final int i11 = 0;
                                    objX26 = new Function1() { // from class: am0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i12 = i11;
                                            PdpActivity pdpActivity5 = pdpActivity2;
                                            switch (i12) {
                                                case 0:
                                                    String str2 = (String) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    str2.getClass();
                                                    ActivityExtKt.f(pdpActivity5, str2);
                                                    return Unit.f71739a;
                                                case 1:
                                                    ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj5;
                                                    PdpActivity.Companion companion5 = PdpActivity.D;
                                                    contributionLinkUiModel.getClass();
                                                    boolean z3 = contributionLinkUiModel instanceof ContributionLinkUiModel.ShadeFinder;
                                                    PdpActivity pdpActivity6 = pdpActivity2;
                                                    if (!z3) {
                                                        ContributionLinkNavigator contributionLinkNavigator = pdpActivity6.w;
                                                        if (contributionLinkNavigator == null) {
                                                            Intrinsics.h("contributionLinkNavigator");
                                                            throw null;
                                                        }
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, pdpActivity6, contributionLinkUiModel, null, null, null, 28);
                                                    } else if (ContextCompat.checkSelfPermission(pdpActivity6, "android.permission.CAMERA") != 0) {
                                                        pdpActivity6.C = new xl0(pdpActivity6, 10);
                                                        pdpActivity6.B.a("android.permission.CAMERA");
                                                    } else if (pdpActivity6.I().N7()) {
                                                        pdpActivity6.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity6));
                                                    } else {
                                                        pdpActivity6.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
                                                    }
                                                    return Unit.f71739a;
                                                case 2:
                                                    PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj5;
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    pdpVirtualStudioConfigValues.getClass();
                                                    pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToVirtualStudioOsaPage(pdpVirtualStudioConfigValues, pdpVirtualStudioConfigValues.f61576c), pdpActivity5));
                                                    return Unit.f71739a;
                                                case 3:
                                                    PdpBottomSheetType.Permissions permissions = (PdpBottomSheetType.Permissions) obj5;
                                                    PdpActivity.Companion companion7 = PdpActivity.D;
                                                    permissions.getClass();
                                                    ((PermissionsViewModel) pdpActivity5.q.getF71699b()).v5(PermissionContext.BACK_IN_STOCK);
                                                    if (permissions.f61384a instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                                                        pdpActivity5.B().p(pdpActivity5, true);
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    String str3 = (String) obj5;
                                                    PdpActivity.Companion companion8 = PdpActivity.D;
                                                    str3.getClass();
                                                    String str4 = StringExtKt.a(str3) ? str3 : null;
                                                    if (str4 != null) {
                                                        pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(str4, false, 2, null), pdpActivity5));
                                                    } else {
                                                        Logger logger = pdpActivity5.s;
                                                        if (logger == null) {
                                                            Intrinsics.h("logger");
                                                            throw null;
                                                        }
                                                        logger.c("WebViewRouter", "Invalid URL : ".concat(str3), null);
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer2.q(objX26);
                                }
                                Function1 function19 = (Function1) objX26;
                                boolean zY18 = composer2.y(pdpActivity2);
                                Object objX27 = composer2.x();
                                if (zY18 || objX27 == composer$Companion$Empty$1) {
                                    objX27 = new xl0(pdpActivity2, 8);
                                    composer2.q(objX27);
                                }
                                Function0 function20 = (Function0) objX27;
                                boolean zY19 = composer2.y(pdpActivity2) | composer2.c(fB) | composer2.c(fB2);
                                Object objX28 = composer2.x();
                                if (zY19 || objX28 == composer$Companion$Empty$1) {
                                    objX28 = new lk(fB, fB2, 3, pdpActivity2);
                                    composer2.q(objX28);
                                }
                                Function1 function21 = (Function1) objX28;
                                boolean zY20 = composer2.y(pdpActivity2);
                                Object objX29 = composer2.x();
                                if (zY20 || objX29 == composer$Companion$Empty$1) {
                                    objX29 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpActivity$onCreate$3$1$1$28$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            String str2 = ((SkuIdUiModel) obj5).f61764b;
                                            str2.getClass();
                                            PdpDestinations.ToProductPage toProductPage = new PdpDestinations.ToProductPage(str2, false, null, null, 14, null);
                                            PdpActivity pdpActivity5 = pdpActivity2;
                                            pdpActivity5.startActivity(PdpDestinationsKt.a(toProductPage, pdpActivity5));
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX29);
                                }
                                Function1 function22 = (Function1) objX29;
                                boolean zY21 = composer2.y(pdpActivity2) | composer2.K(mutableState);
                                Object objX30 = composer2.x();
                                if (zY21 || objX30 == composer$Companion$Empty$1) {
                                    final int i12 = 0;
                                    objX30 = new Function1() { // from class: bm0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i13 = i12;
                                            MutableState mutableState2 = mutableState;
                                            switch (i13) {
                                                case 0:
                                                    ProductImageUiModel productImageUiModel = (ProductImageUiModel) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    productImageUiModel.getClass();
                                                    ProductUiModel productUiModel2 = ((PdpViewState) mutableState2.getF10755b()).f61566b;
                                                    if (productUiModel2 != null) {
                                                        List list = productUiModel2.o;
                                                        ArrayList arrayList = new ArrayList();
                                                        for (Object obj6 : list) {
                                                            if (obj6 instanceof ProductImageUiModel) {
                                                                arrayList.add(obj6);
                                                            }
                                                        }
                                                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                                        Iterator it = arrayList.iterator();
                                                        while (it.hasNext()) {
                                                            arrayList2.add(StringsKt.U(((ProductImageUiModel) it.next()).f61733b, "?"));
                                                        }
                                                        if (!arrayList2.isEmpty()) {
                                                            ImageViewerActivity.Companion companion5 = ImageViewerActivity.t;
                                                            ArrayList arrayList3 = new ArrayList(arrayList2);
                                                            int iIndexOf = arrayList2.indexOf(productImageUiModel.f61733b);
                                                            ProductBackground productBackground = productUiModel2.l;
                                                            PdpActivity pdpActivity5 = pdpActivity2;
                                                            pdpActivity5.startActivity(ImageViewerActivity.Companion.a(companion5, pdpActivity5, arrayList3, iIndexOf, null, productBackground, 8));
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    ((ProductUiModel) obj5).getClass();
                                                    String str2 = ((PdpViewState) mutableState2.getF10755b()).f61572j.f61551c;
                                                    if (str2 == null) {
                                                        str2 = "";
                                                    }
                                                    ProductUiModel productUiModel3 = ((PdpViewState) mutableState2.getF10755b()).f61566b;
                                                    String str3 = productUiModel3 != null ? productUiModel3.C : null;
                                                    ActivityExtKt.h(pdpActivity2, StringAndroidExtKt.a(str3 != null ? str3 : "", str2), null, 6);
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX30);
                                }
                                Function1 function23 = (Function1) objX30;
                                boolean zY22 = composer2.y(pdpActivity2) | composer2.K(mutableState);
                                Object objX31 = composer2.x();
                                if (zY22 || objX31 == composer$Companion$Empty$1) {
                                    final int i13 = 1;
                                    objX31 = new Function1() { // from class: bm0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i14 = i13;
                                            MutableState mutableState2 = mutableState;
                                            switch (i14) {
                                                case 0:
                                                    ProductImageUiModel productImageUiModel = (ProductImageUiModel) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    productImageUiModel.getClass();
                                                    ProductUiModel productUiModel2 = ((PdpViewState) mutableState2.getF10755b()).f61566b;
                                                    if (productUiModel2 != null) {
                                                        List list = productUiModel2.o;
                                                        ArrayList arrayList = new ArrayList();
                                                        for (Object obj6 : list) {
                                                            if (obj6 instanceof ProductImageUiModel) {
                                                                arrayList.add(obj6);
                                                            }
                                                        }
                                                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                                                        Iterator it = arrayList.iterator();
                                                        while (it.hasNext()) {
                                                            arrayList2.add(StringsKt.U(((ProductImageUiModel) it.next()).f61733b, "?"));
                                                        }
                                                        if (!arrayList2.isEmpty()) {
                                                            ImageViewerActivity.Companion companion5 = ImageViewerActivity.t;
                                                            ArrayList arrayList3 = new ArrayList(arrayList2);
                                                            int iIndexOf = arrayList2.indexOf(productImageUiModel.f61733b);
                                                            ProductBackground productBackground = productUiModel2.l;
                                                            PdpActivity pdpActivity5 = pdpActivity2;
                                                            pdpActivity5.startActivity(ImageViewerActivity.Companion.a(companion5, pdpActivity5, arrayList3, iIndexOf, null, productBackground, 8));
                                                        }
                                                    }
                                                    break;
                                                default:
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    ((ProductUiModel) obj5).getClass();
                                                    String str2 = ((PdpViewState) mutableState2.getF10755b()).f61572j.f61551c;
                                                    if (str2 == null) {
                                                        str2 = "";
                                                    }
                                                    ProductUiModel productUiModel3 = ((PdpViewState) mutableState2.getF10755b()).f61566b;
                                                    String str3 = productUiModel3 != null ? productUiModel3.C : null;
                                                    ActivityExtKt.h(pdpActivity2, StringAndroidExtKt.a(str3 != null ? str3 : "", str2), null, 6);
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX31);
                                }
                                Function1 function24 = (Function1) objX31;
                                boolean zY23 = composer2.y(pdpActivity2) | composer2.K(mutableState);
                                Object objX32 = composer2.x();
                                if (zY23 || objX32 == composer$Companion$Empty$1) {
                                    objX32 = new yl0(pdpActivity2, mutableState, 1);
                                    composer2.q(objX32);
                                }
                                Function0 function25 = (Function0) objX32;
                                boolean zY24 = composer2.y(pdpActivity2);
                                Object objX33 = composer2.x();
                                if (zY24 || objX33 == composer$Companion$Empty$1) {
                                    final int i14 = 1;
                                    objX33 = new Function1() { // from class: am0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i15 = i14;
                                            PdpActivity pdpActivity5 = pdpActivity2;
                                            switch (i15) {
                                                case 0:
                                                    String str2 = (String) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    str2.getClass();
                                                    ActivityExtKt.f(pdpActivity5, str2);
                                                    return Unit.f71739a;
                                                case 1:
                                                    ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj5;
                                                    PdpActivity.Companion companion5 = PdpActivity.D;
                                                    contributionLinkUiModel.getClass();
                                                    boolean z3 = contributionLinkUiModel instanceof ContributionLinkUiModel.ShadeFinder;
                                                    PdpActivity pdpActivity6 = pdpActivity2;
                                                    if (!z3) {
                                                        ContributionLinkNavigator contributionLinkNavigator = pdpActivity6.w;
                                                        if (contributionLinkNavigator == null) {
                                                            Intrinsics.h("contributionLinkNavigator");
                                                            throw null;
                                                        }
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, pdpActivity6, contributionLinkUiModel, null, null, null, 28);
                                                    } else if (ContextCompat.checkSelfPermission(pdpActivity6, "android.permission.CAMERA") != 0) {
                                                        pdpActivity6.C = new xl0(pdpActivity6, 10);
                                                        pdpActivity6.B.a("android.permission.CAMERA");
                                                    } else if (pdpActivity6.I().N7()) {
                                                        pdpActivity6.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity6));
                                                    } else {
                                                        pdpActivity6.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
                                                    }
                                                    return Unit.f71739a;
                                                case 2:
                                                    PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj5;
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    pdpVirtualStudioConfigValues.getClass();
                                                    pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToVirtualStudioOsaPage(pdpVirtualStudioConfigValues, pdpVirtualStudioConfigValues.f61576c), pdpActivity5));
                                                    return Unit.f71739a;
                                                case 3:
                                                    PdpBottomSheetType.Permissions permissions = (PdpBottomSheetType.Permissions) obj5;
                                                    PdpActivity.Companion companion7 = PdpActivity.D;
                                                    permissions.getClass();
                                                    ((PermissionsViewModel) pdpActivity5.q.getF71699b()).v5(PermissionContext.BACK_IN_STOCK);
                                                    if (permissions.f61384a instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                                                        pdpActivity5.B().p(pdpActivity5, true);
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    String str3 = (String) obj5;
                                                    PdpActivity.Companion companion8 = PdpActivity.D;
                                                    str3.getClass();
                                                    String str4 = StringExtKt.a(str3) ? str3 : null;
                                                    if (str4 != null) {
                                                        pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(str4, false, 2, null), pdpActivity5));
                                                    } else {
                                                        Logger logger = pdpActivity5.s;
                                                        if (logger == null) {
                                                            Intrinsics.h("logger");
                                                            throw null;
                                                        }
                                                        logger.c("WebViewRouter", "Invalid URL : ".concat(str3), null);
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer2.q(objX33);
                                }
                                Function1 function26 = (Function1) objX33;
                                boolean zY25 = composer2.y(pdpActivity2);
                                Object objX34 = composer2.x();
                                if (zY25 || objX34 == composer$Companion$Empty$1) {
                                    final int i15 = 2;
                                    objX34 = new Function1() { // from class: am0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i16 = i15;
                                            PdpActivity pdpActivity5 = pdpActivity2;
                                            switch (i16) {
                                                case 0:
                                                    String str2 = (String) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    str2.getClass();
                                                    ActivityExtKt.f(pdpActivity5, str2);
                                                    return Unit.f71739a;
                                                case 1:
                                                    ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj5;
                                                    PdpActivity.Companion companion5 = PdpActivity.D;
                                                    contributionLinkUiModel.getClass();
                                                    boolean z3 = contributionLinkUiModel instanceof ContributionLinkUiModel.ShadeFinder;
                                                    PdpActivity pdpActivity6 = pdpActivity2;
                                                    if (!z3) {
                                                        ContributionLinkNavigator contributionLinkNavigator = pdpActivity6.w;
                                                        if (contributionLinkNavigator == null) {
                                                            Intrinsics.h("contributionLinkNavigator");
                                                            throw null;
                                                        }
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, pdpActivity6, contributionLinkUiModel, null, null, null, 28);
                                                    } else if (ContextCompat.checkSelfPermission(pdpActivity6, "android.permission.CAMERA") != 0) {
                                                        pdpActivity6.C = new xl0(pdpActivity6, 10);
                                                        pdpActivity6.B.a("android.permission.CAMERA");
                                                    } else if (pdpActivity6.I().N7()) {
                                                        pdpActivity6.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity6));
                                                    } else {
                                                        pdpActivity6.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
                                                    }
                                                    return Unit.f71739a;
                                                case 2:
                                                    PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj5;
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    pdpVirtualStudioConfigValues.getClass();
                                                    pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToVirtualStudioOsaPage(pdpVirtualStudioConfigValues, pdpVirtualStudioConfigValues.f61576c), pdpActivity5));
                                                    return Unit.f71739a;
                                                case 3:
                                                    PdpBottomSheetType.Permissions permissions = (PdpBottomSheetType.Permissions) obj5;
                                                    PdpActivity.Companion companion7 = PdpActivity.D;
                                                    permissions.getClass();
                                                    ((PermissionsViewModel) pdpActivity5.q.getF71699b()).v5(PermissionContext.BACK_IN_STOCK);
                                                    if (permissions.f61384a instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                                                        pdpActivity5.B().p(pdpActivity5, true);
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    String str3 = (String) obj5;
                                                    PdpActivity.Companion companion8 = PdpActivity.D;
                                                    str3.getClass();
                                                    String str4 = StringExtKt.a(str3) ? str3 : null;
                                                    if (str4 != null) {
                                                        pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(str4, false, 2, null), pdpActivity5));
                                                    } else {
                                                        Logger logger = pdpActivity5.s;
                                                        if (logger == null) {
                                                            Intrinsics.h("logger");
                                                            throw null;
                                                        }
                                                        logger.c("WebViewRouter", "Invalid URL : ".concat(str3), null);
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer2.q(objX34);
                                }
                                Function1 function27 = (Function1) objX34;
                                boolean zY26 = composer2.y(pdpActivity2);
                                Object objX35 = composer2.x();
                                if (zY26 || objX35 == composer$Companion$Empty$1) {
                                    final int i16 = 3;
                                    objX35 = new Function1() { // from class: am0
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj5) {
                                            int i17 = i16;
                                            PdpActivity pdpActivity5 = pdpActivity2;
                                            switch (i17) {
                                                case 0:
                                                    String str2 = (String) obj5;
                                                    PdpActivity.Companion companion4 = PdpActivity.D;
                                                    str2.getClass();
                                                    ActivityExtKt.f(pdpActivity5, str2);
                                                    return Unit.f71739a;
                                                case 1:
                                                    ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj5;
                                                    PdpActivity.Companion companion5 = PdpActivity.D;
                                                    contributionLinkUiModel.getClass();
                                                    boolean z3 = contributionLinkUiModel instanceof ContributionLinkUiModel.ShadeFinder;
                                                    PdpActivity pdpActivity6 = pdpActivity2;
                                                    if (!z3) {
                                                        ContributionLinkNavigator contributionLinkNavigator = pdpActivity6.w;
                                                        if (contributionLinkNavigator == null) {
                                                            Intrinsics.h("contributionLinkNavigator");
                                                            throw null;
                                                        }
                                                        ContributionLinkNavigator.a(contributionLinkNavigator, pdpActivity6, contributionLinkUiModel, null, null, null, 28);
                                                    } else if (ContextCompat.checkSelfPermission(pdpActivity6, "android.permission.CAMERA") != 0) {
                                                        pdpActivity6.C = new xl0(pdpActivity6, 10);
                                                        pdpActivity6.B.a("android.permission.CAMERA");
                                                    } else if (pdpActivity6.I().N7()) {
                                                        pdpActivity6.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity6));
                                                    } else {
                                                        pdpActivity6.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
                                                    }
                                                    return Unit.f71739a;
                                                case 2:
                                                    PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj5;
                                                    PdpActivity.Companion companion6 = PdpActivity.D;
                                                    pdpVirtualStudioConfigValues.getClass();
                                                    pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToVirtualStudioOsaPage(pdpVirtualStudioConfigValues, pdpVirtualStudioConfigValues.f61576c), pdpActivity5));
                                                    return Unit.f71739a;
                                                case 3:
                                                    PdpBottomSheetType.Permissions permissions = (PdpBottomSheetType.Permissions) obj5;
                                                    PdpActivity.Companion companion7 = PdpActivity.D;
                                                    permissions.getClass();
                                                    ((PermissionsViewModel) pdpActivity5.q.getF71699b()).v5(PermissionContext.BACK_IN_STOCK);
                                                    if (permissions.f61384a instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                                                        pdpActivity5.B().p(pdpActivity5, true);
                                                    }
                                                    return Unit.f71739a;
                                                default:
                                                    String str3 = (String) obj5;
                                                    PdpActivity.Companion companion8 = PdpActivity.D;
                                                    str3.getClass();
                                                    String str4 = StringExtKt.a(str3) ? str3 : null;
                                                    if (str4 != null) {
                                                        pdpActivity5.startActivity(PdpDestinationsKt.a(new PdpDestinations.ToWebViewPage(str4, false, 2, null), pdpActivity5));
                                                    } else {
                                                        Logger logger = pdpActivity5.s;
                                                        if (logger == null) {
                                                            Intrinsics.h("logger");
                                                            throw null;
                                                        }
                                                        logger.c("WebViewRouter", "Invalid URL : ".concat(str3), null);
                                                    }
                                                    return Unit.f71739a;
                                            }
                                        }
                                    };
                                    composer2.q(objX35);
                                }
                                NavBackStack.Companion companion4 = NavBackStack.INSTANCE;
                                PdpNavDisplayKt.a(navBackStack2, snackbarHostState, pdpViewModelI, reinsuranceViewModel, permissionsViewModel2, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, function21, function22, function23, function24, function25, function26, function27, (Function1) objX35, composer2, 48);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 6);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
