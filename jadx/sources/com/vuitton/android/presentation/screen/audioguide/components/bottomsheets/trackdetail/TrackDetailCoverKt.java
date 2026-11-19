package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import android.content.Context;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailCoverKt;
import defpackage.a10;
import defpackage.cj;
import defpackage.ef;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailCoverKt {
    /* JADX WARN: Code duplicated, block: B:100:0x039e  */
    /* JADX WARN: Code duplicated, block: B:106:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:110:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:112:0x040e  */
    /* JADX WARN: Code duplicated, block: B:87:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:90:0x0328  */
    /* JADX WARN: Code duplicated, block: B:93:0x0369  */
    /* JADX WARN: Code duplicated, block: B:95:0x0370  */
    /* JADX WARN: Code duplicated, block: B:96:0x0374  */
    /* JADX WARN: Code duplicated, block: B:99:0x039c  */
    public static final void a(final String str, final long j2, final long j3, final float f2, final float f3, final Function0 function0, final Function0 function1, Composer composer, final int i2) {
        GapComposer gapComposer;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean zY;
        Object objX;
        Object objX2;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        boolean z;
        Object objX3;
        boolean zY2;
        Object objX4;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -2084940763);
        Applier applier = gapComposerC.f7976a;
        int i3 = i2 | (gapComposerC.K(str) ? 4 : 2) | (gapComposerC.e(j2) ? 32 : 16) | (gapComposerC.e(j3) ? 256 : 128) | (gapComposerC.c(f2) ? 2048 : 1024) | (gapComposerC.c(f3) ? 16384 : 8192) | (gapComposerC.y(function0) ? 131072 : 65536) | (gapComposerC.y(function1) ? 1048576 : 524288);
        if (gapComposerC.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerC.k(AndroidCompositionLocals_androidKt.f9936b);
            float f4 = LVAppDesignKitTheme.d(gapComposerC).m;
            PaddingValuesImpl paddingValuesImplA = PaddingKt.a(LVAppDesignKitTheme.d(gapComposerC).m);
            ConfigurationIconButton.Border.None none = ConfigurationIconButton.Border.None.f48559a;
            ConfigurationIconButton configurationIconButton = new ConfigurationIconButton(j3, j3, null, null, j2, f4, paddingValuesImplA, none, none, none, 12, null);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TrackDetailCover-K2djEUw");
            boolean z2 = (57344 & i3) == 16384;
            Object objX5 = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z2 || objX5 == composer$Companion$Empty$2) {
                objX5 = new a10(f3, 4);
                gapComposerC.q(objX5);
            }
            Modifier modifierA = GraphicsLayerModifierKt.a(dTFunctionNameModifier, (Function1) objX5);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, measurePolicyD2, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function4);
            Integer numValueOf = Integer.valueOf(iHashCode2);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierD = SizeKt.d(AspectRatioKt.a(tr.e(gapComposerC, modifierC2, function7, "TrackDetailCover-K2djEUw"), 0.6666667f, false), 1.0f);
            MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
            int iHashCode3 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerC.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerC, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, measurePolicyD3, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerC, function5, gapComposerC, function6);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerC, modifierC3, function7, "TrackDetailCover-K2djEUw");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierE = ModifierExtKt.e(dTFunctionNameModifierE.o(fillElement), "audioGuide_trackDetailImage_image");
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierE, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerC, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierI = pq0.i("TrackDetailCover-K2djEUw", fillElement);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerC, 0);
            int iHashCode4 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerC.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerC, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, rowMeasurePolicyA, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU4, function4);
            cj.t(iHashCode4, gapComposerC, function5, gapComposerC, function6);
            Updater.c(gapComposerC, modifierC4, function7);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("TrackDetailCover-K2djEUw");
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierC5 = SizeKt.c(rowScopeInstance.a(dTFunctionNameModifier2, 1.0f, true), 1.0f);
            Object objX6 = gapComposerC.x();
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = InteractionSourceKt.a();
                gapComposerC.q(objX6);
            }
            Modifier modifierC6 = ModifierExtKt.c(modifierC5, false, (MutableInteractionSource) objX6, StringResources_androidKt.c(gapComposerC, R.string.alt_previous), function1, 3);
            MeasurePolicy measurePolicyD4 = BoxKt.d(Alignment.Companion.f8586e, false);
            int iHashCode5 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposerC.U();
            Modifier modifierC7 = ComposedModifierKt.c(gapComposerC, modifierC6);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, measurePolicyD4, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU5, function4);
            cj.t(iHashCode5, gapComposerC, function5, gapComposerC, function6);
            Modifier modifierM = PaddingKt.m(tr.e(gapComposerC, modifierC7, function7, "TrackDetailCover-K2djEUw"), LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            int i4 = i3 & 7168;
            boolean z3 = i4 == 2048;
            Object objX7 = gapComposerC.x();
            if (z3) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX7 == composer$Companion$Empty$1) {
                }
                Modifier modifierA2 = GraphicsLayerModifierKt.a(modifierM, (Function1) objX7);
                zY = gapComposerC.y(context);
                objX = gapComposerC.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new ef(context, 17);
                    gapComposerC.q(objX);
                }
                LVIconButtonKt.b(SemanticsModifierKt.b(modifierA2, false, (Function1) objX), configurationIconButton, LVAppDesignKitTheme.g(gapComposerC).H, null, StringResources_androidKt.c(gapComposerC, R.string.alt_previous), false, 0, false, false, function1, gapComposerC, 0, (i3 >> 18) & 14, 1000);
                Modifier modifierC8 = SizeKt.c(rowScopeInstance.a(o60.f(gapComposerC, true, "TrackDetailCover-K2djEUw"), 1.0f, true), 1.0f);
                objX2 = gapComposerC.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = InteractionSourceKt.a();
                    gapComposerC.q(objX2);
                }
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                Modifier modifierC9 = ModifierExtKt.c(modifierC8, false, (MutableInteractionSource) objX2, StringResources_androidKt.c(gapComposerC, R.string.alt_next), function0, 3);
                measurePolicyD = BoxKt.d(Alignment.Companion.g, false);
                iHashCode = Long.hashCode(gapComposerC.T);
                persistentCompositionLocalMapU = gapComposerC.U();
                modifierC = ComposedModifierKt.c(gapComposerC, modifierC9);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerC.B();
                if (gapComposerC.S) {
                    gapComposerC.C(function2);
                } else {
                    gapComposerC.o();
                }
                Updater.c(gapComposerC, measurePolicyD, function3);
                Updater.c(gapComposerC, persistentCompositionLocalMapU, function4);
                cj.t(iHashCode, gapComposerC, function5, gapComposerC, function6);
                Modifier modifierM2 = PaddingKt.m(tr.e(gapComposerC, modifierC, function7, "TrackDetailCover-K2djEUw"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                if (i4 == 2048) {
                    z = true;
                } else {
                    z = false;
                }
                objX3 = gapComposerC.x();
                if (z || objX3 == composer$Companion$Empty$3) {
                    objX3 = new a10(f2, 6);
                    gapComposerC.q(objX3);
                }
                Modifier modifierA3 = GraphicsLayerModifierKt.a(modifierM2, (Function1) objX3);
                zY2 = gapComposerC.y(context);
                objX4 = gapComposerC.x();
                if (zY2 || objX4 == composer$Companion$Empty$3) {
                    objX4 = new ef(context, 18);
                    gapComposerC.q(objX4);
                }
                LVIconButtonKt.b(SemanticsModifierKt.b(modifierA3, false, (Function1) objX4), configurationIconButton, LVAppDesignKitTheme.g(gapComposerC).I, null, StringResources_androidKt.c(gapComposerC, R.string.alt_next), false, 0, false, false, function0, gapComposerC, 0, (i3 >> 15) & 14, 1000);
                gapComposer = gapComposerC;
                gapComposer.Z(true);
                gapComposer.Z(true);
                gapComposer.Z(true);
                gapComposer.Z(true);
            }
            objX7 = new a10(f2, 5);
            gapComposerC.q(objX7);
            Modifier modifierA4 = GraphicsLayerModifierKt.a(modifierM, (Function1) objX7);
            zY = gapComposerC.y(context);
            objX = gapComposerC.x();
            if (zY) {
                objX = new ef(context, 17);
                gapComposerC.q(objX);
            } else {
                objX = new ef(context, 17);
                gapComposerC.q(objX);
            }
            LVIconButtonKt.b(SemanticsModifierKt.b(modifierA4, false, (Function1) objX), configurationIconButton, LVAppDesignKitTheme.g(gapComposerC).H, null, StringResources_androidKt.c(gapComposerC, R.string.alt_previous), false, 0, false, false, function1, gapComposerC, 0, (i3 >> 18) & 14, 1000);
            Modifier modifierC10 = SizeKt.c(rowScopeInstance.a(o60.f(gapComposerC, true, "TrackDetailCover-K2djEUw"), 1.0f, true), 1.0f);
            objX2 = gapComposerC.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = InteractionSourceKt.a();
                gapComposerC.q(objX2);
            }
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
            Modifier modifierC11 = ModifierExtKt.c(modifierC10, false, (MutableInteractionSource) objX2, StringResources_androidKt.c(gapComposerC, R.string.alt_next), function0, 3);
            measurePolicyD = BoxKt.d(Alignment.Companion.g, false);
            iHashCode = Long.hashCode(gapComposerC.T);
            persistentCompositionLocalMapU = gapComposerC.U();
            modifierC = ComposedModifierKt.c(gapComposerC, modifierC11);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, measurePolicyD, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function4);
            cj.t(iHashCode, gapComposerC, function5, gapComposerC, function6);
            Modifier modifierM3 = PaddingKt.m(tr.e(gapComposerC, modifierC, function7, "TrackDetailCover-K2djEUw"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            if (i4 == 2048) {
                z = true;
            } else {
                z = false;
            }
            objX3 = gapComposerC.x();
            if (z) {
                objX3 = new a10(f2, 6);
                gapComposerC.q(objX3);
            } else {
                objX3 = new a10(f2, 6);
                gapComposerC.q(objX3);
            }
            Modifier modifierA5 = GraphicsLayerModifierKt.a(modifierM3, (Function1) objX3);
            zY2 = gapComposerC.y(context);
            objX4 = gapComposerC.x();
            if (zY2) {
                objX4 = new ef(context, 18);
                gapComposerC.q(objX4);
            } else {
                objX4 = new ef(context, 18);
                gapComposerC.q(objX4);
            }
            LVIconButtonKt.b(SemanticsModifierKt.b(modifierA5, false, (Function1) objX4), configurationIconButton, LVAppDesignKitTheme.g(gapComposerC).I, null, StringResources_androidKt.c(gapComposerC, R.string.alt_next), false, 0, false, false, function0, gapComposerC, 0, (i3 >> 15) & 14, 1000);
            gapComposer = gapComposerC;
            gapComposer.Z(true);
            gapComposer.Z(true);
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(str, j2, j3, f2, f3, function0, function1, i2) { // from class: i41

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ String f69871b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f69872c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f69873e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ float f69874f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f69875h;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    TrackDetailCoverKt.a(this.f69871b, this.f69872c, this.d, this.f69873e, this.f69874f, this.g, this.f69875h, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
