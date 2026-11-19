package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.common.editorial.components.carouselm.CarouselMKt;
import com.vuitton.android.presentation.common.editorial.components.editorialcard.EditorialCardKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.common.editorial.models.TitlesUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.TransferCertificateConfirmationComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListItemKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.screen.services.components.ServicesScreenKt;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouFeedbackBottomSheetKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleNavHostKt;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.foundation.logger.Logger;
import defpackage.k61;
import defpackage.p11;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ys0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81431c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81433f;

    public /* synthetic */ ys0(EditorialModuleUiModel editorialModuleUiModel, LVColorScheme lVColorScheme, A11ySettings a11ySettings, Function1 function1) {
        this.f81430b = 8;
        this.f81431c = editorialModuleUiModel;
        this.f81432e = lVColorScheme;
        this.f81433f = a11ySettings;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81430b;
        Object obj3 = this.f81433f;
        Object obj4 = this.f81432e;
        Object obj5 = this.d;
        Object obj6 = this.f81431c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                RepairListItemKt.a((CareServiceUiModel) obj6, (Function1) obj5, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                ContributionLinkNavigator contributionLinkNavigator = (ContributionLinkNavigator) obj3;
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                String str = (String) obj2;
                contributionLinkUiModel.getClass();
                str.getClass();
                ((SearchViewModel) obj6).x7(new SearchTrackingUiModel.OnHitOnKeywordCardEvent(str, ((SearchScreenViewState) ((State) obj4).getF10755b()).g));
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) obj5);
                if (appCompatActivityB != null) {
                    ContributionLinkNavigator.a(contributionLinkNavigator, appCompatActivityB, contributionLinkUiModel, null, null, null, 28);
                }
                break;
            case 2:
                ((Integer) obj2).getClass();
                ServicesScreenKt.a((ServicesViewState) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 3:
                Function0 function0 = (Function0) obj6;
                Function0 function1 = (Function0) obj4;
                Function1 function2 = (Function1) obj5;
                State state = (State) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer, R.string.mylv_sharedwishlist_title), null, null, function0, ComposableLambdaKt.b(-2143837495, new s8(function1, function2, state), composer), null, null, null, composer, 12582912, 0, 3895);
                } else {
                    composer.D();
                }
                break;
            case 4:
                ((Integer) obj2).getClass();
                SpotlightHotspotsKt.a((Modifier) obj6, (FeatureThemeUiModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                break;
            case 5:
                ((Integer) obj2).getClass();
                ThankYouFeedbackBottomSheetKt.b((ThankYouFeedbackUiModel) obj6, (Function1) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 6:
                String str2 = (String) obj6;
                String str3 = (String) obj5;
                Function0 function3 = (Function0) obj4;
                TopAppBarScrollBehavior topAppBarScrollBehavior = (TopAppBarScrollBehavior) obj3;
                boolean z = false;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if ((iIntValue2 & 3) != 2) {
                    z = true;
                }
                if (composer2.p(iIntValue2 & 1, z)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVMediumTopBarKt.a(null, null, str2, str3, function3, null, null, topAppBarScrollBehavior, composer2, 0, 99);
                } else {
                    composer2.D();
                }
                break;
            case 7:
                ((Integer) obj2).getClass();
                TheLookImmersiveArticleNavHostKt.a((TheLookImmersiveArticleViewModel) obj6, (Function2) obj5, (Function2) obj4, (Function3) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 8:
                EditorialModuleUiModel editorialModuleUiModel = (EditorialModuleUiModel) obj6;
                LVColorScheme lVColorScheme = (LVColorScheme) obj4;
                A11ySettings a11ySettings = (A11ySettings) obj3;
                Function1 function4 = (Function1) obj5;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    AudioGuideTracker audioGuideTracker = (AudioGuideTracker) composer3.k(AudioGuideTrackerEntryPointKt.f52977a);
                    boolean z2 = editorialModuleUiModel instanceof EditorialModuleUiModel.CardUiModel;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (z2) {
                        composer3.L(175018775);
                        EditorialModuleUiModel.CardUiModel cardUiModel = (EditorialModuleUiModel.CardUiModel) editorialModuleUiModel;
                        AssetUiModel assetUiModel = cardUiModel.d;
                        RatioUiModel ratioUiModel = cardUiModel.f50816e;
                        TitlesUiModel titlesUiModel = cardUiModel.f50814b;
                        String str4 = titlesUiModel != null ? titlesUiModel.f50879a : null;
                        String str5 = titlesUiModel != null ? titlesUiModel.f50880b : null;
                        EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = cardUiModel.g;
                        boolean zK = composer3.K(editorialModuleUiModel) | composer3.K(function4);
                        Object objX = composer3.x();
                        if (zK || objX == composer$Companion$Empty$1) {
                            objX = new qx(editorialModuleUiModel, function4);
                            composer3.q(objX);
                        }
                        EditorialCardKt.a(null, lVColorScheme, assetUiModel, ratioUiModel, str4, str5, editorialModuleCardTypeUiModel, true, false, a11ySettings, (Function0) objX, null, null, null, composer3, 12582912, 14593);
                        composer3.F();
                    } else if (editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselMUiModel) {
                        composer3.L(175038014);
                        EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = (EditorialModuleUiModel.CarouselMUiModel) editorialModuleUiModel;
                        String str6 = carouselMUiModel.f50826b;
                        List list = carouselMUiModel.f50827c;
                        boolean z3 = a11ySettings.f51775a;
                        boolean zY = composer3.y(audioGuideTracker) | composer3.K(editorialModuleUiModel) | composer3.K(function4);
                        Object objX2 = composer3.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new r31(audioGuideTracker, editorialModuleUiModel, function4, 5);
                            composer3.q(objX2);
                        }
                        Function2 function5 = (Function2) objX2;
                        boolean zY2 = composer3.y(audioGuideTracker) | composer3.K(editorialModuleUiModel);
                        Object objX3 = composer3.x();
                        if (zY2 || objX3 == composer$Companion$Empty$1) {
                            objX3 = new p01(audioGuideTracker, editorialModuleUiModel, 18);
                            composer3.q(objX3);
                        }
                        CarouselMKt.a(null, str6, list, lVColorScheme, z3, true, function5, (Function0) objX3, composer3, ImageMetadata.EDGE_MODE, 1);
                        composer3.F();
                    } else {
                        composer3.L(1131835635);
                        composer3.F();
                    }
                } else {
                    composer3.D();
                }
                break;
            case 9:
                ((Integer) obj2).getClass();
                TransferCertificateConfirmationComposableKt.d((String) obj6, (String) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 10:
                final WebViewKisaFragment webViewKisaFragment = (WebViewKisaFragment) obj6;
                final String str7 = (String) obj5;
                final String str8 = (String) obj4;
                final String str9 = (String) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                WebViewKisaFragment.Companion companion = WebViewKisaFragment.O;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-972558900, new Function2() { // from class: com.vuitton.android.presentation.screen.authentication.register.kisa.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj7, Object obj8) {
                            Composer composer5 = (Composer) obj7;
                            int iIntValue5 = ((Integer) obj8).intValue();
                            WebViewKisaFragment.Companion companion2 = WebViewKisaFragment.O;
                            if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                WebViewKisaFragment webViewKisaFragment2 = webViewKisaFragment;
                                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) webViewKisaFragment2.L.getF71699b();
                                AkamaiSecurityHelper akamaiSecurityHelper = webViewKisaFragment2.I;
                                if (akamaiSecurityHelper == null) {
                                    Intrinsics.h("akamaiSecurityHelper");
                                    throw null;
                                }
                                AnalyticsWebInterface analyticsWebInterface = webViewKisaFragment2.H;
                                if (analyticsWebInterface == null) {
                                    Intrinsics.h("analyticsWebInterface");
                                    throw null;
                                }
                                LinkHandler linkHandler = webViewKisaFragment2.G;
                                if (linkHandler == null) {
                                    Intrinsics.h("linkHandler");
                                    throw null;
                                }
                                Logger logger = webViewKisaFragment2.J;
                                if (logger == null) {
                                    Intrinsics.h("logger");
                                    throw null;
                                }
                                boolean zY3 = composer5.y(webViewKisaFragment2);
                                Object objX4 = composer5.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY3 || objX4 == composer$Companion$Empty$2) {
                                    objX4 = new k61(webViewKisaFragment2, 2);
                                    composer5.q(objX4);
                                }
                                Function0 function6 = (Function0) objX4;
                                boolean zY4 = composer5.y(webViewKisaFragment2);
                                Object objX5 = composer5.x();
                                if (zY4 || objX5 == composer$Companion$Empty$2) {
                                    objX5 = new p11(webViewKisaFragment2, 20);
                                    composer5.q(objX5);
                                }
                                Function1 function7 = (Function1) objX5;
                                boolean zY5 = composer5.y(webViewKisaFragment2);
                                Object objX6 = composer5.x();
                                if (zY5 || objX6 == composer$Companion$Empty$2) {
                                    WebViewKisaFragment$onCreateView$1$1$1$3$1 webViewKisaFragment$onCreateView$1$1$1$3$1 = new WebViewKisaFragment$onCreateView$1$1$1$3$1(0, webViewKisaFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                                    composer5.q(webViewKisaFragment$onCreateView$1$1$1$3$1);
                                    objX6 = webViewKisaFragment$onCreateView$1$1$1$3$1;
                                }
                                WebViewRegisterScreenKt.a(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, linkHandler, logger, str7, str8, str9, function6, function7, (Function0) ((KFunction) objX6), composer5, 0, 0);
                            } else {
                                composer5.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer4), composer4, 48);
                } else {
                    composer4.D();
                }
                break;
            default:
                final WebViewRegisterFragment webViewRegisterFragment = (WebViewRegisterFragment) obj6;
                final String str10 = (String) obj5;
                final String str11 = (String) obj4;
                final String str12 = (String) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                WebViewRegisterFragment.Companion companion2 = WebViewRegisterFragment.M;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-78561989, new Function2() { // from class: com.vuitton.android.presentation.screen.authentication.register.legacy.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj7, Object obj8) {
                            Composer composer6 = (Composer) obj7;
                            int iIntValue6 = ((Integer) obj8).intValue();
                            WebViewRegisterFragment.Companion companion3 = WebViewRegisterFragment.M;
                            if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                WebViewRegisterFragment webViewRegisterFragment2 = webViewRegisterFragment;
                                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) webViewRegisterFragment2.L.getF71699b();
                                AkamaiSecurityHelper akamaiSecurityHelper = webViewRegisterFragment2.I;
                                if (akamaiSecurityHelper == null) {
                                    Intrinsics.h("akamaiSecurityHelper");
                                    throw null;
                                }
                                AnalyticsWebInterface analyticsWebInterface = webViewRegisterFragment2.H;
                                if (analyticsWebInterface == null) {
                                    Intrinsics.h("analyticsWebInterface");
                                    throw null;
                                }
                                LinkHandler linkHandler = webViewRegisterFragment2.G;
                                if (linkHandler == null) {
                                    Intrinsics.h("linkHandler");
                                    throw null;
                                }
                                Logger logger = webViewRegisterFragment2.J;
                                if (logger == null) {
                                    Intrinsics.h("logger");
                                    throw null;
                                }
                                boolean zY3 = composer6.y(webViewRegisterFragment2);
                                Object objX4 = composer6.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY3 || objX4 == composer$Companion$Empty$2) {
                                    objX4 = new k61(webViewRegisterFragment2, 3);
                                    composer6.q(objX4);
                                }
                                Function0 function6 = (Function0) objX4;
                                boolean zY4 = composer6.y(webViewRegisterFragment2);
                                Object objX5 = composer6.x();
                                if (zY4 || objX5 == composer$Companion$Empty$2) {
                                    WebViewRegisterFragment$onCreateView$1$1$1$2$1 webViewRegisterFragment$onCreateView$1$1$1$2$1 = new WebViewRegisterFragment$onCreateView$1$1$1$2$1(0, webViewRegisterFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                                    composer6.q(webViewRegisterFragment$onCreateView$1$1$1$2$1);
                                    objX5 = webViewRegisterFragment$onCreateView$1$1$1$2$1;
                                }
                                WebViewRegisterScreenKt.a(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, linkHandler, logger, str10, str11, str12, function6, null, (Function0) ((KFunction) objX5), composer6, 0, 512);
                            } else {
                                composer6.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer5), composer5, 48);
                } else {
                    composer5.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ys0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f81430b = i2;
        this.f81431c = obj;
        this.d = obj2;
        this.f81432e = obj3;
        this.f81433f = obj4;
    }

    public /* synthetic */ ys0(Object obj, Object obj2, Function function, Function function2, int i2, int i3) {
        this.f81430b = i3;
        this.f81431c = obj;
        this.d = obj2;
        this.f81432e = function;
        this.f81433f = function2;
    }

    public /* synthetic */ ys0(Function0 function0, Function0 function1, Function1 function2, MutableState mutableState) {
        this.f81430b = 3;
        this.f81431c = function0;
        this.f81432e = function1;
        this.d = function2;
        this.f81433f = mutableState;
    }
}
