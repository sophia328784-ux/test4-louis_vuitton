package com.vuitton.android.presentation.screen.thankyou.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.compose.components.LVTimelineKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.orders.models.MocksKt;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationCardState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.CartPriceInfoUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutItemUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ShippingMethodUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.TaxInfoUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeatureFlags;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.as0;
import defpackage.cj;
import defpackage.es0;
import defpackage.fb0;
import defpackage.fs0;
import defpackage.i31;
import defpackage.l31;
import defpackage.lv0;
import defpackage.m21;
import defpackage.n00;
import defpackage.n31;
import defpackage.nj0;
import defpackage.nm;
import defpackage.o31;
import defpackage.o60;
import defpackage.oi0;
import defpackage.p01;
import defpackage.p31;
import defpackage.pq0;
import defpackage.q31;
import defpackage.qk0;
import defpackage.r31;
import defpackage.tr;
import defpackage.ub;
import defpackage.uj;
import defpackage.vd;
import defpackage.w0;
import defpackage.w11;
import defpackage.xe0;
import defpackage.z21;
import defpackage.zr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003¨\u0006\f²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\b\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u00020\t8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000b\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isDeliverySectionClosed", "showTitle", "showRestContent", "", "titleBlockHeightPx", "Landroidx/compose/ui/unit/Dp;", "centeredSpacerHeight", "animatedSpacerHeight", "", "titleAlpha", "isExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThankYouScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f65243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ThankYouViewState.Success f65244b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f65243a = 112.0f;
        ShippingMethodUiModel shippingMethodUiModel = (ShippingMethodUiModel) MocksKt.d.getF71699b();
        Lazy lazy = MocksKt.f60271e;
        List list = (List) lazy.getF71699b();
        List list2 = (List) lazy.getF71699b();
        SkuId.Companion companion2 = SkuId.INSTANCE;
        Lazy lazy2 = MocksKt.f60270c;
        CheckoutItemUiModel checkoutItemUiModel = new CheckoutItemUiModel("M12345", "Sac à main Louis Vuitton Monogram", 1, "", (CartPriceUiModel) lazy2.getF71699b(), "Marron", "Unique", "Toile Monogram", CollectionsKt.P("Marron", "Unique", "Toile Monogram"), null, null);
        CartPriceUiModel cartPriceUiModel = (CartPriceUiModel) lazy2.getF71699b();
        List listP = CollectionsKt.P("Noir", "Cuir Epi");
        SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
        CustomizationIdUiModel customizationIdUiModel = new CustomizationIdUiModel("custom_1", CustomizationIdTypeUiModel.BASE64);
        EmptyList emptyList = EmptyList.f71768b;
        List listP2 = CollectionsKt.P(checkoutItemUiModel, new CheckoutItemUiModel("M67890", "Portefeuille Louis Vuitton avec personnalisation", 2, "", cartPriceUiModel, "Noir", null, "Cuir Epi", listP, new CustomizationConfigurationUiModel("M67890", customizationIdUiModel, "Personnalisation", emptyList, null), null));
        CartPriceUiModel cartPriceUiModel2 = (CartPriceUiModel) lazy2.getF71699b();
        CartPriceUiModel cartPriceUiModel3 = (CartPriceUiModel) lazy2.getF71699b();
        CartPriceUiModel cartPriceUiModel4 = (CartPriceUiModel) lazy2.getF71699b();
        double d = cartPriceUiModel4.f55158a;
        String str = cartPriceUiModel4.f55160c;
        str.getClass();
        CartPriceInfoUiModel cartPriceInfoUiModel = new CartPriceInfoUiModel(cartPriceUiModel2, cartPriceUiModel3, new CartPriceUiModel(d, "€2,850", str), emptyList);
        TimelineUiModel timelineUiModel = (TimelineUiModel) MocksKt.g.getF71699b();
        PerfumeSampleUiModel perfumeSampleUiModel = MocksKt.f60272f;
        f65244b = new ThankYouViewState.Success(new CheckoutConfirmationDetailUiModel("LV123456789", "cart123", "user@example.com", shippingMethodUiModel, list, list2, "France", "Ile-de-France", listP2, 3, cartPriceInfoUiModel, true, "Joyeux anniversaire !", "Carte de crédit", timelineUiModel, CollectionsKt.P(perfumeSampleUiModel, perfumeSampleUiModel), true, "cid123"), null, null, new ThankYouFeatureFlags(true, false, true, 2, null), 6, null);
    }

    public static final void a(int i2, int i3, Composer composer, Modifier modifier, Function0 function0) {
        int i4;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AccountActivationCard");
        }
        GapComposer gapComposerH = composer.h(1187088781);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        int i6 = i4;
        if (gapComposerH.p(i6 & 1, (i6 & 19) != 18)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AccountActivationCard");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(SizeKt.d(ModifierExtKt.e(dTFunctionNameModifier, "thankYou_accountActivation_view"), 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48419i);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            IconKt.a(PainterResources_androidKt.a(R.drawable.ic_my_lv, gapComposerH, 0), null, SizeKt.o(n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "AccountActivationCard", "thankYou_accountActivationIcon_icon"), LVAppDesignKitTheme.d(gapComposerH).v), 0L, gapComposerH, 56, 8);
            Modifier modifierM = PaddingKt.m(n00.g("AccountActivationCard", "thankYou_accountActivationTitle_text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_account_activation_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i7 = TextAlign.f10961e;
            TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(i7), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.mylv_account_activation_description), PaddingKt.m(n00.g("AccountActivationCard", "thankYou_accountActivationDescription_text"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i7), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 130040);
            gapComposerH = gapComposerH;
            LVButtonKt.b((i6 << 24) & 1879048192, 504, gapComposerH, n00.g("AccountActivationCard", "thankYou_activateButton_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.activate_your_account_cta), function0, false, false, false);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p31(modifier2, function0, i2, i3, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [int] */
    /* JADX WARN: Type inference failed for: r4v8 */
    public static final void b(Modifier modifier, List list, Composer composer, int i2) {
        ?? r4;
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AddressInfoContent");
        }
        GapComposer gapComposerH = composer.h(1885788567);
        int i3 = i2 | 6 | (gapComposerH.y(list) ? 32 : 16);
        boolean z = true;
        boolean z2 = false;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("AddressInfoContent");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            gapComposerH.L(735962794);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c((String) it.next(), n00.g("AddressInfoContent", "thankYou_addressLine_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposer2, 0, 0, 131064);
                z2 = z2;
                gapComposerH = gapComposer2;
                z = true;
            }
            GapComposer gapComposer3 = gapComposerH;
            boolean z3 = z2;
            gapComposer3.Z(z3);
            gapComposer3.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            r4 = z3;
            gapComposer = gapComposer3;
        } else {
            GapComposer gapComposer4 = gapComposerH;
            r4 = 0;
            gapComposer4.D();
            gapComposer = gapComposer4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q31(dTFunctionNameModifier, list, i2, r4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:104:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:106:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:109:0x02db  */
    /* JADX WARN: Code duplicated, block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x0067  */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0081  */
    /* JADX WARN: Code duplicated, block: B:45:0x0083  */
    /* JADX WARN: Code duplicated, block: B:48:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0095  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:74:0x012d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0134  */
    /* JADX WARN: Code duplicated, block: B:77:0x0138  */
    /* JADX WARN: Code duplicated, block: B:80:0x0190  */
    /* JADX WARN: Code duplicated, block: B:82:0x0196  */
    /* JADX WARN: Code duplicated, block: B:83:0x0198  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:90:0x0205  */
    /* JADX WARN: Code duplicated, block: B:92:0x020c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0210  */
    /* JADX WARN: Code duplicated, block: B:96:0x0261  */
    /* JADX WARN: Code duplicated, block: B:99:0x02ad  */
    public static final void c(Modifier modifier, String str, String str2, int i2, String str3, Composer composer, int i3, int i4) {
        String str4;
        int i5;
        int i6;
        String str5;
        int i7;
        boolean z;
        GapComposer gapComposer;
        Modifier modifier2;
        String str6;
        int i8;
        String str7;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i9;
        int i10;
        int i11;
        String str8;
        Modifier modifier3;
        String str9;
        Object objX;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        Object objValueOf;
        Modifier modifier4;
        String str10;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ComplimentaryOptionContent");
        }
        GapComposer gapComposerH = composer.h(1498833782);
        Applier applier = gapComposerH.f7976a;
        int i12 = i3 | 6;
        if ((i3 & 48) == 0) {
            i12 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i13 = i4 & 4;
        if (i13 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                str4 = str2;
                i12 |= gapComposerH.K(str4) ? 256 : 128;
            }
            i5 = i12 | (((i4 & 8) == 0 || !gapComposerH.d(i2)) ? 1024 : 2048);
            i6 = i4 & 16;
            if (i6 != 0) {
                if ((i3 & 24576) == 0) {
                    str5 = str3;
                    if (gapComposerH.K(str5)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i5 |= i7;
                }
                if ((i5 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i5 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0 || gapComposerH.h0()) {
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ComplimentaryOptionContent");
                        if (i13 != 0) {
                            str4 = null;
                        }
                        if ((i4 & 8) != 0) {
                            i5 &= -7169;
                            i9 = R.drawable.placeholder;
                        } else {
                            i9 = i2;
                        }
                        i10 = i5;
                        i11 = i9;
                        if (i6 != 0) {
                            str8 = null;
                        } else {
                            str8 = str5;
                        }
                        modifier3 = dTFunctionNameModifier;
                        str9 = str4;
                    } else {
                        gapComposerH.D();
                        if ((i4 & 8) != 0) {
                            i5 &= -7169;
                        }
                        modifier3 = modifierE;
                        i10 = i5;
                        str9 = str4;
                        str8 = str5;
                        i11 = i2;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new z21(16);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierK = PaddingKt.k(SizeKt.d(SemanticsModifierKt.b(modifier3, true, (Function1) objX), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function4);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function1);
                    function5 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function5);
                    Modifier modifierA = ClipKt.a(SizeKt.o(n00.g("ComplimentaryOptionContent", "thankYou_complementaryOptionImage_image"), LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                    Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                    ContentScale.f9447a.getClass();
                    Modifier modifierA2 = PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                    if (str9 == null) {
                        objValueOf = Integer.valueOf(i11);
                    } else {
                        if (str9.length() > 0) {
                            objValueOf = str9;
                        } else {
                            objValueOf = null;
                        }
                        if (objValueOf == null) {
                            objValueOf = Integer.valueOf(i11);
                        }
                    }
                    modifier4 = modifier3;
                    str10 = str9;
                    i2 = i11;
                    ImageLoaderKt.b(modifierA2, objValueOf, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
                    Modifier modifierB = cj.b("ComplimentaryOptionContent", RowScopeInstance.f5040a, 1.0f, true);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                    TextKt.c(str, n00.f(gapComposerH, modifierC2, function5, "ComplimentaryOptionContent", "thankYou_complementaryOptionName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i10 >> 3) & 14, 0, 131064);
                    gapComposer = gapComposerH;
                    if (str8 == null && (!StringsKt.w(str8))) {
                        Modifier modifierD = n00.d(gapComposer, -376011586, "ComplimentaryOptionContent", "thankYou_complementaryOptionDescription_text");
                        TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer).l;
                        String str11 = str8;
                        TextKt.c(str11, modifierD, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, (i10 >> 12) & 14, 0, 131064);
                        str5 = str11;
                        gapComposer = gapComposer;
                        gapComposer.Z(false);
                    } else {
                        str5 = str8;
                        gapComposer.L(-375682490);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    str6 = str10;
                    modifier2 = modifier4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    modifier2 = modifierE;
                    str6 = str4;
                }
                i8 = i2;
                str7 = str5;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new lv0(modifier2, str, str6, i8, str7, i3, i4);
                }
            }
            i5 |= 24576;
            str5 = str3;
            if ((i5 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ComplimentaryOptionContent");
                    if (i13 != 0) {
                        str4 = null;
                    }
                    if ((i4 & 8) != 0) {
                        i5 &= -7169;
                        i9 = R.drawable.placeholder;
                    } else {
                        i9 = i2;
                    }
                    i10 = i5;
                    i11 = i9;
                    if (i6 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    modifier3 = dTFunctionNameModifier2;
                    str9 = str4;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("ComplimentaryOptionContent");
                    if (i13 != 0) {
                        str4 = null;
                    }
                    if ((i4 & 8) != 0) {
                        i5 &= -7169;
                        i9 = R.drawable.placeholder;
                    } else {
                        i9 = i2;
                    }
                    i10 = i5;
                    i11 = i9;
                    if (i6 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    modifier3 = dTFunctionNameModifier3;
                    str9 = str4;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new z21(16);
                    gapComposerH.q(objX);
                }
                Modifier modifierK2 = PaddingKt.k(SizeKt.d(SemanticsModifierKt.b(modifier3, true, (Function1) objX), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF2, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierK2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                Modifier modifierA3 = ClipKt.a(SizeKt.o(n00.g("ComplimentaryOptionContent", "thankYou_complementaryOptionImage_image"), LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Painter painterA2 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                Modifier modifierA4 = PainterModifierKt.a(modifierA3, painterA2, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                if (str9 == null) {
                    objValueOf = Integer.valueOf(i11);
                } else {
                    if (str9.length() > 0) {
                        objValueOf = str9;
                    } else {
                        objValueOf = null;
                    }
                    if (objValueOf == null) {
                        objValueOf = Integer.valueOf(i11);
                    }
                }
                modifier4 = modifier3;
                str10 = str9;
                i2 = i11;
                ImageLoaderKt.b(modifierA4, objValueOf, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
                Modifier modifierB2 = cj.b("ComplimentaryOptionContent", RowScopeInstance.f5040a, 1.0f, true);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                TextKt.c(str, n00.f(gapComposerH, modifierC2, function5, "ComplimentaryOptionContent", "thankYou_complementaryOptionName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i10 >> 3) & 14, 0, 131064);
                gapComposer = gapComposerH;
                if (str8 == null) {
                    str5 = str8;
                    gapComposer.L(-375682490);
                    gapComposer.Z(false);
                } else {
                    str5 = str8;
                    gapComposer.L(-375682490);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
                str6 = str10;
                modifier2 = modifier4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = modifierE;
                str6 = str4;
            }
            i8 = i2;
            str7 = str5;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new lv0(modifier2, str, str6, i8, str7, i3, i4);
            }
        }
        i12 |= KyberEngine.KyberPolyBytes;
        str4 = str2;
        i5 = i12 | (((i4 & 8) == 0 || !gapComposerH.d(i2)) ? 1024 : 2048);
        i6 = i4 & 16;
        if (i6 != 0) {
            if ((i3 & 24576) == 0) {
                str5 = str3;
                if (gapComposerH.K(str5)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i5 |= i7;
            }
            if ((i5 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("ComplimentaryOptionContent");
                    if (i13 != 0) {
                        str4 = null;
                    }
                    if ((i4 & 8) != 0) {
                        i5 &= -7169;
                        i9 = R.drawable.placeholder;
                    } else {
                        i9 = i2;
                    }
                    i10 = i5;
                    i11 = i9;
                    if (i6 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    modifier3 = dTFunctionNameModifier4;
                    str9 = str4;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("ComplimentaryOptionContent");
                    if (i13 != 0) {
                        str4 = null;
                    }
                    if ((i4 & 8) != 0) {
                        i5 &= -7169;
                        i9 = R.drawable.placeholder;
                    } else {
                        i9 = i2;
                    }
                    i10 = i5;
                    i11 = i9;
                    if (i6 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    modifier3 = dTFunctionNameModifier5;
                    str9 = str4;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new z21(16);
                    gapComposerH.q(objX);
                }
                Modifier modifierK3 = PaddingKt.k(SizeKt.d(SemanticsModifierKt.b(modifier3, true, (Function1) objX), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF3, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierK3);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf3, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function5);
                Modifier modifierA5 = ClipKt.a(SizeKt.o(n00.g("ComplimentaryOptionContent", "thankYou_complementaryOptionImage_image"), LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Painter painterA3 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                ContentScale.f9447a.getClass();
                Modifier modifierA6 = PainterModifierKt.a(modifierA5, painterA3, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                if (str9 == null) {
                    objValueOf = Integer.valueOf(i11);
                } else {
                    if (str9.length() > 0) {
                        objValueOf = str9;
                    } else {
                        objValueOf = null;
                    }
                    if (objValueOf == null) {
                        objValueOf = Integer.valueOf(i11);
                    }
                }
                modifier4 = modifier3;
                str10 = str9;
                i2 = i11;
                ImageLoaderKt.b(modifierA6, objValueOf, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
                Modifier modifierB3 = cj.b("ComplimentaryOptionContent", RowScopeInstance.f5040a, 1.0f, true);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                TextKt.c(str, n00.f(gapComposerH, modifierC2, function5, "ComplimentaryOptionContent", "thankYou_complementaryOptionName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i10 >> 3) & 14, 0, 131064);
                gapComposer = gapComposerH;
                if (str8 == null) {
                    str5 = str8;
                    gapComposer.L(-375682490);
                    gapComposer.Z(false);
                } else {
                    str5 = str8;
                    gapComposer.L(-375682490);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
                str6 = str10;
                modifier2 = modifier4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = modifierE;
                str6 = str4;
            }
            i8 = i2;
            str7 = str5;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new lv0(modifier2, str, str6, i8, str7, i3, i4);
            }
        }
        i5 |= 24576;
        str5 = str3;
        if ((i5 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("ComplimentaryOptionContent");
                if (i13 != 0) {
                    str4 = null;
                }
                if ((i4 & 8) != 0) {
                    i5 &= -7169;
                    i9 = R.drawable.placeholder;
                } else {
                    i9 = i2;
                }
                i10 = i5;
                i11 = i9;
                if (i6 != 0) {
                    str8 = null;
                } else {
                    str8 = str5;
                }
                modifier3 = dTFunctionNameModifier6;
                str9 = str4;
            } else {
                DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("ComplimentaryOptionContent");
                if (i13 != 0) {
                    str4 = null;
                }
                if ((i4 & 8) != 0) {
                    i5 &= -7169;
                    i9 = R.drawable.placeholder;
                } else {
                    i9 = i2;
                }
                i10 = i5;
                i11 = i9;
                if (i6 != 0) {
                    str8 = null;
                } else {
                    str8 = str5;
                }
                modifier3 = dTFunctionNameModifier7;
                str9 = str4;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new z21(16);
                gapComposerH.q(objX);
            }
            Modifier modifierK4 = PaddingKt.k(SizeKt.d(SemanticsModifierKt.b(modifier3, true, (Function1) objX), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$4 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF4 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(spacedAlignedF4, Alignment.Companion.l, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierK4);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf4, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierA7 = ClipKt.a(SizeKt.o(n00.g("ComplimentaryOptionContent", "thankYou_complementaryOptionImage_image"), LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Painter painterA4 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA8 = PainterModifierKt.a(modifierA7, painterA4, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            if (str9 == null) {
                objValueOf = Integer.valueOf(i11);
            } else {
                if (str9.length() > 0) {
                    objValueOf = str9;
                } else {
                    objValueOf = null;
                }
                if (objValueOf == null) {
                    objValueOf = Integer.valueOf(i11);
                }
            }
            modifier4 = modifier3;
            str10 = str9;
            i2 = i11;
            ImageLoaderKt.b(modifierA8, objValueOf, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
            Modifier modifierB4 = cj.b("ComplimentaryOptionContent", RowScopeInstance.f5040a, 1.0f, true);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            TextKt.c(str, n00.f(gapComposerH, modifierC2, function5, "ComplimentaryOptionContent", "thankYou_complementaryOptionName_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i10 >> 3) & 14, 0, 131064);
            gapComposer = gapComposerH;
            if (str8 == null) {
                str5 = str8;
                gapComposer.L(-375682490);
                gapComposer.Z(false);
            } else {
                str5 = str8;
                gapComposer.L(-375682490);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
            str6 = str10;
            modifier2 = modifier4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
            str6 = str4;
        }
        i8 = i2;
        str7 = str5;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new lv0(modifier2, str, str6, i8, str7, i3, i4);
        }
    }

    public static final void d(Modifier modifier, String str, String str2, List list, Composer composer, int i2) {
        String str3;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ComplimentarySection");
        }
        GapComposer gapComposerH = composer.h(1831775719);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            str3 = str;
            i3 |= gapComposerH.K(str3) ? 32 : 16;
        } else {
            str3 = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ComplimentarySection");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function5, "ComplimentarySection");
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new z21(15);
                gapComposerH.q(objX);
            }
            Modifier modifierK = PaddingKt.k(SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifierE, true, (Function1) objX), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            TextKt.c(str3, n00.f(gapComposerH, modifierC2, function5, "ComplimentarySection", "thankYou_complementaryOptionTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            TextKt.c(str2, n00.g("ComplimentarySection", "thankYou_complementaryOptionSubtitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i3 >> 6) & 14, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.L(-1802071457);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Function2) it.next()).invoke(gapComposer, 0);
            }
            gapComposer.Z(false);
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(modifierE, str, str2, list, i2, 12);
        }
    }

    public static final void e(Modifier modifier, CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "DeliveryAndPaymentExpandedContent");
        }
        GapComposer gapComposerH = composer.h(-530960364);
        int i4 = 4;
        int i5 = 2;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(checkoutConfirmationDetailUiModel) ? 32 : 16;
        }
        int i6 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(PaddingKt.k(SizeKt.d(modifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 1), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).g);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            f(null, StringResources_androidKt.c(gapComposerH, R.string.checkout_shipping_method_label), ComposableLambdaKt.b(-111234837, new n31(checkoutConfirmationDetailUiModel, i6), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
            f(null, StringResources_androidKt.c(gapComposerH, checkoutConfirmationDetailUiModel.q ? R.string.checkout_store_collection_label : R.string.checkout_shipping_address_label), ComposableLambdaKt.b(-1039313644, new n31(checkoutConfirmationDetailUiModel, i5), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
            f(null, StringResources_androidKt.c(gapComposerH, R.string.checkout_billing_address_label), ComposableLambdaKt.b(-593776333, new n31(checkoutConfirmationDetailUiModel, 3), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
            f(null, StringResources_androidKt.c(gapComposerH, R.string.checkout_payment_method_label), ComposableLambdaKt.b(-148239022, new n31(checkoutConfirmationDetailUiModel, i4), gapComposerH), gapComposerH, KyberEngine.KyberPolyBytes);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i31(modifier, checkoutConfirmationDetailUiModel, i2, i6);
        }
    }

    public static final void f(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LabeledInfoSection");
        }
        GapComposer gapComposerH = composer.h(-192759434);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LabeledInfoSection");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new z21(18);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierD, true, (Function1) objX);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            TextKt.c(str, n00.f(gapComposerH, modifierC, function5, "LabeledInfoSection", "thankYou_deliveryAndPaymentTitle_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            gapComposer = gapComposerH;
            Modifier modifierG = n00.g("LabeledInfoSection", "thankYou_deliveryAndPaymentContent_view");
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierG);
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
            Updater.c(gapComposer, modifierC2, function5);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.invoke(gapComposer, 6);
            gapComposer.Z(true);
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new as0(modifier2, str, composableLambdaImpl2, i2, 1);
        }
    }

    public static final void g(Modifier modifier, CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, boolean z, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OrderPriceBreakdownContent");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(429246206);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(modifier2) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(checkoutConfirmationDetailUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(BackgroundKt.b(modifier2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.checkout_subtotal_label);
            CartPriceInfoUiModel cartPriceInfoUiModel = checkoutConfirmationDetailUiModel.f65263k;
            h(null, strC, cartPriceInfoUiModel.f65253b.f55159b, false, false, gapComposerH, 3072, 17);
            h(null, StringResources_androidKt.c(gapComposerH, R.string.checkout_shipping_label), cartPriceInfoUiModel.f65252a.f55159b, false, false, gapComposerH, 3072, 17);
            gapComposerH.L(82508818);
            for (TaxInfoUiModel taxInfoUiModel : cartPriceInfoUiModel.d) {
                h(null, taxInfoUiModel.f65279b, taxInfoUiModel.f65280c.f55159b, false, false, gapComposerH, 3072, 17);
            }
            gapComposerH.Z(false);
            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
            gapComposerH = gapComposerH;
            h(null, StringResources_androidKt.c(gapComposerH, R.string.global_total), cartPriceInfoUiModel.f65254c.f55159b, z, true, gapComposerH, ((i3 << 3) & 7168) | 24576, 1);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o31(modifier2, checkoutConfirmationDetailUiModel, z, i2, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:104:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x008b  */
    /* JADX WARN: Code duplicated, block: B:52:0x008d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x0098  */
    /* JADX WARN: Code duplicated, block: B:58:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:71:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:73:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:74:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:77:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:78:0x01de  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:88:0x0202  */
    /* JADX WARN: Code duplicated, block: B:90:0x0214  */
    /* JADX WARN: Code duplicated, block: B:93:0x0254  */
    /* JADX WARN: Code duplicated, block: B:95:0x029b  */
    /* JADX WARN: Code duplicated, block: B:97:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:99:0x02b5  */
    public static final void h(Modifier modifier, String str, String str2, boolean z, boolean z2, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        boolean z4;
        GapComposer gapComposer;
        Modifier modifier2;
        boolean z5;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z6;
        Context context;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        Modifier modifier3;
        int i5;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        boolean z7;
        boolean z8;
        Object objX2;
        TextStyle textStyle;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "PriceRowContent");
        }
        GapComposer gapComposerH = composer.h(468503524);
        Applier applier = gapComposerH.f7976a;
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        int i7 = i3 & 16;
        if (i7 == 0) {
            if ((i2 & 24576) == 0) {
                z3 = z2;
                i4 |= gapComposerH.b(z3) ? 16384 : 8192;
            }
            if ((i4 & 9363) != 9362) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i4 & 1, z4)) {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("PriceRowContent");
                }
                if (i7 != 0) {
                    z6 = false;
                } else {
                    z6 = z3;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new z21(12);
                    gapComposerH.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierD, true, (Function1) objX);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 54);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function5 = ComposeUiNode.Companion.d;
                modifier3 = dTFunctionNameModifier;
                i5 = i4;
                TextKt.c(str, n00.f(gapComposerH, modifierC, function5, "PriceRowContent", "thankYou_lineLabel_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i4 >> 3) & 14, 0, 131064);
                Modifier modifierG = n00.g("PriceRowContent", "thankYou_linePrice_text");
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.p, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierG);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function5, "PriceRowContent");
                boolean zY = gapComposerH.y(context);
                if ((i5 & 896) == 256) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = zY | z7;
                objX2 = gapComposerH.x();
                if (z8 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new qk0(context, str2, 2);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifierE, false, (Function1) objX2);
                if (z6) {
                    gapComposerH.L(1305245449);
                    textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1305329924);
                    textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                    gapComposerH.Z(false);
                }
                TextKt.c(str2, modifierB2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i5 >> 6) & 14, 0, 131064);
                gapComposer = gapComposerH;
                if (z) {
                    gapComposer.L(1305556379);
                    TextKt.c(StringResources_androidKt.c(gapComposer, R.string.global_vat_included), null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131066);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(1305813400);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
                z5 = z6;
                modifier2 = modifier3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = dTFunctionNameModifier;
                z5 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new fb0(modifier2, str, str2, z, z5, i2, i3);
            }
        }
        i4 |= 24576;
        z3 = z2;
        if ((i4 & 9363) != 9362) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i4 & 1, z4)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PriceRowContent");
            }
            if (i7 != 0) {
                z6 = false;
            } else {
                z6 = z3;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierD2 = SizeKt.d(dTFunctionNameModifier, 1.0f);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new z21(12);
                gapComposerH.q(objX);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(modifierD2, true, (Function1) objX);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$2 = Arrangement.g;
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$2, Alignment.Companion.f8591k, gapComposerH, 54);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function5 = ComposeUiNode.Companion.d;
            modifier3 = dTFunctionNameModifier;
            i5 = i4;
            TextKt.c(str, n00.f(gapComposerH, modifierC, function5, "PriceRowContent", "thankYou_lineLabel_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i4 >> 3) & 14, 0, 131064);
            Modifier modifierG2 = n00.g("PriceRowContent", "thankYou_linePrice_text");
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.p, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierG2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC2, function5, "PriceRowContent");
            boolean zY2 = gapComposerH.y(context);
            if ((i5 & 896) == 256) {
                z7 = true;
            } else {
                z7 = false;
            }
            z8 = zY2 | z7;
            objX2 = gapComposerH.x();
            if (z8) {
                objX2 = new qk0(context, str2, 2);
                gapComposerH.q(objX2);
            } else {
                objX2 = new qk0(context, str2, 2);
                gapComposerH.q(objX2);
            }
            Modifier modifierB4 = SemanticsModifierKt.b(dTFunctionNameModifierE2, false, (Function1) objX2);
            if (z6) {
                gapComposerH.L(1305245449);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1305329924);
                textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                gapComposerH.Z(false);
            }
            TextKt.c(str2, modifierB4, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i5 >> 6) & 14, 0, 131064);
            gapComposer = gapComposerH;
            if (z) {
                gapComposer.L(1305556379);
                TextKt.c(StringResources_androidKt.c(gapComposer, R.string.global_vat_included), null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131066);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                gapComposer.L(1305813400);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
            z5 = z6;
            modifier2 = modifier3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
            z5 = z3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fb0(modifier2, str, str2, z, z5, i2, i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0388  */
    /* JADX WARN: Code duplicated, block: B:104:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:105:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:111:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:114:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:117:0x040b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0416  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void i(CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, ThankYouFeatureFlags thankYouFeatureFlags, LVModalBottomSheetState lVModalBottomSheetState, boolean z, Function0 function0, Function0 function1, Function1 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Object obj;
        int i4;
        GapComposer gapComposer2;
        boolean z2;
        GapComposer gapComposer3;
        boolean z3;
        GapComposer gapComposer4;
        String str;
        GapComposer gapComposer5;
        boolean z4;
        Object objX;
        CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel2 = checkoutConfirmationDetailUiModel;
        ThankYouFeatureFlags thankYouFeatureFlags2 = thankYouFeatureFlags;
        GapComposer gapComposerH = composer.h(672432457);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(checkoutConfirmationDetailUiModel2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(thankYouFeatureFlags2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OrderStatusUiModel.Companion companion = OrderStatusUiModel.f60323f;
            TimelineUiModel timelineUiModel = checkoutConfirmationDetailUiModel2.o;
            ShippingMethodUiModel shippingMethodUiModel = checkoutConfirmationDetailUiModel2.d;
            companion.getClass();
            OrderStatusUiModel orderStatusUiModelA = OrderStatusUiModel.Companion.a(timelineUiModel, null, gapComposerH, 2);
            Modifier modifierO = new DTFunctionNameModifier("SuccessContent").o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            int i5 = i3;
            if (gapComposerH.S) {
                gapComposerH.C(function3);
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
            SpacerKt.a(gapComposerH, SizeKt.f(tr.e(gapComposerH, modifierC, function8, "SuccessContent"), LVAppDesignKitTheme.l(gapComposerH).f48417f));
            Modifier modifierK = PaddingKt.k(ModifierExtKt.e(new DTFunctionNameModifier("SuccessContent"), "thankYou_thankYouDescription_text"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            String strB = StringResources_androidKt.b(R.string.checkout_confirmation_message, new Object[]{checkoutConfirmationDetailUiModel.f65257c}, gapComposerH);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            int i6 = TextAlign.f10961e;
            TextKt.c(strB, modifierK, j2, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            GapComposer gapComposer6 = gapComposerH;
            SpacerKt.a(gapComposer6, SizeKt.f(new DTFunctionNameModifier("SuccessContent"), LVAppDesignKitTheme.l(gapComposer6).f48421k));
            List list = orderStatusUiModelA != null ? orderStatusUiModelA.d : null;
            Object obj2 = Composer.Companion.f7939a;
            if (list != null) {
                Modifier modifierM = PaddingKt.m(o60.c(gapComposer6, 677613913, "SuccessContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer6).f48417f, 7);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer6).f48417f), Alignment.Companion.n, gapComposer6, 0);
                int iHashCode2 = Long.hashCode(gapComposer6.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer6.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposer6, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer6.B();
                if (gapComposer6.S) {
                    gapComposer6.C(function3);
                } else {
                    gapComposer6.o();
                }
                Updater.c(gapComposer6, columnMeasurePolicyA2, function4);
                Updater.c(gapComposer6, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposer6, function6, gapComposer6, function7);
                DividerKt.a(PaddingKt.k(n00.e(gapComposer6, modifierC2, function8, "SuccessContent", 1.0f), LVAppDesignKitTheme.l(gapComposer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer6).f48361b.q, gapComposer6, 0, 2);
                Modifier modifierK2 = PaddingKt.k(tr.d("SuccessContent", 1.0f), LVAppDesignKitTheme.l(gapComposer6).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer6).f48415c), horizontal, gapComposer6, 48);
                int iHashCode3 = Long.hashCode(gapComposer6.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer6.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer6, modifierK2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer6.B();
                if (gapComposer6.S) {
                    gapComposer6.C(function3);
                } else {
                    gapComposer6.o();
                }
                Updater.c(gapComposer6, columnMeasurePolicyA3, function4);
                Updater.c(gapComposer6, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposer6, function6, gapComposer6, function7);
                Modifier modifierE = n00.e(gapComposer6, modifierC3, function8, "SuccessContent", 1.0f);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer6).f48417f), Alignment.Companion.f8591k, gapComposer6, 48);
                int iHashCode4 = Long.hashCode(gapComposer6.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer6.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer6, modifierE);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer6.B();
                if (gapComposer6.S) {
                    gapComposer6.C(function3);
                } else {
                    gapComposer6.o();
                }
                Updater.c(gapComposer6, rowMeasurePolicyA, function4);
                Updater.c(gapComposer6, persistentCompositionLocalMapU4, function5);
                cj.t(iHashCode4, gapComposer6, function6, gapComposer6, function7);
                Updater.c(gapComposer6, modifierC4, function8);
                gapComposer6.L(-2000447540);
                String str2 = StringResources_androidKt.c(gapComposer6, R.string.checkout_shipping_method_label) + " : " + shippingMethodUiModel.f65274a;
                gapComposer6.Z(false);
                Modifier modifierG = n00.g("SuccessContent", "thankYou_shippingMethod_text");
                boolean zK = gapComposer6.K(str2);
                Object objX2 = gapComposer6.x();
                if (zK) {
                    obj = obj2;
                } else {
                    obj = obj2;
                    if (objX2 == obj) {
                    }
                    TextKt.c(shippingMethodUiModel.f65274a, RowScopeInstance.f5040a.a(SemanticsModifierKt.b(modifierG, false, (Function1) objX2), 1.0f, true), LVAppDesignKitTheme.c(gapComposer6).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer6).g, gapComposer6, 0, 0, 130040);
                    gapComposer3 = gapComposer6;
                    if (shippingMethodUiModel.f65277e != null) {
                        Modifier modifierO2 = SizeKt.o(n00.d(gapComposer3, -1883249508, "SuccessContent", "thankYou_shippingMethod_icon"), LVAppDesignKitTheme.d(gapComposer3).n);
                        if ((i5 & 57344) == 16384) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objX = gapComposer3.x();
                        if (z4 || objX == obj) {
                            objX = new w11(function0, 1);
                            gapComposer3.q(objX);
                        }
                        Modifier modifierC5 = ModifierExtKt.c(modifierO2, false, null, null, (Function0) objX, 31);
                        z3 = false;
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer3).N0, gapComposer3, 0), StringResources_androidKt.c(gapComposer3, R.string.inapp_notification_title), modifierC5, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, gapComposer3, 8, 0);
                        GapComposer gapComposer7 = gapComposer3;
                        gapComposer7.Z(false);
                        gapComposer4 = gapComposer7;
                    } else {
                        z3 = false;
                        gapComposer3.L(-1882612520);
                        gapComposer3.Z(false);
                        gapComposer4 = gapComposer3;
                    }
                    gapComposer4.Z(true);
                    str = shippingMethodUiModel.d;
                    if (str == null) {
                        gapComposer4.L(-1059741329);
                        gapComposer4.Z(z3);
                        gapComposer5 = gapComposer4;
                    } else {
                        GapComposer gapComposer8 = gapComposer4;
                        TextKt.c(str, n00.d(gapComposer4, -1059741328, "SuccessContent", "thankYou_shippingMethodDisclaimer_text"), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer4).m, gapComposer8, 0, 0, 130040);
                        GapComposer gapComposer9 = gapComposer8;
                        gapComposer9.Z(false);
                        gapComposer5 = gapComposer9;
                    }
                    gapComposer5.Z(true);
                    Modifier modifierD = SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("SuccessContent"), "thankYou_timeline_view"), 1.0f);
                    String str3 = (String) orderStatusUiModelA.d.get(orderStatusUiModelA.f60326c);
                    Dp.Companion companion2 = Dp.f11004c;
                    i4 = 1;
                    GapComposer gapComposer10 = gapComposer5;
                    LVTimelineKt.a(modifierD, str3, orderStatusUiModelA.f60326c, orderStatusUiModelA.d.size(), LVAppDesignKitTheme.l(gapComposer5).f48417f, LVAppDesignKitTheme.c(gapComposer5).f48361b.v, Color.b(LVAppDesignKitTheme.h(gapComposer5).f48404e, LVAppDesignKitTheme.c(gapComposer5).f48361b.v), 0L, null, null, ComposableLambdaKt.b(1574541420, new ub(orderStatusUiModelA, i4), gapComposer5), gapComposer10, KyberEngine.KyberPolyBytes, 1792);
                    GapComposer gapComposer11 = gapComposer10;
                    gapComposer11.Z(true);
                    gapComposer11.Z(false);
                    gapComposer2 = gapComposer11;
                }
                objX2 = new nj0(str2, 23);
                gapComposer6.q(objX2);
                TextKt.c(shippingMethodUiModel.f65274a, RowScopeInstance.f5040a.a(SemanticsModifierKt.b(modifierG, false, (Function1) objX2), 1.0f, true), LVAppDesignKitTheme.c(gapComposer6).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer6).g, gapComposer6, 0, 0, 130040);
                gapComposer3 = gapComposer6;
                if (shippingMethodUiModel.f65277e != null) {
                    Modifier modifierO3 = SizeKt.o(n00.d(gapComposer3, -1883249508, "SuccessContent", "thankYou_shippingMethod_icon"), LVAppDesignKitTheme.d(gapComposer3).n);
                    if ((i5 & 57344) == 16384) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objX = gapComposer3.x();
                    if (z4) {
                        objX = new w11(function0, 1);
                        gapComposer3.q(objX);
                    } else {
                        objX = new w11(function0, 1);
                        gapComposer3.q(objX);
                    }
                    Modifier modifierC6 = ModifierExtKt.c(modifierO3, false, null, null, (Function0) objX, 31);
                    z3 = false;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer3).N0, gapComposer3, 0), StringResources_androidKt.c(gapComposer3, R.string.inapp_notification_title), modifierC6, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, gapComposer3, 8, 0);
                    GapComposer gapComposer12 = gapComposer3;
                    gapComposer12.Z(false);
                    gapComposer4 = gapComposer12;
                } else {
                    z3 = false;
                    gapComposer3.L(-1882612520);
                    gapComposer3.Z(false);
                    gapComposer4 = gapComposer3;
                }
                gapComposer4.Z(true);
                str = shippingMethodUiModel.d;
                if (str == null) {
                    gapComposer4.L(-1059741329);
                    gapComposer4.Z(z3);
                    gapComposer5 = gapComposer4;
                } else {
                    GapComposer gapComposer13 = gapComposer4;
                    TextKt.c(str, n00.d(gapComposer4, -1059741328, "SuccessContent", "thankYou_shippingMethodDisclaimer_text"), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i6), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer4).m, gapComposer13, 0, 0, 130040);
                    GapComposer gapComposer14 = gapComposer13;
                    gapComposer14.Z(false);
                    gapComposer5 = gapComposer14;
                }
                gapComposer5.Z(true);
                Modifier modifierD2 = SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("SuccessContent"), "thankYou_timeline_view"), 1.0f);
                String str4 = (String) orderStatusUiModelA.d.get(orderStatusUiModelA.f60326c);
                Dp.Companion companion3 = Dp.f11004c;
                i4 = 1;
                GapComposer gapComposer15 = gapComposer5;
                LVTimelineKt.a(modifierD2, str4, orderStatusUiModelA.f60326c, orderStatusUiModelA.d.size(), LVAppDesignKitTheme.l(gapComposer5).f48417f, LVAppDesignKitTheme.c(gapComposer5).f48361b.v, Color.b(LVAppDesignKitTheme.h(gapComposer5).f48404e, LVAppDesignKitTheme.c(gapComposer5).f48361b.v), 0L, null, null, ComposableLambdaKt.b(1574541420, new ub(orderStatusUiModelA, i4), gapComposer5), gapComposer15, KyberEngine.KyberPolyBytes, 1792);
                GapComposer gapComposer16 = gapComposer15;
                gapComposer16.Z(true);
                gapComposer16.Z(false);
                gapComposer2 = gapComposer16;
            } else {
                obj = obj2;
                i4 = 1;
                gapComposer6.L(682728355);
                gapComposer6.Z(false);
                gapComposer2 = gapComposer6;
            }
            checkoutConfirmationDetailUiModel2 = checkoutConfirmationDetailUiModel;
            thankYouFeatureFlags2 = thankYouFeatureFlags;
            if (checkoutConfirmationDetailUiModel2.r == null || !thankYouFeatureFlags2.f65284c) {
                z2 = false;
                gapComposer2.L(683169795);
                gapComposer2.Z(false);
            } else {
                Modifier modifierK3 = PaddingKt.k(PaddingKt.m(n00.i(gapComposer2, 682833445, "SuccessContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48417f, 7), LVAppDesignKitTheme.l(gapComposer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                int i7 = ((i5 & 14) == 4 ? i4 : 0) | ((i5 & 3670016) == 1048576 ? i4 : 0);
                Object objX3 = gapComposer2.x();
                if (i7 != 0 || objX3 == obj) {
                    objX3 = new p01(function2, checkoutConfirmationDetailUiModel2, 14);
                    gapComposer2.q(objX3);
                }
                z2 = false;
                a(0, 0, gapComposer2, modifierK3, (Function0) objX3);
                gapComposer2.Z(false);
            }
            int i8 = i5 << 3;
            int i9 = i8 & 112;
            l(tr.d("SuccessContent", 1.0f), checkoutConfirmationDetailUiModel2, thankYouFeatureFlags2.f65282a, gapComposer2, i9 | 6);
            DividerKt.a(null, LVAppDesignKitTheme.d(gapComposer2).m, LVAppDesignKitTheme.c(gapComposer2).f48361b.f48375b, gapComposer2, 0, 1);
            j(PaddingKt.m(tr.d("SuccessContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48417f, 7), checkoutConfirmationDetailUiModel2, z, function1, gapComposer2, ((i5 >> 3) & 896) | i9 | ((i5 >> 6) & 7168));
            gapComposer2.Z(i4);
            if (lVModalBottomSheetState.a()) {
                GapComposer gapComposer17 = gapComposer2;
                LVModalBottomSheetKt.b(n00.d(gapComposer2, 715606767, "SuccessContent", "thankYou_additionalInfoBottomSheet_view"), StringResources_androidKt.c(gapComposer2, R.string.alt_close), null, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(1275569818, new xe0(checkoutConfirmationDetailUiModel2, 19), gapComposer2), gapComposer17, (LVModalBottomSheetState.f48797e << 9) | 100663296 | (i8 & 7168), 244);
                GapComposer gapComposer18 = gapComposer17;
                gapComposer18.Z(z2);
                gapComposer = gapComposer18;
            } else {
                gapComposer2.L(716268121);
                gapComposer2.Z(z2);
                gapComposer = gapComposer2;
            }
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nm(checkoutConfirmationDetailUiModel2, thankYouFeatureFlags2, lVModalBottomSheetState, z, function0, function1, function2, i2);
        }
    }

    public static final void j(Modifier modifier, CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        Function0 function1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThankYouDeliveryAndPaymentContent");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(404081304);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(checkoutConfirmationDetailUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function1 = function0;
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        } else {
            function1 = function0;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = BringIntoViewRequesterKt.a();
                gapComposerH.q(objX);
            }
            BringIntoViewRequester bringIntoViewRequester = (BringIntoViewRequester) objX;
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean zY = ((i3 & 896) == 256) | gapComposerH.y(bringIntoViewRequester);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new ThankYouScreenKt$ThankYouDeliveryAndPaymentContent$2$1(z, bringIntoViewRequester, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            Modifier modifierB = BackgroundKt.b(modifier2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierD = SizeKt.d(n00.f(gapComposerH, modifierC, function7, "ThankYouDeliveryAndPaymentContent", "thankYou_deliveryAndPayment_view"), 1.0f);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = InteractionSourceKt.a();
                gapComposerH.q(objX3);
            }
            Role.f10289b.getClass();
            int i4 = i3;
            Modifier modifierB2 = ClickableKt.b(modifierD, (MutableInteractionSource) objX3, null, false, null, new Role(Role.f10293h), function1, 12);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new z21(17);
                gapComposerH.q(objX4);
            }
            Modifier modifierI = PaddingKt.i(SemanticsModifierKt.b(modifierB2, false, (Function1) objX4), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.checkout_shipping_payment_title), n00.f(gapComposerH, modifierC2, function7, "ThankYouDeliveryAndPaymentContent", "thankYou_deliveryAndPaymentHeader_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            LVExpandableListAnimatedIconKt.a(n00.g("ThankYouDeliveryAndPaymentContent", "thankYou_deliveryAndPaymentHeader_icon"), LVAppDesignKitTheme.a(gapComposerH).s, !z, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 0, 24);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            if (z) {
                gapComposerH.L(883600288);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(883262016);
                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
                e(BringIntoViewRequesterKt.b(SizeKt.d(new DTFunctionNameModifier("ThankYouDeliveryAndPaymentContent"), 1.0f), bringIntoViewRequester), checkoutConfirmationDetailUiModel, gapComposerH, i4 & 112);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(i2, 7, modifier2, checkoutConfirmationDetailUiModel, function0, z);
        }
    }

    public static final void k(Modifier modifier, CheckoutItemUiModel checkoutItemUiModel, boolean z, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        boolean z2;
        Modifier modifierE = modifier;
        boolean z3 = z;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThankYouOrderItemContent");
        }
        GapComposer gapComposerH = composer.h(647494295);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(checkoutItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z3) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            String str = checkoutItemUiModel.d;
            List list = checkoutItemUiModel.f65270i;
            boolean zK = gapComposerH.K(str);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new UrlFactory(ContextExtKt.f(context)).c(checkoutItemUiModel.d);
                gapComposerH.q(objX);
            }
            String str2 = (String) objX;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            int i4 = i3;
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = n00.e(gapComposerH, modifierC, function5, "ThankYouOrderItemContent", 1.0f);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new z21(19);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE2, true, (Function1) objX2);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            Modifier modifierO = SizeKt.o(ClipKt.a(n00.g("ThankYouOrderItemContent", "thankYou_itemImage_image"), LVAppDesignKitTheme.j(gapComposerH).f48411c), f65243a);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            str2.getClass();
            ImageLoaderKt.b(modifierA, str2, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3456, 2032);
            Modifier modifierB2 = cj.b("ThankYouOrderItemContent", RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            TextKt.c(checkoutItemUiModel.f65264a, n00.f(gapComposerH, modifierC3, function5, "ThankYouOrderItemContent", "thankYou_itemSku_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            Modifier modifierG = n00.g("ThankYouOrderItemContent", "thankYou_itemName_text");
            String str3 = checkoutItemUiModel.f65265b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            TextKt.c(str3, modifierG, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposer = gapComposerH;
            if (list.isEmpty()) {
                z2 = true;
                gapComposer.L(-1310357797);
                gapComposer.Z(false);
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposer, -1311099689, "ThankYouOrderItemContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48413a), horizontal, gapComposer, 0);
                int iHashCode4 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierM);
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
                Updater.c(gapComposer, columnMeasurePolicyA3, function2);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function3);
                cj.t(iHashCode4, gapComposer, function4, gapComposer, function1);
                Updater.c(gapComposer, modifierC4, function5);
                gapComposer.L(-635090711);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    GapComposer gapComposer2 = gapComposer;
                    TextKt.c((String) it.next(), n00.g("ThankYouOrderItemContent", "thankYou_itemVariation_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer2, 0, 0, 131064);
                    gapComposer = gapComposer2;
                }
                z2 = true;
                pq0.x(gapComposer, false, true, false);
            }
            gapComposer.Z(z2);
            gapComposer.Z(z2);
            if (checkoutItemUiModel.f65271j != null) {
                GapComposer gapComposer3 = gapComposer;
                CustomizationConfigurationCardKt.a(PaddingKt.m(o60.c(gapComposer, -1513592477, "ThankYouOrderItemContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), checkoutItemUiModel.f65271j, new CustomizationCardState.Expand(false), null, null, gapComposer3, 0, 24);
                gapComposer = gapComposer3;
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1513236907);
                gapComposer.Z(false);
            }
            z3 = z;
            h(PaddingKt.m(new DTFunctionNameModifier("ThankYouOrderItemContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), StringResources_androidKt.b(R.string.checkout_quantity_label, new Object[]{Integer.valueOf(checkoutItemUiModel.f65266c)}, gapComposer), checkoutItemUiModel.f65267e.f55159b, z3, false, gapComposer, (i4 << 3) & 7168, 16);
            gapComposer.Z(z2);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vd(modifierE, checkoutItemUiModel, z3, i2);
        }
    }

    public static final void l(Modifier modifier, CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, boolean z, Composer composer, int i2) {
        String str;
        ComposableLambdaImpl composableLambdaImplB;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThankYouOrderSummaryContent");
        }
        modifierE.getClass();
        checkoutConfirmationDetailUiModel.getClass();
        int i3 = checkoutConfirmationDetailUiModel.f65262j;
        GapComposer gapComposerH = composer.h(72733697);
        Applier applier = gapComposerH.f7976a;
        int i4 = (i2 & 6) == 0 ? (gapComposerH.K(modifierE) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(checkoutConfirmationDetailUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierB = BackgroundKt.b(modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierI = PaddingKt.i(n00.e(gapComposerH, modifierC, function5, "ThankYouOrderSummaryContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int i5 = i4;
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            gapComposerH.L(329618099);
            StringBuilder sb = new StringBuilder();
            sb.append(StringResources_androidKt.c(gapComposerH, R.string.checkout_order_summary));
            sb.append(" ; ");
            List<PerfumeSampleUiModel> list = checkoutConfirmationDetailUiModel.p;
            sb.append(StringResources_androidKt.a(R.plurals.alt_number_of_products, i3, new Object[]{Integer.valueOf(i3)}, gapComposerH));
            String string = sb.toString();
            DTFunctionNameModifier dTFunctionNameModifierF = o60.f(gapComposerH, false, "ThankYouOrderSummaryContent");
            boolean zK = gapComposerH.K(string);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new nj0(string, 24);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifierF, true, (Function1) objX);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.checkout_order_summary), n00.f(gapComposerH, modifierC3, function5, "ThankYouOrderSummaryContent", "thankYou_order_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ThankYouOrderSummaryContent");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierB3 = OffsetKt.b(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, (-1.0f) * LVAppDesignKitTheme.l(gapComposerH).f48414b);
            String strM = n00.m(i3, " (", ")");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            BaselineShift.f10922b.getClass();
            TextKt.c(strM, modifierB3, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle, 0L, 0L, null, null, 0L, new BaselineShift(BaselineShift.f10923c), 0, 0, 0L, null, null, 16776959), gapComposerH, 0, 0, 131064);
            gapComposerH.Z(true);
            Modifier modifierE2 = ModifierExtKt.e(new DTFunctionNameModifier("ThankYouOrderSummaryContent"), "thankYou_price_text");
            int i6 = i5 & 112;
            boolean zY = gapComposerH.y(context) | (i6 == 32);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new m21(context, checkoutConfirmationDetailUiModel, 11);
                gapComposerH.q(objX2);
            }
            int i7 = 0;
            TextKt.c(checkoutConfirmationDetailUiModel.f65263k.f65254c.f55159b, SemanticsModifierKt.b(modifierE2, false, (Function1) objX2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            DividerKt.a(PaddingKt.m(o60.f(gapComposerH, true, "ThankYouOrderSummaryContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            Modifier modifierM = PaddingKt.m(PaddingKt.k(tr.d("ThankYouOrderSummaryContent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).g), horizontal, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC4, function5);
            gapComposerH.L(-2049167147);
            Iterator it = checkoutConfirmationDetailUiModel.f65261i.iterator();
            while (it.hasNext()) {
                k(tr.d("ThankYouOrderSummaryContent", 1.0f), (CheckoutItemUiModel) it.next(), z, gapComposerH, (i5 & 896) | 6);
                DividerKt.a(tr.d("ThankYouOrderSummaryContent", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 6, 2);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            if (list.isEmpty()) {
                gapComposerH.L(-1172538761);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1173396934);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.checkout_samples_title);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.checkout_free_option_label);
                gapComposerH.L(-2116053479);
                ArrayList arrayList = new ArrayList();
                for (PerfumeSampleUiModel perfumeSampleUiModel : list) {
                    String str2 = perfumeSampleUiModel.f55215c;
                    if (str2 == null) {
                        gapComposerH.L(-2027990996);
                        gapComposerH.Z(false);
                        composableLambdaImplB = null;
                    } else {
                        gapComposerH.L(-2027990995);
                        composableLambdaImplB = ComposableLambdaKt.b(1327497623, new es0(str2, perfumeSampleUiModel, 15), gapComposerH);
                        gapComposerH.Z(false);
                    }
                    if (composableLambdaImplB != null) {
                        arrayList.add(composableLambdaImplB);
                    }
                }
                gapComposerH.Z(false);
                d(null, strC, strC2, arrayList, gapComposerH, 0);
                DividerKt.a(PaddingKt.i(new DTFunctionNameModifier("ThankYouOrderSummaryContent"), LVAppDesignKitTheme.l(gapComposerH).f48417f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                gapComposerH.Z(false);
            }
            if (checkoutConfirmationDetailUiModel.l || ((str = checkoutConfirmationDetailUiModel.m) != null && (!StringsKt.w(str)))) {
                gapComposerH.L(-1172395944);
                d(null, StringResources_androidKt.c(gapComposerH, R.string.checkout_gifting_packaging_title), StringResources_androidKt.c(gapComposerH, R.string.checkout_free_option_label), CollectionsKt.O(ComposableLambdaKt.b(1982152739, new n31(checkoutConfirmationDetailUiModel, i7), gapComposerH)), gapComposerH, 3072);
                DividerKt.a(PaddingKt.i(new DTFunctionNameModifier("ThankYouOrderSummaryContent"), LVAppDesignKitTheme.l(gapComposerH).f48417f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1171105321);
                gapComposerH.Z(false);
            }
            g(tr.d("ThankYouOrderSummaryContent", 1.0f), checkoutConfirmationDetailUiModel, z, gapComposerH, (i5 & 896) | i6 | 6);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o31(modifierE, checkoutConfirmationDetailUiModel, z, i2, 0);
        }
    }

    public static final void m(Modifier modifier, SnackbarHostState snackbarHostState, ThankYouViewState thankYouViewState, Function1 function1, Function0 function0, Composer composer, int i2, int i3) {
        Function1 function2;
        Function0 function3;
        int i4;
        GapComposer gapComposer;
        Function0 function4;
        Function0 function5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThankYouScreen");
        }
        snackbarHostState.getClass();
        thankYouViewState.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1440494707);
        int i5 = i2 | 6;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(thankYouViewState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function2 = function1;
            i5 |= gapComposerH.y(function2) ? 2048 : 1024;
        } else {
            function2 = function1;
        }
        int i6 = i3 & 16;
        if (i6 != 0) {
            i4 = i5 | 24576;
            function3 = function0;
        } else {
            function3 = function0;
            i4 = i5 | (gapComposerH.y(function3) ? 16384 : 8192);
        }
        int i7 = 0;
        if (gapComposerH.p(i4 & 1, (i4 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ThankYouScreen");
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i6 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new l31(1);
                    gapComposerH.q(objX);
                }
                function5 = (Function0) objX;
            } else {
                function5 = function3;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object[] objArr = new Object[0];
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new l31(2);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX2, gapComposerH, 48);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState2 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState3 = (MutableState) objX4;
            boolean z = (i4 & 896) == 256;
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$1) {
                objX5 = new ThankYouScreenKt$ThankYouScreen$2$1(thankYouViewState, mutableState2, mutableState3, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, thankYouViewState, (Function2) objX5);
            gapComposer = gapComposerH;
            modifierE = dTFunctionNameModifier;
            ScaffoldKt.a(dTFunctionNameModifier.o(SizeKt.f5052c), ComposableLambdaKt.b(1637405239, new r31(thankYouViewState, mutableState2, function5, i7), gapComposerH), null, ComposableLambdaKt.b(-147998023, new fs0(snackbarHostState, 8), gapComposerH), null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, 0L, null, ComposableLambdaKt.b(430671298, new w0(scrollStateB, mutableState3, thankYouViewState, mutableState2, lVModalBottomSheetStateF, mutableState, function2, 17), gapComposerH), gapComposer, 805309488, 436);
            function4 = function5;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function4 = function3;
        }
        Modifier modifier2 = modifierE;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uj(modifier2, snackbarHostState, thankYouViewState, function1, function4, i2, i3);
        }
    }
}
