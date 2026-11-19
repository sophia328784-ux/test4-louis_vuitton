package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipSize;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.c1;
import defpackage.cj;
import defpackage.d3;
import defpackage.k;
import defpackage.o60;
import defpackage.tr;
import defpackage.u5;
import defpackage.w;
import defpackage.zd;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyLooksBottomBarKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0345  */
    /* JADX WARN: Code duplicated, block: B:102:0x0347  */
    /* JADX WARN: Code duplicated, block: B:108:0x035c  */
    /* JADX WARN: Code duplicated, block: B:115:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:118:0x0431  */
    /* JADX WARN: Code duplicated, block: B:120:0x0459  */
    /* JADX WARN: Code duplicated, block: B:123:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:135:0x03ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0296  */
    /* JADX WARN: Code duplicated, block: B:75:0x029d  */
    /* JADX WARN: Code duplicated, block: B:77:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:80:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:81:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:84:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:86:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:89:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:91:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:93:0x0316  */
    /* JADX WARN: Code duplicated, block: B:94:0x0319  */
    /* JADX WARN: Code duplicated, block: B:98:0x0325  */
    public static final void a(TryOnProductUiModel tryOnProductUiModel, LookUiModel lookUiModel, Function0 function0, Function1 function1, Function0 function2, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        List list;
        int i3;
        ArrayList arrayList;
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        int i5;
        LookUiModel lookUiModel2;
        int i6;
        boolean z;
        boolean z2;
        Object objX;
        boolean z3;
        boolean zK;
        Object objX2;
        Object objX3;
        ColorUiModel colorUiModel;
        Function1 function3 = function1;
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(1132013939);
        Applier applier = gapComposerH.f7976a;
        int i7 = i2 | (gapComposerH.y(tryOnProductUiModel) ? 4 : 2) | (gapComposerH.K(lookUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i7 & 1, (i7 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (zY || objX4 == composer$Companion$Empty$3) {
                objX4 = new BeautyLooksBottomBarKt$BeautyLooksBottomBar$2$1(context, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("BeautyLooksBottomBar"), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            Integer numValueOf = Integer.valueOf(iHashCode2);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function9);
            if (lookUiModel == null) {
                gapComposerH.L(-320571476);
                gapComposerH.Z(false);
            } else {
                Modifier modifierC3 = o60.c(gapComposerH, -320571475, "BeautyLooksBottomBar", 1.0f);
                BiasAlignment biasAlignment = Alignment.Companion.f8585c;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                Modifier modifierM = PaddingKt.m(boxScopeInstance.g(modifierC3, biasAlignment), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
                int i8 = i7;
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
                cj.t(iHashCode3, gapComposerH, function7, gapComposerH, function8);
                Updater.c(gapComposerH, modifierC4, function9);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BeautyLooksBottomBar");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                Modifier modifierA = ModifierExtKt.a(PaddingKt.m(columnScopeInstance.b(dTFunctionNameModifier, horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, 7);
                String str = tryOnProductUiModel != null ? tryOnProductUiModel.f62187f : null;
                if (str == null) {
                    str = "";
                }
                TextKt.c(str, modifierA, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                Modifier modifierA2 = ModifierExtKt.a(PaddingKt.m(columnScopeInstance.b(new DTFunctionNameModifier("BeautyLooksBottomBar"), horizontal), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7), null, null, 7);
                String str2 = (tryOnProductUiModel == null || (colorUiModel = tryOnProductUiModel.g) == null) ? null : colorUiModel.f62159a;
                TextKt.c(str2 == null ? "" : str2, modifierA2, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131064);
                GapComposer gapComposer = gapComposerH;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BeautyLooksBottomBar");
                boolean zY2 = gapComposer.y(tryOnProductUiModel);
                Object objX5 = gapComposer.x();
                if (zY2) {
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                } else {
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    if (objX5 == composer$Companion$Empty$1) {
                    }
                    Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX5);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48416e), Alignment.Companion.f8591k, gapComposer, 0);
                    iHashCode = Long.hashCode(gapComposer.T);
                    persistentCompositionLocalMapU = gapComposer.U();
                    modifierC = ComposedModifierKt.c(gapComposer, modifierB);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function4);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, rowMeasurePolicyA, function5);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, function6);
                    cj.t(iHashCode, gapComposer, function7, gapComposer, function8);
                    Updater.c(gapComposer, modifierC, function9);
                    if (tryOnProductUiModel != null) {
                        list = tryOnProductUiModel.f62188h;
                    } else {
                        list = null;
                    }
                    i3 = 3;
                    if (list == null) {
                        gapComposer.L(357471295);
                        gapComposer.Z(false);
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    } else {
                        gapComposer.L(357471296);
                        List list2 = list;
                        arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        i4 = 0;
                        for (Object obj : list2) {
                            i5 = i4 + 1;
                            if (i4 >= 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            lookUiModel2 = (LookUiModel) obj;
                            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("BeautyLooksBottomBar");
                            boolean zK2 = gapComposer.K(lookUiModel2) | gapComposer.d(i4);
                            int i9 = i8;
                            i6 = i9 & 7168;
                            if (i6 == 2048) {
                                z = true;
                            } else {
                                z = false;
                            }
                            z2 = zK2 | z;
                            objX = gapComposer.x();
                            if (z2 || objX == composer$Companion$Empty$1) {
                                objX = new zd(lookUiModel2, i4, function3, 0);
                                gapComposer.q(objX);
                            }
                            Modifier modifierA3 = ModifierExtKt.a(dTFunctionNameModifier3, null, (Function1) objX, i3);
                            boolean zC = Intrinsics.c(lookUiModel2.f62165a, lookUiModel.f62165a);
                            LVImageChipSize lVImageChipSize = LVImageChipSize.SMALL;
                            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
                            if (i6 == 2048) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            zK = z3 | gapComposer.K(lookUiModel2);
                            int i10 = i3;
                            objX2 = gapComposer.x();
                            if (zK || objX2 == composer$Companion$Empty$1) {
                                objX2 = new k(function3, lookUiModel2, 10);
                                gapComposer.q(objX2);
                            }
                            ArrayList arrayList2 = arrayList;
                            i8 = i9;
                            GapComposer gapComposer2 = gapComposer;
                            LVImageChipKt.b(modifierA3, zC, false, lVImageChipSize, null, lVColorScheme, (Function1) objX2, ComposableLambdaKt.b(-326350827, new d3(lookUiModel2, 5), gapComposer), gapComposer2, 102239232, 52);
                            gapComposer = gapComposer2;
                            arrayList2.add(Unit.f71739a);
                            arrayList = arrayList2;
                            composer$Companion$Empty$1 = composer$Companion$Empty$1;
                            i4 = i5;
                            i3 = i10;
                            function3 = function1;
                        }
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        gapComposer.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifierF = o60.f(gapComposer, true, "BeautyLooksBottomBar");
                    Alignment.f8582a.getClass();
                    Modifier modifierM2 = PaddingKt.m(columnScopeInstance.b(dTFunctionNameModifierF, Alignment.Companion.o), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    objX3 = gapComposer.x();
                    if (objX3 == composer$Companion$Empty$2) {
                        objX3 = new u5(23);
                        gapComposer.q(objX3);
                    }
                    GapComposer gapComposer3 = gapComposer;
                    TextKt.c(tr.h(lookUiModel.d, " - ", lookUiModel.f62167c), SemanticsModifierKt.b(modifierM2, false, (Function1) objX3), LVAppDesignKitTheme.c(gapComposer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer3, 0, 0, 131064);
                    gapComposerH = gapComposer3;
                    if (lookUiModel.f62169f) {
                        gapComposerH.L(-561809143);
                        LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.vto_application_tips), false, LVColorScheme.INVERT, false, function2, gapComposerH, (458752 & (i8 << 3)) | 3072, 21);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-561544868);
                        gapComposerH.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).F, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.alt_close), com.vuitton.android.designkit.ui.common.ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(o60.f(gapComposerH, true, "BeautyLooksBottomBar"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), IconSize.f48349c), Alignment.Companion.d), false, null, null, function0, 31), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
                    gapComposerH.Z(false);
                }
                objX5 = new c1(tryOnProductUiModel, 19);
                gapComposer.q(objX5);
                Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX5);
                rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposer).f48416e), Alignment.Companion.f8591k, gapComposer, 0);
                iHashCode = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU = gapComposer.U();
                modifierC = ComposedModifierKt.c(gapComposer, modifierB2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function4);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, rowMeasurePolicyA, function5);
                Updater.c(gapComposer, persistentCompositionLocalMapU, function6);
                cj.t(iHashCode, gapComposer, function7, gapComposer, function8);
                Updater.c(gapComposer, modifierC, function9);
                if (tryOnProductUiModel != null) {
                    list = tryOnProductUiModel.f62188h;
                } else {
                    list = null;
                }
                i3 = 3;
                if (list == null) {
                    gapComposer.L(357471295);
                    gapComposer.Z(false);
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                } else {
                    gapComposer.L(357471296);
                    List list3 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                    i4 = 0;
                    while (r16.hasNext()) {
                        i5 = i4 + 1;
                        if (i4 >= 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        lookUiModel2 = (LookUiModel) obj;
                        DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("BeautyLooksBottomBar");
                        boolean zK3 = gapComposer.K(lookUiModel2) | gapComposer.d(i4);
                        int i11 = i8;
                        i6 = i11 & 7168;
                        if (i6 == 2048) {
                            z = true;
                        } else {
                            z = false;
                        }
                        z2 = zK3 | z;
                        objX = gapComposer.x();
                        if (z2) {
                            objX = new zd(lookUiModel2, i4, function3, 0);
                            gapComposer.q(objX);
                        } else {
                            objX = new zd(lookUiModel2, i4, function3, 0);
                            gapComposer.q(objX);
                        }
                        Modifier modifierA4 = ModifierExtKt.a(dTFunctionNameModifier4, null, (Function1) objX, i3);
                        boolean zC2 = Intrinsics.c(lookUiModel2.f62165a, lookUiModel.f62165a);
                        LVImageChipSize lVImageChipSize2 = LVImageChipSize.SMALL;
                        LVColorScheme lVColorScheme2 = LVColorScheme.INVERT;
                        if (i6 == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zK = z3 | gapComposer.K(lookUiModel2);
                        int i12 = i3;
                        objX2 = gapComposer.x();
                        if (zK) {
                            objX2 = new k(function3, lookUiModel2, 10);
                            gapComposer.q(objX2);
                        } else {
                            objX2 = new k(function3, lookUiModel2, 10);
                            gapComposer.q(objX2);
                        }
                        ArrayList arrayList3 = arrayList;
                        i8 = i11;
                        GapComposer gapComposer4 = gapComposer;
                        LVImageChipKt.b(modifierA4, zC2, false, lVImageChipSize2, null, lVColorScheme2, (Function1) objX2, ComposableLambdaKt.b(-326350827, new d3(lookUiModel2, 5), gapComposer), gapComposer4, 102239232, 52);
                        gapComposer = gapComposer4;
                        arrayList3.add(Unit.f71739a);
                        arrayList = arrayList3;
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        i4 = i5;
                        i3 = i12;
                        function3 = function1;
                    }
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    gapComposer.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifierF2 = o60.f(gapComposer, true, "BeautyLooksBottomBar");
                Alignment.f8582a.getClass();
                Modifier modifierM3 = PaddingKt.m(columnScopeInstance.b(dTFunctionNameModifierF2, Alignment.Companion.o), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                objX3 = gapComposer.x();
                if (objX3 == composer$Companion$Empty$2) {
                    objX3 = new u5(23);
                    gapComposer.q(objX3);
                }
                GapComposer gapComposer5 = gapComposer;
                TextKt.c(tr.h(lookUiModel.d, " - ", lookUiModel.f62167c), SemanticsModifierKt.b(modifierM3, false, (Function1) objX3), LVAppDesignKitTheme.c(gapComposer).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer5, 0, 0, 131064);
                gapComposerH = gapComposer5;
                if (lookUiModel.f62169f) {
                    gapComposerH.L(-561809143);
                    LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.vto_application_tips), false, LVColorScheme.INVERT, false, function2, gapComposerH, (458752 & (i8 << 3)) | 3072, 21);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-561544868);
                    gapComposerH.Z(false);
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).F, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.alt_close), com.vuitton.android.designkit.ui.common.ModifierExtKt.c(boxScopeInstance.g(SizeKt.o(PaddingKt.m(o60.f(gapComposerH, true, "BeautyLooksBottomBar"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), IconSize.f48349c), Alignment.Companion.d), false, null, null, function0, 31), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) tryOnProductUiModel, (Object) lookUiModel, function0, function1, function2, i2, 5);
        }
    }
}
