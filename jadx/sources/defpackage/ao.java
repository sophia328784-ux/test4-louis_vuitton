package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.SliderState;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.tooling.ComposableSingletons$PreviewActivity_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.compose.components.CollapsingDetailListKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.cart.components.samples.ComposableSingletons$PerfumeSamplesScreenKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ComposableSingletons$QuickFilterButtonKt;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.ComposableSingletons$PodcastTrackSliderKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.ComposableSingletons$OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.ComposableSingletons$OrderListErrorScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.ComposableSingletons$OrderListLoadingScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.ComposableSingletons$OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.ComposableSingletons$OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.ComposableSingletons$OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.components.ComposableSingletons$OsaListLoadingScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.ComposableSingletons$PdpLoadingScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.ComposableSingletons$PdpCareAndSustainabilityKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoNativeItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoSectionsItem;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ComposableSingletons$PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ComposableSingletons$PLPKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPItemsKt;
import com.vuitton.android.presentation.screen.repairs.components.ComposableSingletons$RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.ComposableSingletons$RepairDetailErrorScreenKt;
import com.vuitton.android.presentation.screen.repairs.list.components.ComposableSingletons$RepairListBffScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ao implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20571b;

    public /* synthetic */ ao(int i2) {
        this.f20571b = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f20571b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ComposableSingletons$OrderExchangeVariantSelectionScreenKt composableSingletons$OrderExchangeVariantSelectionScreenKt = ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60105a;
                ((LazyItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    SpacerKt.a(composer, SizeKt.f(new DTFunctionNameModifier("lambda_687355874$lambda$0"), LVAppDesignKitTheme.l(composer).f48417f));
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderExchangeVariantSelectionScreenKt composableSingletons$OrderExchangeVariantSelectionScreenKt2 = ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60105a;
                ((LazyItemScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    SpacerKt.a(composer2, SizeKt.f(new DTFunctionNameModifier("lambda_595030171$lambda$0"), LVAppDesignKitTheme.l(composer2).f48417f));
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj3).intValue();
                ComposableSingletons$OrderExchangeVariantSelectionScreenKt composableSingletons$OrderExchangeVariantSelectionScreenKt3 = ComposableSingletons$OrderExchangeVariantSelectionScreenKt.f60105a;
                ((ProductExchangeCategoryUiModel) obj).getClass();
                ((CategoryOptionUiModel) obj2).getClass();
                return Unit.f71739a;
            case 3:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderListErrorScreenKt composableSingletons$OrderListErrorScreenKt = ComposableSingletons$OrderListErrorScreenKt.f60190a;
                paddingValues.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("lambda_133853980$lambda$0", paddingValues).o(SizeKt.f5052c), null, StringResources_androidKt.c(composer3, R.string.error_generic), null, null, null, null, composer3, 0, 506);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 4:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue4 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderListLoadingScreenKt composableSingletons$OrderListLoadingScreenKt = ComposableSingletons$OrderListLoadingScreenKt.f60192a;
                paddingValues2.getClass();
                if ((iIntValue4 & 6) == 0) {
                    iIntValue4 |= composer4.K(paddingValues2) ? 4 : 2;
                }
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ProgressViewKt.a(o60.e("lambda_1205246260$lambda$0", paddingValues2).o(SizeKt.f5052c), 0L, false, composer4, 0, 6);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer5 = (Composer) obj2;
                int iIntValue5 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderListScreenKt composableSingletons$OrderListScreenKt = ComposableSingletons$OrderListScreenKt.f60194a;
                ((LazyItemScope) obj).getClass();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 17) != 16)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    SpacerKt.a(composer5, new DTFunctionNameModifier("lambda__160835249$lambda$0"));
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer6 = (Composer) obj2;
                int iIntValue6 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderListScreenKt composableSingletons$OrderListScreenKt2 = ComposableSingletons$OrderListScreenKt.f60194a;
                ((LazyItemScope) obj).getClass();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 17) != 16)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    ProgressViewKt.a(tr.d("lambda__1999417302$lambda$0", 1.0f), 0L, false, composer6, 6, 6);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer7 = (Composer) obj2;
                int iIntValue7 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderListScreenKt composableSingletons$OrderListScreenKt3 = ComposableSingletons$OrderListScreenKt.f60194a;
                ((LazyItemScope) obj).getClass();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 17) != 16)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    SpacerKt.a(composer7, new DTFunctionNameModifier("lambda_1069179910$lambda$0"));
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 8:
                ComposableSingletons$OrderListScreenKt composableSingletons$OrderListScreenKt4 = ComposableSingletons$OrderListScreenKt.f60194a;
                ((PurchasedOrderUiModel) obj).getClass();
                ((TransactionUiModel) obj2).getClass();
                ((TransactionItemUiModel) obj3).getClass();
                return Unit.f71739a;
            case 9:
                RowScope rowScope = (RowScope) obj;
                Composer composer8 = (Composer) obj2;
                int iIntValue8 = ((Integer) obj3).intValue();
                ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt composableSingletons$OrderReturnOrExchangeSelectionScreenKt = ComposableSingletons$OrderReturnOrExchangeSelectionScreenKt.f60108a;
                rowScope.getClass();
                if ((iIntValue8 & 6) == 0) {
                    iIntValue8 |= composer8.K(rowScope) ? 4 : 2;
                }
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 19) != 18)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    LVPushCardKt.b(rowScope, LVAppDesignKitTheme.i(composer8).f48651a, PainterResources_androidKt.a(R.drawable.order_return_or_exchange_return, composer8, 0), null, StringResources_androidKt.c(composer8, R.string.exchange_select_action_return), StringResources_androidKt.c(composer8, R.string.exchange_select_action_return_description), null, composer8, (iIntValue8 & 14) | 512, 36);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer9 = (Composer) obj2;
                int iIntValue9 = ((Integer) obj3).intValue();
                ComposableSingletons$OsaListDataScreenKt composableSingletons$OsaListDataScreenKt = ComposableSingletons$OsaListDataScreenKt.f60877a;
                ((LazyItemScope) obj).getClass();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 17) != 16)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    SpacerKt.a(composer9, SizeKt.f(new DTFunctionNameModifier("lambda__2132547782$lambda$0"), LVAppDesignKitTheme.l(composer9).f48419i));
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                Composer composer10 = (Composer) obj2;
                int iIntValue10 = ((Integer) obj3).intValue();
                ComposableSingletons$OsaListDataScreenKt composableSingletons$OsaListDataScreenKt2 = ComposableSingletons$OsaListDataScreenKt.f60877a;
                ((LazyItemScope) obj).getClass();
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 17) != 16)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    SpacerKt.a(composer10, SizeKt.f(new DTFunctionNameModifier("lambda__1632345224$lambda$0"), LVAppDesignKitTheme.l(composer10).f48416e));
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 12:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer11 = (Composer) obj2;
                int iIntValue11 = ((Integer) obj3).intValue();
                ComposableSingletons$OsaListLoadingScreenKt composableSingletons$OsaListLoadingScreenKt = ComposableSingletons$OsaListLoadingScreenKt.f60880a;
                paddingValues3.getClass();
                if ((iIntValue11 & 6) == 0) {
                    iIntValue11 |= composer11.K(paddingValues3) ? 4 : 2;
                }
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 19) != 18)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    ProgressViewKt.a(PaddingKt.h(new DTFunctionNameModifier("lambda_658875516$lambda$0").o(SizeKt.f5052c), paddingValues3), 0L, false, composer11, 0, 6);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 13:
                Composer composer12 = (Composer) obj2;
                int iIntValue12 = ((Integer) obj3).intValue();
                ComposableSingletons$OsaLocationFormScreenKt composableSingletons$OsaLocationFormScreenKt = ComposableSingletons$OsaLocationFormScreenKt.f60801a;
                ((LazyItemScope) obj).getClass();
                if (composer12.p(iIntValue12 & 1, (iIntValue12 & 17) != 16)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    SpacerKt.a(composer12, SizeKt.f(new DTFunctionNameModifier("lambda__292000032$lambda$0"), LVAppDesignKitTheme.l(composer12).f48416e));
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 14:
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer13 = (Composer) obj2;
                int iIntValue13 = ((Integer) obj3).intValue();
                ComposableSingletons$PLPItemsKt composableSingletons$PLPItemsKt = ComposableSingletons$PLPItemsKt.f62810a;
                lazyItemScope.getClass();
                if ((iIntValue13 & 6) == 0) {
                    iIntValue13 |= composer13.K(lazyItemScope) ? 4 : 2;
                }
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 19) != 18)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    PLPItemsKt.a(lazyItemScope.d(new DTFunctionNameModifier("lambda_913075040$lambda$0")), composer13, 0);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 15:
                LazyItemScope lazyItemScope2 = (LazyItemScope) obj;
                Composer composer14 = (Composer) obj2;
                int iIntValue14 = ((Integer) obj3).intValue();
                ComposableSingletons$PLPItemsKt composableSingletons$PLPItemsKt2 = ComposableSingletons$PLPItemsKt.f62810a;
                lazyItemScope2.getClass();
                if ((iIntValue14 & 6) == 0) {
                    iIntValue14 |= composer14.K(lazyItemScope2) ? 4 : 2;
                }
                if (composer14.p(iIntValue14 & 1, (iIntValue14 & 19) != 18)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    LVEmptyViewKt.d(lazyItemScope2.a(new DTFunctionNameModifier("lambda_1565867510$lambda$0")), LVAppDesignKitTheme.g(composer14).N0, null, StringResources_androidKt.c(composer14, R.string.catalog_plp_noresult_message), null, null, false, null, null, null, null, null, composer14, 0, 0, 4084);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer15 = (Composer) obj2;
                int iIntValue15 = ((Integer) obj3).intValue();
                ComposableSingletons$PLPKt composableSingletons$PLPKt = ComposableSingletons$PLPKt.f62813a;
                ((LazyItemScope) obj).getClass();
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 17) != 16)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    SpacerKt.a(composer15, WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("lambda__1397038935$lambda$0")));
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 17:
                PanelInfoNativeItem panelInfoNativeItem = (PanelInfoNativeItem) obj;
                int iIntValue16 = ((Integer) obj3).intValue();
                ComposableSingletons$PdpCareAndSustainabilityKt composableSingletons$PdpCareAndSustainabilityKt = ComposableSingletons$PdpCareAndSustainabilityKt.f61435a;
                panelInfoNativeItem.getClass();
                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                CollapsingDetailListKt.e(panelInfoNativeItem, (Composer) obj2, iIntValue16 & 14);
                return Unit.f71739a;
            case 18:
                PanelInfoSectionsItem panelInfoSectionsItem = (PanelInfoSectionsItem) obj;
                int iIntValue17 = ((Integer) obj3).intValue();
                ComposableSingletons$PdpCareAndSustainabilityKt composableSingletons$PdpCareAndSustainabilityKt2 = ComposableSingletons$PdpCareAndSustainabilityKt.f61435a;
                panelInfoSectionsItem.getClass();
                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                CollapsingDetailListKt.f(panelInfoSectionsItem, (Composer) obj2, iIntValue17 & 14);
                return Unit.f71739a;
            case 19:
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer16 = (Composer) obj2;
                int iIntValue18 = ((Integer) obj3).intValue();
                ComposableSingletons$PdpLoadingScreenKt composableSingletons$PdpLoadingScreenKt = ComposableSingletons$PdpLoadingScreenKt.f61366a;
                paddingValues4.getClass();
                if ((iIntValue18 & 6) == 0) {
                    iIntValue18 |= composer16.K(paddingValues4) ? 4 : 2;
                }
                if (composer16.p(iIntValue18 & 1, (iIntValue18 & 19) != 18)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(PaddingKt.h(new DTFunctionNameModifier("lambda__2121510876$lambda$0").o(SizeKt.f5052c), paddingValues4), LVAppDesignKitTheme.c(composer16).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode = Long.hashCode(composer16.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer16.n();
                    Modifier modifierC = ComposedModifierKt.c(composer16, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer16.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer16.B();
                    if (composer16.getS()) {
                        composer16.C(function0);
                    } else {
                        composer16.o();
                    }
                    Updater.c(composer16, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer16, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer16, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer16, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer16, modifierC, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(null, 0L, false, composer16, 0, 7);
                    composer16.r();
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer17 = (Composer) obj2;
                int iIntValue19 = ((Integer) obj3).intValue();
                ComposableSingletons$PerfumeSamplesScreenKt composableSingletons$PerfumeSamplesScreenKt = ComposableSingletons$PerfumeSamplesScreenKt.f55104a;
                ((LazyItemScope) obj).getClass();
                if (composer17.p(iIntValue19 & 1, (iIntValue19 & 17) != 16)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(PaddingKt.k(BackgroundKt.b(tr.d("lambda_1655801578$lambda$0", 1.0f), LVAppDesignKitTheme.c(composer17).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer17).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer17).f48417f, 7);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer17.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer17.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer17, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer17.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer17.B();
                    if (composer17.getS()) {
                        composer17.C(function1);
                    } else {
                        composer17.o();
                    }
                    Updater.c(composer17, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer17, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer17, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer17, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer17, modifierC2, ComposeUiNode.Companion.d);
                    TextKt.c(StringResources_androidKt.c(composer17, R.string.select_samples_description), n00.g("lambda_1655801578$lambda$0", "cartSamples_description_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer17).f48427h, composer17, 0, 0, 131068);
                    composer17.r();
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer18 = (Composer) obj2;
                int iIntValue20 = ((Integer) obj3).intValue();
                ComposableSingletons$PerfumeSamplesScreenKt composableSingletons$PerfumeSamplesScreenKt2 = ComposableSingletons$PerfumeSamplesScreenKt.f55104a;
                ((LazyItemScope) obj).getClass();
                if (composer18.p(iIntValue20 & 1, (iIntValue20 & 17) != 16)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("lambda_208439443$lambda$0");
                    Dp.Companion companion = Dp.f11004c;
                    SpacerKt.a(composer18, SizeKt.f(dTFunctionNameModifier, 153.0f));
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer19 = (Composer) obj2;
                int iIntValue21 = ((Integer) obj3).intValue();
                ComposableSingletons$PodcastTrackSliderKt composableSingletons$PodcastTrackSliderKt = ComposableSingletons$PodcastTrackSliderKt.f58892a;
                ((SliderState) obj).getClass();
                if (composer19.p(iIntValue21 & 1, (iIntValue21 & 17) != 16)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer20 = (Composer) obj2;
                int iIntValue22 = ((Integer) obj3).intValue();
                ComposableSingletons$PreviewActivity_androidKt composableSingletons$PreviewActivity_androidKt = ComposableSingletons$PreviewActivity_androidKt.f10994a;
                if (composer20.p(iIntValue22 & 1, (iIntValue22 & 17) != 16)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                    TextKt.b("Next", null, 0L, 0L, 0L, 0L, 0, false, 0, 0, null, composer20, 6, 131070);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer21 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ComposableSingletons$QuickFilterButtonKt composableSingletons$QuickFilterButtonKt = ComposableSingletons$QuickFilterButtonKt.f58069a;
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                TextKt.c(StringResources_androidKt.c(composer21, R.string.catalogue_filters), ModifierExtKt.a(PaddingKt.m(new DTFunctionNameModifier("lambda__1590403094$lambda$0"), LVAppDesignKitTheme.l(composer21).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), null, null, 7), LVAppDesignKitTheme.c(composer21).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer21).m, composer21, 0, 0, 131064);
                return Unit.f71739a;
            case 25:
                PaddingValues paddingValues5 = (PaddingValues) obj;
                Composer composer22 = (Composer) obj2;
                int iIntValue23 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairDetailAddressBookComposableKt composableSingletons$RepairDetailAddressBookComposableKt = ComposableSingletons$RepairDetailAddressBookComposableKt.f63628a;
                paddingValues5.getClass();
                if ((iIntValue23 & 6) == 0) {
                    iIntValue23 |= composer22.K(paddingValues5) ? 4 : 2;
                }
                if (composer22.p(iIntValue23 & 1, (iIntValue23 & 19) != 18)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    Modifier modifierB2 = WindowInsetsPadding_androidKt.b(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("lambda__685521095$lambda$0").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer22).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), paddingValues5));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode3 = Long.hashCode(composer22.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer22.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer22, modifierB2);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer22.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer22.B();
                    if (composer22.getS()) {
                        composer22.C(function2);
                    } else {
                        composer22.o();
                    }
                    Updater.c(composer22, measurePolicyD3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer22, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer22, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer22, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer22, modifierC3, ComposeUiNode.Companion.d);
                    ProgressViewKt.a(null, 0L, false, composer22, 0, 7);
                    composer22.r();
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 26:
                PaddingValues paddingValues6 = (PaddingValues) obj;
                Composer composer23 = (Composer) obj2;
                int iIntValue24 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairDetailErrorScreenKt composableSingletons$RepairDetailErrorScreenKt = ComposableSingletons$RepairDetailErrorScreenKt.f63788a;
                paddingValues6.getClass();
                if ((iIntValue24 & 6) == 0) {
                    iIntValue24 |= composer23.K(paddingValues6) ? 4 : 2;
                }
                if (composer23.p(iIntValue24 & 1, (iIntValue24 & 19) != 18)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                    LVEmptyViewKt.e(o60.e("lambda_2007695917$lambda$0", paddingValues6), null, StringResources_androidKt.c(composer23, R.string.error_generic), null, null, null, null, composer23, 0, 506);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 27:
                Composer composer24 = (Composer) obj2;
                int iIntValue25 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt = ComposableSingletons$RepairListBffScreenKt.f63905a;
                ((LazyItemScope) obj).getClass();
                if (composer24.p(iIntValue25 & 1, (iIntValue25 & 17) != 16)) {
                    OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                    SpacerKt.a(composer24, SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("lambda__942928218$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer24).g, 7), 1.0f));
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 28:
                Modifier modifierE = (Modifier) obj;
                Composer composer25 = (Composer) obj2;
                int iIntValue26 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt2 = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "lambda_1775892178$lambda$0");
                }
                modifierE.getClass();
                if (composer25.p(iIntValue26 & 1, (iIntValue26 & 17) != 16)) {
                    OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            default:
                Modifier modifierE2 = (Modifier) obj;
                Composer composer26 = (Composer) obj2;
                int iIntValue27 = ((Integer) obj3).intValue();
                ComposableSingletons$RepairListBffScreenKt composableSingletons$RepairListBffScreenKt3 = ComposableSingletons$RepairListBffScreenKt.f63905a;
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "lambda_1951308073$lambda$0");
                }
                modifierE2.getClass();
                if (composer26.p(iIntValue27 & 1, (iIntValue27 & 17) != 16)) {
                    OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                } else {
                    composer26.D();
                }
                return Unit.f71739a;
        }
    }
}
