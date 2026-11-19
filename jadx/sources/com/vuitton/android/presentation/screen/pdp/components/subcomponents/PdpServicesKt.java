package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.HighlightUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import defpackage.a90;
import defpackage.cj;
import defpackage.d21;
import defpackage.jm0;
import defpackage.n00;
import defpackage.o60;
import defpackage.tt;
import defpackage.wm0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpServicesKt {
    public static final void a(Modifier modifier, boolean z, ReinsuranceUiModel reinsuranceUiModel, ImmutableList immutableList, List list, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function2 function4, Composer composer, int i2) {
        boolean z2;
        Iterator it;
        boolean z3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpProductServices");
        }
        Modifier modifier2 = modifierE;
        immutableList.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(928692296);
        Function0 function5 = function0;
        Function0 function6 = function1;
        Function0 function7 = function2;
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(reinsuranceUiModel) ? 256 : 128) | (gapComposerH.K(immutableList) ? 2048 : 1024) | (gapComposerH.y(list) ? 16384 : 8192) | (gapComposerH.y(function5) ? 131072 : 65536) | (gapComposerH.y(function6) ? 1048576 : 524288) | (gapComposerH.y(function7) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z4 = (reinsuranceUiModel == null || z) ? false : true;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-185000209);
            Iterator it2 = new ArrayList(immutableList).iterator();
            int i4 = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ProductServiceType productServiceType = (ProductServiceType) next;
                if (Intrinsics.c(productServiceType, ProductServiceType.AR.f61472a)) {
                    gapComposerH.L(306144193);
                    GapComposer gapComposer = gapComposerH;
                    it = it2;
                    Function0 function9 = function5;
                    z3 = false;
                    b(StringResources_androidKt.c(gapComposerH, R.string.product_details_ar_card_title), R.drawable.ic_product_ar_preview, StringResources_androidKt.c(gapComposerH, R.string.product_details_ar_card_subtitle), null, null, function9, gapComposer, i3 & ImageMetadata.JPEG_GPS_COORDINATES, 24);
                    gapComposerH = gapComposer;
                    gapComposerH.Z(false);
                } else {
                    it = it2;
                    z3 = false;
                    if (Intrinsics.c(productServiceType, ProductServiceType.ConnectedObject.f61473a)) {
                        gapComposerH.L(306600699);
                        GapComposer gapComposer2 = gapComposerH;
                        b(StringResources_androidKt.c(gapComposerH, R.string.lvconnect_discover_title), 2131231336, StringResources_androidKt.c(gapComposerH, R.string.lvconnect_discover_description), null, null, function7, gapComposer2, (i3 >> 6) & ImageMetadata.JPEG_GPS_COORDINATES, 24);
                        gapComposerH = gapComposer2;
                        gapComposerH.Z(false);
                    } else {
                        if (!Intrinsics.c(productServiceType, ProductServiceType.TrunkSpeaker.f61474a)) {
                            throw d21.u(gapComposerH, 2088083832, false);
                        }
                        gapComposerH.L(307058972);
                        GapComposer gapComposer3 = gapComposerH;
                        b(StringResources_androidKt.c(gapComposerH, R.string.speaker_trunk_product_detail_page_cta_message), 2131231612, null, null, null, function6, gapComposer3, ((i3 >> 3) & ImageMetadata.JPEG_GPS_COORDINATES) | KyberEngine.KyberPolyBytes, 24);
                        gapComposerH = gapComposer3;
                        gapComposerH.Z(false);
                    }
                }
                if (i4 < immutableList.size() - 1 || list != null) {
                    gapComposerH.L(307483486);
                    DividerKt.a(null, LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 1);
                    gapComposerH.Z(z3);
                } else {
                    gapComposerH.L(307682413);
                    gapComposerH.Z(z3);
                }
                it2 = it;
                function5 = function0;
                function6 = function1;
                function7 = function2;
                i4 = i5;
            }
            int i6 = PKIFailureInfo.duplicateCertReq;
            boolean z5 = false;
            gapComposerH.Z(false);
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (list == null) {
                gapComposerH.L(-1438347078);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1438347077);
                gapComposerH.L(-184944984);
                int i7 = 0;
                for (Object obj : list) {
                    int i8 = i7 + 1;
                    if (i7 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    HighlightUiModel highlightUiModel = (HighlightUiModel) obj;
                    String str = highlightUiModel.f61694c;
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                    String str2 = highlightUiModel.d;
                    String str3 = highlightUiModel.f61695e.f51778b;
                    boolean zY = ((i3 & 1879048192) == i6) | gapComposerH.y(highlightUiModel);
                    Object objX = gapComposerH.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new jm0(function4, highlightUiModel, 5);
                        gapComposerH.q(objX);
                    }
                    GapComposer gapComposer4 = gapComposerH;
                    b(str, R.drawable.placeholder, str2, str3, textStyle, (Function0) objX, gapComposer4, 0, 0);
                    gapComposerH = gapComposer4;
                    if (i7 < immutableList.size() - 1 || z4) {
                        gapComposerH.L(1110718184);
                        DividerKt.a(null, LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 1);
                        z5 = false;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1110936331);
                        z5 = false;
                        gapComposerH.Z(false);
                    }
                    i7 = i8;
                    i6 = PKIFailureInfo.duplicateCertReq;
                }
                gapComposerH.Z(z5);
                gapComposerH.Z(z5);
            }
            if (z4) {
                gapComposerH.L(-1437525608);
                String string = StringsKt.a0(reinsuranceUiModel.f63437b).toString();
                String str4 = reinsuranceUiModel.f63438c;
                String string2 = str4 != null ? StringsKt.a0(str4).toString() : null;
                if (string2 == null) {
                    string2 = "";
                }
                String str5 = string2;
                boolean zY2 = gapComposerH.y(reinsuranceUiModel) | ((i3 & 234881024) == 67108864);
                Object objX2 = gapComposerH.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    z2 = false;
                    objX2 = new wm0(function3, reinsuranceUiModel, 0);
                    gapComposerH.q(objX2);
                } else {
                    z2 = false;
                }
                GapComposer gapComposer5 = gapComposerH;
                b(string, 2131231578, str5, null, null, (Function0) objX2, gapComposer5, 0, 24);
                gapComposerH = gapComposer5;
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(-1437206556);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a90(modifier2, z, reinsuranceUiModel, immutableList, list, function0, function1, function2, function3, function4, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0355  */
    /* JADX WARN: Code duplicated, block: B:102:0x035a  */
    /* JADX WARN: Code duplicated, block: B:104:0x035f  */
    /* JADX WARN: Code duplicated, block: B:107:0x036a  */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0088  */
    /* JADX WARN: Code duplicated, block: B:51:0x008b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x009b  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00be A[PHI: r5 r7
      0x00be: PHI (r5v34 int) = (r5v7 int), (r5v7 int), (r5v36 int) binds: [B:71:0x00c9, B:65:0x00bb, B:66:0x00bd] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r7v21 java.lang.String) = (r7v4 java.lang.String), (r7v2 java.lang.String), (r7v2 java.lang.String) binds: [B:71:0x00c9, B:65:0x00bb, B:66:0x00bd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x012a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0131  */
    /* JADX WARN: Code duplicated, block: B:78:0x0135  */
    /* JADX WARN: Code duplicated, block: B:81:0x015c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0162  */
    /* JADX WARN: Code duplicated, block: B:84:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:86:0x01db  */
    /* JADX WARN: Code duplicated, block: B:90:0x025c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0263  */
    /* JADX WARN: Code duplicated, block: B:94:0x0269  */
    /* JADX WARN: Code duplicated, block: B:97:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:98:0x02c9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public static final void b(String str, int i2, String str2, String str3, TextStyle textStyle, Function0 function0, Composer composer, int i3, int i4) {
        int i5;
        String str4;
        TextStyle textStyle2;
        boolean z;
        String str5;
        TextStyle textStyle3;
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i6;
        TextStyle textStyle4;
        String str6;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        boolean z2;
        String str7;
        Function2 function7;
        Function1 function8;
        Function0 function9;
        GapComposer gapComposer2;
        ?? r1;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        GapComposer gapComposer3;
        GapComposer gapComposer4;
        int i7;
        GapComposer gapComposerH = composer.h(1253681994);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(str) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(str2) ? 256 : 128;
        }
        int i8 = i4 & 8;
        if (i8 == 0) {
            if ((i3 & 3072) == 0) {
                str4 = str3;
                i5 |= gapComposerH.K(str4) ? 2048 : 1024;
            }
            if ((i3 & 24576) == 0) {
                if ((i4 & 16) == 0) {
                    textStyle2 = textStyle;
                    int i9 = gapComposerH.K(textStyle2) ? 16384 : 8192;
                    i5 |= i9;
                } else {
                    textStyle2 = textStyle;
                }
                i5 |= i9;
            } else {
                textStyle2 = textStyle;
            }
            if ((196608 & i3) == 0) {
                if (gapComposerH.y(function0)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i5 |= i7;
            }
            if ((74899 & i5) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0 || gapComposerH.h0()) {
                    if (i8 != 0) {
                        str4 = null;
                    }
                    if ((i4 & 16) != 0) {
                        i6 = i5 & (-57345);
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                        str6 = str4;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(ClickableKt.d(new DTFunctionNameModifier("ProductServiceItem"), false, null, null, function0, 15), "pdp_productServiceContainer_button");
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), vertical, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
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
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function6);
                    if (str6 != null) {
                        if (StringExtKt.a(str6)) {
                            Modifier modifierA = ClipKt.a(SizeKt.o(n00.i(gapComposerH, -1674721726, "ProductServiceItem"), LVAppDesignKitTheme.d(gapComposerH).z), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                            ContentScale.f9447a.getClass();
                            applier = applier;
                            str7 = "ProductServiceItem";
                            function7 = function6;
                            r1 = 0;
                            function9 = function1;
                            function8 = function5;
                            ImageLoaderKt.b(PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), str6, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                            GapComposer gapComposer5 = gapComposerH;
                            gapComposer5.Z(false);
                            gapComposer2 = gapComposer5;
                        } else {
                            z2 = false;
                        }
                        Modifier modifierV = SizeKt.v(cj.b(str7, RowScopeInstance.f5040a, 1.0f, true), null, 3);
                        columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer2, 54);
                        iHashCode2 = Long.hashCode(gapComposer2.T);
                        persistentCompositionLocalMapU2 = gapComposer2.U();
                        modifierC2 = ComposedModifierKt.c(gapComposer2, modifierV);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer2.B();
                        if (gapComposer2.S) {
                            gapComposer2.C(function9);
                        } else {
                            gapComposer2.o();
                        }
                        Updater.c(gapComposer2, columnMeasurePolicyA, function2);
                        Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function8);
                        GapComposer gapComposer6 = gapComposer2;
                        TextKt.c(str, n00.f(gapComposer2, modifierC2, function7, str7, "pdp_productServiceContainerTitle_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer6, i6 & 14, (i6 << 9) & 29360128, 131064);
                        TextStyle textStyle5 = textStyle4;
                        gapComposer3 = gapComposer6;
                        if (str2 == null) {
                            gapComposer3.L(720400830);
                            gapComposer3.Z(r1);
                            gapComposer4 = gapComposer3;
                        } else {
                            SpacerKt.a(gapComposer3, SizeKt.f(n00.i(gapComposer3, 720400831, str7), LVAppDesignKitTheme.d(gapComposer3).f48386e));
                            TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier(str7), "pdp_productServiceContainerDescription_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                            GapComposer gapComposer7 = gapComposer3;
                            gapComposer7.Z(r1);
                            gapComposer4 = gapComposer7;
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r1), null, SizeKt.o(o60.f(gapComposer4, r27, str7), LVAppDesignKitTheme.d(gapComposer4).m), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, gapComposer4, 56, 0);
                        gapComposer4.Z(true);
                        textStyle3 = textStyle5;
                        str5 = str6;
                        gapComposer = gapComposer4;
                    } else {
                        z2 = false;
                    }
                    str7 = "ProductServiceItem";
                    function7 = function6;
                    function8 = function5;
                    function9 = function1;
                    Modifier modifierA2 = ClipKt.a(SizeKt.o(n00.i(gapComposerH, -1674237010, str7), LVAppDesignKitTheme.d(gapComposerH).z), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                    Painter painterA2 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, z2 ? 1 : 0);
                    ContentScale.f9447a.getClass();
                    ImageKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i6 >> 3) & 14), null, ModifierExtKt.e(PainterModifierKt.a(modifierA2, painterA2, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), "pdp_productServiceContainer_image"), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
                    GapComposer gapComposer8 = gapComposerH;
                    gapComposer8.Z(z2);
                    r1 = z2;
                    gapComposer2 = gapComposer8;
                    Modifier modifierV2 = SizeKt.v(cj.b(str7, RowScopeInstance.f5040a, 1.0f, true), null, 3);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer2, 54);
                    iHashCode2 = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU2 = gapComposer2.U();
                    modifierC2 = ComposedModifierKt.c(gapComposer2, modifierV2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function9);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, columnMeasurePolicyA, function2);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function8);
                    GapComposer gapComposer9 = gapComposer2;
                    TextKt.c(str, n00.f(gapComposer2, modifierC2, function7, str7, "pdp_productServiceContainerTitle_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer9, i6 & 14, (i6 << 9) & 29360128, 131064);
                    TextStyle textStyle6 = textStyle4;
                    gapComposer3 = gapComposer9;
                    if (str2 == null) {
                        gapComposer3.L(720400830);
                        gapComposer3.Z(r1);
                        gapComposer4 = gapComposer3;
                    } else {
                        SpacerKt.a(gapComposer3, SizeKt.f(n00.i(gapComposer3, 720400831, str7), LVAppDesignKitTheme.d(gapComposer3).f48386e));
                        TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier(str7), "pdp_productServiceContainerDescription_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                        GapComposer gapComposer10 = gapComposer3;
                        gapComposer10.Z(r1);
                        gapComposer4 = gapComposer10;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r1), null, SizeKt.o(o60.f(gapComposer4, r27, str7), LVAppDesignKitTheme.d(gapComposer4).m), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, gapComposer4, 56, 0);
                    gapComposer4.Z(true);
                    textStyle3 = textStyle6;
                    str5 = str6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    if ((i4 & 16) != 0) {
                        i5 &= -57345;
                    }
                }
                i6 = i5;
                str6 = str4;
                textStyle4 = textStyle2;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierE2 = ModifierExtKt.e(ClickableKt.d(new DTFunctionNameModifier("ProductServiceItem"), false, null, null, function0, 15), "pdp_productServiceContainer_button");
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), vertical2, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierE2);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
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
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                if (str6 != null) {
                    if (StringExtKt.a(str6)) {
                        Modifier modifierA3 = ClipKt.a(SizeKt.o(n00.i(gapComposerH, -1674721726, "ProductServiceItem"), LVAppDesignKitTheme.d(gapComposerH).z), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                        Painter painterA3 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                        ContentScale.f9447a.getClass();
                        applier = applier;
                        str7 = "ProductServiceItem";
                        function7 = function6;
                        r1 = 0;
                        function9 = function1;
                        function8 = function5;
                        ImageLoaderKt.b(PainterModifierKt.a(modifierA3, painterA3, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), str6, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer11 = gapComposerH;
                        gapComposer11.Z(false);
                        gapComposer2 = gapComposer11;
                    } else {
                        z2 = false;
                    }
                    Modifier modifierV3 = SizeKt.v(cj.b(str7, RowScopeInstance.f5040a, 1.0f, true), null, 3);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer2, 54);
                    iHashCode2 = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU2 = gapComposer2.U();
                    modifierC2 = ComposedModifierKt.c(gapComposer2, modifierV3);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function9);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, columnMeasurePolicyA, function2);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function8);
                    GapComposer gapComposer12 = gapComposer2;
                    TextKt.c(str, n00.f(gapComposer2, modifierC2, function7, str7, "pdp_productServiceContainerTitle_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer12, i6 & 14, (i6 << 9) & 29360128, 131064);
                    TextStyle textStyle7 = textStyle4;
                    gapComposer3 = gapComposer12;
                    if (str2 == null) {
                        gapComposer3.L(720400830);
                        gapComposer3.Z(r1);
                        gapComposer4 = gapComposer3;
                    } else {
                        SpacerKt.a(gapComposer3, SizeKt.f(n00.i(gapComposer3, 720400831, str7), LVAppDesignKitTheme.d(gapComposer3).f48386e));
                        TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier(str7), "pdp_productServiceContainerDescription_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                        GapComposer gapComposer13 = gapComposer3;
                        gapComposer13.Z(r1);
                        gapComposer4 = gapComposer13;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r1), null, SizeKt.o(o60.f(gapComposer4, r27, str7), LVAppDesignKitTheme.d(gapComposer4).m), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, gapComposer4, 56, 0);
                    gapComposer4.Z(true);
                    textStyle3 = textStyle7;
                    str5 = str6;
                    gapComposer = gapComposer4;
                } else {
                    z2 = false;
                }
                str7 = "ProductServiceItem";
                function7 = function6;
                function8 = function5;
                function9 = function1;
                Modifier modifierA4 = ClipKt.a(SizeKt.o(n00.i(gapComposerH, -1674237010, str7), LVAppDesignKitTheme.d(gapComposerH).z), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                Painter painterA4 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, z2 ? 1 : 0);
                ContentScale.f9447a.getClass();
                ImageKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i6 >> 3) & 14), null, ModifierExtKt.e(PainterModifierKt.a(modifierA4, painterA4, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), "pdp_productServiceContainer_image"), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
                GapComposer gapComposer14 = gapComposerH;
                gapComposer14.Z(z2);
                r1 = z2;
                gapComposer2 = gapComposer14;
                Modifier modifierV4 = SizeKt.v(cj.b(str7, RowScopeInstance.f5040a, 1.0f, true), null, 3);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer2, 54);
                iHashCode2 = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU2 = gapComposer2.U();
                modifierC2 = ComposedModifierKt.c(gapComposer2, modifierV4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function9);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, columnMeasurePolicyA, function2);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function8);
                GapComposer gapComposer15 = gapComposer2;
                TextKt.c(str, n00.f(gapComposer2, modifierC2, function7, str7, "pdp_productServiceContainerTitle_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer15, i6 & 14, (i6 << 9) & 29360128, 131064);
                TextStyle textStyle8 = textStyle4;
                gapComposer3 = gapComposer15;
                if (str2 == null) {
                    gapComposer3.L(720400830);
                    gapComposer3.Z(r1);
                    gapComposer4 = gapComposer3;
                } else {
                    SpacerKt.a(gapComposer3, SizeKt.f(n00.i(gapComposer3, 720400831, str7), LVAppDesignKitTheme.d(gapComposer3).f48386e));
                    TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier(str7), "pdp_productServiceContainerDescription_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                    GapComposer gapComposer16 = gapComposer3;
                    gapComposer16.Z(r1);
                    gapComposer4 = gapComposer16;
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r1), null, SizeKt.o(o60.f(gapComposer4, r27, str7), LVAppDesignKitTheme.d(gapComposer4).m), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, gapComposer4, 56, 0);
                gapComposer4.Z(true);
                textStyle3 = textStyle8;
                str5 = str6;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                str5 = str4;
                textStyle3 = textStyle2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new tt(str, i2, str2, str5, textStyle3, function0, i3, i4);
            }
        }
        i5 |= 3072;
        str4 = str3;
        if ((i3 & 24576) == 0) {
            if ((i4 & 16) == 0) {
                textStyle2 = textStyle;
                if (gapComposerH.K(textStyle2)) {
                }
                i5 |= i9;
            } else {
                textStyle2 = textStyle;
            }
            i5 |= i9;
        } else {
            textStyle2 = textStyle;
        }
        if ((196608 & i3) == 0) {
            if (gapComposerH.y(function0)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i5 |= i7;
        }
        if ((74899 & i5) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                if (i8 != 0) {
                    str4 = null;
                }
                if ((i4 & 16) != 0) {
                    i6 = i5 & (-57345);
                    textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    str6 = str4;
                } else {
                    i6 = i5;
                    str6 = str4;
                    textStyle4 = textStyle2;
                }
            } else {
                if (i8 != 0) {
                    str4 = null;
                }
                if ((i4 & 16) != 0) {
                    i6 = i5 & (-57345);
                    textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    str6 = str4;
                } else {
                    i6 = i5;
                    str6 = str4;
                    textStyle4 = textStyle2;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            Modifier modifierE3 = ModifierExtKt.e(ClickableKt.d(new DTFunctionNameModifier("ProductServiceItem"), false, null, null, function0, 15), "pdp_productServiceContainer_button");
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical3 = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
            rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), vertical3, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierE3);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
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
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf3 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf3, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            if (str6 != null) {
                if (StringExtKt.a(str6)) {
                    Modifier modifierA5 = ClipKt.a(SizeKt.o(n00.i(gapComposerH, -1674721726, "ProductServiceItem"), LVAppDesignKitTheme.d(gapComposerH).z), LVAppDesignKitTheme.j(gapComposerH).f48411c);
                    Painter painterA5 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
                    ContentScale.f9447a.getClass();
                    applier = applier;
                    str7 = "ProductServiceItem";
                    function7 = function6;
                    r1 = 0;
                    function9 = function1;
                    function8 = function5;
                    ImageLoaderKt.b(PainterModifierKt.a(modifierA5, painterA5, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), str6, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                    GapComposer gapComposer17 = gapComposerH;
                    gapComposer17.Z(false);
                    gapComposer2 = gapComposer17;
                } else {
                    z2 = false;
                }
                Modifier modifierV5 = SizeKt.v(cj.b(str7, RowScopeInstance.f5040a, 1.0f, true), null, 3);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer2, 54);
                iHashCode2 = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU2 = gapComposer2.U();
                modifierC2 = ComposedModifierKt.c(gapComposer2, modifierV5);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function9);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, columnMeasurePolicyA, function2);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function8);
                GapComposer gapComposer18 = gapComposer2;
                TextKt.c(str, n00.f(gapComposer2, modifierC2, function7, str7, "pdp_productServiceContainerTitle_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer18, i6 & 14, (i6 << 9) & 29360128, 131064);
                TextStyle textStyle9 = textStyle4;
                gapComposer3 = gapComposer18;
                if (str2 == null) {
                    gapComposer3.L(720400830);
                    gapComposer3.Z(r1);
                    gapComposer4 = gapComposer3;
                } else {
                    SpacerKt.a(gapComposer3, SizeKt.f(n00.i(gapComposer3, 720400831, str7), LVAppDesignKitTheme.d(gapComposer3).f48386e));
                    TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier(str7), "pdp_productServiceContainerDescription_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                    GapComposer gapComposer19 = gapComposer3;
                    gapComposer19.Z(r1);
                    gapComposer4 = gapComposer19;
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r1), null, SizeKt.o(o60.f(gapComposer4, r27, str7), LVAppDesignKitTheme.d(gapComposer4).m), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, gapComposer4, 56, 0);
                gapComposer4.Z(true);
                textStyle3 = textStyle9;
                str5 = str6;
                gapComposer = gapComposer4;
            } else {
                z2 = false;
            }
            str7 = "ProductServiceItem";
            function7 = function6;
            function8 = function5;
            function9 = function1;
            Modifier modifierA6 = ClipKt.a(SizeKt.o(n00.i(gapComposerH, -1674237010, str7), LVAppDesignKitTheme.d(gapComposerH).z), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            Painter painterA6 = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, z2 ? 1 : 0);
            ContentScale.f9447a.getClass();
            ImageKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i6 >> 3) & 14), null, ModifierExtKt.e(PainterModifierKt.a(modifierA6, painterA6, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), "pdp_productServiceContainer_image"), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
            GapComposer gapComposer110 = gapComposerH;
            gapComposer110.Z(z2);
            r1 = z2;
            gapComposer2 = gapComposer110;
            Modifier modifierV6 = SizeKt.v(cj.b(str7, RowScopeInstance.f5040a, 1.0f, true), null, 3);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposer2, 54);
            iHashCode2 = Long.hashCode(gapComposer2.T);
            persistentCompositionLocalMapU2 = gapComposer2.U();
            modifierC2 = ComposedModifierKt.c(gapComposer2, modifierV6);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function9);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, columnMeasurePolicyA, function2);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposer2, function4, gapComposer2, function8);
            GapComposer gapComposer111 = gapComposer2;
            TextKt.c(str, n00.f(gapComposer2, modifierC2, function7, str7, "pdp_productServiceContainerTitle_text"), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle4, gapComposer111, i6 & 14, (i6 << 9) & 29360128, 131064);
            TextStyle textStyle10 = textStyle4;
            gapComposer3 = gapComposer111;
            if (str2 == null) {
                gapComposer3.L(720400830);
                gapComposer3.Z(r1);
                gapComposer4 = gapComposer3;
            } else {
                SpacerKt.a(gapComposer3, SizeKt.f(n00.i(gapComposer3, 720400831, str7), LVAppDesignKitTheme.d(gapComposer3).f48386e));
                TextKt.c(str2, ModifierExtKt.e(new DTFunctionNameModifier(str7), "pdp_productServiceContainerDescription_text"), LVAppDesignKitTheme.c(gapComposer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
                GapComposer gapComposer112 = gapComposer3;
                gapComposer112.Z(r1);
                gapComposer4 = gapComposer112;
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r1), null, SizeKt.o(o60.f(gapComposer4, r27, str7), LVAppDesignKitTheme.d(gapComposer4).m), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, gapComposer4, 56, 0);
            gapComposer4.Z(true);
            textStyle3 = textStyle10;
            str5 = str6;
            gapComposer = gapComposer4;
        } else {
            gapComposerH.D();
            str5 = str4;
            textStyle3 = textStyle2;
            gapComposer = gapComposerH;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new tt(str, i2, str2, str5, textStyle3, function0, i3, i4);
        }
    }
}
