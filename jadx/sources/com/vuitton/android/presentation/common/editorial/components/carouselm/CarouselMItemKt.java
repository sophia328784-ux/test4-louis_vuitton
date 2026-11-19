package com.vuitton.android.presentation.common.editorial.components.carouselm;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.CarouselAssetKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselItemTitlesUiModel;
import com.vuitton.android.presentation.common.editorial.models.CarouselMItemUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.a;
import defpackage.d21;
import defpackage.jh;
import defpackage.n00;
import defpackage.tr;
import defpackage.xd;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselMItemKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50738a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50738a = iArr;
        }
    }

    public static final void a(Modifier modifier, final CarouselMItemUiModel carouselMItemUiModel, int i2, LVColorScheme lVColorScheme, boolean z, final Function1 function1, Composer composer, int i3) {
        Modifier modifier2;
        boolean z2;
        long j2;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CarouselMItem");
        }
        carouselMItemUiModel.getClass();
        lVColorScheme.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(563220554);
        int i4 = i3 | 6;
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(carouselMItemUiModel) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(i2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        final int i5 = 0;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CarouselMItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = 458752 & i4;
            boolean zY = (i6 == 131072) | gapComposerH.y(carouselMItemUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new Function0() { // from class: pj
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        switch (i5) {
                            case 0:
                                function1.invoke(carouselMItemUiModel.f50794c);
                                break;
                            default:
                                function1.invoke(carouselMItemUiModel.f50794c);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new jh(7);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierC, true, (Function1) objX2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Modifier modifierE2 = ModifierExtKt.e(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "CarouselMItem"), "carousel_asset_" + i2);
            AssetUiModel assetUiModel = carouselMItemUiModel.d;
            CarouselItemTitlesUiModel carouselItemTitlesUiModel = carouselMItemUiModel.f50793b;
            RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(gapComposerH).f48411c;
            boolean zY2 = (i6 == 131072) | gapComposerH.y(carouselMItemUiModel);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                z2 = true;
                final char c2 = 1 == true ? 1 : 0;
                objX3 = new Function0() { // from class: pj
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        switch (c2) {
                            case 0:
                                function1.invoke(carouselMItemUiModel.f50794c);
                                break;
                            default:
                                function1.invoke(carouselMItemUiModel.f50794c);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            } else {
                z2 = true;
            }
            CarouselAssetKt.a(modifierE2, assetUiModel, 0.8f, roundedCornerShape, z, (Function0) objX3, gapComposerH, (i4 & 57344) | KyberEngine.KyberPolyBytes, 0);
            String str = carouselItemTitlesUiModel != null ? carouselItemTitlesUiModel.f50784b : null;
            if (str == null) {
                gapComposerH.L(442700030);
                gapComposerH.Z(false);
            } else {
                Modifier modifierE3 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 442700031, "CarouselMItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), "carousel_surtitle_text_" + i2);
                TextOverflow.f10989a.getClass();
                int i7 = TextOverflow.f10991c;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                int i8 = WhenMappings.f50738a[lVColorScheme.ordinal()];
                if (i8 == z2) {
                    gapComposerH.L(-675552203);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                } else {
                    if (i8 != 2) {
                        throw d21.u(gapComposerH, -675555071, false);
                    }
                    gapComposerH.L(-675549137);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, i7, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            String str2 = carouselItemTitlesUiModel != null ? carouselItemTitlesUiModel.f50783a : null;
            if (str2 == null) {
                gapComposerH.L(443525343);
                gapComposerH.Z(false);
            } else {
                Modifier modifierE4 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 443525344, "CarouselMItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), "carousel_title_text_" + i2);
                TextOverflow.f10989a.getClass();
                int i9 = TextOverflow.f10991c;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                int i10 = WhenMappings.f50738a[lVColorScheme.ordinal()];
                if (i10 == z2) {
                    gapComposerH.L(-1908131635);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    if (i10 != 2) {
                        throw d21.u(gapComposerH, -1908134502, false);
                    }
                    gapComposerH.L(-1908128537);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                }
                GapComposer gapComposer = gapComposerH;
                TextKt.c(str2, modifierE4, j3, 0L, null, 0L, null, null, 0L, i9, false, 2, 0, null, textStyle2, gapComposer, 0, 24960, 110584);
                gapComposerH = gapComposer;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z2);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xd(modifier2, carouselMItemUiModel, i2, lVColorScheme, z, function1, i3);
        }
    }
}
