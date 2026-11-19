package com.vuitton.android.presentation.screen.storemode.components;

import android.content.res.Configuration;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
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
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ScreenDimensionsKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeHomeSlideshowKt;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.a;
import defpackage.cj;
import defpackage.db;
import defpackage.n00;
import defpackage.o60;
import defpackage.r5;
import defpackage.zk;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeHomeSlideshowKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64837a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64837a = 80.0f;
    }

    public static final void a(Modifier modifier, final float f2, final List list, final float f3, Composer composer, final int i2) {
        final Modifier modifier2;
        GapComposer gapComposer;
        Object obj;
        boolean z;
        GapComposer gapComposer2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "StoreModeHomeSlideshow-DzVHIIc");
        }
        list.getClass();
        GapComposer gapComposerH = composer.h(-936974176);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.c(f2) ? 32 : 16) | (gapComposerH.y(list) ? 256 : 128) | (gapComposerH.c(f3) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("StoreModeHomeSlideshow-DzVHIIc");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f4 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierF = SizeKt.f(SizeKt.s(dTFunctionNameModifier, MathKt.c(f4)), (MathKt.c(ScreenDimensionsKt.a(gapComposerH, 1)) - f2) + LVAppDesignKitTheme.d(gapComposerH).m);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierF);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            Unit unit = null;
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            List list2 = !list.isEmpty() ? list : null;
            if (list2 == null) {
                gapComposerH.L(441309859);
                gapComposerH.Z(false);
                z = true;
                gapComposer2 = gapComposerH;
            } else {
                gapComposerH.L(441309860);
                boolean zK = gapComposerH.K(list2);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zK || objX == composer$Companion$Empty$1) {
                    obj = objX;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list2) {
                        AssetImage assetImage = ((Asset) obj2).f67106a;
                        if (StringExtKt.a(assetImage != null ? assetImage.f67108a : null)) {
                            arrayList.add(obj2);
                        }
                    }
                    gapComposerH.q(arrayList);
                    obj = arrayList;
                }
                List list3 = (List) obj;
                boolean zY = gapComposerH.y(list3);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    objX2 = new db(list3, 17);
                    gapComposerH.q(objX2);
                }
                PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX2, gapComposerH, 0, 3);
                long jB = Color.b(f3, LVAppDesignKitTheme.c(gapComposerH).f48361b.u);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("StoreModeHomeSlideshow-DzVHIIc");
                boolean zE = gapComposerH.e(jB);
                Object objX3 = gapComposerH.x();
                if (zE || objX3 == composer$Companion$Empty$1) {
                    objX3 = new r5(jB, 17);
                    gapComposerH.q(objX3);
                }
                Modifier modifierD = DrawModifierKt.d(dTFunctionNameModifier2, (Function1) objX3);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
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
                Function2 function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD2, function2);
                Function2 function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                Integer numValueOf = Integer.valueOf(iHashCode2);
                Function2 function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                Function1 function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                Function2 function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC2, function6);
                GapComposer gapComposer3 = gapComposerH;
                z = true;
                LVSlideShowKt.a(pagerStateB, null, false, null, true, false, ComposableLambdaKt.b(654464336, new zk(list3, 1), gapComposerH), gapComposer3, 12779520, 94);
                Modifier modifierV = SizeKt.v(o60.d(gapComposer3, true, "StoreModeHomeSlideshow-DzVHIIc", 1.0f), Alignment.Companion.l, 2);
                BiasAlignment biasAlignment = Alignment.Companion.f8589i;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                Modifier modifierG = boxScopeInstance.g(modifierV, biasAlignment);
                MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
                int iHashCode3 = Long.hashCode(gapComposer3.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer3.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer3, modifierG);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer3.B();
                if (gapComposer3.S) {
                    gapComposer3.C(function1);
                } else {
                    gapComposer3.o();
                }
                Updater.c(gapComposer3, measurePolicyD3, function2);
                Updater.c(gapComposer3, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposer3, function4, gapComposer3, function5);
                BoxKt.a(GradientKt.c(SizeKt.f(n00.e(gapComposer3, modifierC3, function6, "StoreModeHomeSlideshow-DzVHIIc", 1.0f), f64837a)), gapComposer3, 0);
                LVCapsulePageControlKt.a(PaddingKt.m(boxScopeInstance.g(new DTFunctionNameModifier("StoreModeHomeSlideshow-DzVHIIc"), biasAlignment), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48417f, 7), pagerStateB, null, false, gapComposer3, 0, 12);
                gapComposer3.Z(true);
                gapComposer3.Z(false);
                unit = Unit.f71739a;
                gapComposer2 = gapComposer3;
            }
            if (unit == null) {
                BoxKt.a(BackgroundKt.b(n00.i(gapComposer2, 152838136, "StoreModeHomeSlideshow-DzVHIIc").o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposer2).f48361b.u, RectangleShapeKt.f8913a), gapComposer2, 0);
                gapComposer2.Z(false);
            } else {
                gapComposer2.L(152781809);
                gapComposer2.Z(false);
            }
            gapComposer2.Z(z);
            modifier2 = dTFunctionNameModifier;
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer4 = gapComposerH;
            gapComposer4.D();
            modifier2 = modifierE;
            gapComposer = gapComposer4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(f2, list, f3, i2) { // from class: n11

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f76419c;
                public final /* synthetic */ List d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f76420e;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    StoreModeHomeSlideshowKt.a(this.f76418b, this.f76419c, this.d, this.f76420e, (Composer) obj3, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
