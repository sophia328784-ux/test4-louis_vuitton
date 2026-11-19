package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation3.runtime.NavBackStack;
import coil3.compose.AsyncImagePainter;
import coil3.compose.SubcomposeAsyncImageKt;
import coil3.compose.SubcomposeAsyncImageScope;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVMultilineTextFieldKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreen;
import com.vuitton.android.presentation.screen.account.myinformation.components.MyInformationBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetType;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModelKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.bottomsheet.SignInSelectionBottomSheetContentKt;
import com.vuitton.android.presentation.screen.authentication.welcome.components.bottomsheet.SocialSignInDebugBottomSheetContentKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.FilterCategorySliderKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import com.vuitton.android.presentation.screen.osa.form.kisa.OsaKisaComposableKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpEditorialContentKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpMainViewKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpFindAStoreButtonKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpFindInStoreButtonKt;
import com.vuitton.android.presentation.screen.pdp.models.StoreButtonType;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.repairs.components.RepairPaymentFailedComposableKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouFeedbackBottomSheetKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.wishlist.model.EmptyWishlistAction;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistScreenKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yj0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81376c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81377e;

    public /* synthetic */ yj0(Object obj, Object obj2, Object obj3, int i2) {
        this.f81375b = i2;
        this.f81376c = obj;
        this.d = obj2;
        this.f81377e = obj3;
    }

    private final Object a(Object obj, Object obj2, Object obj3) {
        ThankYouFeedbackUiModel thankYouFeedbackUiModel = (ThankYouFeedbackUiModel) this.f81376c;
        Function1 function1 = (Function1) this.d;
        Function0 function0 = (Function0) this.f81377e;
        Composer composer = (Composer) obj2;
        int iIntValue = ((Integer) obj3).intValue();
        ((ColumnScope) obj).getClass();
        if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final ScrollState scrollStateB = ScrollKt.b(composer);
            Object objX = composer.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, composer);
                composer.q(objX);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX;
            Modifier modifierJ = PaddingKt.j(ScrollKt.d(SizeKt.d(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), 1.0f), scrollStateB, false, 14), LVAppDesignKitTheme.l(composer).g, LVAppDesignKitTheme.l(composer).f48417f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
            int iHashCode = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
            Modifier modifierC = ComposedModifierKt.c(composer, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function2);
            } else {
                composer.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(composer, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(composer, persistentCompositionLocalMapN, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(composer, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(composer, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(composer, modifierC, function7);
            TextKt.c(StringResources_androidKt.c(composer, R.string.checkout_confirmation_feedback_rating_description), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 131066);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), LVAppDesignKitTheme.l(composer).d));
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, composer, 6);
            int iHashCode2 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer.n();
            Modifier modifierC2 = ComposedModifierKt.c(composer, modifierD);
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function2);
            } else {
                composer.o();
            }
            Updater.c(composer, rowMeasurePolicyA, function3);
            Updater.c(composer, persistentCompositionLocalMapN2, function4);
            cj.s(iHashCode2, composer, function5, composer, function6);
            Updater.c(composer, modifierC2, function7);
            composer.L(843715439);
            int i2 = 0;
            while (i2 < 5) {
                i2++;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0");
                boolean zK = composer.K(function1) | composer.K(thankYouFeedbackUiModel) | composer.d(i2);
                Object objX2 = composer.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ou(function1, thankYouFeedbackUiModel, i2, 7);
                    composer.q(objX2);
                }
                Modifier modifierD2 = ClickableKt.d(dTFunctionNameModifier, false, null, null, (Function0) objX2, 15);
                Integer num = thankYouFeedbackUiModel.f65285a;
                ThankYouFeedbackBottomSheetKt.a(modifierD2, i2, num != null && i2 == num.intValue(), composer, 0);
            }
            composer.F();
            composer.r();
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), LVAppDesignKitTheme.l(composer).f48416e));
            Modifier modifierD3 = SizeKt.d(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), 1.0f);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, composer, 6);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode3 = Long.hashCode(composer.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer.n();
            Modifier modifierC3 = ComposedModifierKt.c(composer, modifierD3);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (composer.getF7976a() == null) {
                ComposablesKt.b();
                throw null;
            }
            composer.B();
            if (composer.getS()) {
                composer.C(function8);
            } else {
                composer.o();
            }
            Updater.c(composer, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
            Updater.c(composer, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
            Updater.c(composer, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
            Updater.b(composer, ComposeUiNode.Companion.f9645h);
            Updater.c(composer, modifierC3, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(composer, R.string.checkout_confirmation_feedback_rating_low_value), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131066);
            TextKt.c(StringResources_androidKt.c(composer, R.string.checkout_confirmation_feedback_rating_high_value), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).l, composer, 0, 0, 131066);
            composer.r();
            DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 1), LVAppDesignKitTheme.d(composer).f48385c, LVAppDesignKitTheme.c(composer).f48361b.q, composer, 0, 0);
            TextKt.c(StringResources_androidKt.c(composer, R.string.checkout_confirmation_feedback_review_description), ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), Alignment.Companion.o), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 131064);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), LVAppDesignKitTheme.l(composer).d));
            Modifier modifierD4 = SizeKt.d(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), 1.0f);
            boolean zY = composer.y(coroutineScope) | composer.K(scrollStateB);
            Object objX3 = composer.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new Function1() { // from class: com.vuitton.android.presentation.screen.thankyou.components.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        FocusState focusState = (FocusState) obj4;
                        focusState.getClass();
                        if (focusState.a()) {
                            BuildersKt.c(coroutineScope, null, null, new ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1(scrollStateB, null), 3);
                        }
                        return Unit.f71739a;
                    }
                };
                composer.q(objX3);
            }
            Modifier modifierA = FocusChangedModifierKt.a(modifierD4, (Function1) objX3);
            String str = thankYouFeedbackUiModel.f65286b;
            String strC = StringResources_androidKt.c(composer, R.string.checkout_confirmation_feedback_review_placeholder);
            KeyboardCapitalization.f10804b.getClass();
            int i3 = KeyboardCapitalization.f10807f;
            boolean zK2 = composer.K(function1) | composer.K(thankYouFeedbackUiModel);
            Object objX4 = composer.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new m21(function1, thankYouFeedbackUiModel, 10);
                composer.q(objX4);
            }
            LVMultilineTextFieldKt.a(str, (Function1) objX4, modifierA, null, false, strC, false, null, null, i3, null, null, composer, 805306368, 3544);
            TextKt.c(StringResources_androidKt.b(R.string.checkout_confirmation_feedback_review_character_counter, new Object[]{Integer.valueOf(thankYouFeedbackUiModel.f65287c)}, composer), null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).m, composer, 0, 0, 131066);
            SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), LVAppDesignKitTheme.l(composer).f48417f));
            LVButtonKt.b(6, 376, composer, SizeKt.d(new DTFunctionNameModifier("ThankYouFeedbackBottomSheet$lambda$0"), 1.0f), LVAppDesignKitTheme.b(composer).f48446a, null, null, StringResources_androidKt.c(composer, R.string.confirm), function0, false, thankYouFeedbackUiModel.d, false);
            composer.r();
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Composer composer;
        Composer composer2;
        SnapshotStateList snapshotStateList;
        int i2 = this.f81375b;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        float f2 = 1.0f;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        final int i3 = 2;
        boolean z = false;
        Object obj4 = this.f81377e;
        Object obj5 = this.d;
        Object obj6 = this.f81376c;
        final int i4 = 1;
        switch (i2) {
            case 0:
                final OsaLocationFormViewModel osaLocationFormViewModel = (OsaLocationFormViewModel) obj6;
                final NavBackStack navBackStack = (NavBackStack) obj5;
                final CoroutineScope coroutineScope = (CoroutineScope) obj4;
                Composer composer3 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((OsaRoutes.Kisa) obj).getClass();
                if (composer3.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean z2 = ((OsaLocationFormViewState) SnapshotStateKt.b(osaLocationFormViewModel.getU(), composer3).getF10755b()).s;
                    boolean zY = composer3.y(navBackStack);
                    Object objX = composer3.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new x0(navBackStack, 10);
                        composer3.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    boolean zY2 = composer3.y(coroutineScope) | composer3.y(osaLocationFormViewModel) | composer3.y(navBackStack);
                    Object objX2 = composer3.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new Function0() { // from class: com.vuitton.android.presentation.screen.osa.b
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                BuildersKt.c(coroutineScope, null, null, new OsaNavDisplayKt$OsaNavDisplay$2$5$2$1$1(osaLocationFormViewModel, navBackStack, null), 3);
                                return Unit.f71739a;
                            }
                        };
                        composer3.q(objX2);
                    }
                    Function0 function1 = (Function0) objX2;
                    boolean zY3 = composer3.y(osaLocationFormViewModel);
                    Object objX3 = composer3.x();
                    if (zY3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new wj0(osaLocationFormViewModel, 0);
                        composer3.q(objX3);
                    }
                    OsaKisaComposableKt.a(z2, function0, function1, (Function0) objX3, composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 1:
                StoreButtonType storeButtonType = (StoreButtonType) obj6;
                Function0 function2 = (Function0) obj5;
                Function0 function3 = (Function0) obj4;
                Composer composer4 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i5 = PdpMainViewKt.WhenMappings.f61405a[storeButtonType.ordinal()];
                    if (i5 == 1) {
                        PdpFindInStoreButtonKt.a(0, composer4, ModifierExtKt.e(PaddingKt.i(pq0.h(1.0f, -1160949437, composer4, "PdpMainView$lambda$3$0$8$0"), LVAppDesignKitTheme.l(composer4).f48416e), "pdp_findInStore_button"), function2);
                        composer4.F();
                    } else {
                        if (i5 != 2) {
                            throw o60.v(composer4, 932379808);
                        }
                        PdpFindAStoreButtonKt.a(0, composer4, ModifierExtKt.e(PaddingKt.i(pq0.h(1.0f, -1160491133, composer4, "PdpMainView$lambda$3$0$8$0"), LVAppDesignKitTheme.l(composer4).f48416e), "pdp_findAStore_button"), function3);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 2:
                ProductUiModel productUiModel = (ProductUiModel) obj6;
                Function1 function4 = (Function1) obj5;
                PdpTracker pdpTracker = (PdpTracker) obj4;
                Composer composer5 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(com.vuitton.android.designkit.components.ModifierExtKt.d(new DTFunctionNameModifier("PdpMainView$lambda$3$0$11"), LVAppDesignKitTheme.l(composer5).f48416e), "pdp_editorialContent_view");
                    List list = productUiModel.Y;
                    boolean zK = composer5.K(function4) | composer5.y(pdpTracker) | composer5.y(productUiModel);
                    Object objX4 = composer5.x();
                    if (zK || objX4 == composer$Companion$Empty$1) {
                        objX4 = new lm0(function4, pdpTracker, productUiModel, 1);
                        composer5.q(objX4);
                    }
                    Function2 function5 = (Function2) objX4;
                    boolean zY4 = composer5.y(pdpTracker) | composer5.y(productUiModel);
                    Object objX5 = composer5.x();
                    if (zY4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new xg0(pdpTracker, productUiModel, 15);
                        composer5.q(objX5);
                    }
                    PdpEditorialContentKt.a(modifierE, true, list, function5, (Function1) objX5, composer5, 48);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 3:
                SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) obj6;
                Function1 function6 = (Function1) obj5;
                Context context = (Context) obj4;
                Composer composer6 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("PersonalSelectionsCurationAdvisorLookScreen$lambda$1$0$1", 1.0f);
                    Object objX6 = composer6.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new LvExoPlayer(context).f50900a;
                        composer6.q(objX6);
                    }
                    ExoPlayer exoPlayer = (ExoPlayer) objX6;
                    String str = selectionAssetUiModel.f62576a.f51781c.f51783c;
                    Float fValueOf = Float.valueOf(0.8f);
                    boolean zK2 = composer6.K(function6) | composer6.y(selectionAssetUiModel);
                    Object objX7 = composer6.x();
                    if (zK2 || objX7 == composer$Companion$Empty$1) {
                        objX7 = new pn0(1, selectionAssetUiModel, function6);
                        composer6.q(objX7);
                    }
                    LvVideoPlayerKt.b(modifierD, exoPlayer, str, null, fValueOf, false, null, null, false, false, false, false, null, false, 2, null, null, null, (Function1) objX7, null, null, composer6, 24582, 24576, 0, 1818600);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 4:
                QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj6;
                Function1 function7 = (Function1) obj5;
                MutableState mutableState = (MutableState) obj4;
                Composer composer7 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                List list2 = quickAccessFiltersViewState.f58175i;
                if (list2.isEmpty()) {
                    composer7.L(1580850955);
                    composer7.F();
                } else {
                    composer7.L(1580167684);
                    ScrollState scrollStateB = ScrollKt.b(composer7);
                    Modifier modifierG = n00.g("QuickAccessFiltersEntryPoint_AlbwjTQ$lambda$19$2$2", "QAF_FloatingSliderItem_view");
                    Alignment.f8582a.getClass();
                    FilterCategorySliderKt.a(boxScopeInstance.g(modifierG, Alignment.Companion.f8586e), ((Boolean) mutableState.getF10755b()).booleanValue(), scrollStateB, list2, quickAccessFiltersViewState.f58176j, function7, composer7, 0);
                    composer7.F();
                }
                return Unit.f71739a;
            case 5:
                String str2 = (String) obj6;
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj5;
                Function1 function8 = (Function1) obj4;
                Composer composer8 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer8.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ReinsuranceBottomSheet$lambda$3");
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer8, 0);
                    int iHashCode = Long.hashCode(composer8.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer8.n();
                    Modifier modifierC = ComposedModifierKt.c(composer8, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer8.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer8.B();
                    if (composer8.getS()) {
                        composer8.C(function9);
                    } else {
                        composer8.o();
                    }
                    Function2 function10 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer8, columnMeasurePolicyA, function10);
                    Function2 function11 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer8, persistentCompositionLocalMapN, function11);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function12 = ComposeUiNode.Companion.g;
                    Updater.c(composer8, numValueOf, function12);
                    Function1 function13 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer8, function13);
                    Function2 function14 = ComposeUiNode.Companion.d;
                    Updater.c(composer8, modifierC, function14);
                    if (str2 == null) {
                        composer8.L(583392183);
                        composer8.F();
                        composer = composer8;
                    } else {
                        Modifier modifierM = PaddingKt.m(pq0.j(583392184, composer8, "ReinsuranceBottomSheet$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer8).d, 7);
                        Painter painterA = PainterResources_androidKt.a(R.drawable.placeholder, composer8, 0);
                        ContentScale.f9447a.getClass();
                        Modifier modifierA = PainterModifierKt.a(modifierM, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode2 = Long.hashCode(composer8.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer8.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer8, modifierA);
                        if (composer8.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer8.B();
                        if (composer8.getS()) {
                            composer8.C(function9);
                        } else {
                            composer8.o();
                        }
                        Updater.c(composer8, measurePolicyD, function10);
                        Updater.c(composer8, persistentCompositionLocalMapN2, function11);
                        cj.s(iHashCode2, composer8, function12, composer8, function13);
                        ImageLoaderKt.b(ModifierExtKt.e(n00.c(composer8, modifierC2, function14, "ReinsuranceBottomSheet$lambda$3", 1.0f), "pdp_reinsurance_bottomSheet_image"), str2, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, composer8, KyberEngine.KyberPolyBytes, 2040);
                        composer = composer8;
                        composer.r();
                        composer.F();
                        f2 = 1.0f;
                    }
                    Modifier modifierD2 = tr.d("ReinsuranceBottomSheet$lambda$3", f2);
                    Object objX8 = composer.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new yn0(28);
                        composer.q(objX8);
                    }
                    Modifier modifierC3 = FocusableKt.c(FocusPropertiesKt.a(modifierD2, (Function1) objX8), null, 2);
                    int i6 = AnnotatedString.f10418f;
                    String str3 = reinsuranceUiModel != null ? reinsuranceUiModel.d : null;
                    if (str3 == null) {
                        str3 = "";
                    }
                    TextDecoration.f10965b.getClass();
                    TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null);
                    boolean zK3 = composer.K(function8);
                    Object objX9 = composer.x();
                    if (zK3 || objX9 == composer$Companion$Empty$1) {
                        objX9 = new rm(function8, 7);
                        composer.q(objX9);
                    }
                    TextKt.d(Html_androidKt.a(str3, textLinkStyles, (LinkInteractionListener) objX9), modifierC3, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 262136);
                    composer.r();
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 6:
                Function0 function15 = (Function0) obj6;
                String str4 = (String) obj5;
                String str5 = (String) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer9 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue6 & 6) == 0) {
                    iIntValue6 |= composer9.K(paddingValues) ? 4 : 2;
                }
                if (composer9.p(iIntValue6 & 1, (iIntValue6 & 19) != 18)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("RepairsPaymentFailedScreen$lambda$1").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer9).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer9.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer9.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer9, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function16 = ComposeUiNode.Companion.f9641b;
                    if (composer9.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer9.B();
                    if (composer9.getS()) {
                        composer9.C(function16);
                    } else {
                        composer9.o();
                    }
                    Updater.c(composer9, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer9, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer9, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer9, modifierC4, ComposeUiNode.Companion.d);
                    RepairPaymentFailedComposableKt.a(function15, str4, str5, composer9, 0);
                    composer9.r();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 7:
                Context context2 = (Context) obj6;
                String str6 = (String) obj5;
                Function0 function17 = (Function0) obj4;
                Composer composer10 = (Composer) obj2;
                ((Integer) obj3).getClass();
                float f3 = SearchBottomBarKt.f62854a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("SearchBottomBar$lambda$0$2"), LVAppDesignKitTheme.l(composer10).f48416e);
                boolean zY5 = composer10.y(context2) | composer10.K(str6);
                Object objX10 = composer10.x();
                if (zY5 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new qk0(context2, str6, i4);
                    composer10.q(objX10);
                }
                LVSearchBarKt.b(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierI, "catalog_search_textfield", (Function1) objX10, 2), null, str6, StringResources_androidKt.c(composer10, R.string.search_placeholder), null, function17, false, composer10, 1572864, 18);
                return Unit.f71739a;
            case 8:
                MutableState mutableState2 = (MutableState) obj6;
                MyInformationViewModel myInformationViewModel = (MyInformationViewModel) obj5;
                Function0 function18 = (Function0) obj4;
                Composer composer11 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer11.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    MyInformationBottomSheetScreen myInformationBottomSheetScreen = (MyInformationBottomSheetScreen) mutableState2.getF10755b();
                    if (myInformationBottomSheetScreen == null) {
                        composer11.L(-1317748969);
                        composer11.F();
                    } else {
                        composer11.L(-1317748968);
                        boolean zY6 = composer11.y(myInformationViewModel) | composer11.K(function18);
                        Object objX11 = composer11.x();
                        if (zY6 || objX11 == composer$Companion$Empty$1) {
                            objX11 = new jm0(myInformationViewModel, function18, 19);
                            composer11.q(objX11);
                        }
                        MyInformationBottomSheetScreenKt.c(myInformationBottomSheetScreen, (Function0) objX11, function18, composer11, 0);
                        composer11.F();
                    }
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 9:
                String str7 = (String) obj6;
                Function2 function19 = (Function2) obj5;
                State state = (State) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer12 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer12.K(paddingValues2) ? 4 : 2;
                }
                if (composer12.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    Modifier modifierO = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("SharedWishlistComposable$lambda$4"), LVAppDesignKitTheme.c(composer12).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues2).o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode4 = Long.hashCode(composer12.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer12.n();
                    Modifier modifierC5 = ComposedModifierKt.c(composer12, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function20 = ComposeUiNode.Companion.f9641b;
                    if (composer12.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer12.B();
                    if (composer12.getS()) {
                        composer12.C(function20);
                    } else {
                        composer12.o();
                    }
                    Updater.c(composer12, measurePolicyD3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer12, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer12, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer12, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer12, modifierC5, ComposeUiNode.Companion.d);
                    if (((WishlistViewState) state.getF10755b()).f65758b) {
                        ProgressViewKt.a(boxScopeInstance.g(pq0.j(-340418040, composer12, "SharedWishlistComposable$lambda$4"), Alignment.Companion.f8587f), 0L, false, composer12, 0, 6);
                        composer2 = composer12;
                        composer2.F();
                    } else {
                        composer2 = composer12;
                        WishlistUiModel wishlistUiModel = ((WishlistViewState) state.getF10755b()).d;
                        if (wishlistUiModel == null || (snapshotStateList = wishlistUiModel.f65755a) == null || !(!snapshotStateList.isEmpty())) {
                            composer2.L(-1962631597);
                            composer2.F();
                        } else {
                            composer2.L(-1962873800);
                            SharedWishlistScreenKt.b(null, (WishlistViewState) state.getF10755b(), str7, function19, composer2, 0);
                            composer2.F();
                        }
                    }
                    composer2.r();
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 10:
                final SocialLoginBottomSheetState socialLoginBottomSheetState = (SocialLoginBottomSheetState) obj6;
                SocialLoginViewState socialLoginViewState = (SocialLoginViewState) obj5;
                final Context context3 = (Context) obj4;
                Composer composer13 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer13.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    SocialLoginBottomSheetType socialLoginBottomSheetType = (SocialLoginBottomSheetType) socialLoginBottomSheetState.d.getF10755b();
                    if (socialLoginBottomSheetType instanceof SocialLoginBottomSheetType.AuthSelection) {
                        composer13.L(-1336137356);
                        boolean z3 = socialLoginViewState.d;
                        boolean z4 = socialLoginViewState.f54194b;
                        boolean z5 = socialLoginViewState.f54196e;
                        boolean zK4 = composer13.K(socialLoginBottomSheetState) | composer13.y(context3) | composer13.K(socialLoginBottomSheetType);
                        Object objX12 = composer13.x();
                        if (zK4 || objX12 == composer$Companion$Empty$1) {
                            final SocialLoginBottomSheetType.AuthSelection authSelection = (SocialLoginBottomSheetType.AuthSelection) socialLoginBottomSheetType;
                            final int i7 = z ? 1 : 0;
                            objX12 = new Function0() { // from class: c01
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i7;
                                    SocialLoginBottomSheetType.AuthSelection authSelection2 = authSelection;
                                    Context context4 = context3;
                                    SocialLoginBottomSheetState socialLoginBottomSheetState2 = socialLoginBottomSheetState;
                                    switch (i8) {
                                        case 0:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.b2(ContextExtKt.b(context4), authSelection2.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                        case 1:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.q2(ContextExtKt.b(context4), authSelection2.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                        default:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.ec(ContextExtKt.b(context4), authSelection2.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer13.q(objX12);
                        }
                        Function0 function21 = (Function0) objX12;
                        boolean zK5 = composer13.K(socialLoginBottomSheetState) | composer13.y(context3) | composer13.K(socialLoginBottomSheetType);
                        Object objX13 = composer13.x();
                        if (zK5 || objX13 == composer$Companion$Empty$1) {
                            final SocialLoginBottomSheetType.AuthSelection authSelection2 = (SocialLoginBottomSheetType.AuthSelection) socialLoginBottomSheetType;
                            objX13 = new Function0() { // from class: c01
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i4;
                                    SocialLoginBottomSheetType.AuthSelection authSelection3 = authSelection2;
                                    Context context4 = context3;
                                    SocialLoginBottomSheetState socialLoginBottomSheetState2 = socialLoginBottomSheetState;
                                    switch (i8) {
                                        case 0:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.b2(ContextExtKt.b(context4), authSelection3.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                        case 1:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.q2(ContextExtKt.b(context4), authSelection3.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                        default:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.ec(ContextExtKt.b(context4), authSelection3.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer13.q(objX13);
                        }
                        Function0 function22 = (Function0) objX13;
                        boolean zK6 = composer13.K(socialLoginBottomSheetState) | composer13.y(context3) | composer13.K(socialLoginBottomSheetType);
                        Object objX14 = composer13.x();
                        if (zK6 || objX14 == composer$Companion$Empty$1) {
                            final SocialLoginBottomSheetType.AuthSelection authSelection3 = (SocialLoginBottomSheetType.AuthSelection) socialLoginBottomSheetType;
                            objX14 = new Function0() { // from class: c01
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i3;
                                    SocialLoginBottomSheetType.AuthSelection authSelection4 = authSelection3;
                                    Context context4 = context3;
                                    SocialLoginBottomSheetState socialLoginBottomSheetState2 = socialLoginBottomSheetState;
                                    switch (i8) {
                                        case 0:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.b2(ContextExtKt.b(context4), authSelection4.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                        case 1:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.q2(ContextExtKt.b(context4), authSelection4.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                        default:
                                            socialLoginBottomSheetState2.f54155c.b(new k40(28));
                                            socialLoginBottomSheetState2.f54153a.ec(ContextExtKt.b(context4), authSelection4.f54161a, socialLoginBottomSheetState2.g);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer13.q(objX14);
                        }
                        Function0 function23 = (Function0) objX14;
                        boolean zK7 = composer13.K(socialLoginBottomSheetState) | composer13.K(socialLoginBottomSheetType);
                        Object objX15 = composer13.x();
                        if (zK7 || objX15 == composer$Companion$Empty$1) {
                            objX15 = new jm0(socialLoginBottomSheetState, (SocialLoginBottomSheetType.AuthSelection) socialLoginBottomSheetType, 25);
                            composer13.q(objX15);
                        }
                        SignInSelectionBottomSheetContentKt.a(z3, z4, z5, function21, function22, function23, (Function0) objX15, composer13, 0);
                        composer13.F();
                    } else if (socialLoginBottomSheetType instanceof SocialLoginBottomSheetType.SocialSignInDebug) {
                        composer13.L(-1334093681);
                        Clipboard clipboard = (Clipboard) composer13.k(CompositionLocalsKt.f10030f);
                        SocialLoginUiModel socialLoginUiModel = socialLoginViewState.f54193a;
                        boolean zY7 = composer13.y(clipboard) | composer13.K(socialLoginViewState);
                        Object objX16 = composer13.x();
                        if (zY7 || objX16 == composer$Companion$Empty$1) {
                            objX16 = new jm0(clipboard, socialLoginViewState, 26);
                            composer13.q(objX16);
                        }
                        Function0 function24 = (Function0) objX16;
                        boolean zK8 = composer13.K(socialLoginBottomSheetState) | composer13.K(socialLoginBottomSheetType);
                        Object objX17 = composer13.x();
                        if (zK8 || objX17 == composer$Companion$Empty$1) {
                            objX17 = new jm0(socialLoginBottomSheetState, (SocialLoginBottomSheetType.SocialSignInDebug) socialLoginBottomSheetType, 27);
                            composer13.q(objX17);
                        }
                        SocialSignInDebugBottomSheetContentKt.a(socialLoginUiModel, function24, (Function0) objX17, composer13, 0);
                        composer13.F();
                    } else {
                        if (socialLoginBottomSheetType != null) {
                            throw o60.v(composer13, -1012935127);
                        }
                        composer13.L(-1332834740);
                        composer13.F();
                    }
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 11:
                SocialLoginUiModel socialLoginUiModel2 = (SocialLoginUiModel) obj6;
                Function0 function25 = (Function0) obj5;
                Function0 function26 = (Function0) obj4;
                Composer composer14 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer14.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer14).f48415c);
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("SocialSignInDebugBottomSheetContent$lambda$0");
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer14, 0);
                    int iHashCode5 = Long.hashCode(composer14.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer14.n();
                    Modifier modifierC6 = ComposedModifierKt.c(composer14, dTFunctionNameModifier2);
                    ComposeUiNode.b0.getClass();
                    Function0 function27 = ComposeUiNode.Companion.f9641b;
                    if (composer14.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer14.B();
                    if (composer14.getS()) {
                        composer14.C(function27);
                    } else {
                        composer14.o();
                    }
                    Updater.c(composer14, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer14, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer14, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                    Updater.b(composer14, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer14, modifierC6, ComposeUiNode.Companion.d);
                    TextKt.c(SocialLoginUiModelKt.a(socialLoginUiModel2, true), null, LVAppDesignKitTheme.c(composer14).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer14).f48427h, composer14, 0, 0, 131066);
                    LVButtonKt.b(390, 504, composer14, tr.d("SocialSignInDebugBottomSheetContent$lambda$0", 1.0f), LVAppDesignKitTheme.b(composer14).f48446a, null, null, "Copy to clipboard", function25, false, false, false);
                    LVButtonKt.b(0, 504, composer14, PaddingKt.m(tr.d("SocialSignInDebugBottomSheetContent$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer14).f48417f, 7), LVAppDesignKitTheme.b(composer14).f48449e, null, null, StringResources_androidKt.c(composer14, R.string.cta_continue), function26, false, false, false);
                    composer14.r();
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 12:
                Function4 function28 = (Function4) obj6;
                Function4 function29 = (Function4) obj5;
                Function4 function30 = (Function4) obj4;
                SubcomposeAsyncImageScope subcomposeAsyncImageScope = (SubcomposeAsyncImageScope) obj;
                Composer composer15 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                if ((iIntValue11 & 6) == 0) {
                    iIntValue11 |= composer15.K(subcomposeAsyncImageScope) ? 4 : 2;
                }
                if (composer15.p(iIntValue11 & 1, (iIntValue11 & 19) != 18)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    Object obj7 = (AsyncImagePainter.State) SnapshotStateKt.b(subcomposeAsyncImageScope.getF21311b().x, composer15).getF10755b();
                    if (obj7 instanceof AsyncImagePainter.State.Loading) {
                        if (function28 != null) {
                            composer15.L(1576397282);
                            function28.g(subcomposeAsyncImageScope, obj7, composer15, Integer.valueOf(iIntValue11 & 14));
                            composer15.F();
                            composer15.L(1624022037);
                            composer15.F();
                        } else {
                            composer15.L(1623695669);
                            composer15.F();
                            composer15.L(1576407562);
                            SubcomposeAsyncImageKt.b(subcomposeAsyncImageScope, null, null, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, false, composer15, iIntValue11 & 14);
                            composer15.F();
                        }
                    } else if (!(obj7 instanceof AsyncImagePainter.State.Success)) {
                        if (obj7 instanceof AsyncImagePainter.State.Error) {
                            if (function30 != null) {
                                composer15.L(1576403106);
                                function30.g(subcomposeAsyncImageScope, obj7, composer15, Integer.valueOf(iIntValue11 & 14));
                                composer15.F();
                                composer15.L(1624022037);
                                composer15.F();
                            } else {
                                composer15.L(1623876213);
                                composer15.F();
                            }
                        } else if (!(obj7 instanceof AsyncImagePainter.State.Empty)) {
                            v40.g();
                            return null;
                        }
                        composer15.L(1576407562);
                        SubcomposeAsyncImageKt.b(subcomposeAsyncImageScope, null, null, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, false, composer15, iIntValue11 & 14);
                        composer15.F();
                    } else if (function29 != null) {
                        composer15.L(1576400290);
                        function29.g(subcomposeAsyncImageScope, obj7, composer15, Integer.valueOf(iIntValue11 & 14));
                        composer15.F();
                        composer15.L(1624022037);
                        composer15.F();
                    } else {
                        composer15.L(1623788917);
                        composer15.F();
                        composer15.L(1576407562);
                        SubcomposeAsyncImageKt.b(subcomposeAsyncImageScope, null, null, null, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, false, composer15, iIntValue11 & 14);
                        composer15.F();
                    }
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 13:
                return a(obj, obj2, obj3);
            case 14:
                ArrayList arrayList = (ArrayList) obj6;
                TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) obj5;
                Function2 function31 = (Function2) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer16 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((iIntValue12 & 6) == 0) {
                    iIntValue12 |= composer16.K(paddingValues3) ? 4 : 2;
                }
                if (composer16.p(iIntValue12 & 1, (iIntValue12 & 19) != 18)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("TheLookImmersiveArticleListScreen$lambda$2").o(SizeKt.f5052c), paddingValues3);
                    GridCells.Fixed fixed = new GridCells.Fixed(3);
                    boolean zY8 = composer16.y(arrayList) | composer16.y(theLookImmersiveArticleViewState) | composer16.K(function31);
                    Object objX18 = composer16.x();
                    if (zY8 || objX18 == composer$Companion$Empty$1) {
                        objX18 = new cl0(arrayList, theLookImmersiveArticleViewState, function31, 20);
                        composer16.q(objX18);
                    }
                    LazyGridDslKt.b(fixed, modifierH, null, null, null, null, null, false, null, (Function1) objX18, composer16, 0, 1020);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            default:
                SnackbarHostState snackbarHostState = (SnackbarHostState) obj6;
                String str8 = (String) obj5;
                Function0 function32 = (Function0) obj4;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer17 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((iIntValue13 & 6) == 0) {
                    iIntValue13 |= composer17.K(paddingValues4) ? 4 : 2;
                }
                if (composer17.p(iIntValue13 & 1, (iIntValue13 & 19) != 18)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    LVEmptyViewKt.d(ModifierExtKt.e(PaddingKt.h(new DTFunctionNameModifier("WishlistEmptyScreen$lambda$1"), paddingValues4), "wishlist_empty_view"), LVAppDesignKitTheme.g(composer17).U, snackbarHostState, StringResources_androidKt.c(composer17, R.string.mylv_mywishlists_no_wishlistyet_title), str8, null, false, null, StringResources_androidKt.c(composer17, R.string.mylv_mywishlists_nowishlistyet_startwithmainproductselection), function32, EmptyWishlistAction.f65733a, null, composer17, 24576, 6, 2272);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
        }
    }
}
