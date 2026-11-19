package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
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
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.style.TextOverflow;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.sm0;
import defpackage.z2;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchHintCardComposableKt {
    public static final void a(Modifier modifier, String str, String str2, AssetImageUiModel assetImageUiModel, ContributionLinkUiModel contributionLinkUiModel, Function2 function2, Composer composer, int i2) {
        int i3;
        Function2 function3;
        Function2 function4;
        Function0 function0;
        int i4;
        int i5;
        String str3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SearchHintCardComposable");
        }
        str.getClass();
        contributionLinkUiModel.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-714485217);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(assetImageUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= (i2 & 32768) == 0 ? gapComposerH.K(contributionLinkUiModel) : gapComposerH.y(contributionLinkUiModel) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        int i6 = i3;
        if (gapComposerH.p(i6 & 1, (i6 & 74899) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(gapComposerH).f48411c;
            final float fB = ResourcesExtKt.b(LVAppDesignKitTheme.d(gapComposerH).f48385c);
            final long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.t;
            Modifier modifierB = BackgroundKt.b(modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.g, roundedCornerShape);
            boolean zK = gapComposerH.K(roundedCornerShape) | gapComposerH.e(j2) | gapComposerH.c(fB);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new Function1() { // from class: ou0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DrawScope drawScope = (DrawScope) obj;
                        drawScope.getClass();
                        float fA = roundedCornerShape.f5841a.a(drawScope.b(), drawScope);
                        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fA)) << 32) | (((long) Float.floatToRawIntBits(fA)) & BodyPartID.bodyIdMax);
                        CornerRadius.Companion companion = CornerRadius.f8802a;
                        DrawScope.H0(drawScope, j2, 0L, 0L, jFloatToRawIntBits, new Stroke(fB, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null), 230);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = DrawModifierKt.b(modifierB, (Function1) objX);
            boolean z = ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i6 & 57344) == 16384 || ((i6 & 32768) != 0 && gapComposerH.y(contributionLinkUiModel))) | ((i6 & 112) == 32);
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new sm0(function2, contributionLinkUiModel, str, 13);
                gapComposerH.q(objX2);
            }
            Modifier modifierI = PaddingKt.i(ClickableKt.d(modifierB2, false, null, null, (Function0) objX2, 15), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            if (assetImageUiModel == null) {
                gapComposerH.L(-1617628716);
                gapComposerH.Z(false);
                function3 = function9;
                i4 = 0;
                function0 = function1;
                function4 = function5;
            } else {
                Modifier modifierO = SizeKt.o(n00.i(gapComposerH, -1617628715, "SearchHintCardComposable"), LVAppDesignKitTheme.d(gapComposerH).A);
                String str4 = assetImageUiModel.f51778b;
                str4.getClass();
                function3 = function9;
                function4 = function5;
                function0 = function1;
                ImageLoaderKt.b(modifierO, str4, null, null, null, 0, false, null, null, null, gapComposerH, 24576, 2028);
                gapComposerH = gapComposerH;
                i4 = 0;
                gapComposerH.Z(false);
            }
            Modifier modifierB3 = cj.b(r23, RowScopeInstance.f5040a, 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b), Alignment.Companion.n, gapComposerH, i4);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC2, function3);
            TextOverflow.f10989a.getClass();
            int i7 = TextOverflow.f10991c;
            GapComposer gapComposer = gapComposerH;
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, i7, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposer, (i6 >> 3) & 14, 24960, 110586);
            gapComposerH = gapComposer;
            if (str2 == null) {
                gapComposerH.L(2036642868);
                gapComposerH.Z(false);
                i5 = 0;
                str3 = "SearchHintCardComposable";
            } else {
                TextKt.c(str2, PaddingKt.m(n00.i(gapComposerH, 2036642869, "SearchHintCardComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerH).f48361b.n, 0L, null, 0L, null, null, 0L, i7, false, 2, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 24960, 110584);
                gapComposerH = gapComposerH;
                i5 = 0;
                gapComposerH.Z(false);
                str3 = "SearchHintCardComposable";
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, i5), null, SizeKt.o(o60.f(gapComposerH, true, str3), LVAppDesignKitTheme.d(gapComposerH).m), LVAppDesignKitTheme.c(gapComposerH).f48361b.n, gapComposerH, 56, 0);
            gapComposerH.Z(true);
        } else {
            modifierE = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2((Object) modifierE, str, str2, (Object) assetImageUiModel, (Object) contributionLinkUiModel, (Function) function2, i2, 21);
        }
    }
}
