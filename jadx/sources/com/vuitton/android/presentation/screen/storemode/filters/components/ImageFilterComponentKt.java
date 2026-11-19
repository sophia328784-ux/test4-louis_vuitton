package com.vuitton.android.presentation.screen.storemode.filters.components;

import android.content.res.Configuration;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
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
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.dt;
import defpackage.g20;
import defpackage.i4;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0005²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "animatedPadding", "Landroidx/compose/ui/graphics/Color;", "animatedBorderColor", "animatedBorderWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImageFilterComponentKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f65006a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f65006a = 108.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(boolean z, ProductFilterDataTypeUiModel.Simple simple, Function2 function2, Composer composer, int i2) {
        RowScopeInstance rowScopeInstance;
        boolean z2;
        simple.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1560574206);
        Applier applier = gapComposerH.f7976a;
        boolean z3 = z;
        int i3 = i2 | (gapComposerH.b(z3) ? 4 : 2) | (gapComposerH.y(simple) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        int i4 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = simple.f62961a;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((ProductFilterValueUiModel) obj).f62969f) {
                    arrayList.add(obj);
                }
            }
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            int i5 = (int) (f2 / f65006a);
            ArrayList<List> arrayListC0 = CollectionsKt.C0(arrayList, i5, i5);
            float f3 = 1.0f;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(tr.d("ImageFilterComponent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int i6 = i3;
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(176845935);
            for (List list2 : arrayListC0) {
                Modifier modifierD = tr.d("ImageFilterComponent", f3);
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF2, Alignment.Companion.f8591k, gapComposerH, i4);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int i7 = i5;
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                gapComposerH.L(-1588141712);
                Iterator it = list2.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    rowScopeInstance = RowScopeInstance.f5040a;
                    if (!zHasNext) {
                        break;
                    }
                    ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) it.next();
                    int i8 = i6;
                    boolean zK = gapComposerH.K(productFilterValueUiModel) | ((i8 & 896) == 256);
                    Object objX = gapComposerH.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new dt(productFilterValueUiModel, function2, 26);
                        gapComposerH.q(objX);
                    }
                    b(z3, productFilterValueUiModel, (Function0) objX, cj.b("ImageFilterComponent", rowScopeInstance, f3, true), gapComposerH, i8 & 14);
                    f3 = f3;
                    i6 = i8;
                    z3 = z;
                }
                float f4 = f3;
                int i9 = i6;
                gapComposerH.Z(false);
                int size = i7 - list2.size();
                if (size > 0) {
                    gapComposerH.L(-1987203680);
                    for (int i10 = 0; i10 < size; i10++) {
                        BoxKt.a(cj.b("ImageFilterComponent", rowScopeInstance, f4, true), gapComposerH, 0);
                    }
                    z2 = true;
                    gapComposerH.Z(false);
                } else {
                    z2 = true;
                    gapComposerH.L(-1987066257);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z2);
                f3 = f4;
                i4 = 0;
                i6 = i9;
                i5 = i7;
                z3 = z;
            }
            gapComposerH.Z(i4);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g20(z, simple, function2, i2, 0);
        }
    }

    public static final void b(boolean z, ProductFilterValueUiModel productFilterValueUiModel, Function0 function0, Modifier modifier, Composer composer, int i2) {
        float f2;
        long j2;
        float f3;
        boolean z2;
        boolean z3;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImageFilterItem");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1374615306);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.K(productFilterValueUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.K(modifier2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(gapComposerH).f48410b;
            RoundedCornerShape roundedCornerShape2 = LVAppDesignKitTheme.j(gapComposerH).f48411c;
            boolean z4 = productFilterValueUiModel.f62968e;
            boolean z5 = productFilterValueUiModel.f62969f;
            if (z4) {
                gapComposerH.L(1844631294);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
            } else {
                gapComposerH.L(1844632605);
                f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
            }
            gapComposerH.Z(false);
            State stateA = AnimateAsStateKt.a(f2, null, "padding", null, gapComposerH, KyberEngine.KyberPolyBytes, 10);
            if (z4) {
                gapComposerH.L(1844638466);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.p;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1844639233);
                gapComposerH.Z(false);
                Color.f8866b.getClass();
                j2 = Color.f8870h;
            }
            State stateB = SingleValueAnimationKt.b(j2, null, "borderColor", gapComposerH, KyberEngine.KyberPolyBytes, 10);
            if (z4) {
                gapComposerH.L(1844645117);
                f3 = LVAppDesignKitTheme.d(gapComposerH).f48385c;
            } else {
                gapComposerH.L(1844646397);
                f3 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
            }
            gapComposerH.Z(false);
            State stateA2 = AnimateAsStateKt.a(f3, null, "borderWidth", null, gapComposerH, KyberEngine.KyberPolyBytes, 10);
            Modifier modifierA = ClipKt.a(modifier2, z4 ? roundedCornerShape2 : roundedCornerShape);
            if (z || !z5) {
                z2 = false;
                z3 = false;
            } else {
                z3 = true;
                z2 = false;
            }
            boolean z6 = z2;
            Modifier modifierD = ClickableKt.d(modifierA, z3, null, null, function0, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, z6 ? 1 : 0);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierA2 = AspectRatioKt.a(tr.e(gapComposerH, modifierC, function6, "ImageFilterItem"), 1.0f, z6);
            BorderStroke borderStrokeA = BorderStrokeKt.a(((Dp) stateA2.getF10755b()).f11006b, ((Color) stateB.getF10755b()).f8872a);
            Modifier modifierA3 = ClipKt.a(PaddingKt.i(BorderKt.b(modifierA2, borderStrokeA.f4154a, borderStrokeA.f4155b, roundedCornerShape2), ((Dp) stateA.getF10755b()).f11006b), roundedCornerShape);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA4 = PainterModifierKt.a(modifierA3, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA4);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            Modifier modifierA5 = AspectRatioKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("ImageFilterItem"), Alignment.Companion.f8587f), 1.0f, true);
            AssetImageUiModel assetImageUiModel = productFilterValueUiModel.f62967c;
            String str = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
            if (str == null) {
                str = "";
            }
            ImageLoaderKt.b(modifierA5, str, null, null, Integer.valueOf(R.drawable.placeholder_transparent), R.drawable.placeholder_transparent, false, null, null, null, gapComposerH, 0, 1996);
            if (z5) {
                gapComposerH.L(1641680272);
                gapComposerH.Z(false);
            } else {
                BoxKt.a(BackgroundKt.b(n00.i(gapComposerH, 1641305482, "ImageFilterItem").o(SizeKt.f5052c), Color.b(LVAppDesignKitTheme.h(gapComposerH).d, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), RectangleShapeKt.f8913a), gapComposerH, 0);
                gapComposerH.Z(false);
            }
            Modifier modifierI = PaddingKt.i(o60.f(gapComposerH, true, "ImageFilterItem"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            String str2 = productFilterValueUiModel.f62966b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            if (z5) {
                gapComposerH.L(937748587);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(937839045);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            long j4 = j3;
            TextOverflow.f10989a.getClass();
            TextKt.c(str2, null, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110586);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(z, productFilterValueUiModel, function0, modifier2, i2);
        }
    }
}
