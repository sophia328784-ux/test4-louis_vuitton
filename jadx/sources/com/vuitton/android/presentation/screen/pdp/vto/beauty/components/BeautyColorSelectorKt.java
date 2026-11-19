package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.cj;
import defpackage.h1;
import defpackage.pd;
import defpackage.qd;
import defpackage.rd;
import defpackage.sd;
import defpackage.tr;
import defpackage.u5;
import defpackage.w9;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldTrackSwipe", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyColorSelectorKt {
    public static final void a(Modifier modifier, List list, TryOnProductUiModel tryOnProductUiModel, LookUiModel lookUiModel, Function1 function1, Function0 function0, Function0 function2, Function0 function3, Composer composer, int i2, int i3) {
        int i4;
        LookUiModel lookUiModel2;
        int i5;
        Function0 function4;
        int i6;
        Function0 function5;
        int i7;
        Function0 function6;
        Function0 function7;
        Function0 function8;
        Function0 function9;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BeautyColorSelector");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        list.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(564539064);
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposerH.K(modifier2) ? 4 : 2);
        } else {
            i4 = i2;
        }
        int i8 = i4 | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.y(tryOnProductUiModel) ? 256 : 128);
        int i9 = i3 & 8;
        if (i9 != 0) {
            i5 = i8 | 3072;
            lookUiModel2 = lookUiModel;
        } else {
            lookUiModel2 = lookUiModel;
            i5 = i8 | (gapComposerH.K(lookUiModel2) ? 2048 : 1024);
        }
        int i10 = i5 | (gapComposerH.y(function1) ? 16384 : 8192);
        int i11 = i3 & 32;
        if (i11 != 0) {
            i6 = i10 | ImageMetadata.EDGE_MODE;
            function4 = function0;
        } else {
            function4 = function0;
            i6 = i10 | (gapComposerH.y(function4) ? 131072 : 65536);
        }
        int i12 = i3 & 64;
        if (i12 != 0) {
            i7 = i6 | 1572864;
            function5 = function2;
        } else {
            function5 = function2;
            i7 = i6 | (gapComposerH.y(function5) ? 1048576 : 524288);
        }
        int i13 = (gapComposerH.y(function3) ? 8388608 : 4194304) | i7;
        if (gapComposerH.p(i13 & 1, (4793491 & i13) != 4793490)) {
            LookUiModel lookUiModel3 = i9 != 0 ? null : lookUiModel2;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i11 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new w9(15);
                    gapComposerH.q(objX);
                }
                function4 = (Function0) objX;
            }
            if (i12 != 0) {
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new w9(16);
                    gapComposerH.q(objX2);
                }
                function8 = (Function0) objX2;
            } else {
                function8 = function5;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                List list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        } else if (((TryOnProductUiModel) it.next()).f62190j) {
                            z = true;
                            break;
                        }
                    }
                } else {
                    z = false;
                    break;
                }
                objX4 = Boolean.valueOf(z);
                gapComposerH.q(objX4);
            }
            boolean zBooleanValue = ((Boolean) objX4).booleanValue();
            Boolean bool = (Boolean) mutableState.getF10755b();
            bool.booleanValue();
            boolean zK = gapComposerH.K(lazyListStateA) | ((i13 & 29360128) == 8388608);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$1) {
                objX5 = new BeautyColorSelectorKt$BeautyColorSelector$3$1(lazyListStateA, mutableState, function3, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX5);
            boolean zY = gapComposerH.y(list) | gapComposerH.y(tryOnProductUiModel) | gapComposerH.K(lazyListStateA);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                objX6 = new BeautyColorSelectorKt$BeautyColorSelector$4$1(list, tryOnProductUiModel, lazyListStateA, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, tryOnProductUiModel, (Function2) objX6);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerH, 48);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function10 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function10);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            int iIndexOf = list.indexOf(tryOnProductUiModel);
            Integer numValueOf = iIndexOf != -1 ? Integer.valueOf(iIndexOf) : null;
            int i14 = i13 >> 3;
            BeautyColorSliderKt.a(list, numValueOf != null ? numValueOf.intValue() : 0, lazyListStateA, function1, gapComposerH, i14 & 7182);
            Modifier modifierD = tr.d("BeautyColorSelector", 1.0f);
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new u5(21);
                gapComposerH.q(objX7);
            }
            Function0 function11 = function4;
            LookUiModel lookUiModel4 = lookUiModel3;
            gapComposerH = gapComposerH;
            AnimatedContentKt.b(lookUiModel4, modifierD, (Function1) objX7, null, "transition between product name and look selector", null, ComposableLambdaKt.b(-1912025359, new rd(tryOnProductUiModel, lookUiModel4, function11, zBooleanValue, 0), gapComposerH), gapComposerH, ((i13 >> 9) & 14) | 1597872, 40);
            lookUiModel2 = lookUiModel4;
            if (tryOnProductUiModel == null || !tryOnProductUiModel.f62189i) {
                function9 = function8;
                gapComposerH.L(322543424);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(322325277);
                function9 = function8;
                LVLinkKt.a(null, StringResources_androidKt.c(gapComposerH, R.string.vto_application_tips), false, LVColorScheme.INVERT, false, function9, gapComposerH, (i14 & ImageMetadata.JPEG_GPS_COORDINATES) | 3072, 21);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.o(new DTFunctionNameModifier("BeautyColorSelector"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            gapComposerH.Z(true);
            function6 = function11;
            function7 = function9;
        } else {
            gapComposerH.D();
            function6 = function4;
            function7 = function5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sd(modifier2, list, tryOnProductUiModel, lookUiModel2, function1, function6, function7, function3, i2, i3, 0);
        }
    }

    public static final void b(int i2, Composer composer, Modifier modifier, boolean z) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LimitedEditionRow");
        }
        GapComposer gapComposerH = composer.h(-613026697);
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2 | (gapComposerH.b(z) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = z ? modifierE : ModifierExtKt.a(AlphaKt.a(modifierE, Call.Parameters.DEFAULT_CAMERA_ZOOM), null, null, 7);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48394c, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "LimitedEditionRow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), IconSize.f48348b), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.vto_limited_edition), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pd(modifierE, z, i2);
        }
    }

    public static final void c(String str, Function0 function0, Composer composer, int i2) {
        int i3;
        String str2 = str;
        GapComposer gapComposerH = composer.h(1586224593);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(str2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("LookSelector"), RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).o)), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            boolean z = (i4 & 112) == 32;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new h1(function0, 11);
                gapComposerH.q(objX);
            }
            Modifier modifierC = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierB, false, null, null, (Function0) objX, 31);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function6);
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Modifier modifierK = PaddingKt.k(PaddingKt.k(new DTFunctionNameModifier("LookSelector"), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            str2 = str;
            TextKt.c(str2, PaddingKt.m(tr.e(gapComposerH, modifierC3, function6, "LookSelector"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i4 & 14, 0, 131064);
            gapComposerH = gapComposerH;
            i3 = 0;
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).G, gapComposerH, 0), null, SizeKt.o(new DTFunctionNameModifier("LookSelector"), IconSize.f48348b), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            i3 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qd(str2, function0, i2, i3);
        }
    }
}
