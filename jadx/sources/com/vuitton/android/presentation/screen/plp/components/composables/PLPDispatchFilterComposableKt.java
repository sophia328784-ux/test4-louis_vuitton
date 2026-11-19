package com.vuitton.android.presentation.screen.plp.components.composables;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.dh;
import defpackage.g4;
import defpackage.ze;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPDispatchFilterComposableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f62727a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f62727a = 150.0f;
    }

    public static final void a(ProductFilterValueUiModel productFilterValueUiModel, int i2, Function0 function0, Composer composer, int i3) {
        int i4;
        long j2;
        GapComposer gapComposerH = composer.h(1103076981);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(productFilterValueUiModel) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function0) ? 256 : 128;
        }
        int i5 = i4;
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DispatchFilterItem");
            float f2 = f62727a;
            Modifier modifierS = SizeKt.s(dTFunctionNameModifier, f2);
            boolean z = productFilterValueUiModel.f62969f;
            boolean z2 = productFilterValueUiModel.f62968e;
            Modifier modifierC = ModifierExtKt.c(modifierS, z, null, null, function0, 30);
            boolean z3 = ((i5 & 14) == 4) | ((i5 & 112) == 32);
            Object objX = gapComposerH.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new ze(productFilterValueUiModel, i2, 9);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierC, true, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.o, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, modifierC2, function6);
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("DispatchFilterItem"), f2);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            AssetImageUiModel assetImageUiModel = productFilterValueUiModel.f62967c;
            String str = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
            if (str == null) {
                str = "";
            }
            ImageLoaderKt.b(modifierA, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            String str2 = productFilterValueUiModel.f62966b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
            if (z2) {
                gapComposerH.L(1944114902);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1944197207);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            }
            TextOverflow.f10989a.getClass();
            int i6 = TextOverflow.f10991c;
            TextAlign.f10959b.getClass();
            TextKt.c(str2, null, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, i6, false, 2, 2, null, textStyle, gapComposerH, 0, 221568, 76794);
            gapComposerH = gapComposerH;
            Modifier modifierO2 = SizeKt.o(new DTFunctionNameModifier("DispatchFilterItem"), LVAppDesignKitTheme.d(gapComposerH).m);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierO2);
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
            Updater.c(gapComposerH, modifierC3, function6);
            if (z2) {
                gapComposerH.L(-1699767448);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48393b, gapComposerH, 0), null, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 4);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1699520471);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dh(productFilterValueUiModel, i2, function0, i3);
        }
    }

    public static final void b(Modifier modifier, final List list, final Function1 function1, final Function1 function2, final Function0 function0, Composer composer, final int i2) {
        final Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPDispatchFilterComposable");
        }
        list.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(719268134);
        int i3 = i2 | 6 | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            final DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPDispatchFilterComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (list.isEmpty()) {
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i4 = 0;
                function3 = new Function2(dTFunctionNameModifier, list, function1, function2, function0, i2, i4) { // from class: gk0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f69436b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f69437c;
                    public final /* synthetic */ List d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ Function1 f69438e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ Function1 f69439f;
                    public final /* synthetic */ Function0 g;

                    {
                        this.f69436b = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        switch (this.f69436b) {
                            case 0:
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(1);
                                PLPDispatchFilterComposableKt.b(this.f69437c, this.d, this.f69438e, this.f69439f, this.g, (Composer) obj, iA);
                                break;
                            default:
                                ((Integer) obj2).getClass();
                                int iA2 = RecomposeScopeImplKt.a(1);
                                PLPDispatchFilterComposableKt.b(this.f69437c, this.d, this.f69438e, this.f69439f, this.g, (Composer) obj, iA2);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                CoroutineScope coroutineScope = (CoroutineScope) objX;
                boolean zK = gapComposerH.K(lazyListStateA) | ((57344 & i3) == 16384);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$2$1(lazyListStateA, function0, null);
                    gapComposerH.q(objX2);
                }
                EffectsKt.e(gapComposerH, lazyListStateA, (Function2) objX2);
                Modifier modifierM = PaddingKt.m(SizeKt.d(dTFunctionNameModifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                PaddingValuesImpl paddingValuesImplC = PaddingKt.c(LVAppDesignKitTheme.l(gapComposerH).f48416e, 2);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
                boolean zY = gapComposerH.y(list) | gapComposerH.y(hapticFeedback) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    g4 g4Var = new g4(list, (Object) hapticFeedback, function1, (Object) function2, (Object) coroutineScope, (Object) lazyListStateA, 6);
                    lazyListStateA = lazyListStateA;
                    gapComposerH.q(g4Var);
                    objX3 = g4Var;
                }
                modifier2 = dTFunctionNameModifier;
                LazyDslKt.b(modifierM, lazyListStateA, paddingValuesImplC, spacedAlignedF, null, null, false, null, (Function1) objX3, gapComposerH, 0, 488);
            }
            recomposeScopeImplB0.d = function3;
        }
        gapComposerH.D();
        modifier2 = modifierE;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i5 = 1;
            function3 = new Function2(modifier2, list, function1, function2, function0, i2, i5) { // from class: gk0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f69436b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f69437c;
                public final /* synthetic */ List d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f69438e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f69439f;
                public final /* synthetic */ Function0 g;

                {
                    this.f69436b = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    switch (this.f69436b) {
                        case 0:
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(1);
                            PLPDispatchFilterComposableKt.b(this.f69437c, this.d, this.f69438e, this.f69439f, this.g, (Composer) obj, iA);
                            break;
                        default:
                            ((Integer) obj2).getClass();
                            int iA2 = RecomposeScopeImplKt.a(1);
                            PLPDispatchFilterComposableKt.b(this.f69437c, this.d, this.f69438e, this.f69439f, this.g, (Composer) obj, iA2);
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function3;
        }
    }
}
