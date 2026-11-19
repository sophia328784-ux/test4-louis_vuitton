package com.vuitton.android.presentation.screen.story.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ProgressIndicatorKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt;
import defpackage.cj;
import defpackage.l01;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoryProgressBarKt {
    public static final void a(final int i2, final int i3, boolean z, final long j2, final boolean z2, final CoroutineScope coroutineScope, final Function0 function0, Composer composer, final int i4) {
        int i5;
        final boolean z3;
        Object storyProgressBarKt$StoryProgressBar$2$1;
        int i6;
        final Animatable animatable;
        long j3;
        long jB;
        coroutineScope.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1648318686);
        int i7 = i4 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.d(i3) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192) | (gapComposerH.y(coroutineScope) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288);
        if (gapComposerH.p(i7 & 1, (599187 & i7) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX);
            }
            final Animatable animatable2 = (Animatable) objX;
            boolean zY = gapComposerH.y(coroutineScope) | gapComposerH.y(animatable2);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new Function0() { // from class: com.vuitton.android.presentation.screen.story.components.c
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return BuildersKt.c(coroutineScope, null, null, new StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1(animatable2, null), 3);
                    }
                };
                gapComposerH.q(objX2);
            }
            Function0 function1 = (Function0) objX2;
            Integer numValueOf = Integer.valueOf(i3);
            boolean zK = gapComposerH.K(function1);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new StoryProgressBarKt$StoryProgressBar$1$1(function1, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX3);
            Long lValueOf = Long.valueOf(j2);
            Boolean boolValueOf = Boolean.valueOf(z);
            int i8 = i7 & 896;
            int i9 = i7 & 7168;
            boolean zY2 = (i8 == 256) | (i9 == 2048) | gapComposerH.y(animatable2);
            int i10 = i7 & 57344;
            boolean z4 = (i10 == 16384) | zY2;
            Object objX4 = gapComposerH.x();
            if (z4 || objX4 == composer$Companion$Empty$1) {
                i6 = 2048;
                z3 = z;
                animatable = animatable2;
                storyProgressBarKt$StoryProgressBar$2$1 = new StoryProgressBarKt$StoryProgressBar$2$1(z3, j2, animatable, z2, null);
                gapComposerH.q(storyProgressBarKt$StoryProgressBar$2$1);
            } else {
                storyProgressBarKt$StoryProgressBar$2$1 = objX4;
                animatable = animatable2;
                i6 = 2048;
                z3 = z;
            }
            EffectsKt.g(lValueOf, boolValueOf, (Function2) storyProgressBarKt$StoryProgressBar$2$1, gapComposerH);
            Object objD = animatable.d();
            boolean zY3 = gapComposerH.y(animatable) | ((i7 & 3670016) == 1048576);
            Object objX5 = gapComposerH.x();
            if (zY3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new StoryProgressBarKt$StoryProgressBar$3$1(animatable, function0, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, objD, (Function2) objX5);
            Boolean boolValueOf2 = Boolean.valueOf(z2);
            boolean zY4 = (i9 == i6) | (i10 == 16384) | gapComposerH.y(animatable);
            Object objX6 = gapComposerH.x();
            if (zY4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new StoryProgressBarKt$StoryProgressBar$4$1(z2, animatable, j2, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, boolValueOf2, (Function2) objX6);
            float f2 = 1.0f;
            Modifier modifierM = PaddingKt.m(PaddingKt.k(SizeKt.d(WindowInsetsPadding_androidKt.e(ModifierExtKt.a(new DTFunctionNameModifier("StoryProgressBar"), null, null, 7)), 1.0f), LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1397684268);
            final int i11 = 0;
            while (i11 < i2) {
                Modifier modifierA = ClipKt.a(PaddingKt.k(SizeKt.f(cj.b("StoryProgressBar", RowScopeInstance.f5040a, f2, true), LVAppDesignKitTheme.d(gapComposerH).d), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                if (i11 == i3) {
                    gapComposerH.L(-1397667789);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1397666867);
                    gapComposerH.Z(false);
                    Color.f8866b.getClass();
                    j3 = Color.f8870h;
                }
                float f3 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                if (i11 < i3) {
                    gapComposerH.L(-377826811);
                    jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-377729998);
                    jB = Color.b(0.3f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m);
                    gapComposerH.Z(false);
                }
                int i12 = i8;
                boolean zD = ((i7 & 112) == 32) | gapComposerH.d(i11) | (i12 == 256) | gapComposerH.y(animatable);
                Object objX7 = gapComposerH.x();
                if (zD || objX7 == composer$Companion$Empty$1) {
                    objX7 = new Function0() { // from class: x11
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            return Float.valueOf((i11 != i3 || z3) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : ((Number) animatable.d()).floatValue());
                        }
                    };
                    gapComposerH.q(objX7);
                }
                Function0 function3 = (Function0) objX7;
                Object objX8 = gapComposerH.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = new l01(16);
                    gapComposerH.q(objX8);
                }
                GapComposer gapComposer = gapComposerH;
                i8 = i12;
                ProgressIndicatorKt.b(function3, modifierA, j3, jB, 0, f3, (Function1) objX8, gapComposer, 1572864);
                gapComposerH = gapComposer;
                i11++;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                f2 = 1.0f;
            }
            i5 = i3;
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            i5 = i3;
            z3 = z;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final boolean z5 = z3;
            final int i13 = i5;
            recomposeScopeImplB0.d = new Function2(i2, i13, z5, j2, z2, coroutineScope, function0, i4) { // from class: y11

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f81253b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ int f81254c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f81255e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f81256f;
                public final /* synthetic */ CoroutineScope g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f81257h;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    StoryProgressBarKt.a(this.f81253b, this.f81254c, this.d, this.f81255e, this.f81256f, this.g, this.f81257h, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
