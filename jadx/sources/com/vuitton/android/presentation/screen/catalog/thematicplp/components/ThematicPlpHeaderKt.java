package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.ResizableTextKt;
import com.vuitton.android.designkit.ui.common.ItemUtilsKt;
import com.vuitton.android.designkit.ui.common.RowItemCenterPosition;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.OverlayConstants;
import defpackage.c80;
import defpackage.e31;
import defpackage.hk0;
import defpackage.ik0;
import defpackage.jk0;
import defpackage.kj0;
import defpackage.ll0;
import defpackage.qf;
import defpackage.ud;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "verticalPadding", "imageSize", "borderWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpHeaderKt {
    public static final void a(Modifier modifier, String str, boolean z, Function0 function0, Composer composer, int i2) {
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CatalogHeaderItem");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(322979842);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = i3 >> 3;
            Modifier modifierB = ModifierExtKt.b(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(ClipKt.a(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifier2, null, null, 7), RoundedCornerShapeKt.f5846a), !z, null, null, function0, 30), z, new e31(3), gapComposerH, i4 & 112);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierJ = PaddingKt.j(SizeKt.u(modifierB, Call.Parameters.DEFAULT_CAMERA_ZOOM, 200.0f, 1), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            if (z) {
                gapComposerH.L(-1977507082);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            } else {
                gapComposerH.L(-1977505451);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            }
            gapComposerH.Z(false);
            TextOverflow.f10989a.getClass();
            TextKt.c(str, null, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, i4 & 14, 24960, 110586);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c80(modifier2, str, z, function0, i2, 2);
        }
    }

    public static final void b(Modifier modifier, String str, String str2, boolean z, Function0 function0, Composer composer, int i2) {
        float f2;
        float f3;
        boolean z2;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CatalogHeaderItemWithImage");
        }
        GapComposer gapComposerH = composer.h(676825902);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (z) {
                gapComposerH.L(1889640405);
                f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
            } else {
                gapComposerH.L(1889641750);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
            }
            gapComposerH.Z(false);
            State stateA = AnimateAsStateKt.a(f2, AnimationSpecKt.c(300, 0, null, 6), null, null, gapComposerH, 48, 12);
            State stateA2 = AnimateAsStateKt.a(z ? 88.0f : 72.0f, AnimationSpecKt.c(300, 0, null, 6), null, null, gapComposerH, 48, 12);
            if (z) {
                gapComposerH.L(1889655253);
                f3 = LVAppDesignKitTheme.d(gapComposerH).f48385c;
            } else {
                gapComposerH.L(1889656533);
                f3 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
            }
            gapComposerH.Z(false);
            State stateA3 = AnimateAsStateKt.a(f3, AnimationSpecKt.c(300, 0, null, 6), null, null, gapComposerH, 48, 12);
            Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierE, null, null, 7);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(ModifierExtKt.b(com.vuitton.android.designkit.ui.common.ModifierExtKt.c(SizeKt.o(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("CatalogHeaderItemWithImage"), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) stateA.getF10755b()).f11006b, 1), RoundedCornerShapeKt.f5846a), ((Dp) stateA2.getF10755b()).f11006b), !z, null, null, function0, 30), z, new hk0(stateA3, 1), gapComposerH, (i3 >> 6) & 112), str2, ContentScale.Companion.f9453h, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierU = SizeKt.u(new DTFunctionNameModifier("CatalogHeaderItemWithImage"), Call.Parameters.DEFAULT_CAMERA_ZOOM, 72.0f, 1);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            if (z) {
                gapComposerH.L(-333885550);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                z2 = false;
            } else {
                z2 = false;
                gapComposerH.L(-333883919);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            }
            gapComposerH.Z(z2);
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextAlign.f10959b.getClass();
            ResizableTextKt.a(str, modifierU, j2, i4, 2, 0, textStyle, new TextAlign(TextAlign.f10961e), gapComposerH, ((i3 >> 3) & 14) | 27696, 32);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qf(modifierE, str, str2, z, function0, i2, 2);
        }
    }

    public static final void c(List list, String str, final Function2 function2, Function1 function1, final OverlayConstants overlayConstants, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z;
        float f2;
        boolean z2;
        Object obj;
        int i3;
        boolean z3;
        final PLPEntryUiModel pLPEntryUiModel;
        Map map;
        int i4;
        boolean z4;
        Context context;
        String str2;
        GapComposer gapComposer2;
        list.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1444598016);
        int i5 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.K(overlayConstants) ? 16384 : 8192);
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            final HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            List list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    } else if (((PLPEntryUiModel) it.next()).d == null) {
                        z = false;
                        break;
                    }
                }
            } else {
                z = true;
                break;
            }
            boolean zK = gapComposerH.K(list);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new LinkedHashMap();
                gapComposerH.q(objX2);
            }
            Map map2 = (Map) objX2;
            float f3 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            int iB = (int) ResourcesExtKt.b(f3 - LVAppDesignKitTheme.l(gapComposerH).g);
            LayoutDirection layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ScrollProgressTrackerKt.b(scrollStateB, function1, gapComposerH, 48);
            String str3 = "ThematicPlpHeader";
            Context context3 = context2;
            CoroutineScope coroutineScope2 = coroutineScope;
            Modifier modifierI = PaddingKt.i(ScrollKt.a(ModifierExtKt.b(SizeKt.d(new DTFunctionNameModifier("ThematicPlpHeader"), 1.0f), overlayConstants != null, new ll0(overlayConstants, 29), gapComposerH, 6), scrollStateB, false, 14), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            boolean zY = gapComposerH.y(list);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new ud(list, 18);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierI, false, (Function1) objX3);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            if (z) {
                gapComposerH.L(448841596);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(448916957);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                gapComposerH.Z(false);
            }
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(f2);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
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
            gapComposerH.L(92221002);
            Iterator it2 = list2.iterator();
            int i6 = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                int i7 = i6 + 1;
                if (i6 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                PLPEntryUiModel pLPEntryUiModel2 = (PLPEntryUiModel) next;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str3);
                boolean zD = gapComposerH.d(layoutDirection.ordinal()) | gapComposerH.y(map2) | gapComposerH.K(pLPEntryUiModel2);
                Object objX4 = gapComposerH.x();
                if (zD || objX4 == composer$Companion$Empty$1) {
                    z2 = true;
                    objX4 = new ik0(layoutDirection, map2, pLPEntryUiModel2, 1);
                    gapComposerH.q(objX4);
                } else {
                    z2 = true;
                }
                Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX4);
                Iterator it3 = it2;
                LayoutDirection layoutDirection2 = layoutDirection;
                final CoroutineScope coroutineScope3 = coroutineScope2;
                boolean zY2 = ((i5 & 896) == 256 ? z2 : false) | ((57344 & i5) == 16384 ? z2 : false) | gapComposerH.y(hapticFeedback) | gapComposerH.K(pLPEntryUiModel2) | gapComposerH.b(z) | gapComposerH.y(map2) | gapComposerH.d(iB) | gapComposerH.K(scrollStateB) | gapComposerH.y(coroutineScope3);
                Object objX5 = gapComposerH.x();
                if (zY2 || objX5 == composer$Companion$Empty$1) {
                    i3 = i5;
                    final int i8 = iB;
                    final boolean z5 = z;
                    final Map map3 = map2;
                    z3 = false;
                    pLPEntryUiModel = pLPEntryUiModel2;
                    obj = new Function0() { // from class: y31
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            if (overlayConstants == null) {
                                HapticFeedbackType.f9193b.getClass();
                                int i9 = PlatformHapticFeedbackType.f9196a;
                                hapticFeedback.a(0);
                                Boolean boolValueOf = Boolean.valueOf(z5);
                                Function2 function3 = function2;
                                PLPEntryUiModel pLPEntryUiModel3 = pLPEntryUiModel;
                                function3.invoke(pLPEntryUiModel3, boolValueOf);
                                ItemUtilsKt.a((RowItemCenterPosition) map3.get(pLPEntryUiModel3.f55373b), i8, scrollStateB, coroutineScope3);
                            }
                            return Unit.f71739a;
                        }
                    };
                    map = map3;
                    i4 = i8;
                    z4 = z5;
                    gapComposerH.q(obj);
                } else {
                    i3 = i5;
                    i4 = iB;
                    obj = objX5;
                    z4 = z;
                    map = map2;
                    z3 = false;
                    pLPEntryUiModel = pLPEntryUiModel2;
                }
                Function0 function3 = (Function0) obj;
                boolean zK2 = gapComposerH.K(pLPEntryUiModel) | ((i3 & 112) == 32 ? true : z3) | gapComposerH.y(context3) | gapComposerH.d(i6) | gapComposerH.K(function3);
                Object objX6 = gapComposerH.x();
                if (zK2 || objX6 == composer$Companion$Empty$1) {
                    Context context4 = context3;
                    PLPEntryUiModel pLPEntryUiModel3 = pLPEntryUiModel;
                    jk0 jk0Var = new jk0(pLPEntryUiModel3, str, context4, i6, function3, 1);
                    context = context4;
                    function3 = function3;
                    pLPEntryUiModel = pLPEntryUiModel3;
                    str2 = str;
                    gapComposerH.q(jk0Var);
                    objX6 = jk0Var;
                } else {
                    str2 = str;
                    context = context3;
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierA, true, (Function1) objX6);
                if (z4) {
                    gapComposerH.L(1772470943);
                    String str4 = pLPEntryUiModel.f55374c;
                    AssetImageUiModel assetImageUiModel = pLPEntryUiModel.d;
                    String str5 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
                    if (str5 == null) {
                        str5 = "";
                    }
                    boolean zC = Intrinsics.c(pLPEntryUiModel.f55373b, str2);
                    GapComposer gapComposer3 = gapComposerH;
                    b(modifierB2, str4, str5, zC, function3, gapComposer3, 0);
                    gapComposer2 = gapComposer3;
                    gapComposer2.Z(z3);
                } else {
                    gapComposer2 = gapComposerH;
                    gapComposer2.L(1772846694);
                    a(modifierB2, pLPEntryUiModel.f55374c, Intrinsics.c(pLPEntryUiModel.f55373b, str2), function3, gapComposer2, 0);
                    gapComposer2.Z(z3);
                }
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                gapComposerH = gapComposer2;
                hapticFeedback = hapticFeedback;
                z = z4;
                it2 = it3;
                str3 = str3;
                i6 = i7;
                i5 = i3;
                layoutDirection = layoutDirection2;
                map2 = map;
                iB = i4;
                context3 = context;
                coroutineScope2 = coroutineScope3;
            }
            gapComposer = gapComposerH;
            gapComposer.Z(false);
            gapComposer.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0(list, str, function2, function1, overlayConstants, i2);
        }
    }
}
