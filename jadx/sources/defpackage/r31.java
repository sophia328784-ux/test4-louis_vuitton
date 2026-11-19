package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.compose.components.AvatarSize;
import com.vuitton.android.presentation.compose.components.LVAvatarKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment;
import com.vuitton.android.presentation.screen.mylv.MyLvLauncherViewState;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.VtoConsentBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.WearingCarouselKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ConsentRequirementUiModel;
import com.vuitton.android.presentation.screen.search.components.TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleListComposableKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleListScreenKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.video.VideoViewModel;
import com.vuitton.android.presentation.screen.video.components.VideoComposableKt;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistBottomSheetScreen;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistShareComposableKt;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.foundation.logger.Logger;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class r31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79238c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79239e;

    public /* synthetic */ r31(Context context, Function0 function0, MutableState mutableState) {
        this.f79237b = 4;
        this.f79238c = context;
        this.f79239e = function0;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String strK;
        long j2;
        int i2 = this.f79237b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.d;
        Object obj4 = this.f79239e;
        Object obj5 = this.f79238c;
        switch (i2) {
            case 0:
                ThankYouViewState thankYouViewState = (ThankYouViewState) obj5;
                MutableState mutableState = (MutableState) obj3;
                Function0 function0 = (Function0) obj4;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f2 = ThankYouScreenKt.f65243a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (thankYouViewState instanceof ThankYouViewState.Success) {
                        composer.L(1995975165);
                        strK = StringResources_androidKt.b(R.string.myorders_order_number_with_variable, new Object[]{((ThankYouViewState.Success) thankYouViewState).f65301a.f65255a}, composer);
                        composer.F();
                    } else {
                        strK = o60.k(composer, 1996182648, R.string.checkout_confirmation_header_without_order_number, composer);
                    }
                    Modifier modifierG = n00.g("ThankYouScreen$lambda$11", "thankYou_topBar_view");
                    float f3 = TopAppBarDefaults.f7433a;
                    if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        composer.L(1998402155);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.f48374a;
                        composer.F();
                    } else {
                        composer.L(1998503184);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.f48375b;
                        composer.F();
                    }
                    AppBarKt.a(ComposableLambdaKt.b(1132532956, new es0(mutableState, strK, 14), composer), modifierG, ComposableLambdaKt.b(1248497502, new jj0(mutableState, function0), composer), null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, TopAppBarDefaults.d(j2, 0L, composer, 62), composer, 390, 184);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Function1 function1 = (Function1) obj5;
                TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) obj3;
                Function1 function2 = (Function1) obj4;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    FloatingTopBarType floatingTopBarType = FloatingTopBarType.Back;
                    String strC = StringResources_androidKt.c(composer2, R.string.alt_back);
                    boolean zK = composer2.K(function1) | composer2.y(theLookImmersiveArticleViewState);
                    Object objX = composer2.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new t31(function1, theLookImmersiveArticleViewState);
                        composer2.q(objX);
                    }
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, null, strC, (Function0) objX, ComposableLambdaKt.b(-623858630, new cf(theLookImmersiveArticleViewState, function2, 12), composer2), null, composer2, 1572912, 141);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                TheLookImmersiveArticleListComposableKt.a((TheLookImmersiveArticleViewModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                TheLookImmersiveArticleListScreenKt.a((TheLookImmersiveArticleViewState) obj5, (Function0) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                Context context = (Context) obj5;
                Function0 function3 = (Function0) obj4;
                State state = (State) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TopBarAvatar$lambda$4");
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function4 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function4);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                    AvatarItemUiModel avatarItemUiModel = ((MyLvLauncherViewState) state.getF10755b()).f59260a;
                    AvatarSize avatarSize = AvatarSize.Small;
                    String str = ((MyLvLauncherViewState) state.getF10755b()).f59261b;
                    boolean zY = composer3.y(context) | composer3.K(function3);
                    Object objX2 = composer3.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new j3(context, function3, 3);
                        composer3.q(objX2);
                    }
                    LVAvatarKt.a(null, avatarItemUiModel, str, avatarSize, (Function1) objX2, composer3, 3072, 1);
                    if (((MyLvLauncherViewState) state.getF10755b()).f59262c) {
                        BoxKt.a(BoxScopeInstance.f4938a.g(BackgroundKt.b(SizeKt.o(ClipKt.a(pq0.j(-947199633, composer3, "TopBarAvatar$lambda$4"), RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.d(composer3).g), LVAppDesignKitTheme.c(composer3).f48360a.f48372j, RectangleShapeKt.f8913a), Alignment.Companion.d), composer3, 0);
                        composer3.F();
                    } else {
                        composer3.L(-946884425);
                        composer3.F();
                    }
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj5;
                int iIntValue4 = ((Integer) obj2).intValue();
                String str2 = ((EditorialModuleUiModel.CarouselMUiModel) ((EditorialModuleUiModel) obj3)).f50825a;
                audioGuideTracker.getClass();
                str2.getClass();
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(new AudioGuideTrackingUiModel.OnHitCarouselCardEvent(str2, iIntValue4)));
                ((Function1) obj4).invoke((ContributionLinkUiModel) obj);
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                TrendingComposableKt.a((SearchListState) obj5, (NestedScroll) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                VideoComposableKt.a((VideoViewModel) obj5, (Function0) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                VtoConsentBottomSheetKt.a((Modifier) obj5, (ConsentRequirementUiModel) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                WearingCarouselKt.a((Modifier) obj5, (PagerState) obj3, (ArrayList) obj4, (Composer) obj, RecomposeScopeImplKt.a(385));
                return Unit.f71739a;
            case 10:
                final WebViewLoginFragment webViewLoginFragment = (WebViewLoginFragment) obj5;
                final String str3 = (String) obj3;
                final String str4 = (String) obj4;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                WebViewLoginFragment.Companion companion = WebViewLoginFragment.L;
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1562465357, new Function2() { // from class: com.vuitton.android.presentation.screen.authentication.login.legacy.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            Composer composer5 = (Composer) obj6;
                            int iIntValue6 = ((Integer) obj7).intValue();
                            WebViewLoginFragment.Companion companion2 = WebViewLoginFragment.L;
                            if (composer5.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                WebViewLoginFragment webViewLoginFragment2 = webViewLoginFragment;
                                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) webViewLoginFragment2.K.getF71699b();
                                AkamaiSecurityHelper akamaiSecurityHelper = webViewLoginFragment2.I;
                                if (akamaiSecurityHelper == null) {
                                    Intrinsics.h("akamaiSecurityHelper");
                                    throw null;
                                }
                                AnalyticsWebInterface analyticsWebInterface = webViewLoginFragment2.H;
                                if (analyticsWebInterface == null) {
                                    Intrinsics.h("analyticsWebInterface");
                                    throw null;
                                }
                                LinkHandler linkHandler = webViewLoginFragment2.G;
                                if (linkHandler == null) {
                                    Intrinsics.h("linkHandler");
                                    throw null;
                                }
                                Logger logger = webViewLoginFragment2.J;
                                if (logger == null) {
                                    Intrinsics.h("logger");
                                    throw null;
                                }
                                boolean zY2 = composer5.y(webViewLoginFragment2);
                                Object objX3 = composer5.x();
                                if (zY2 || objX3 == Composer.Companion.f7939a) {
                                    WebViewLoginFragment$onCreateView$1$1$1$1$1 webViewLoginFragment$onCreateView$1$1$1$1$1 = new WebViewLoginFragment$onCreateView$1$1$1$1$1(0, webViewLoginFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                                    composer5.q(webViewLoginFragment$onCreateView$1$1$1$1$1);
                                    objX3 = webViewLoginFragment$onCreateView$1$1$1$1$1;
                                }
                                WebViewLoginScreenKt.a(authenticationViewModel, akamaiSecurityHelper, analyticsWebInterface, linkHandler, logger, str3, str4, (Function0) ((KFunction) objX3), composer5, 0);
                            } else {
                                composer5.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer4), composer4, 48);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                WishlistBottomSheetScreenKt.b((WishlistBottomSheetScreen) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                WishlistShareComposableKt.b((WishlistViewModel) obj5, (Function0) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ r31(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f79237b = i3;
        this.f79238c = obj;
        this.d = obj2;
        this.f79239e = obj3;
    }

    public /* synthetic */ r31(Object obj, Object obj2, Object obj3, int i2) {
        this.f79237b = i2;
        this.f79238c = obj;
        this.d = obj2;
        this.f79239e = obj3;
    }

    public /* synthetic */ r31(Object obj, Function0 function0, Function function, int i2, int i3) {
        this.f79237b = i3;
        this.f79238c = obj;
        this.f79239e = function0;
        this.d = function;
    }
}
