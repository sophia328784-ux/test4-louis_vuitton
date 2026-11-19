package com.vuitton.android.presentation.screen.cart.components.sections;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.FormattedTaxDetailsUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.utils.SemanticUtils;
import defpackage.a;
import defpackage.be0;
import defpackage.cj;
import defpackage.i1;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import defpackage.w20;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartOrderDetailKt {
    /* JADX WARN: Code duplicated, block: B:101:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:102:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:107:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:116:0x0417  */
    /* JADX WARN: Code duplicated, block: B:117:0x041a  */
    /* JADX WARN: Code duplicated, block: B:120:0x0453  */
    /* JADX WARN: Code duplicated, block: B:122:0x0498  */
    /* JADX WARN: Code duplicated, block: B:124:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:126:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:89:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:92:0x0305  */
    /* JADX WARN: Code duplicated, block: B:94:0x030c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0314  */
    /* JADX WARN: Code duplicated, block: B:99:0x03b9  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(final NativeCartViewState nativeCartViewState, Composer composer, int i2) {
        final NativeCartViewState nativeCartViewState2;
        boolean z;
        boolean z2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function0 function0;
        CartUiModel cartUiModel;
        String str;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function1;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function5;
        Function2 function6;
        Function2 function7;
        Function2 function8;
        Function2 function9;
        GapComposer gapComposer;
        Function0 function10;
        Function1 function11;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        boolean zY;
        Object objX2;
        CartUiModel cartUiModel2;
        String str2;
        CartPriceInformationUiModel cartPriceInformationUiModel;
        CartPriceUiModel cartPriceUiModel;
        CartPriceUiModel cartPriceUiModel2;
        CartPriceInformationUiModel cartPriceInformationUiModel2;
        CartPriceInformationUiModel cartPriceInformationUiModel3;
        CartPriceUiModel cartPriceUiModel3;
        CartPriceInformationUiModel cartPriceInformationUiModel4;
        CartPriceUiModel cartPriceUiModel4;
        nativeCartViewState.getClass();
        GapComposer gapComposerH = composer.h(-231353070);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(nativeCartViewState) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(tr.d("NativeCartOrderDetail", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).g);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(spacedAlignedF, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function12 = ComposeUiNode.Companion.f9641b;
            String str3 = null;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function12);
            } else {
                gapComposerH.o();
            }
            Function2 function13 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA2, function13);
            Function2 function14 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function14);
            Integer numValueOf = Integer.valueOf(iHashCode3);
            Function2 function15 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function15);
            Function1 function16 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function16);
            Function2 function17 = ComposeUiNode.Companion.d;
            Modifier modifierF = n00.f(gapComposerH, modifierC3, function17, "NativeCartOrderDetail", "cart_subTotal_view");
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeCartOrderDetail");
            boolean zY2 = gapComposerH.y(context) | gapComposerH.y(nativeCartViewState);
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (zY2 || objX3 == composer$Companion$Empty$3) {
                z = false;
                final Object[] objArr = 0 == true ? 1 : 0;
                objX3 = new Function1() { // from class: kf0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        CartPriceInformationUiModel cartPriceInformationUiModel5;
                        CartPriceUiModel cartPriceUiModel5;
                        CartPriceInformationUiModel cartPriceInformationUiModel6;
                        CartPriceUiModel cartPriceUiModel6;
                        CartPriceUiModel cartPriceUiModel7;
                        CartPriceInformationUiModel cartPriceInformationUiModel7;
                        CartPriceUiModel cartPriceUiModel8;
                        int i4 = objArr;
                        String str4 = null;
                        NativeCartViewState nativeCartViewState3 = nativeCartViewState;
                        Context context2 = context;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        switch (i4) {
                            case 0:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel3 = nativeCartViewState3.f55204a;
                                if (cartUiModel3 != null && (cartPriceInformationUiModel5 = cartUiModel3.d) != null && (cartPriceUiModel5 = cartPriceInformationUiModel5.f55153a) != null) {
                                    str4 = cartPriceUiModel5.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str4 != null ? str4 : ""));
                                break;
                            case 1:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel4 = nativeCartViewState3.f55204a;
                                if (cartUiModel4 != null && (cartPriceInformationUiModel6 = cartUiModel4.d) != null && (cartPriceUiModel6 = cartPriceInformationUiModel6.f55155c) != null) {
                                    str4 = cartPriceUiModel6.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str4 != null ? str4 : ""));
                                break;
                            case 2:
                                semanticsPropertyReceiver.getClass();
                                CartPriceInformationUiModel cartPriceInformationUiModel8 = nativeCartViewState3.f55204a.d;
                                if (cartPriceInformationUiModel8 != null && (cartPriceUiModel7 = cartPriceInformationUiModel8.f55154b) != null) {
                                    str4 = cartPriceUiModel7.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str4 != null ? str4 : ""));
                                break;
                            default:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel5 = nativeCartViewState3.f55204a;
                                if (cartUiModel5 != null && (cartPriceInformationUiModel7 = cartUiModel5.d) != null && (cartPriceUiModel8 = cartPriceInformationUiModel7.f55156e) != null) {
                                    str4 = cartPriceUiModel8.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str4 != null ? str4 : ""));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            } else {
                z = false;
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, z, (Function1) objX3);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.pf_sub_total);
            CartUiModel cartUiModel3 = nativeCartViewState.f55204a;
            String str4 = (cartUiModel3 == null || (cartPriceInformationUiModel4 = cartUiModel3.d) == null || (cartPriceUiModel4 = cartPriceInformationUiModel4.f55153a) == null) ? null : cartPriceUiModel4.f55159b;
            if (str4 == null) {
                str4 = "";
            }
            Function2 function18 = function14;
            b(modifierF, modifierB, strC, str4, gapComposerH, 0, 0);
            Modifier modifierG = n00.g("NativeCartOrderDetail", "cart_shipping_view");
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("NativeCartOrderDetail");
            boolean zY3 = gapComposerH.y(context) | gapComposerH.y(nativeCartViewState);
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$3) {
                final int i4 = 1;
                objX4 = new Function1() { // from class: kf0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        CartPriceInformationUiModel cartPriceInformationUiModel5;
                        CartPriceUiModel cartPriceUiModel5;
                        CartPriceInformationUiModel cartPriceInformationUiModel6;
                        CartPriceUiModel cartPriceUiModel6;
                        CartPriceUiModel cartPriceUiModel7;
                        CartPriceInformationUiModel cartPriceInformationUiModel7;
                        CartPriceUiModel cartPriceUiModel8;
                        int i5 = i4;
                        String str5 = null;
                        NativeCartViewState nativeCartViewState3 = nativeCartViewState;
                        Context context2 = context;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        switch (i5) {
                            case 0:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel4 = nativeCartViewState3.f55204a;
                                if (cartUiModel4 != null && (cartPriceInformationUiModel5 = cartUiModel4.d) != null && (cartPriceUiModel5 = cartPriceInformationUiModel5.f55153a) != null) {
                                    str5 = cartPriceUiModel5.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str5 != null ? str5 : ""));
                                break;
                            case 1:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel5 = nativeCartViewState3.f55204a;
                                if (cartUiModel5 != null && (cartPriceInformationUiModel6 = cartUiModel5.d) != null && (cartPriceUiModel6 = cartPriceInformationUiModel6.f55155c) != null) {
                                    str5 = cartPriceUiModel6.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str5 != null ? str5 : ""));
                                break;
                            case 2:
                                semanticsPropertyReceiver.getClass();
                                CartPriceInformationUiModel cartPriceInformationUiModel8 = nativeCartViewState3.f55204a.d;
                                if (cartPriceInformationUiModel8 != null && (cartPriceUiModel7 = cartPriceInformationUiModel8.f55154b) != null) {
                                    str5 = cartPriceUiModel7.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str5 != null ? str5 : ""));
                                break;
                            default:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel6 = nativeCartViewState3.f55204a;
                                if (cartUiModel6 != null && (cartPriceInformationUiModel7 = cartUiModel6.d) != null && (cartPriceUiModel8 = cartPriceInformationUiModel7.f55156e) != null) {
                                    str5 = cartPriceUiModel8.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str5 != null ? str5 : ""));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX4);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX4);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.pf_shipping);
            String str5 = (cartUiModel3 == null || (cartPriceInformationUiModel3 = cartUiModel3.d) == null || (cartPriceUiModel3 = cartPriceInformationUiModel3.f55155c) == null) ? null : cartPriceUiModel3.f55159b;
            if (str5 == null) {
                str5 = "";
            }
            b(modifierG, modifierB2, strC2, str5, gapComposerH, 0, 0);
            FormattedTaxDetailsUiModel formattedTaxDetailsUiModel = (cartUiModel3 == null || (cartPriceInformationUiModel2 = cartUiModel3.d) == null) ? null : cartPriceInformationUiModel2.f55157f;
            if (formattedTaxDetailsUiModel == null) {
                gapComposerH.L(30588815);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(30588816);
                c(formattedTaxDetailsUiModel, gapComposerH, 0);
                gapComposerH.Z(false);
            }
            if (cartUiModel3 != null) {
                if (cartUiModel3.f55185f) {
                    gapComposerH.L(30713436);
                    Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("NativeCartOrderDetail");
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(spacedAlignedF2, horizontal, gapComposerH, 0);
                    int iHashCode4 = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                    Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
                    if (applier == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function12);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA3, function13);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU4, function18);
                    cj.t(iHashCode4, gapComposerH, function15, gapComposerH, function16);
                    Modifier modifierF2 = n00.f(gapComposerH, modifierC4, function17, "NativeCartOrderDetail", "cart_tax_view");
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("NativeCartOrderDetail");
                    boolean zY4 = gapComposerH.y(context) | gapComposerH.y(nativeCartViewState);
                    Object objX5 = gapComposerH.x();
                    if (zY4 || objX5 == composer$Companion$Empty$3) {
                        final int i5 = 2;
                        objX5 = new Function1() { // from class: kf0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                CartPriceInformationUiModel cartPriceInformationUiModel5;
                                CartPriceUiModel cartPriceUiModel5;
                                CartPriceInformationUiModel cartPriceInformationUiModel6;
                                CartPriceUiModel cartPriceUiModel6;
                                CartPriceUiModel cartPriceUiModel7;
                                CartPriceInformationUiModel cartPriceInformationUiModel7;
                                CartPriceUiModel cartPriceUiModel8;
                                int i6 = i5;
                                String str6 = null;
                                NativeCartViewState nativeCartViewState3 = nativeCartViewState;
                                Context context2 = context;
                                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                                switch (i6) {
                                    case 0:
                                        semanticsPropertyReceiver.getClass();
                                        CartUiModel cartUiModel4 = nativeCartViewState3.f55204a;
                                        if (cartUiModel4 != null && (cartPriceInformationUiModel5 = cartUiModel4.d) != null && (cartPriceUiModel5 = cartPriceInformationUiModel5.f55153a) != null) {
                                            str6 = cartPriceUiModel5.f55159b;
                                        }
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str6 != null ? str6 : ""));
                                        break;
                                    case 1:
                                        semanticsPropertyReceiver.getClass();
                                        CartUiModel cartUiModel5 = nativeCartViewState3.f55204a;
                                        if (cartUiModel5 != null && (cartPriceInformationUiModel6 = cartUiModel5.d) != null && (cartPriceUiModel6 = cartPriceInformationUiModel6.f55155c) != null) {
                                            str6 = cartPriceUiModel6.f55159b;
                                        }
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str6 != null ? str6 : ""));
                                        break;
                                    case 2:
                                        semanticsPropertyReceiver.getClass();
                                        CartPriceInformationUiModel cartPriceInformationUiModel8 = nativeCartViewState3.f55204a.d;
                                        if (cartPriceInformationUiModel8 != null && (cartPriceUiModel7 = cartPriceInformationUiModel8.f55154b) != null) {
                                            str6 = cartPriceUiModel7.f55159b;
                                        }
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str6 != null ? str6 : ""));
                                        break;
                                    default:
                                        semanticsPropertyReceiver.getClass();
                                        CartUiModel cartUiModel6 = nativeCartViewState3.f55204a;
                                        if (cartUiModel6 != null && (cartPriceInformationUiModel7 = cartUiModel6.d) != null && (cartPriceUiModel8 = cartPriceInformationUiModel7.f55156e) != null) {
                                            str6 = cartPriceUiModel8.f55159b;
                                        }
                                        SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str6 != null ? str6 : ""));
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX5);
                    }
                    Modifier modifierB3 = SemanticsModifierKt.b(dTFunctionNameModifier4, false, (Function1) objX5);
                    String strC3 = StringResources_androidKt.c(gapComposerH, R.string.pf_taxes_detail);
                    CartPriceInformationUiModel cartPriceInformationUiModel5 = cartUiModel3.d;
                    String str6 = (cartPriceInformationUiModel5 == null || (cartPriceUiModel2 = cartPriceInformationUiModel5.f55154b) == null) ? null : cartPriceUiModel2.f55159b;
                    if (str6 == null) {
                        str6 = "";
                    }
                    function1 = function16;
                    b(modifierF2, modifierB3, strC3, str6, gapComposerH, 0, 0);
                    function0 = function12;
                    function4 = function15;
                    str = "NativeCartOrderDetail";
                    function3 = function17;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    cartUiModel = cartUiModel3;
                    function2 = function13;
                    function18 = function18;
                    z2 = true;
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.pf_taxes_description), n00.g("NativeCartOrderDetail", "cart_taxCalculation_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.n, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).n, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                } else {
                    z2 = true;
                }
                Modifier modifierD = tr.d(str, 1.0f);
                objX = gapComposerH.x();
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                if (objX == composer$Companion$Empty$2) {
                    objX = new be0(12);
                    gapComposerH.q(objX);
                }
                Modifier modifierB4 = SemanticsModifierKt.b(modifierD, z2, (Function1) objX);
                rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, gapComposerH, 6);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
                if (applier != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    function5 = function0;
                    gapComposerH.C(function5);
                } else {
                    function5 = function0;
                    gapComposerH.o();
                }
                function6 = function2;
                Updater.c(gapComposerH, rowMeasurePolicyA, function6);
                function7 = function18;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                function8 = function4;
                cj.t(iHashCode, gapComposerH, function8, gapComposerH, function1);
                function9 = function3;
                gapComposer = gapComposerH;
                function10 = function5;
                function11 = function1;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_total), n00.f(gapComposerH, modifierC, function9, str, "cart_total_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposer, 0, 0, 131064);
                BiasAlignment.Horizontal horizontal2 = Alignment.Companion.p;
                Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48414b);
                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier(str);
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF3, horizontal2, gapComposer, 48);
                iHashCode2 = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU2 = gapComposer.U();
                modifierC2 = ComposedModifierKt.c(gapComposer, dTFunctionNameModifier5);
                if (applier != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function10);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, columnMeasurePolicyA, function6);
                Updater.c(gapComposer, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposer, function8, gapComposer, function11);
                Modifier modifierF3 = n00.f(gapComposer, modifierC2, function9, str, "cart_totalAmount_text");
                nativeCartViewState2 = nativeCartViewState;
                zY = gapComposer.y(context) | gapComposer.y(nativeCartViewState2);
                objX2 = gapComposer.x();
                if (zY || objX2 == composer$Companion$Empty$2) {
                    final int i6 = 3;
                    objX2 = new Function1() { // from class: kf0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            CartPriceInformationUiModel cartPriceInformationUiModel6;
                            CartPriceUiModel cartPriceUiModel5;
                            CartPriceInformationUiModel cartPriceInformationUiModel7;
                            CartPriceUiModel cartPriceUiModel6;
                            CartPriceUiModel cartPriceUiModel7;
                            CartPriceInformationUiModel cartPriceInformationUiModel8;
                            CartPriceUiModel cartPriceUiModel8;
                            int i7 = i6;
                            String str7 = null;
                            NativeCartViewState nativeCartViewState3 = nativeCartViewState2;
                            Context context2 = context;
                            SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                            switch (i7) {
                                case 0:
                                    semanticsPropertyReceiver.getClass();
                                    CartUiModel cartUiModel4 = nativeCartViewState3.f55204a;
                                    if (cartUiModel4 != null && (cartPriceInformationUiModel6 = cartUiModel4.d) != null && (cartPriceUiModel5 = cartPriceInformationUiModel6.f55153a) != null) {
                                        str7 = cartPriceUiModel5.f55159b;
                                    }
                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                    break;
                                case 1:
                                    semanticsPropertyReceiver.getClass();
                                    CartUiModel cartUiModel5 = nativeCartViewState3.f55204a;
                                    if (cartUiModel5 != null && (cartPriceInformationUiModel7 = cartUiModel5.d) != null && (cartPriceUiModel6 = cartPriceInformationUiModel7.f55155c) != null) {
                                        str7 = cartPriceUiModel6.f55159b;
                                    }
                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                    break;
                                case 2:
                                    semanticsPropertyReceiver.getClass();
                                    CartPriceInformationUiModel cartPriceInformationUiModel9 = nativeCartViewState3.f55204a.d;
                                    if (cartPriceInformationUiModel9 != null && (cartPriceUiModel7 = cartPriceInformationUiModel9.f55154b) != null) {
                                        str7 = cartPriceUiModel7.f55159b;
                                    }
                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                    break;
                                default:
                                    semanticsPropertyReceiver.getClass();
                                    CartUiModel cartUiModel6 = nativeCartViewState3.f55204a;
                                    if (cartUiModel6 != null && (cartPriceInformationUiModel8 = cartUiModel6.d) != null && (cartPriceUiModel8 = cartPriceInformationUiModel8.f55156e) != null) {
                                        str7 = cartPriceUiModel8.f55159b;
                                    }
                                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer.q(objX2);
                }
                Modifier modifierB5 = SemanticsModifierKt.b(modifierF3, false, (Function1) objX2);
                cartUiModel2 = cartUiModel;
                if (cartUiModel2 != null && (cartPriceInformationUiModel = cartUiModel2.d) != null && (cartPriceUiModel = cartPriceInformationUiModel.f55156e) != null) {
                    str3 = cartPriceUiModel.f55159b;
                }
                if (str3 == null) {
                    str2 = "";
                } else {
                    str2 = str3;
                }
                TextKt.c(str2, modifierB5, LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48428i, gapComposer, 0, 0, 131064);
                gapComposerH = gapComposer;
                if (nativeCartViewState2.f55210i.f55201a) {
                    gapComposerH.L(429616083);
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_vat_included), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(429892448);
                    gapComposerH.Z(false);
                }
                pq0.x(gapComposerH, true, true, true);
            } else {
                z2 = true;
            }
            composer$Companion$Empty$1 = composer$Companion$Empty$3;
            function0 = function12;
            cartUiModel = cartUiModel3;
            str = "NativeCartOrderDetail";
            function2 = function13;
            function3 = function17;
            function4 = function15;
            function1 = function16;
            gapComposerH.L(31787834);
            gapComposerH.Z(false);
            Modifier modifierD2 = tr.d(str, 1.0f);
            objX = gapComposerH.x();
            composer$Companion$Empty$2 = composer$Companion$Empty$1;
            if (objX == composer$Companion$Empty$2) {
                objX = new be0(12);
                gapComposerH.q(objX);
            }
            Modifier modifierB6 = SemanticsModifierKt.b(modifierD2, z2, (Function1) objX);
            rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.f8591k, gapComposerH, 6);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB6);
            if (applier != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function5 = function0;
                gapComposerH.C(function5);
            } else {
                function5 = function0;
                gapComposerH.o();
            }
            function6 = function2;
            Updater.c(gapComposerH, rowMeasurePolicyA, function6);
            function7 = function18;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            function8 = function4;
            cj.t(iHashCode, gapComposerH, function8, gapComposerH, function1);
            function9 = function3;
            gapComposer = gapComposerH;
            function10 = function5;
            function11 = function1;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_total), n00.f(gapComposerH, modifierC, function9, str, "cart_total_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposer, 0, 0, 131064);
            BiasAlignment.Horizontal horizontal3 = Alignment.Companion.p;
            Arrangement.SpacedAligned spacedAlignedF4 = Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48414b);
            DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier(str);
            columnMeasurePolicyA = ColumnKt.a(spacedAlignedF4, horizontal3, gapComposer, 48);
            iHashCode2 = Long.hashCode(gapComposer.T);
            persistentCompositionLocalMapU2 = gapComposer.U();
            modifierC2 = ComposedModifierKt.c(gapComposer, dTFunctionNameModifier6);
            if (applier != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function10);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, columnMeasurePolicyA, function6);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposer, function8, gapComposer, function11);
            Modifier modifierF4 = n00.f(gapComposer, modifierC2, function9, str, "cart_totalAmount_text");
            nativeCartViewState2 = nativeCartViewState;
            zY = gapComposer.y(context) | gapComposer.y(nativeCartViewState2);
            objX2 = gapComposer.x();
            if (zY) {
                final int i7 = 3;
                objX2 = new Function1() { // from class: kf0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        CartPriceInformationUiModel cartPriceInformationUiModel6;
                        CartPriceUiModel cartPriceUiModel5;
                        CartPriceInformationUiModel cartPriceInformationUiModel7;
                        CartPriceUiModel cartPriceUiModel6;
                        CartPriceUiModel cartPriceUiModel7;
                        CartPriceInformationUiModel cartPriceInformationUiModel8;
                        CartPriceUiModel cartPriceUiModel8;
                        int i8 = i7;
                        String str7 = null;
                        NativeCartViewState nativeCartViewState3 = nativeCartViewState2;
                        Context context2 = context;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        switch (i8) {
                            case 0:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel4 = nativeCartViewState3.f55204a;
                                if (cartUiModel4 != null && (cartPriceInformationUiModel6 = cartUiModel4.d) != null && (cartPriceUiModel5 = cartPriceInformationUiModel6.f55153a) != null) {
                                    str7 = cartPriceUiModel5.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                            case 1:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel5 = nativeCartViewState3.f55204a;
                                if (cartUiModel5 != null && (cartPriceInformationUiModel7 = cartUiModel5.d) != null && (cartPriceUiModel6 = cartPriceInformationUiModel7.f55155c) != null) {
                                    str7 = cartPriceUiModel6.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                            case 2:
                                semanticsPropertyReceiver.getClass();
                                CartPriceInformationUiModel cartPriceInformationUiModel9 = nativeCartViewState3.f55204a.d;
                                if (cartPriceInformationUiModel9 != null && (cartPriceUiModel7 = cartPriceInformationUiModel9.f55154b) != null) {
                                    str7 = cartPriceUiModel7.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                            default:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel6 = nativeCartViewState3.f55204a;
                                if (cartUiModel6 != null && (cartPriceInformationUiModel8 = cartUiModel6.d) != null && (cartPriceUiModel8 = cartPriceInformationUiModel8.f55156e) != null) {
                                    str7 = cartPriceUiModel8.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer.q(objX2);
            } else {
                final int i8 = 3;
                objX2 = new Function1() { // from class: kf0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        CartPriceInformationUiModel cartPriceInformationUiModel6;
                        CartPriceUiModel cartPriceUiModel5;
                        CartPriceInformationUiModel cartPriceInformationUiModel7;
                        CartPriceUiModel cartPriceUiModel6;
                        CartPriceUiModel cartPriceUiModel7;
                        CartPriceInformationUiModel cartPriceInformationUiModel8;
                        CartPriceUiModel cartPriceUiModel8;
                        int i9 = i8;
                        String str7 = null;
                        NativeCartViewState nativeCartViewState3 = nativeCartViewState2;
                        Context context2 = context;
                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                        switch (i9) {
                            case 0:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel4 = nativeCartViewState3.f55204a;
                                if (cartUiModel4 != null && (cartPriceInformationUiModel6 = cartUiModel4.d) != null && (cartPriceUiModel5 = cartPriceInformationUiModel6.f55153a) != null) {
                                    str7 = cartPriceUiModel5.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                            case 1:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel5 = nativeCartViewState3.f55204a;
                                if (cartUiModel5 != null && (cartPriceInformationUiModel7 = cartUiModel5.d) != null && (cartPriceUiModel6 = cartPriceInformationUiModel7.f55155c) != null) {
                                    str7 = cartPriceUiModel6.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                            case 2:
                                semanticsPropertyReceiver.getClass();
                                CartPriceInformationUiModel cartPriceInformationUiModel9 = nativeCartViewState3.f55204a.d;
                                if (cartPriceInformationUiModel9 != null && (cartPriceUiModel7 = cartPriceInformationUiModel9.f55154b) != null) {
                                    str7 = cartPriceUiModel7.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                            default:
                                semanticsPropertyReceiver.getClass();
                                CartUiModel cartUiModel6 = nativeCartViewState3.f55204a;
                                if (cartUiModel6 != null && (cartPriceInformationUiModel8 = cartUiModel6.d) != null && (cartPriceUiModel8 = cartPriceInformationUiModel8.f55156e) != null) {
                                    str7 = cartPriceUiModel8.f55159b;
                                }
                                SemanticsPropertiesKt.i(semanticsPropertyReceiver, SemanticUtils.a(context2, str7 != null ? str7 : ""));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer.q(objX2);
            }
            Modifier modifierB7 = SemanticsModifierKt.b(modifierF4, false, (Function1) objX2);
            cartUiModel2 = cartUiModel;
            if (cartUiModel2 != null) {
                str3 = cartPriceUiModel.f55159b;
            }
            if (str3 == null) {
                str2 = "";
            } else {
                str2 = str3;
            }
            TextKt.c(str2, modifierB7, LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48428i, gapComposer, 0, 0, 131064);
            gapComposerH = gapComposer;
            if (nativeCartViewState2.f55210i.f55201a) {
                gapComposerH.L(429616083);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.global_vat_included), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(429892448);
                gapComposerH.Z(false);
            }
            pq0.x(gapComposerH, true, true, true);
        } else {
            nativeCartViewState2 = nativeCartViewState;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w20(nativeCartViewState2, i2, 16);
        }
    }

    public static final void b(Modifier modifier, Modifier modifier2, String str, String str2, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier3;
        int i5;
        GapComposer gapComposer;
        Modifier modifier4;
        Modifier modifier5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "PriceItem");
        }
        GapComposer gapComposerH = composer.h(-904770339);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i7 = i3 & 2;
        if (i7 != 0) {
            i5 = i4 | 48;
            modifier3 = modifier2;
        } else {
            modifier3 = modifier2;
            i5 = i4 | (gapComposerH.K(modifier3) ? 32 : 16);
        }
        int i8 = i5 | (gapComposerH.K(str) ? 256 : 128) | (gapComposerH.K(str2) ? 2048 : 1024);
        if (gapComposerH.p(i8 & 1, (i8 & 1171) != 1170)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PriceItem");
            }
            Modifier dTFunctionNameModifier2 = i7 != 0 ? new DTFunctionNameModifier("PriceItem") : modifier3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new be0(13);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierD, true, (Function1) objX);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, (i8 >> 6) & 14, 0, 131066);
            int i9 = ((i8 >> 9) & 14) | (i8 & 112);
            Modifier modifier6 = dTFunctionNameModifier2;
            TextKt.c(str2, modifier6, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, i9, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            modifier4 = dTFunctionNameModifier;
            modifier5 = modifier6;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier4 = dTFunctionNameModifier;
            modifier5 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(modifier4, modifier5, str, str2, i2, i3);
        }
    }

    public static final void c(FormattedTaxDetailsUiModel formattedTaxDetailsUiModel, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(139907312);
        int i3 = (gapComposerH.K(formattedTaxDetailsUiModel) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = formattedTaxDetailsUiModel.f55198a;
            if (str == null || !(!StringsKt.w(str))) {
                gapComposerH.L(1860715570);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1860579108);
                b(null, null, StringResources_androidKt.c(gapComposerH, R.string.pf_gst), formattedTaxDetailsUiModel.f55198a, gapComposerH, 0, 3);
                gapComposerH.Z(false);
            }
            String str2 = formattedTaxDetailsUiModel.f55200c;
            if (str2 == null || !(!StringsKt.w(str2))) {
                gapComposerH.L(1860912978);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1860776516);
                b(null, null, StringResources_androidKt.c(gapComposerH, R.string.pf_hst), formattedTaxDetailsUiModel.f55200c, gapComposerH, 0, 3);
                gapComposerH.Z(false);
            }
            String str3 = formattedTaxDetailsUiModel.d;
            if (str3 == null || !(!StringsKt.w(str3))) {
                gapComposerH.L(1861110386);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1860973924);
                b(null, null, StringResources_androidKt.c(gapComposerH, R.string.pf_pst), formattedTaxDetailsUiModel.d, gapComposerH, 0, 3);
                gapComposerH.Z(false);
            }
            String str4 = formattedTaxDetailsUiModel.f55199b;
            if (str4 == null || !(!StringsKt.w(str4))) {
                gapComposerH.L(1861307794);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1861171332);
                b(null, null, StringResources_androidKt.c(gapComposerH, R.string.pf_qst), formattedTaxDetailsUiModel.f55199b, gapComposerH, 0, 3);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w20(formattedTaxDetailsUiModel, i2, 17);
        }
    }
}
