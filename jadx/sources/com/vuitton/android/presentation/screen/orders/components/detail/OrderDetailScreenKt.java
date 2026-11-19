package com.vuitton.android.presentation.screen.orders.components.detail;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.BottomSheetScaffoldState;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextMeasurerHelperKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ScreenDimensionsKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.compose.components.LVTimelineKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderDetailRowType;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderHeaderType;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ProductDetailRowType;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ShortcutType;
import com.vuitton.android.presentation.screen.orders.models.ChannelUiModel;
import com.vuitton.android.presentation.screen.orders.models.DeliveryUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.PurchasedChannelKt;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.ShippingTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.ShortcutDisplayUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemCustomization;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.MathUtilsKt;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import defpackage.a;
import defpackage.ai0;
import defpackage.cj;
import defpackage.d21;
import defpackage.di0;
import defpackage.g2;
import defpackage.gi0;
import defpackage.gq;
import defpackage.h;
import defpackage.h2;
import defpackage.j8;
import defpackage.je;
import defpackage.lt;
import defpackage.n00;
import defpackage.o60;
import defpackage.p5;
import defpackage.q1;
import defpackage.rh0;
import defpackage.rv;
import defpackage.tf0;
import defpackage.tr;
import defpackage.u4;
import defpackage.w20;
import defpackage.w3;
import defpackage.wd0;
import defpackage.we0;
import defpackage.xg0;
import defpackage.yh0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\f²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\b\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000b\u001a\u0004\u0018\u00010\n8\nX\u008a\u0084\u0002"}, d2 = {"", "handlePxHeight", "timelineHeight", "highestTimelineTextHeight", "", "timelineAlpha", "Landroidx/compose/ui/unit/Dp;", "topDetailsHeight", "maxWidth", "shortcutWidth", "Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderDetailScreenKt {
    public static final void a(int i2, Composer composer, List list) {
        GapComposer gapComposerH = composer.h(1417400529);
        int i3 = (gapComposerH.y(list) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TransactionItemCustomization transactionItemCustomization = (TransactionItemCustomization) it.next();
                if (transactionItemCustomization instanceof TransactionItemCustomization.Text) {
                    gapComposerH.L(-1408195820);
                    TransactionItemCustomization.Text text = (TransactionItemCustomization.Text) transactionItemCustomization;
                    n(text.f60411b, text.f60412c, AutomationTagsOrders$ProductDetailRowType.PERSONALIZATION, gapComposerH, KyberEngine.KyberPolyBytes);
                    gapComposerH.Z(false);
                } else {
                    if (!(transactionItemCustomization instanceof TransactionItemCustomization.Color)) {
                        throw d21.u(gapComposerH, 1755687724, false);
                    }
                    gapComposerH.L(-1407841955);
                    TransactionItemCustomization.Color color = (TransactionItemCustomization.Color) transactionItemCustomization;
                    Color colorA = StringExtKt.a(color.f60410c);
                    if (colorA == null) {
                        gapComposerH.L(-1407841956);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1407841955);
                        o(color.f60409b, colorA.f8872a, AutomationTagsOrders$ProductDetailRowType.PERSONALIZATION, gapComposerH, KyberEngine.KyberPolyBytes);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai0(list, i2, 0);
        }
    }

    public static final void b(boolean z, Modifier modifier, OrderViewState orderViewState, float f2, Function0 function0, Function2 function2, Function3 function3, Composer composer, int i2) {
        boolean z2;
        ChannelUiModel channelUiModel;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "OrderDetailBottomSheetContent-jIwJxvA");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-405184684);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.K(modifier2) ? 32 : 16) | (gapComposerH.y(orderViewState) ? 256 : 128) | (gapComposerH.c(f2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(WindowInsetsPadding_androidKt.b(PaddingKt.k(SizeKt.g(modifier2, f2, f2), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            TransactionItemUiModel transactionItemUiModel = orderViewState.d;
            PurchasedOrderUiModel purchasedOrderUiModel = orderViewState.f60375b;
            if (transactionItemUiModel == null) {
                gapComposerH.L(-29546045);
                gapComposerH.Z(false);
                z2 = true;
            } else {
                gapComposerH.L(-29546044);
                Set set = orderViewState.l;
                boolean zY = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.y(orderViewState);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new rh0(function2, orderViewState, 5);
                    gapComposerH.q(objX);
                }
                Function0 function9 = (Function0) objX;
                boolean zY2 = ((i3 & 3670016) == 1048576) | gapComposerH.y(orderViewState);
                Object objX2 = gapComposerH.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new xg0(function3, orderViewState, 2);
                    gapComposerH.q(objX2);
                }
                int i4 = i3 >> 6;
                e(z, set, function0, function9, (Function1) objX2, gapComposerH, (i3 & 14) | (i4 & 896));
                Integer numA = (purchasedOrderUiModel == null || (channelUiModel = purchasedOrderUiModel.f60397f) == null) ? null : PurchasedChannelKt.a(channelUiModel);
                if (numA == null) {
                    gapComposerH.L(23977393);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(23977394);
                    LVTagKt.a(ModifierExtKt.e(modifier2, "MyOrder_OrderingMethodName_text"), null, StringResources_androidKt.c(gapComposerH, numA.intValue()), gapComposerH, 0, 26);
                    gapComposerH.Z(false);
                }
                if (purchasedOrderUiModel == null || !purchasedOrderUiModel.g) {
                    gapComposerH.L(24432846);
                    c(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_date), purchasedOrderUiModel != null ? purchasedOrderUiModel.f60393a : null, AutomationTagsOrders$OrderDetailRowType.ORDER_DATE, gapComposerH, KyberEngine.KyberPolyBytes, 0);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(24263865);
                    j(orderViewState, transactionItemUiModel, gapComposerH, i4 & 14);
                    gapComposerH.Z(false);
                }
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("OrderDetailBottomSheetContent-jIwJxvA"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                Modifier modifierG = n00.g("OrderDetailBottomSheetContent-jIwJxvA", "MyOrder_ProductDetailsItem_view");
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierG);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.my_orders_product_details_title), n00.f(gapComposerH, modifierC2, function8, "OrderDetailBottomSheetContent-jIwJxvA", "MyOrder_ProductDetailsText_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                String strJ = StringKtExtKt.j(transactionItemUiModel.f60419j.f60384c);
                if (strJ == null) {
                    TransactionUiModel transactionUiModel = orderViewState.f60376c;
                    strJ = transactionUiModel != null ? transactionUiModel.f60425f : null;
                }
                if (strJ == null) {
                    gapComposerH.L(141520980);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(141520981);
                    m(StringResources_androidKt.c(gapComposerH, R.string.my_orders_price_label), ComposableLambdaKt.b(-1262370375, new wd0(strJ, orderViewState, 5), gapComposerH), gapComposerH, 48);
                    gapComposerH.Z(false);
                }
                String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_sku);
                String str = transactionItemUiModel.g;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                n(strC, str, AutomationTagsOrders$ProductDetailRowType.REFERENCE, gapComposerH, KyberEngine.KyberPolyBytes);
                n(StringResources_androidKt.c(gapComposerH, R.string.my_order_size), transactionItemUiModel.m, AutomationTagsOrders$ProductDetailRowType.SIZE, gapComposerH, KyberEngine.KyberPolyBytes);
                n(StringResources_androidKt.c(gapComposerH, R.string.my_order_color), transactionItemUiModel.l, AutomationTagsOrders$ProductDetailRowType.COLOR, gapComposerH, KyberEngine.KyberPolyBytes);
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("OrderDetailBottomSheetContent-jIwJxvA"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                z2 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new di0(z, modifier2, orderViewState, f2, function0, function2, function3, i2);
        }
    }

    public static final void c(final String str, final String str2, AutomationTagsOrders$OrderDetailRowType automationTagsOrders$OrderDetailRowType, Composer composer, final int i2, final int i3) {
        GapComposer gapComposer;
        final AutomationTagsOrders$OrderDetailRowType automationTagsOrders$OrderDetailRowType2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function2;
        GapComposer gapComposerH = composer.h(1973205988);
        int i4 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(str2) ? 32 : 16);
        int i5 = i3 & 4;
        if (i5 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(automationTagsOrders$OrderDetailRowType == null ? -1 : automationTagsOrders$OrderDetailRowType.ordinal()) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            AutomationTagsOrders$OrderDetailRowType automationTagsOrders$OrderDetailRowType3 = i5 != 0 ? null : automationTagsOrders$OrderDetailRowType;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (str2 == null || StringsKt.w(str2)) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i6 = 0;
                final AutomationTagsOrders$OrderDetailRowType automationTagsOrders$OrderDetailRowType4 = automationTagsOrders$OrderDetailRowType3;
                function2 = new Function2() { // from class: fi0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (i6) {
                            case 0:
                                ((Integer) obj2).getClass();
                                OrderDetailScreenKt.c(str, str2, automationTagsOrders$OrderDetailRowType4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                OrderDetailScreenKt.c(str, str2, automationTagsOrders$OrderDetailRowType4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                Modifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderDetailRow");
                String viewTag = automationTagsOrders$OrderDetailRowType3 != null ? automationTagsOrders$OrderDetailRowType3.getViewTag() : null;
                if (viewTag != null) {
                    dTFunctionNameModifier = ModifierExtKt.e(dTFunctionNameModifier, viewTag);
                }
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                int i7 = i4;
                TextKt.c(str, com.vuitton.android.designkit.components.ModifierExtKt.f(PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "OrderDetailRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), automationTagsOrders$OrderDetailRowType3 != null ? automationTagsOrders$OrderDetailRowType3.getTitleTag() : null), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i4 & 14, 0, 131064);
                TextKt.c(str2, com.vuitton.android.designkit.components.ModifierExtKt.f(PaddingKt.m(new DTFunctionNameModifier("OrderDetailRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), automationTagsOrders$OrderDetailRowType3 != null ? automationTagsOrders$OrderDetailRowType3.getValueTag() : null), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i7 >> 3) & 14, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                automationTagsOrders$OrderDetailRowType2 = automationTagsOrders$OrderDetailRowType3;
            }
            recomposeScopeImplB0.d = function2;
        }
        gapComposer = gapComposerH;
        gapComposer.D();
        automationTagsOrders$OrderDetailRowType2 = automationTagsOrders$OrderDetailRowType;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final int i8 = 1;
            function2 = new Function2() { // from class: fi0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    switch (i8) {
                        case 0:
                            ((Integer) obj2).getClass();
                            OrderDetailScreenKt.c(str, str2, automationTagsOrders$OrderDetailRowType2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            OrderDetailScreenKt.c(str, str2, automationTagsOrders$OrderDetailRowType2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:92:0x015f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0174  */
    /* JADX WARN: Code duplicated, block: B:96:0x0199  */
    /* JADX WARN: Code duplicated, block: B:97:0x01b0  */
    public static final void d(final OrderViewState orderViewState, SnackbarHostState snackbarHostState, Function0 function0, final Function4 function4, final Function2 function2, final Function3 function3, Function4 function5, Composer composer, int i2) {
        int i3;
        Function0 function1;
        GapComposer gapComposer;
        float f2;
        boolean z;
        float fC;
        PurchasedOrderUiModel purchasedOrderUiModel;
        SnackbarHostState snackbarHostState2 = snackbarHostState;
        orderViewState.getClass();
        snackbarHostState2.getClass();
        function0.getClass();
        function4.getClass();
        function2.getClass();
        function3.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-658608006);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(orderViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function4) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function5) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            OrderStatusUiModel.Companion companion = OrderStatusUiModel.f60323f;
            TransactionItemUiModel transactionItemUiModel = orderViewState.d;
            TimelineUiModel timelineUiModel = transactionItemUiModel != null ? transactionItemUiModel.f60414c : null;
            companion.getClass();
            final OrderStatusUiModel orderStatusUiModelA = OrderStatusUiModel.Companion.a(timelineUiModel, null, gapComposerH, 2);
            final BottomSheetScaffoldState bottomSheetScaffoldStateD = BottomSheetScaffoldKt.d(BottomSheetScaffoldKt.e(SheetValue.PartiallyExpanded, gapComposerH, 390, 2), gapComposerH, 2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                Dp.Companion companion2 = Dp.f11004c;
                objX2 = SnapshotIntStateKt.a((int) ResourcesExtKt.b(76.0f));
                gapComposerH.q(objX2);
            }
            MutableIntState mutableIntState2 = (MutableIntState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX3);
            }
            MutableIntState mutableIntState3 = (MutableIntState) objX3;
            Object objX4 = gapComposerH.x();
            float fC2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX4);
            }
            final MutableFloatState mutableFloatState = (MutableFloatState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(new Dp(160.0f));
                gapComposerH.q(objX5);
            }
            final MutableState mutableState = (MutableState) objX5;
            if ((orderStatusUiModelA != null ? orderStatusUiModelA.d : null) == null || (purchasedOrderUiModel = orderViewState.f60375b) == null) {
                f2 = 160.0f;
            } else {
                f2 = 160.0f;
                z = purchasedOrderUiModel.g;
                Dp.Companion companion3 = Dp.f11004c;
                if (z) {
                    gapComposerH.L(-1562043518);
                    fC = ResourcesExtKt.c(gapComposerH, mutableIntState3.f());
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1562043012);
                    gapComposerH.Z(false);
                    fC = 0.0f;
                }
                float f4 = 48.0f + fC;
                float f5031b = WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getF5031b() + TopAppBarDefaults.f7433a + f2;
                if (z) {
                    gapComposerH.L(-1562033695);
                    fC2 = ResourcesExtKt.c(gapComposerH, mutableIntState2.f()) + f3;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1562032196);
                    gapComposerH.Z(false);
                }
                float f5 = f5031b + fC2;
                float fA = (ScreenDimensionsKt.a(gapComposerH, 1) - WindowInsetsKt.e(WindowInsets_androidKt.a(gapComposerH), gapComposerH).getD()) - f5;
                final float fC3 = (fA + f4) - ResourcesExtKt.c(gapComposerH, mutableIntState.f());
                final float fB = ResourcesExtKt.b(f5);
                final float fB2 = ResourcesExtKt.b(f5 - f4);
                Modifier modifierB = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("OrderDetailScreen").o(SizeKt.f5052c));
                Color.f8866b.getClass();
                function1 = function0;
                snackbarHostState2 = snackbarHostState;
                gapComposer = gapComposerH;
                BottomSheetScaffoldKt.a(ComposableLambdaKt.b(1257591179, new Function3() { // from class: bi0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        ((ColumnScope) obj).getClass();
                        if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            OrderViewState orderViewState2 = orderViewState;
                            boolean z2 = orderViewState2.g;
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderDetailScreen$lambda$15");
                            final BottomSheetScaffoldState bottomSheetScaffoldState = bottomSheetScaffoldStateD;
                            boolean zK = composer2.K(bottomSheetScaffoldState);
                            final float f6 = fB;
                            boolean zC = zK | composer2.c(f6);
                            final float f7 = fB2;
                            boolean zC2 = zC | composer2.c(f7);
                            Object objX6 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zC2 || objX6 == composer$Companion$Empty$2) {
                                final MutableFloatState mutableFloatState2 = mutableFloatState;
                                final MutableState mutableState2 = mutableState;
                                Function1 function6 = new Function1() { // from class: ci0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        ((LayoutCoordinates) obj4).getClass();
                                        float fG = bottomSheetScaffoldState.f6629a.f7211e.g();
                                        float f8 = f6;
                                        float f9 = f7;
                                        mutableFloatState2.w(RangesKt.c(MathUtilsKt.a(fG, f8, 1.0f, f9, Call.Parameters.DEFAULT_CAMERA_ZOOM), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
                                        mutableState2.setValue(new Dp(RangesKt.c(MathUtilsKt.a(fG, f8, 160.0f, f9, 112.0f), 112.0f, 160.0f)));
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(function6);
                                objX6 = function6;
                            }
                            Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX6);
                            boolean zY = composer2.y(orderViewState2);
                            Function4 function7 = function4;
                            boolean zK2 = zY | composer2.K(function7);
                            OrderStatusUiModel orderStatusUiModel = orderStatusUiModelA;
                            boolean zY2 = zK2 | composer2.y(orderStatusUiModel);
                            Object objX7 = composer2.x();
                            if (zY2 || objX7 == composer$Companion$Empty$2) {
                                objX7 = new of0(orderViewState2, function7, orderStatusUiModel, 6);
                                composer2.q(objX7);
                            }
                            OrderDetailScreenKt.b(z2, modifierA, orderViewState2, fC3, (Function0) objX7, function2, function3, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), modifierB, bottomSheetScaffoldStateD, fA, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-1369244398, new w20(mutableIntState, 24), gapComposerH), false, ComposableLambdaKt.b(-1337607276, new wd0(orderViewState, function1, 6), gapComposerH), ComposableLambdaKt.b(-621504605, new u4(snackbarHostState2, 2), gapComposerH), Color.f8870h, 0L, ComposableLambdaKt.b(-1770162571, new we0(f3, orderViewState, orderStatusUiModelA, function5, mutableIntState2, mutableIntState3, mutableState, mutableFloatState), gapComposerH), gapComposer, 6, 1600902, 35760);
            }
            Dp.Companion companion4 = Dp.f11004c;
            if (z) {
                gapComposerH.L(-1562043518);
                fC = ResourcesExtKt.c(gapComposerH, mutableIntState3.f());
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1562043012);
                gapComposerH.Z(false);
                fC = 0.0f;
            }
            float f6 = 48.0f + fC;
            float f5031b2 = WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getF5031b() + TopAppBarDefaults.f7433a + f2;
            if (z) {
                gapComposerH.L(-1562033695);
                fC2 = ResourcesExtKt.c(gapComposerH, mutableIntState2.f()) + f3;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1562032196);
                gapComposerH.Z(false);
            }
            float f7 = f5031b2 + fC2;
            float fA2 = (ScreenDimensionsKt.a(gapComposerH, 1) - WindowInsetsKt.e(WindowInsets_androidKt.a(gapComposerH), gapComposerH).getD()) - f7;
            final float fC4 = (fA2 + f6) - ResourcesExtKt.c(gapComposerH, mutableIntState.f());
            final float fB3 = ResourcesExtKt.b(f7);
            final float fB4 = ResourcesExtKt.b(f7 - f6);
            Modifier modifierB2 = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("OrderDetailScreen").o(SizeKt.f5052c));
            Color.f8866b.getClass();
            function1 = function0;
            snackbarHostState2 = snackbarHostState;
            gapComposer = gapComposerH;
            BottomSheetScaffoldKt.a(ComposableLambdaKt.b(1257591179, new Function3() { // from class: bi0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((ColumnScope) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        OrderViewState orderViewState2 = orderViewState;
                        boolean z2 = orderViewState2.g;
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderDetailScreen$lambda$15");
                        final BottomSheetScaffoldState bottomSheetScaffoldState = bottomSheetScaffoldStateD;
                        boolean zK = composer2.K(bottomSheetScaffoldState);
                        final float f8 = fB3;
                        boolean zC = zK | composer2.c(f8);
                        final float f9 = fB4;
                        boolean zC2 = zC | composer2.c(f9);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zC2 || objX6 == composer$Companion$Empty$2) {
                            final MutableFloatState mutableFloatState2 = mutableFloatState;
                            final MutableState mutableState2 = mutableState;
                            Function1 function6 = new Function1() { // from class: ci0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    ((LayoutCoordinates) obj4).getClass();
                                    float fG = bottomSheetScaffoldState.f6629a.f7211e.g();
                                    float f10 = f8;
                                    float f11 = f9;
                                    mutableFloatState2.w(RangesKt.c(MathUtilsKt.a(fG, f10, 1.0f, f11, Call.Parameters.DEFAULT_CAMERA_ZOOM), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
                                    mutableState2.setValue(new Dp(RangesKt.c(MathUtilsKt.a(fG, f10, 160.0f, f11, 112.0f), 112.0f, 160.0f)));
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(function6);
                            objX6 = function6;
                        }
                        Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX6);
                        boolean zY = composer2.y(orderViewState2);
                        Function4 function7 = function4;
                        boolean zK2 = zY | composer2.K(function7);
                        OrderStatusUiModel orderStatusUiModel = orderStatusUiModelA;
                        boolean zY2 = zK2 | composer2.y(orderStatusUiModel);
                        Object objX7 = composer2.x();
                        if (zY2 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new of0(orderViewState2, function7, orderStatusUiModel, 6);
                            composer2.q(objX7);
                        }
                        OrderDetailScreenKt.b(z2, modifierA, orderViewState2, fC4, (Function0) objX7, function2, function3, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), modifierB2, bottomSheetScaffoldStateD, fA2, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-1369244398, new w20(mutableIntState, 24), gapComposerH), false, ComposableLambdaKt.b(-1337607276, new wd0(orderViewState, function1, 6), gapComposerH), ComposableLambdaKt.b(-621504605, new u4(snackbarHostState2, 2), gapComposerH), Color.f8870h, 0L, ComposableLambdaKt.b(-1770162571, new we0(f3, orderViewState, orderStatusUiModelA, function5, mutableIntState2, mutableIntState3, mutableState, mutableFloatState), gapComposerH), gapComposer, 6, 1600902, 35760);
        } else {
            function1 = function0;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3((Object) orderViewState, snackbarHostState2, function1, (Function) function4, (Function) function2, (Function) function3, (Function) function5, i2, 8);
        }
    }

    public static final void e(boolean z, Set set, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        boolean z2;
        Set set2 = set;
        GapComposer gapComposerH = composer.h(-229399961);
        int i3 = (gapComposerH.b(z) ? 4 : 2) | i2 | (gapComposerH.y(set2) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        int i4 = i3 | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (set2.isEmpty()) {
                gapComposerH.L(-756972869);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-760845699);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.my_orders_actions_title), n00.g("OrderDetailShortcuts", "order_shortcutTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotIntStateKt.a(0);
                    gapComposerH.q(objX);
                }
                MutableIntState mutableIntState = (MutableIntState) objX;
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    gapComposerH.q(objX2);
                }
                MutableState mutableState = (MutableState) objX2;
                int size = set2.size();
                float fC = ResourcesExtKt.c(gapComposerH, mutableIntState.f()) - (((Dp) mutableState.getF10755b()).f11006b * size);
                int i5 = size - 1;
                if (i5 < 1) {
                    i5 = 1;
                }
                Dp dp = new Dp(fC / i5);
                Dp dp2 = new Dp(LVAppDesignKitTheme.l(gapComposerH).f48418h);
                if (dp.compareTo(dp2) > 0) {
                    dp = dp2;
                }
                Modifier modifierM = PaddingKt.m(tr.d("OrderDetailShortcuts", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new q1(mutableIntState, 9);
                    gapComposerH.q(objX3);
                }
                Modifier modifierA = OnRemeasuredModifierKt.a(modifierM, (Function1) objX3);
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(dp.f11006b);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                Function0 function3 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Modifier modifierT = SizeKt.t(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "OrderDetailShortcuts"), ((Dp) mutableState.getF10755b()).f11006b, ((Dp) mutableState.getF10755b()).f11006b);
                gapComposerH.L(1053265959);
                gapComposerH.L(1053263039);
                Set set3 = set;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(set3, 10));
                Iterator it = set3.iterator();
                while (it.hasNext()) {
                    arrayList.add(StringResources_androidKt.c(gapComposerH, ((ShortcutDisplayUiModel) it.next()).getLabel()));
                }
                gapComposerH.Z(false);
                ArrayList<String> arrayList2 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    CollectionsKt.j(arrayList2, StringsKt__StringsKt.split$default((String) it2.next(), new String[]{" "}, false, 0, 6, null));
                }
                for (String str : arrayList2) {
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                    str.getClass();
                    textStyle.getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    float fC2 = RangesKt.c(((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).k1((int) (TextMeasurer.a(TextMeasurerHelperKt.a(gapComposerH), str, textStyle, 0L, 1020).f10554c >> 32)), 56.0f, 126.0f);
                    if (Dp.a(((Dp) mutableState.getF10755b()).f11006b, fC2) < 0) {
                        mutableState.setValue(new Dp(fC2));
                    }
                }
                gapComposerH.Z(false);
                ShortcutDisplayUiModel shortcutDisplayUiModel = ShortcutDisplayUiModel.REQUEST_RETURN;
                set2 = set;
                if (set2.contains(shortcutDisplayUiModel)) {
                    gapComposerH.L(-1708056754);
                    int i6 = LVAppDesignKitTheme.g(gapComposerH).B;
                    String strC = StringResources_androidKt.c(gapComposerH, shortcutDisplayUiModel.getLabel());
                    boolean z3 = (i4 & 57344) == 16384;
                    Object objX4 = gapComposerH.x();
                    if (z3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new tf0(function2, 1);
                        gapComposerH.q(objX4);
                    }
                    z2 = false;
                    p(modifierT, i6, strC, (Function0) objX4, false, AutomationTagsOrders$ShortcutType.RETURN, gapComposerH, ImageMetadata.EDGE_MODE, 16);
                    gapComposerH.Z(false);
                } else {
                    z2 = false;
                    gapComposerH.L(-1707614694);
                    gapComposerH.Z(false);
                }
                ShortcutDisplayUiModel shortcutDisplayUiModel2 = ShortcutDisplayUiModel.REQUEST_RETURN_OR_EXCHANGE;
                if (set2.contains(shortcutDisplayUiModel2)) {
                    gapComposerH.L(-1707503466);
                    int i7 = LVAppDesignKitTheme.g(gapComposerH).p0;
                    String strC2 = StringResources_androidKt.c(gapComposerH, shortcutDisplayUiModel2.getLabel());
                    boolean z4 = (i4 & 57344) == 16384 ? true : z2;
                    Object objX5 = gapComposerH.x();
                    if (z4 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new tf0(function2, 2);
                        gapComposerH.q(objX5);
                    }
                    p(modifierT, i7, strC2, (Function0) objX5, false, AutomationTagsOrders$ShortcutType.RETURN_OR_EXCHANGE, gapComposerH, ImageMetadata.EDGE_MODE, 16);
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(-1707038342);
                    gapComposerH.Z(z2);
                }
                ShortcutDisplayUiModel shortcutDisplayUiModel3 = ShortcutDisplayUiModel.TRACK_ORDER;
                if (set2.contains(shortcutDisplayUiModel3)) {
                    gapComposerH.L(-1706943699);
                    p(modifierT, LVAppDesignKitTheme.g(gapComposerH).E0, StringResources_androidKt.c(gapComposerH, shortcutDisplayUiModel3.getLabel()), function0, false, AutomationTagsOrders$ShortcutType.TRACK_ORDER, gapComposerH, ((i4 << 3) & 7168) | ImageMetadata.EDGE_MODE, 16);
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(-1706562182);
                    gapComposerH.Z(z2);
                }
                ShortcutDisplayUiModel shortcutDisplayUiModel4 = ShortcutDisplayUiModel.DOWNLOAD_INVOICE;
                if (set2.contains(shortcutDisplayUiModel4)) {
                    gapComposerH.L(-1706460626);
                    p(modifierT, LVAppDesignKitTheme.g(gapComposerH).t, StringResources_androidKt.c(gapComposerH, shortcutDisplayUiModel4.getLabel()), function1, z, AutomationTagsOrders$ShortcutType.DOWNLOAD_INVOICE, gapComposerH, (i4 & 7168) | ImageMetadata.EDGE_MODE | ((i4 << 12) & 57344), 0);
                    gapComposerH.Z(z2);
                } else {
                    gapComposerH.L(-1706018566);
                    gapComposerH.Z(z2);
                }
                gapComposerH.Z(true);
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("OrderDetailShortcuts"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z2);
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(z, set2, function0, function1, function2, i2);
        }
    }

    public static final void f(Modifier modifier, final Modifier modifier2, final float f2, final float f3, final float f4, final OrderViewState orderViewState, final OrderStatusUiModel orderStatusUiModel, final Function1 function1, Composer composer, final int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "OrderDetailTopContent-aC-nel8");
        }
        Modifier modifier3 = modifier;
        GapComposer gapComposerH = composer.h(-904018883);
        int i3 = i2 | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.c(f3) ? 2048 : 1024) | (gapComposerH.c(f4) ? 16384 : 8192) | (gapComposerH.y(orderViewState) ? 131072 : 65536) | (gapComposerH.y(orderStatusUiModel) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (orderViewState.f60375b == null || orderViewState.d == null) {
                modifier3 = modifier3;
                gapComposerH.L(2114575045);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(2113787986);
                if (orderViewState.f60375b.g) {
                    gapComposerH.L(2113825589);
                    int i4 = 524286 & i3;
                    int i5 = i3 << 3;
                    h(modifier3, modifier2, f2, f3, f4, orderViewState, orderViewState.d, orderStatusUiModel, function1, gapComposerH, i4 | (29360128 & i5) | (i5 & 234881024));
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(2114316350);
                    g(f2, f3, orderViewState.d, function1, gapComposerH, ((i3 >> 6) & 126) | ((i3 >> 12) & 7168));
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
        } else {
            modifier3 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier4 = modifier3;
            recomposeScopeImplB0.d = new Function2(modifier2, f2, f3, f4, orderViewState, orderStatusUiModel, function1, i2) { // from class: ei0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f68866c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f68867e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ float f68868f;
                public final /* synthetic */ OrderViewState g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ OrderStatusUiModel f68869h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f68870i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(55);
                    OrderDetailScreenKt.f(this.f68865b, this.f68866c, this.d, this.f68867e, this.f68868f, this.g, this.f68869h, this.f68870i, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void g(float f2, float f3, TransactionItemUiModel transactionItemUiModel, Function1 function1, Composer composer, final int i2) {
        int i3;
        final Function1 function2;
        final TransactionItemUiModel transactionItemUiModel2;
        final float f4;
        final float f5;
        GapComposer gapComposerH = composer.h(-118898848);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.c(f2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f3) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(transactionItemUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            je jeVarF = ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new UrlFactory(jeVarF);
                gapComposerH.q(objX);
            }
            int i4 = ((i3 >> 3) & 14) | 196992;
            int i5 = i3 << 3;
            i(f3, f2, (UrlFactory) objX, transactionItemUiModel, function1, ComposableLambdaKt.b(-453020725, new w20(transactionItemUiModel, 23), gapComposerH), gapComposerH, i4 | (i5 & 112) | (i5 & 7168) | (i5 & 57344));
            f4 = f3;
            f5 = f2;
            transactionItemUiModel2 = transactionItemUiModel;
            function2 = function1;
        } else {
            function2 = function1;
            transactionItemUiModel2 = transactionItemUiModel;
            f4 = f3;
            f5 = f2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: xh0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    OrderDetailScreenKt.g(f5, f4, transactionItemUiModel2, function2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void h(Modifier modifier, Modifier modifier2, final float f2, final float f3, final float f4, final OrderViewState orderViewState, final TransactionItemUiModel transactionItemUiModel, final OrderStatusUiModel orderStatusUiModel, final Function1 function1, Composer composer, final int i2) {
        Function1 function2;
        final Modifier modifier3;
        Modifier modifier4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "OrderDetailTopOnGoingContent-tw_glAc");
        }
        GapComposer gapComposerH = composer.h(252649250);
        int i3 = i2 | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.c(f3) ? 2048 : 1024) | (gapComposerH.c(f4) ? 16384 : 8192) | (gapComposerH.y(orderViewState) ? 131072 : 65536) | (gapComposerH.y(transactionItemUiModel) ? 1048576 : 524288);
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(orderStatusUiModel) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            function2 = function1;
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        } else {
            function2 = function1;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            je jeVarF = ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new UrlFactory(jeVarF);
                gapComposerH.q(objX);
            }
            UrlFactory urlFactory = (UrlFactory) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderDetailTopOnGoingContent-tw_glAc");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int i4 = i3;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int i5 = i4 >> 9;
            i(f3, f2, urlFactory, transactionItemUiModel, function2, ComposableLambdaKt.b(-934764349, new gi0(orderStatusUiModel, transactionItemUiModel, orderViewState, 0), gapComposerH), gapComposerH, (i5 & 7168) | (i5 & 14) | 196992 | ((i4 >> 3) & 112) | ((i4 >> 12) & 57344));
            if ((orderStatusUiModel != null ? orderStatusUiModel.d : null) != null) {
                gapComposerH.L(2066687165);
                Modifier modifier5 = modifierE;
                modifier4 = modifier5;
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(modifier5, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "MyOrder_OrderDeliveryStatus_view");
                Dp.Companion companion = Dp.f11004c;
                modifier3 = modifier2;
                LVTimelineKt.a(modifierE2, null, orderStatusUiModel.f60326c, orderStatusUiModel.d.size(), f2, 0L, 0L, 0L, null, null, ComposableLambdaKt.b(-65113713, new Function5() { // from class: hi0
                    @Override // kotlin.jvm.functions.Function5
                    public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                        int i6;
                        long j2;
                        ColumnScope columnScope = (ColumnScope) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        int iIntValue2 = ((Integer) obj3).intValue();
                        Composer composer2 = (Composer) obj4;
                        int iIntValue3 = ((Integer) obj5).intValue();
                        Modifier modifierE3 = modifier3;
                        if (modifierE3 != null) {
                            modifierE3 = a.e(modifierE3, "OrderDetailTopOnGoingContent_tw_glAc$lambda$1$1");
                        }
                        columnScope.getClass();
                        if ((iIntValue3 & 48) == 0) {
                            i6 = (composer2.d(iIntValue) ? 32 : 16) | iIntValue3;
                        } else {
                            i6 = iIntValue3;
                        }
                        if ((iIntValue3 & KyberEngine.KyberPolyBytes) == 0) {
                            i6 |= composer2.d(iIntValue2) ? 256 : 128;
                        }
                        if (composer2.p(i6 & 1, (i6 & 1169) != 1168)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierM = PaddingKt.m(SizeKt.d(modifierE3, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48427h;
                            if (iIntValue2 == iIntValue) {
                                composer2.L(1523054192);
                                j2 = LVAppDesignKitTheme.c(composer2).f48361b.m;
                                composer2.F();
                            } else {
                                composer2.L(1523158321);
                                j2 = LVAppDesignKitTheme.c(composer2).f48361b.n;
                                composer2.F();
                            }
                            long jB = Color.b(f4, j2);
                            String str = (String) orderStatusUiModel.d.get(iIntValue);
                            TextAlign.f10959b.getClass();
                            TextKt.c(str, modifierM, jB, 0L, null, 0L, null, new TextAlign(TextAlign.g), 0L, 0, false, 0, 0, null, textStyle, composer2, 0, 0, 130040);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, (458752 & (i4 << 9)) | KyberEngine.KyberPolyBytes, 1986);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                modifier3 = modifier2;
                modifier4 = modifierE;
                gapComposerH.L(2068031914);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            modifier3 = modifier2;
            modifier4 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier6 = modifier4;
            final Modifier modifier7 = modifier3;
            recomposeScopeImplB0.d = new Function2() { // from class: wh0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    OrderDetailScreenKt.h(modifier6, modifier7, f2, f3, f4, orderViewState, transactionItemUiModel, orderStatusUiModel, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void i(final float f2, final float f3, final UrlFactory urlFactory, final TransactionItemUiModel transactionItemUiModel, final Function1 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        Object obj;
        GapComposer gapComposer;
        final ComposableLambdaImpl composableLambdaImpl2;
        ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl;
        GapComposer gapComposerH = composer.h(1213453430);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.c(f2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f3) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            obj = urlFactory;
            i3 |= gapComposerH.K(obj) ? 256 : 128;
        } else {
            obj = urlFactory;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(transactionItemUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl3) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierE = ModifierExtKt.e(PaddingKt.i(SizeKt.f(SizeKt.d(new DTFunctionNameModifier("OrderHeader-cmh-DWc"), 1.0f), f2), f3), "MyOrder_ProductDeliveryDateItem_view");
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            String str = transactionItemUiModel.f60418i;
            obj.getClass();
            String strD = UrlFactory.d(str, 112, ImageConfiguration.Background.Transparent.f65853a);
            strD.getClass();
            Modifier modifierO = AspectRatioKt.a(ClipKt.a(new DTFunctionNameModifier("OrderHeader-cmh-DWc"), LVAppDesignKitTheme.j(gapComposerH).f48411c), 1.0f, true).o(SizeKt.f5052c);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            boolean zY = ((i4 & 57344) == 16384) | gapComposerH.y(transactionItemUiModel);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new yh0(function1, transactionItemUiModel, 0);
                gapComposerH.q(objX);
            }
            ImageLoaderKt.b(ModifierExtKt.e(ModifierExtKt.c(modifierA, false, null, null, (Function0) objX, 31), "MyOrder_ProductDeliveryImageItem_image"), strD, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
            GapComposer gapComposer2 = gapComposerH;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("OrderHeader-cmh-DWc"), LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48414b), Alignment.Companion.n, gapComposer2, 0);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, columnMeasurePolicyA, function2);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function5);
            Updater.c(gapComposer2, modifierC2, function6);
            ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
            composableLambdaImpl4.invoke(gapComposer2, Integer.valueOf((i4 >> 15) & 14));
            gapComposer2.Z(true);
            gapComposer2.Z(true);
            composableLambdaImpl2 = composableLambdaImpl4;
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer3 = gapComposerH;
            gapComposer3.D();
            composableLambdaImpl2 = composableLambdaImpl3;
            gapComposer = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: zh0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    OrderDetailScreenKt.i(f2, f3, urlFactory, transactionItemUiModel, function1, composableLambdaImpl2, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void j(OrderViewState orderViewState, TransactionItemUiModel transactionItemUiModel, Composer composer, int i2) {
        int i3;
        String strF;
        StringResourceUiModel stringResourceUiModel;
        DeliveryUiModel deliveryUiModel;
        DeliveryUiModel deliveryUiModel2;
        String str;
        DeliveryUiModel deliveryUiModel3;
        String str2;
        GapComposer gapComposerH = composer.h(1253419233);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(orderViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(transactionItemUiModel) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TransactionUiModel transactionUiModel = orderViewState.f60376c;
            TransactionItemUiModel transactionItemUiModel2 = orderViewState.d;
            String strA = null;
            boolean z = (transactionUiModel != null ? transactionUiModel.f60423c : null) == ShippingTypeUiModel.CLICK_COLLECT;
            if (transactionUiModel != null && (deliveryUiModel3 = transactionUiModel.g) != null && (str2 = deliveryUiModel3.f60243a) != null) {
                StringBuilder sbT = n00.t(str2);
                if (transactionUiModel.g.f60246e != null) {
                    sbT.append(" - ");
                    sbT.append(transactionUiModel.g.f60246e);
                }
                strF = sbT.toString();
            } else if (z) {
                gapComposerH.L(167348672);
                strF = StringResources_androidKt.c(gapComposerH, R.string.my_order_method_store) + " - " + StringResources_androidKt.c(gapComposerH, R.string.my_order_disclaimer);
                gapComposerH.Z(false);
            } else {
                strF = cj.f(gapComposerH, 167511856, R.string.my_order_method_home, gapComposerH, false);
            }
            String str3 = strF;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.my_orders_product_name_label);
            String str4 = transactionItemUiModel.f60416f;
            List list = transactionItemUiModel.q;
            boolean z2 = z;
            c(strC, str4, AutomationTagsOrders$OrderDetailRowType.PRODUCT_NAME, gapComposerH, KyberEngine.KyberPolyBytes, 0);
            if (z2) {
                gapComposerH.L(168111489);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(167834721);
                c(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_shippingaddress), (transactionUiModel == null || (deliveryUiModel2 = transactionUiModel.g) == null || (str = deliveryUiModel2.f60247f) == null) ? null : StringKtExtKt.j(str), AutomationTagsOrders$OrderDetailRowType.SHIPPING_ADDRESS, gapComposerH, KyberEngine.KyberPolyBytes, 0);
                gapComposerH.Z(false);
            }
            c(StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_shippingmethod), StringKtExtKt.j(str3), AutomationTagsOrders$OrderDetailRowType.SHIPPING_METHOD, gapComposerH, KyberEngine.KyberPolyBytes, 0);
            c(StringResources_androidKt.c(gapComposerH, R.string.my_orders_store_label), (transactionUiModel == null || (deliveryUiModel = transactionUiModel.g) == null) ? null : deliveryUiModel.f60245c, null, gapComposerH, 0, 4);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.mylv_myorders_date);
            PurchasedOrderUiModel purchasedOrderUiModel = orderViewState.f60375b;
            c(strC2, purchasedOrderUiModel != null ? purchasedOrderUiModel.f60393a : null, AutomationTagsOrders$OrderDetailRowType.ORDER_DATE, gapComposerH, KyberEngine.KyberPolyBytes, 0);
            if (list != null && (!list.isEmpty())) {
                Modifier modifierM = PaddingKt.m(o60.c(gapComposerH, 168807935, "OrderOngoingDetails", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                StringResourceUiModel stringResourceUiModel2 = transactionItemUiModel2 != null ? transactionItemUiModel2.p : null;
                if (stringResourceUiModel2 == null) {
                    gapComposerH.L(168992353);
                } else {
                    gapComposerH.L(1945114016);
                    strA = StringResourceUiModelKt.a(stringResourceUiModel2, (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b));
                }
                gapComposerH.Z(false);
                if (strA == null) {
                    strA = cj.f(gapComposerH, 1945115686, R.string.my_orders_non_returnable_disclaimer, gapComposerH, false);
                } else {
                    gapComposerH.L(1945113020);
                    gapComposerH.Z(false);
                }
                LVDisclaimerKt.a(modifierM, strA, null, 0L, null, null, gapComposerH, 0, 60);
                DividerKt.a(PaddingKt.k(new DTFunctionNameModifier("OrderOngoingDetails"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.my_orders_personalization_title), n00.g("OrderOngoingDetails", "myOrders_personalizationTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                a(0, gapComposerH, list);
                gapComposerH.Z(false);
            } else if (transactionItemUiModel2 == null || (stringResourceUiModel = transactionItemUiModel2.p) == null || !(!StringResourceUiModelKt.b(stringResourceUiModel))) {
                gapComposerH.L(170030017);
                gapComposerH.Z(false);
            } else {
                LVDisclaimerKt.a(PaddingKt.m(o60.c(gapComposerH, 169780157, "OrderOngoingDetails", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), StringResourceUiModelKt.a(stringResourceUiModel, (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)), null, 0L, null, null, gapComposerH, 0, 60);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(orderViewState, transactionItemUiModel, i2, 22);
        }
    }

    public static final void k(String str, String str2, AutomationTagsOrders$OrderHeaderType automationTagsOrders$OrderHeaderType, Composer composer, int i2, int i3) {
        GapComposer gapComposer;
        AutomationTagsOrders$OrderHeaderType automationTagsOrders$OrderHeaderType2;
        GapComposer gapComposerH = composer.h(-1799584825);
        int i4 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.K(str2) ? 32 : 16);
        int i5 = i3 & 4;
        if (i5 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(automationTagsOrders$OrderHeaderType == null ? -1 : automationTagsOrders$OrderHeaderType.ordinal()) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            AutomationTagsOrders$OrderHeaderType automationTagsOrders$OrderHeaderType3 = i5 != 0 ? null : automationTagsOrders$OrderHeaderType;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
            Modifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderStandardHeader");
            String labelTag = automationTagsOrders$OrderHeaderType3 != null ? automationTagsOrders$OrderHeaderType3.getLabelTag() : null;
            if (labelTag != null) {
                dTFunctionNameModifier = ModifierExtKt.e(dTFunctionNameModifier, labelTag);
            }
            gapComposer = gapComposerH;
            TextKt.c(str, dTFunctionNameModifier, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, i4 & 14, 0, 131064);
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer).f48426f;
            long j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.m;
            TextOverflow.f10989a.getClass();
            int i6 = TextOverflow.f10991c;
            Modifier dTFunctionNameModifier2 = new DTFunctionNameModifier("OrderStandardHeader");
            String titleTag = automationTagsOrders$OrderHeaderType3 != null ? automationTagsOrders$OrderHeaderType3.getTitleTag() : null;
            if (titleTag != null) {
                dTFunctionNameModifier2 = ModifierExtKt.e(dTFunctionNameModifier2, titleTag);
            }
            TextKt.c(str2, dTFunctionNameModifier2, j3, 0L, null, 0L, null, null, 0L, i6, false, 1, 0, null, textStyle2, gapComposer, (i4 >> 3) & 14, 24960, 110584);
            automationTagsOrders$OrderHeaderType2 = automationTagsOrders$OrderHeaderType3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            automationTagsOrders$OrderHeaderType2 = automationTagsOrders$OrderHeaderType;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(str, str2, automationTagsOrders$OrderHeaderType2, i2, i3, 7);
        }
    }

    public static final void l(String str, String str2, long j2, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1119430710);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextKt.c(str, null, j3, 0L, null, 0L, null, null, 0L, i4, false, 1, 0, null, textStyle, gapComposerH, i3 & 14, 24960, 110586);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OrderStatusHeader-XO-JAsU");
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            BoxKt.a(BackgroundKt.b(SizeKt.o(PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "OrderStatusHeader-XO-JAsU"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).f48388h), j2, RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).f48388h)), gapComposerH, 0);
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, i4, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i3 >> 3) & 14, 24960, 110586);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p5(str, str2, j2, i2, 1);
        }
    }

    public static final void m(String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        Function2 function2;
        GapComposer gapComposerH = composer.h(72241856);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("ProductDetailRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, ModifierExtKt.e(cj.b("ProductDetailRow", RowScopeInstance.f5040a, 1.0f, true), AutomationTagsOrders$ProductDetailRowType.PRICE.getValueTag()), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i3 & 14, 0, 131064);
            gapComposerH = gapComposerH;
            function2 = composableLambdaImpl;
            function2.invoke(gapComposerH, 6);
            gapComposerH.Z(true);
        } else {
            function2 = composableLambdaImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(str, function2, i2, 4);
        }
    }

    public static final void n(String str, String str2, AutomationTagsOrders$ProductDetailRowType automationTagsOrders$ProductDetailRowType, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(279436228);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (str2 == null || str2.length() == 0) {
                gapComposer = gapComposerH;
                gapComposer.L(1038966302);
                gapComposer.Z(false);
            } else {
                Modifier modifierM = PaddingKt.m(o60.c(gapComposerH, 1038232098, "ProductDetailRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                TextKt.c(str, com.vuitton.android.designkit.components.ModifierExtKt.f(cj.b("ProductDetailRow", RowScopeInstance.f5040a, 1.0f, true), automationTagsOrders$ProductDetailRowType != null ? automationTagsOrders$ProductDetailRowType.getTitleTag() : null), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i3 & 14, 0, 131064);
                Modifier dTFunctionNameModifier = new DTFunctionNameModifier("ProductDetailRow");
                String valueTag = automationTagsOrders$ProductDetailRowType != null ? automationTagsOrders$ProductDetailRowType.getValueTag() : null;
                if (valueTag != null) {
                    dTFunctionNameModifier = ModifierExtKt.e(dTFunctionNameModifier, valueTag);
                }
                TextKt.c(str2, dTFunctionNameModifier, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i3 >> 3) & 14, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 29, str, str2, automationTagsOrders$ProductDetailRowType);
        }
    }

    public static final void o(String str, long j2, AutomationTagsOrders$ProductDetailRowType automationTagsOrders$ProductDetailRowType, Composer composer, int i2) {
        GapComposer gapComposer;
        long j3;
        GapComposer gapComposerH = composer.h(-431139448);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.e(j2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("ProductDetailRow-3IgeMak", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            TextKt.c(str, com.vuitton.android.designkit.components.ModifierExtKt.f(cj.b("ProductDetailRow-3IgeMak", RowScopeInstance.f5040a, 1.0f, true), automationTagsOrders$ProductDetailRowType != null ? automationTagsOrders$ProductDetailRowType.getTitleTag() : null), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, i3 & 14, 0, 131064);
            gapComposer = gapComposerH;
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("ProductDetailRow-3IgeMak"), LVAppDesignKitTheme.d(gapComposer).o);
            BorderStroke borderStrokeA = BorderStrokeKt.a(LVAppDesignKitTheme.d(gapComposer).f48385c, LVAppDesignKitTheme.c(gapComposer).f48361b.p);
            Modifier modifierF = com.vuitton.android.designkit.components.ModifierExtKt.f(BorderKt.b(modifierO, borderStrokeA.f4154a, borderStrokeA.f4155b, LVAppDesignKitTheme.j(gapComposer).f48410b), automationTagsOrders$ProductDetailRowType != null ? automationTagsOrders$ProductDetailRowType.getValueTag() : null);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierF);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD, function2);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposer, function4, gapComposer, function1);
            j3 = j2;
            BoxKt.a(BackgroundKt.b(ClipKt.a(PaddingKt.i(tr.e(gapComposer, modifierC2, function5, "ProductDetailRow-3IgeMak").o(SizeKt.f5052c), LVAppDesignKitTheme.l(gapComposer).f48414b), LVAppDesignKitTheme.j(gapComposer).f48409a), j3, RectangleShapeKt.f8913a), gapComposer, 0);
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            j3 = j2;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p5(str, j3, automationTagsOrders$ProductDetailRowType, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:101:0x0217  */
    /* JADX WARN: Code duplicated, block: B:103:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:105:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:110:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:49:0x008a  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    /* JADX WARN: Code duplicated, block: B:55:0x009e  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:88:0x0142  */
    /* JADX WARN: Code duplicated, block: B:90:0x0149  */
    /* JADX WARN: Code duplicated, block: B:91:0x014d  */
    /* JADX WARN: Code duplicated, block: B:94:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:96:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:97:0x01c4  */
    public static final void p(Modifier modifier, int i2, String str, Function0 function0, boolean z, AutomationTagsOrders$ShortcutType automationTagsOrders$ShortcutType, Composer composer, int i3, int i4) {
        int i5;
        boolean z2;
        boolean z3;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z4;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z5;
        Object objX2;
        boolean z6;
        boolean z7;
        boolean z8;
        Object objX3;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        MeasurePolicy measurePolicyD;
        int i6;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        BoxScopeInstance boxScopeInstance;
        Function1 function7;
        int i7;
        boolean z9;
        int i8;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ShortcutItem");
        }
        GapComposer gapComposerH = composer.h(40073970);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        int i9 = i4 & 16;
        if (i9 == 0) {
            if ((i3 & 24576) == 0) {
                i5 |= gapComposerH.b(z) ? 16384 : 8192;
            }
            if ((196608 & i3) == 0) {
                if (gapComposerH.d(automationTagsOrders$ShortcutType.ordinal())) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i5 |= i8;
            }
            if ((74899 & i5) != 74898) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i5 & 1, z2)) {
                if (i9 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
                if ((i5 & 896) == 256) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objX2 = gapComposerH.x();
                if (z5 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new lt(str, 26);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierE, true, (Function1) objX2);
                if ((57344 & i5) == 16384) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if ((i5 & 7168) == 2048) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z6 | z7;
                objX3 = gapComposerH.x();
                if (z8 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new gq(z4, function0, 2);
                    gapComposerH.q(objX3);
                }
                Modifier modifierE2 = ModifierExtKt.e(ModifierExtKt.c(modifierB, false, mutableInteractionSource, null, (Function0) objX3, 19), automationTagsOrders$ShortcutType.getButtonTag());
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function6, "ShortcutItem");
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierO = SizeKt.o(dTFunctionNameModifierE, 56.0f);
                RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
                Modifier modifierA = ClipKt.a(modifierO, roundedCornerShape);
                Color.f8866b.getClass();
                Modifier modifierA2 = BorderKt.a(BackgroundKt.b(modifierA, Color.f8870h, RectangleShapeKt.f8913a), 1.0f, Color.b(0.5f, LVAppDesignKitTheme.c(gapComposerH).f48361b.o), roundedCornerShape);
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                i6 = i5;
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                boxScopeInstance = BoxScopeInstance.f4938a;
                if (z4) {
                    gapComposerH.L(1856277479);
                    LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).y, gapComposerH, 0);
                    Modifier modifierG = boxScopeInstance.g(SizeKt.o(new DTFunctionNameModifier("ShortcutItem"), 24.0f), Alignment.Companion.f8587f);
                    LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
                    function7 = null;
                    i7 = 2;
                    LottieAnimationKt.a(f10755b, modifierG, false, Integer.MAX_VALUE, null, gapComposerH, 1572864, 0, 4194236);
                    gapComposerH.Z(false);
                    z9 = true;
                } else {
                    function7 = null;
                    i7 = 2;
                    z9 = true;
                    gapComposerH.L(1856785631);
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i6 >> 3) & 14), null, boxScopeInstance.g(SizeKt.o(new DTFunctionNameModifier("ShortcutItem"), 24.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                    gapComposerH.Z(false);
                }
                Modifier modifierA3 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(SizeKt.u(PaddingKt.m(o60.f(gapComposerH, z9, "ShortcutItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 68.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, i7), automationTagsOrders$ShortcutType.getTextTag(), function7, 6);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                TextAlign.f10959b.getClass();
                TextKt.c(str, modifierA3, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i6 >> 6) & 14, 0, 130040);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z9);
                z3 = z4;
            } else {
                gapComposerH.D();
                z3 = z;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new h2(modifierE, i2, str, function0, z3, automationTagsOrders$ShortcutType, i3, i4);
            }
        }
        i5 |= 24576;
        if ((196608 & i3) == 0) {
            if (gapComposerH.d(automationTagsOrders$ShortcutType.ordinal())) {
                i8 = 131072;
            } else {
                i8 = 65536;
            }
            i5 |= i8;
        }
        if ((74899 & i5) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i5 & 1, z2)) {
            if (i9 != 0) {
                z4 = false;
            } else {
                z4 = z;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objX;
            if ((i5 & 896) == 256) {
                z5 = true;
            } else {
                z5 = false;
            }
            objX2 = gapComposerH.x();
            if (z5) {
                objX2 = new lt(str, 26);
                gapComposerH.q(objX2);
            } else {
                objX2 = new lt(str, 26);
                gapComposerH.q(objX2);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierE, true, (Function1) objX2);
            if ((57344 & i5) == 16384) {
                z6 = true;
            } else {
                z6 = false;
            }
            if ((i5 & 7168) == 2048) {
                z7 = true;
            } else {
                z7 = false;
            }
            z8 = z6 | z7;
            objX3 = gapComposerH.x();
            if (z8) {
                objX3 = new gq(z4, function0, 2);
                gapComposerH.q(objX3);
            } else {
                objX3 = new gq(z4, function0, 2);
                gapComposerH.q(objX3);
            }
            Modifier modifierE3 = ModifierExtKt.e(ModifierExtKt.c(modifierB2, false, mutableInteractionSource2, null, (Function0) objX3, 19), automationTagsOrders$ShortcutType.getButtonTag());
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierE3);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC, function6, "ShortcutItem");
            Dp.Companion companion2 = Dp.f11004c;
            Modifier modifierO2 = SizeKt.o(dTFunctionNameModifierE2, 56.0f);
            RoundedCornerShape roundedCornerShape2 = RoundedCornerShapeKt.f5846a;
            Modifier modifierA4 = ClipKt.a(modifierO2, roundedCornerShape2);
            Color.f8866b.getClass();
            Modifier modifierA5 = BorderKt.a(BackgroundKt.b(modifierA4, Color.f8870h, RectangleShapeKt.f8913a), 1.0f, Color.b(0.5f, LVAppDesignKitTheme.c(gapComposerH).f48361b.o), roundedCornerShape2);
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            i6 = i5;
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA5);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            boxScopeInstance = BoxScopeInstance.f4938a;
            if (z4) {
                gapComposerH.L(1856277479);
                LottieCompositionResultImpl lottieCompositionResultImplH2 = n00.h(LVAppDesignKitTheme.a(gapComposerH).y, gapComposerH, 0);
                Modifier modifierG2 = boxScopeInstance.g(SizeKt.o(new DTFunctionNameModifier("ShortcutItem"), 24.0f), Alignment.Companion.f8587f);
                LottieComposition f10755b2 = lottieCompositionResultImplH2.getF10755b();
                function7 = null;
                i7 = 2;
                LottieAnimationKt.a(f10755b2, modifierG2, false, Integer.MAX_VALUE, null, gapComposerH, 1572864, 0, 4194236);
                gapComposerH.Z(false);
                z9 = true;
            } else {
                function7 = null;
                i7 = 2;
                z9 = true;
                gapComposerH.L(1856785631);
                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i6 >> 3) & 14), null, boxScopeInstance.g(SizeKt.o(new DTFunctionNameModifier("ShortcutItem"), 24.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
                gapComposerH.Z(false);
            }
            Modifier modifierA6 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(SizeKt.u(PaddingKt.m(o60.f(gapComposerH, z9, "ShortcutItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 68.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, i7), automationTagsOrders$ShortcutType.getTextTag(), function7, 6);
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            TextAlign.f10959b.getClass();
            TextKt.c(str, modifierA6, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, (i6 >> 6) & 14, 0, 130040);
            gapComposerH = gapComposerH;
            gapComposerH.Z(z9);
            z3 = z4;
        } else {
            gapComposerH.D();
            z3 = z;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h2(modifierE, i2, str, function0, z3, automationTagsOrders$ShortcutType, i3, i4);
        }
    }
}
