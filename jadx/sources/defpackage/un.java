package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.appsflyer.sdk_base.referrer.Payload;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVDatePickerKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVNotificationKt;
import com.vuitton.android.presentation.compose.components.ComposableSingletons$LVTimelineKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.inappbanner.ComposableSingletons$InAppBannerComposableKt;
import com.vuitton.android.presentation.loading.ComposableSingletons$LvLoadingKt;
import com.vuitton.android.presentation.screen.account.inbox.components.ComposableSingletons$InboxLoadingScreenKt;
import com.vuitton.android.presentation.screen.authentication.register.components.ComposableSingletons$NativeRegisterBirthInfoComposableKt;
import com.vuitton.android.presentation.screen.cart.components.ComposableSingletons$NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.components.ComposableSingletons$NativeCartLoadingScreenKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartLoadingScreenKt;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormScreenKt;
import com.vuitton.android.presentation.screen.dynamicform.components.ComposableSingletons$DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedDiscoverSuccessScreenKt;
import com.vuitton.android.presentation.screen.feed.components.ComposableSingletons$FeedForYouSuccessScreenKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.ComposableSingletons$ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ComposableSingletons$ImmersiveArticle3DAssetKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.ComposableSingletons$Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.ComposableSingletons$Lv3dViewerComposableKt;
import com.vuitton.android.presentation.screen.onboarding.components.ComposableSingletons$OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.options.notifications.components.ComposableSingletons$NotificationPreferencesKt;
import com.vuitton.android.presentation.screen.options.notifications.components.ExpandableHeaderKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ComposableSingletons$ModelSizeBottomBarKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$HistoryComposableKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class un implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80362b;

    public /* synthetic */ un(int i2) {
        this.f80362b = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f80362b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ComposableSingletons$DistantRepairFormScreenKt composableSingletons$DistantRepairFormScreenKt = ComposableSingletons$DistantRepairFormScreenKt.f57214a;
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer, R.string.dr_eligibility_bottom_sheet_description), PaddingKt.m(new DTFunctionNameModifier("lambda__1599866800$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48417f, 7), LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).g, composer, 0, 0, 131064);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ComposableSingletons$DistantRepairFormScreenKt composableSingletons$DistantRepairFormScreenKt2 = ComposableSingletons$DistantRepairFormScreenKt.f57214a;
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(composer2, R.string.dr_eligibility_bottom_sheet_title), null, null, null, null, false, null, null, ComposableSingletons$DistantRepairFormScreenKt.f57215b, composer2, 0, 48, 2043);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ComposableSingletons$DynamicFormComposableKt composableSingletons$DynamicFormComposableKt = ComposableSingletons$DynamicFormComposableKt.f57479a;
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 3:
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                ((LazyItemScope) obj).getClass();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    SpacerKt.a(composer4, SizeKt.o(new DTFunctionNameModifier("lambda_719619507$lambda$0"), LVAppDesignKitTheme.l(composer4).f48418h));
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt2 = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    SpacerKt.a(composer5, SizeKt.o(new DTFunctionNameModifier("lambda_1921534699$lambda$0"), LVAppDesignKitTheme.l(composer5).g));
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ComposableSingletons$FeedDiscoverSuccessScreenKt composableSingletons$FeedDiscoverSuccessScreenKt3 = ComposableSingletons$FeedDiscoverSuccessScreenKt.f57753a;
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    SpacerKt.a(composer6, SizeKt.o(new DTFunctionNameModifier("lambda_513323948$lambda$0"), LVAppDesignKitTheme.l(composer6).m));
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer7 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ComposableSingletons$FeedForYouSuccessScreenKt composableSingletons$FeedForYouSuccessScreenKt = ComposableSingletons$FeedForYouSuccessScreenKt.f57765a;
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    SpacerKt.a(composer7, SizeKt.o(new DTFunctionNameModifier("lambda__1684396681$lambda$0"), LVAppDesignKitTheme.l(composer7).f48417f));
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer8 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ComposableSingletons$FeedForYouSuccessScreenKt composableSingletons$FeedForYouSuccessScreenKt2 = ComposableSingletons$FeedForYouSuccessScreenKt.f57765a;
                ((LazyItemScope) obj).getClass();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 17) != 16)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    SpacerKt.a(composer8, SizeKt.f(tr.d("lambda_237715178$lambda$0", 1.0f), LVAppDesignKitTheme.l(composer8).f48418h));
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer9 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ComposableSingletons$FeedForYouSuccessScreenKt composableSingletons$FeedForYouSuccessScreenKt3 = ComposableSingletons$FeedForYouSuccessScreenKt.f57765a;
                ((LazyItemScope) obj).getClass();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    SpacerKt.a(composer9, SizeKt.o(new DTFunctionNameModifier("lambda_1362905407$lambda$0"), LVAppDesignKitTheme.l(composer9).m));
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer10 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ComposableSingletons$HistoryComposableKt composableSingletons$HistoryComposableKt = ComposableSingletons$HistoryComposableKt.f64161a;
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    SpacerKt.a(composer10, SizeKt.f(new DTFunctionNameModifier("lambda_1158904554$lambda$0"), LVAppDesignKitTheme.l(composer10).f48416e));
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer11 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ComposableSingletons$HistoryComposableKt composableSingletons$HistoryComposableKt2 = ComposableSingletons$HistoryComposableKt.f64161a;
                ((LazyItemScope) obj).getClass();
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 17) != 16)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    SpacerKt.a(composer11, WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("lambda_1251696339$lambda$0")));
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer12 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$ImmersiveArticle3DAssetKt composableSingletons$ImmersiveArticle3DAssetKt = ComposableSingletons$ImmersiveArticle3DAssetKt.f58468a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                ProgressViewKt.a(new DTFunctionNameModifier("lambda_1801083467$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer12).f48361b.f48382k, false, composer12, 6, 4);
                return Unit.f71739a;
            case 12:
                Composer composer13 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ComposableSingletons$ImmersiveArticleContentKt composableSingletons$ImmersiveArticleContentKt = ComposableSingletons$ImmersiveArticleContentKt.f58359a;
                ((LazyItemScope) obj).getClass();
                if (composer13.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    SpacerKt.a(composer13, WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("lambda_1476137580$lambda$0")));
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer14 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ComposableSingletons$InAppBannerComposableKt composableSingletons$InAppBannerComposableKt = ComposableSingletons$InAppBannerComposableKt.f51535a;
                ((RowScope) obj).getClass();
                if (composer14.p(iIntValue13 & 1, (iIntValue13 & 17) != 16)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 14:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer15 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ComposableSingletons$InboxLoadingScreenKt composableSingletons$InboxLoadingScreenKt = ComposableSingletons$InboxLoadingScreenKt.f52386a;
                paddingValues.getClass();
                if ((iIntValue14 & 6) == 0) {
                    iIntValue14 |= composer15.K(paddingValues) ? 4 : 2;
                }
                if (composer15.p(iIntValue14 & 1, (iIntValue14 & 19) != 18)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    Modifier modifierH = PaddingKt.h(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("lambda_183849838$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer15).f48361b.f48375b, rectangleShapeKt$RectangleShape$1)), paddingValues);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer15.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer15.n();
                    Modifier modifierC = ComposedModifierKt.c(composer15, modifierH);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer15.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer15.B();
                    if (composer15.getS()) {
                        composer15.C(function0);
                    } else {
                        composer15.o();
                    }
                    Updater.c(composer15, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer15, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer15, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer15, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer15, modifierC, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("lambda_183849838$lambda$0"), Alignment.Companion.f8587f), 0L, false, composer15, 0, 6);
                    composer15.r();
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer16 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ComposableSingletons$LVDatePickerKt composableSingletons$LVDatePickerKt = ComposableSingletons$LVDatePickerKt.f50947a;
                ((RowScope) obj).getClass();
                if (composer16.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    TextKt.c(Payload.RESPONSE_OK, null, LVAppDesignKitTheme.c(composer16).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer16, 6, 0, 262138);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer17 = (Composer) obj2;
                int iIntValue16 = ((Integer) obj3).intValue();
                ComposableSingletons$LVDatePickerKt composableSingletons$LVDatePickerKt2 = ComposableSingletons$LVDatePickerKt.f50947a;
                ((RowScope) obj).getClass();
                if (composer17.p(iIntValue16 & 1, (iIntValue16 & 17) != 16)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    TextKt.c("Cancel", null, LVAppDesignKitTheme.c(composer17).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer17, 6, 0, 262138);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer18 = (Composer) obj2;
                int iIntValue17 = ((Integer) obj3).intValue();
                ComposableSingletons$LVNotificationKt composableSingletons$LVNotificationKt = ComposableSingletons$LVNotificationKt.f50950a;
                ((RowScope) obj).getClass();
                if (composer18.p(iIntValue17 & 1, (iIntValue17 & 17) != 16)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer19 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                ComposableSingletons$LVTimelineKt composableSingletons$LVTimelineKt = ComposableSingletons$LVTimelineKt.f50952a;
                ((RowScope) obj).getClass();
                if (composer19.p(iIntValue18 & 1, (iIntValue18 & 17) != 16)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    TextKt.c("Random", null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer19, 6, 0, 262142);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer20 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$Lv3dCardViewerComposableKt composableSingletons$Lv3dCardViewerComposableKt = ComposableSingletons$Lv3dCardViewerComposableKt.f58551a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                ProgressViewKt.a(null, LVAppDesignKitTheme.c(composer20).f48361b.m, false, composer20, 0, 5);
                return Unit.f71739a;
            case 20:
                Composer composer21 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$Lv3dViewerComposableKt composableSingletons$Lv3dViewerComposableKt = ComposableSingletons$Lv3dViewerComposableKt.f58585a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                ProgressViewKt.a(null, LVAppDesignKitTheme.c(composer21).f48361b.f48382k, false, composer21, 0, 5);
                return Unit.f71739a;
            case 21:
                Composer composer22 = (Composer) obj2;
                int iIntValue19 = ((Integer) obj3).intValue();
                ComposableSingletons$LvLoadingKt composableSingletons$LvLoadingKt = ComposableSingletons$LvLoadingKt.f51713a;
                ((ColumnScope) obj).getClass();
                if (composer22.p(iIntValue19 & 1, (iIntValue19 & 17) != 16)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    TextKt.c(StringResources_androidKt.c(composer22, R.string.loader_error_message), null, LVAppDesignKitTheme.c(composer22).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer22).f48427h, composer22, 0, 0, 131066);
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer23 = (Composer) obj2;
                int iIntValue20 = ((Integer) obj3).intValue();
                ComposableSingletons$LvLoadingKt composableSingletons$LvLoadingKt2 = ComposableSingletons$LvLoadingKt.f51713a;
                ((ColumnScope) obj).getClass();
                if (composer23.p(iIntValue20 & 1, (iIntValue20 & 17) != 16)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(composer23, R.string.loader_error_message_title), null, null, null, null, false, null, null, ComposableSingletons$LvLoadingKt.f51714b, composer23, 0, 48, 2043);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 23:
                String str = (String) obj;
                Composer composer24 = (Composer) obj2;
                int iIntValue21 = ((Integer) obj3).intValue();
                ComposableSingletons$ModelSizeBottomBarKt composableSingletons$ModelSizeBottomBarKt = ComposableSingletons$ModelSizeBottomBarKt.f61485a;
                str.getClass();
                if ((iIntValue21 & 6) == 0) {
                    iIntValue21 |= composer24.K(str) ? 4 : 2;
                }
                if (composer24.p(iIntValue21 & 1, (iIntValue21 & 19) != 18)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    Modifier modifierA = ModifierExtKt.a(SizeKt.d(new DTFunctionNameModifier("lambda__1344773351$lambda$0"), 1.0f), null, null, 7);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode2 = Long.hashCode(composer24.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer24.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer24, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer24.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer24.B();
                    if (composer24.getS()) {
                        composer24.C(function1);
                    } else {
                        composer24.o();
                    }
                    Updater.c(composer24, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer24, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer24, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer24, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer24, modifierC2, ComposeUiNode.Companion.d);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer24).m;
                    TextAlign.f10959b.getClass();
                    TextKt.c(str, null, LVAppDesignKitTheme.c(composer24).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer24, iIntValue21 & 14, 0, 130042);
                    composer24.r();
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer25 = (Composer) obj2;
                int iIntValue22 = ((Integer) obj3).intValue();
                ComposableSingletons$NativeCartFilledScreenKt composableSingletons$NativeCartFilledScreenKt = ComposableSingletons$NativeCartFilledScreenKt.f54991a;
                ((LazyItemScope) obj).getClass();
                if (composer25.p(iIntValue22 & 1, (iIntValue22 & 17) != 16)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    SpacerKt.a(composer25, SizeKt.f(new DTFunctionNameModifier("lambda_544115621$lambda$0"), LVAppDesignKitTheme.l(composer25).f48416e));
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            case 25:
                ComposableSingletons$NativeCartFilledScreenKt composableSingletons$NativeCartFilledScreenKt2 = ComposableSingletons$NativeCartFilledScreenKt.f54991a;
                ((NativeCartBottomSheetScreen) obj).getClass();
                return Unit.f71739a;
            case 26:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer26 = (Composer) obj2;
                int iIntValue23 = ((Integer) obj3).intValue();
                ComposableSingletons$NativeCartLoadingScreenKt composableSingletons$NativeCartLoadingScreenKt = ComposableSingletons$NativeCartLoadingScreenKt.f54995a;
                paddingValues2.getClass();
                if ((iIntValue23 & 6) == 0) {
                    iIntValue23 |= composer26.K(paddingValues2) ? 4 : 2;
                }
                if (composer26.p(iIntValue23 & 1, (iIntValue23 & 19) != 18)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    Modifier modifierE = o60.e("lambda__432105955$lambda$0", paddingValues2);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer26.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer26.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer26, modifierE);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer26.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer26.B();
                    if (composer26.getS()) {
                        composer26.C(function2);
                    } else {
                        composer26.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer26, measurePolicyD3, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer26, persistentCompositionLocalMapN3, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode3);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer26, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer26, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    Modifier modifierJ = PaddingKt.j(BackgroundKt.b(a.f(composer26, modifierC3, function7, "lambda__432105955$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer26).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer26).f48417f, LVAppDesignKitTheme.l(composer26).f48416e);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer26).f48416e), Alignment.Companion.n, composer26, 0);
                    int iHashCode4 = Long.hashCode(composer26.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer26.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer26, modifierJ);
                    if (composer26.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer26.B();
                    if (composer26.getS()) {
                        composer26.C(function2);
                    } else {
                        composer26.o();
                    }
                    Updater.c(composer26, columnMeasurePolicyA, function3);
                    Updater.c(composer26, persistentCompositionLocalMapN4, function4);
                    cj.s(iHashCode4, composer26, function5, composer26, function6);
                    Updater.c(composer26, modifierC4, function7);
                    composer26.L(635281013);
                    for (int i3 = 0; i3 < 2; i3++) {
                        NativeCartLoadingScreenKt.b(composer26, 0);
                    }
                    composer26.F();
                    composer26.r();
                    composer26.r();
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                } else {
                    composer26.D();
                }
                return Unit.f71739a;
            case 27:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                Composer composer27 = (Composer) obj2;
                int iIntValue24 = ((Integer) obj3).intValue();
                ComposableSingletons$NativeRegisterBirthInfoComposableKt composableSingletons$NativeRegisterBirthInfoComposableKt = ComposableSingletons$NativeRegisterBirthInfoComposableKt.f53798a;
                formFieldGenericUiModel.getClass();
                if ((iIntValue24 & 6) == 0) {
                    iIntValue24 |= composer27.K(formFieldGenericUiModel) ? 4 : 2;
                }
                if (composer27.p(iIntValue24 & 1, (iIntValue24 & 19) != 18)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                    if (formFieldGenericUiModel.getD() == FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT) {
                        TextKt.c(StringResources_androidKt.c(composer27, R.string.mylv_cnil_email_tracking_consent_description), PaddingKt.m(pq0.j(361958007, composer27, "lambda_695343863$lambda$0"), LVAppDesignKitTheme.l(composer27).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(composer27).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer27).l, composer27, 0, 0, 131064);
                        composer27.F();
                    } else {
                        composer27.L(362568459);
                        composer27.F();
                    }
                } else {
                    composer27.D();
                }
                return Unit.f71739a;
            case 28:
                Composer composer28 = (Composer) obj2;
                int iIntValue25 = ((Integer) obj3).intValue();
                ComposableSingletons$NotificationPreferencesKt composableSingletons$NotificationPreferencesKt = ComposableSingletons$NotificationPreferencesKt.f59903a;
                ((LazyItemScope) obj).getClass();
                if (composer28.p(iIntValue25 & 1, (iIntValue25 & 17) != 16)) {
                    OpaqueKey opaqueKey29 = ComposerKt.f7940a;
                    ExpandableHeaderKt.b(null, StringResources_androidKt.c(composer28, R.string.notif_intro_text), StringResources_androidKt.c(composer28, R.string.read_more), StringResources_androidKt.c(composer28, R.string.read_less), null, composer28, KyberEngine.KyberPolyBytes);
                } else {
                    composer28.D();
                }
                return Unit.f71739a;
            default:
                Composer composer29 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$OnboardingIconComposableKt composableSingletons$OnboardingIconComposableKt = ComposableSingletons$OnboardingIconComposableKt.f59549a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey30 = ComposerKt.f7940a;
                Modifier modifierA2 = GradientKt.a(new DTFunctionNameModifier("lambda_1215552784$lambda$0").o(SizeKt.f5052c), GradientKt.d);
                ContentScale.f9447a.getClass();
                ImageKt.a(PainterResources_androidKt.a(R.drawable.onboarding_icons_blurry_background, composer29, 0), null, modifierA2, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer29, 24632, 104);
                return Unit.f71739a;
        }
    }
}
