package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import android.content.res.Configuration;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipSize;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpVariationImageListKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import defpackage.cj;
import defpackage.g10;
import defpackage.hb;
import defpackage.n00;
import defpackage.nm;
import defpackage.o60;
import defpackage.oy;
import defpackage.p6;
import defpackage.pq0;
import defpackage.px;
import defpackage.r5;
import defpackage.s3;
import defpackage.t50;
import defpackage.tr;
import defpackage.y2;
import defpackage.yk0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpVariationImageListKt {
    public static final void a(Modifier modifier, final VariationUiModel variationUiModel, final int i2, final boolean z, final boolean z2, final Function0 function0, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        final Modifier modifier2;
        String strF;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "PdpVarianceImageItem");
        }
        GapComposer gapComposerH = composer.h(-2110627250);
        int i7 = i4 & 1;
        if (i7 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(variationUiModel) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 = i2;
            i5 |= gapComposerH.d(i6) ? 256 : 128;
        } else {
            i6 = i2;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i5 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        int i8 = i5;
        if (gapComposerH.p(i8 & 1, (74899 & i8) != 74898)) {
            if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PdpVarianceImageItem");
            }
            Modifier modifier3 = dTFunctionNameModifier;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            SkuAvailabilityUiModel skuAvailabilityUiModel = variationUiModel.f61769e;
            if (skuAvailabilityUiModel == null || skuAvailabilityUiModel.f61761e || !z2) {
                gapComposerH.L(625276482);
                gapComposerH.Z(false);
                strF = "";
            } else {
                strF = cj.f(gapComposerH, 625211351, R.string.alt_out_of_stock, gapComposerH, false);
            }
            String str = strF;
            boolean zK = ((i8 & 112) == 32) | gapComposerH.K(str) | ((i8 & 7168) == 2048) | gapComposerH.K(strC);
            int i9 = i8 & ImageMetadata.JPEG_GPS_COORDINATES;
            boolean z3 = zK | (i9 == 131072) | ((i8 & 896) == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                oy oyVar = new oy(variationUiModel, str, z, strC, i6, function0);
                gapComposerH.q(oyVar);
                objX = oyVar;
            }
            Modifier modifierA = ModifierExtKt.a(modifier3, "pdp_variationImageItem_view", (Function1) objX, 2);
            LVImageChipSize lVImageChipSize = LVImageChipSize.SMALL;
            boolean z4 = i9 == 131072;
            Object objX2 = gapComposerH.x();
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new y2(function0, 28);
                gapComposerH.q(objX2);
            }
            LVImageChipKt.b(modifierA, z, false, lVImageChipSize, null, null, (Function1) objX2, ComposableLambdaKt.b(1247273435, new Function3() { // from class: bn0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    BoxScope boxScope = (BoxScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    boxScope.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(boxScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierO = new DTFunctionNameModifier("PdpVarianceImageItem$lambda$2").o(SizeKt.f5052c);
                        Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, composer2, 0);
                        ContentScale.f9447a.getClass();
                        Modifier modifierA2 = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                        VariationUiModel variationUiModel2 = variationUiModel;
                        String str2 = variationUiModel2.d;
                        if (str2 == null) {
                            str2 = "";
                        }
                        ImageLoaderKt.b(modifierA2, str2, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer2, KyberEngine.KyberPolyBytes, 2040);
                        SkuAvailabilityUiModel skuAvailabilityUiModel2 = variationUiModel2.f61769e;
                        if (skuAvailabilityUiModel2 == null || skuAvailabilityUiModel2.f61761e || !z2 || z) {
                            composer2.L(1761791591);
                            composer2.F();
                        } else {
                            composer2.L(1761374517);
                            long j2 = LVAppDesignKitTheme.c(composer2).f48361b.x;
                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PdpVarianceImageItem$lambda$2");
                            Alignment.f8582a.getClass();
                            Modifier modifierO2 = SizeKt.o(PaddingKt.i(boxScope.g(dTFunctionNameModifier2, Alignment.Companion.d), LVAppDesignKitTheme.l(composer2).f48414b), LVAppDesignKitTheme.d(composer2).g);
                            boolean zE = composer2.e(j2);
                            Object objX3 = composer2.x();
                            if (zE || objX3 == Composer.Companion.f7939a) {
                                objX3 = new r5(j2, 6);
                                composer2.q(objX3);
                            }
                            CanvasKt.a(modifierO2, (Function1) objX3, composer2, 0);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 100666368 | ((i8 >> 6) & 112), 116);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: cn0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    PdpVariationImageListKt.a(modifier2, variationUiModel, i2, z, z2, function0, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final float f2, final int i2, final Function0 function0, Composer composer, final int i3) {
        int i4;
        GapComposer gapComposerH = composer.h(1713394449);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.c(f2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strB = StringResources_androidKt.b(R.string.alt_show_variations, new Object[]{Integer.valueOf(i2)}, gapComposerH);
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("PdpVarianceMoreIndicator--orJrPs"), f2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new yk0(21);
                gapComposerH.q(objX);
            }
            Modifier modifierA = OnRemeasuredModifierKt.a(modifierO, (Function1) objX);
            int i5 = i4 & 896;
            boolean zK = gapComposerH.K(strB) | (i5 == 256);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new t50(3, strB, function0);
                gapComposerH.q(objX2);
            }
            Modifier modifierA2 = ModifierExtKt.a(modifierA, "pdp_variationMore_button", (Function1) objX2, 2);
            boolean z = false;
            Color color = new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.p);
            if (i5 == 256) {
                z = true;
            }
            Object objX3 = gapComposerH.x();
            if (z || objX3 == composer$Companion$Empty$1) {
                objX3 = new y2(function0, 29);
                gapComposerH.q(objX3);
            }
            LVImageChipKt.b(modifierA2, false, false, null, color, null, (Function1) objX3, ComposableLambdaKt.b(1256182436, new px(i2, 1), gapComposerH), gapComposerH, 100663344, 108);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: an0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    PdpVariationImageListKt.b(f2, i2, function0, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(Modifier modifier, String str, String str2, List list, boolean z, Function0 function0, Function1 function1, Composer composer, int i2) {
        Function0 function2;
        Modifier modifier2;
        Object next;
        Object next2;
        long j2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        String str3;
        String str4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpVariationImageList-icvEI7I");
        }
        str.getClass();
        str2.getClass();
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1976301293);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | 6;
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.b(true) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i5 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i5 & 1, (4793491 & i5) != 4793490)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpVariationImageList-icvEI7I");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ArrayList arrayList = new ArrayList(list);
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    str4 = ((VariationUiModel) next).f61767b;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                }
            } while (!Intrinsics.c(str4, str2));
            VariationUiModel variationUiModel = (VariationUiModel) next;
            if (variationUiModel != null) {
                arrayList.remove(variationUiModel);
                arrayList.add(0, variationUiModel);
            }
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PdpVariationImageList-icvEI7I");
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
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
            int i6 = i5;
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Modifier modifierF = n00.f(gapComposerH, modifierC2, function8, "PdpVariationImageList-icvEI7I", "pdp_variationLabel_text");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new yk0(20);
                gapComposerH.q(objX);
            }
            int i7 = i6 >> 3;
            TextKt.c(str, SemanticsModifierKt.b(modifierF, false, (Function1) objX), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, i7 & 14, 0, 131064);
            gapComposerH = gapComposerH;
            Iterator it2 = arrayList.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    str3 = ((VariationUiModel) next2).f61767b;
                    SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                }
            } while (!Intrinsics.c(str3, str2));
            VariationUiModel variationUiModel2 = (VariationUiModel) next2;
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            if (variationUiModel2 == null) {
                gapComposerH.L(-1854914445);
                gapComposerH.Z(false);
                i4 = 3;
                rowScopeInstance = rowScopeInstance;
                i3 = 48;
            } else {
                Modifier modifierM = PaddingKt.m(rowScopeInstance.a(n00.i(gapComposerH, -1854914444, "PdpVariationImageList-icvEI7I"), 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical = Alignment.Companion.l;
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(new Arrangement.SpacedAligned(LVAppDesignKitTheme.l(gapComposerH).f48415c, true, new s3(Alignment.Companion.p, 3), null), vertical, gapComposerH, 48);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int iHashCode3 = Long.hashCode(gapComposerH.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
                ComposeUiNode.b0.getClass();
                Function0 function9 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function9);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC3, ComposeUiNode.Companion.d);
                gapComposerH.L(-2028058100);
                SkuAvailabilityUiModel skuAvailabilityUiModel = variationUiModel2.f61769e;
                if (skuAvailabilityUiModel == null) {
                    gapComposerH.L(1554708341);
                    gapComposerH.Z(false);
                    rowScopeInstance = rowScopeInstance;
                    z2 = false;
                } else {
                    gapComposerH.L(1554708342);
                    if (skuAvailabilityUiModel.f61761e) {
                        gapComposerH.L(-72879697);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-72772623);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.x;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("PdpVariationImageList-icvEI7I"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
                    boolean zE = gapComposerH.e(j2);
                    Object objX2 = gapComposerH.x();
                    if (zE || objX2 == composer$Companion$Empty$1) {
                        objX2 = new r5(j2, 7);
                        gapComposerH.q(objX2);
                    }
                    z2 = false;
                    CanvasKt.a(modifierO, (Function1) objX2, gapComposerH, 0);
                    gapComposerH.Z(false);
                }
                Modifier modifierA = ModifierExtKt.a(o60.f(gapComposerH, z2, "PdpVariationImageList-icvEI7I"), "pdp_selectedVariationValue_text", null, 6);
                String str5 = variationUiModel2.f61768c;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                TextAlign.f10959b.getClass();
                int i8 = TextAlign.f10963h;
                TextOverflow.f10989a.getClass();
                i3 = 48;
                i4 = 3;
                TextKt.c(str5, modifierA, j3, 0L, null, 0L, null, new TextAlign(i8), 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 109560);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion3 = Dp.f11004c;
            float f3 = f2 - LVAppDesignKitTheme.l(gapComposerH).g;
            if (arrayList.size() > ((int) (f3 / (LVAppDesignKitTheme.l(gapComposerH).f48415c + 64.0f)))) {
                gapComposerH.L(-1055280137);
                float f4 = LVAppDesignKitTheme.d(gapComposerH).v;
                int i9 = (int) ((f3 - f4) / (LVAppDesignKitTheme.l(gapComposerH).f48415c + 64.0f));
                int size = arrayList.size() - i9;
                Modifier modifierD2 = tr.d("PdpVariationImageList-icvEI7I", 1.0f);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, i3);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                int iHashCode4 = Long.hashCode(gapComposerH.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierD2);
                ComposeUiNode.b0.getClass();
                Function0 function10 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function10);
                } else {
                    gapComposerH.o();
                }
                Function2 function11 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA3, function11);
                Function2 function12 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function12);
                Integer numValueOf2 = Integer.valueOf(iHashCode4);
                Function2 function13 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function13);
                Function1 function14 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function14);
                int i10 = size;
                Function2 function15 = ComposeUiNode.Companion.d;
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC4, function15, "PdpVariationImageList-icvEI7I");
                boolean zD = gapComposerH.d(i9);
                Object objX3 = gapComposerH.x();
                if (zD || objX3 == composer$Companion$Empty$1) {
                    objX3 = new hb(i9, 22);
                    gapComposerH.q(objX3);
                }
                Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifierE, false, (Function1) objX3);
                RowScopeInstance rowScopeInstance2 = rowScopeInstance;
                RowMeasurePolicy rowMeasurePolicyA4 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c), Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode5 = Long.hashCode(gapComposerH.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposerH.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposerH, modifierB);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function10);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA4, function11);
                Updater.c(gapComposerH, persistentCompositionLocalMapU5, function12);
                cj.t(iHashCode5, gapComposerH, function13, gapComposerH, function14);
                Updater.c(gapComposerH, modifierC5, function15);
                gapComposerH.L(-394205770);
                int i11 = 0;
                for (Object obj : CollectionsKt.q0(arrayList, i9)) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    VariationUiModel variationUiModel3 = (VariationUiModel) obj;
                    String str6 = variationUiModel3.f61767b;
                    SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                    boolean zC = Intrinsics.c(str6, str2);
                    boolean zK = ((i6 & 29360128) == 8388608) | gapComposerH.K(variationUiModel3);
                    Object objX4 = gapComposerH.x();
                    if (zK || objX4 == composer$Companion$Empty$1) {
                        objX4 = new g10(function1, variationUiModel3, 1);
                        gapComposerH.q(objX4);
                    }
                    a(null, variationUiModel3, i11, zC, z, (Function0) objX4, gapComposerH, i7 & 57344, 1);
                    i10 = i10;
                    i11 = i12;
                }
                int i13 = i10;
                gapComposerH.Z(false);
                gapComposerH.Z(true);
                Modifier modifierA2 = rowScopeInstance2.a(new DTFunctionNameModifier("PdpVariationImageList-icvEI7I"), 1.0f, true);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                int iHashCode6 = Long.hashCode(gapComposerH.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU6 = gapComposerH.U();
                Modifier modifierC6 = ComposedModifierKt.c(gapComposerH, modifierA2);
                ComposeUiNode.b0.getClass();
                Function0 function16 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function16);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU6, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode6), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC6, ComposeUiNode.Companion.d);
                function2 = function0;
                b(f4, i13, function2, gapComposerH, (i6 >> 12) & 896);
                z3 = true;
                pq0.x(gapComposerH, true, true, false);
            } else {
                function2 = function0;
                Modifier modifierC7 = o60.c(gapComposerH, -1053575850, "PdpVariationImageList-icvEI7I", 1.0f);
                boolean zY = gapComposerH.y(arrayList);
                Object objX5 = gapComposerH.x();
                if (zY || objX5 == composer$Companion$Empty$1) {
                    objX5 = new p6(i4, arrayList);
                    gapComposerH.q(objX5);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierC7, false, (Function1) objX5);
                Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA5 = RowKt.a(spacedAlignedF2, Alignment.Companion.f8591k, gapComposerH, 0);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                int iHashCode7 = Long.hashCode(gapComposerH.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU7 = gapComposerH.U();
                Modifier modifierC8 = ComposedModifierKt.c(gapComposerH, modifierB2);
                ComposeUiNode.b0.getClass();
                Function0 function17 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function17);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA5, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU7, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode7), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC8, ComposeUiNode.Companion.d);
                gapComposerH.L(-997986152);
                int i14 = 0;
                for (Object obj2 : arrayList) {
                    int i15 = i14 + 1;
                    if (i14 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    VariationUiModel variationUiModel4 = (VariationUiModel) obj2;
                    Modifier modifierG = n00.g("PdpVariationImageList-icvEI7I", "pdp_variationImageItem_view");
                    String str7 = variationUiModel4.f61767b;
                    SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                    boolean zC2 = Intrinsics.c(str7, str2);
                    boolean zK2 = ((i6 & 29360128) == 8388608) | gapComposerH.K(variationUiModel4);
                    Object objX6 = gapComposerH.x();
                    if (zK2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new g10(function1, variationUiModel4, 2);
                        gapComposerH.q(objX6);
                    }
                    a(modifierG, variationUiModel4, i14, zC2, z, (Function0) objX6, gapComposerH, i7 & 57344, 0);
                    i14 = i15;
                }
                z3 = true;
                pq0.x(gapComposerH, false, true, false);
            }
            gapComposerH.Z(z3);
            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
            modifier2 = dTFunctionNameModifier;
        } else {
            function2 = function0;
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nm(modifier2, str, str2, list, z, function2, function1, i2);
        }
    }
}
