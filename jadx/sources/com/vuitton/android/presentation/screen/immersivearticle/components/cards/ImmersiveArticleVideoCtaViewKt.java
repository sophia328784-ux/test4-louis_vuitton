package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import android.content.Context;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleHelper;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFontUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.gj;
import defpackage.n00;
import defpackage.rp;
import defpackage.rs;
import defpackage.v1;
import defpackage.w30;
import defpackage.x20;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "scale", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleVideoCtaViewKt {
    public static final void a(VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel, Function1 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-920211547);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(videoCtaArticleSectionUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("AssetBlock"), (StringsKt.w(videoCtaArticleSectionUiModel.f58843c) && StringsKt.w(videoCtaArticleSectionUiModel.f58844e)) ? false : true, new rs(function1, videoCtaArticleSectionUiModel, 18), gapComposerH, 6);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl.A(BoxScopeInstance.f4938a, gapComposerH, Integer.valueOf(((i3 >> 3) & 112) | 6));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 16, videoCtaArticleSectionUiModel, function1, composableLambdaImpl);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.String, java.lang.Throwable, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v5, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r2v33, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v49 */
    public static final void b(Modifier modifier, final VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel, final int i2, final boolean z, Function1 function1, final Function0 function0, final Function0 function2, Composer composer, int i3) {
        int i4;
        Function0 function3;
        ?? r15;
        AssetUiModel assetUiModel;
        Function2 function4;
        boolean z2;
        Function2 function5;
        boolean z3;
        BoxScopeInstance boxScopeInstance;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z4;
        boolean z5;
        String str;
        Object obj;
        String str2;
        ?? r11;
        ?? r2;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        GapComposer gapComposer;
        boolean z6;
        GapComposer gapComposer2;
        int i5;
        Object obj2;
        TextStyle textStyleA;
        TextStyle textStyleA2;
        Modifier modifierE = modifier;
        videoCtaArticleSectionUiModel = videoCtaArticleSectionUiModel;
        final Function1 function6 = function1;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleVideoCtaView");
        }
        Modifier modifier2 = modifierE;
        function6.getClass();
        GapComposer gapComposerH = composer.h(1539602281);
        Applier applier = gapComposerH.f7976a;
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(videoCtaArticleSectionUiModel) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(i2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.y(function6) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            function3 = function0;
            i4 |= gapComposerH.y(function3) ? 131072 : 65536;
        } else {
            function3 = function0;
        }
        if ((1572864 & i3) == 0) {
            i4 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        int i6 = i4;
        if (gapComposerH.p(i6 & 1, (i6 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final State stateB = AnimateAsStateKt.b(videoCtaArticleSectionUiModel.l ? 1.2f : 1.0f, AnimationSpecKt.c(500, 0, null, 6), "card scale", gapComposerH, 3072, 20);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Function2 function8 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function8);
            Function2 function9 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function9);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function10 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function10);
            Function1 function11 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function11);
            Function2 function12 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function12);
            final AssetUiModel assetUiModel2 = videoCtaArticleSectionUiModel.f58849k;
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
            if (assetUiModel2 == null) {
                gapComposerH.L(-2045647832);
                gapComposerH.Z(false);
                function5 = function8;
                boxScopeInstance = boxScopeInstance2;
                function11 = function11;
                function10 = function10;
                function12 = function12;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                r2 = 1;
                r11 = 0;
            } else {
                gapComposerH.L(-2045647831);
                AssetImageUiModel assetImageUiModel = assetUiModel2.f51780b;
                if (assetImageUiModel == null || (str2 = assetImageUiModel.f51778b) == null) {
                    assetUiModel = assetUiModel2;
                    function4 = function8;
                    z2 = true;
                } else {
                    if (StringExtKt.a(str2)) {
                        gapComposerH.L(-2038434790);
                        videoCtaArticleSectionUiModel = videoCtaArticleSectionUiModel;
                        final Function0 function13 = function3;
                        Function3 function14 = new Function3() { // from class: v30
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj3, Object obj4, Object obj5) {
                                VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel2 = videoCtaArticleSectionUiModel;
                                ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = videoCtaArticleSectionUiModel2.g;
                                Composer composer2 = (Composer) obj4;
                                int iIntValue = ((Integer) obj5).intValue();
                                ((BoxScope) obj3).getClass();
                                if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    Modifier modifierO = (immersiveArticleSizeCardUiModel != ImmersiveArticleSizeCardUiModel.FULLSCREEN ? AspectRatioKt.a(new DTFunctionNameModifier("ImmersiveArticleVideoCtaView$lambda$1$0$0"), ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel), true) : new DTFunctionNameModifier("ImmersiveArticleVideoCtaView$lambda$1$0$0")).o(SizeKt.f5052c);
                                    float fFloatValue = ((Number) stateB.getF10755b()).floatValue();
                                    Modifier modifierA = ScaleKt.a(modifierO, fFloatValue, fFloatValue);
                                    Function1 function15 = function6;
                                    boolean zK = composer2.K(function15) | composer2.y(videoCtaArticleSectionUiModel2);
                                    Object objX = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                                    if (zK || objX == composer$Companion$Empty$4) {
                                        objX = new w30(function15, videoCtaArticleSectionUiModel2, 2);
                                        composer2.q(objX);
                                    }
                                    Modifier modifierC2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA, false, null, null, (Function0) objX, 31);
                                    AssetImageUiModel assetImageUiModel2 = assetUiModel2.f51780b;
                                    assetImageUiModel2.getClass();
                                    String str3 = assetImageUiModel2.f51778b;
                                    str3.getClass();
                                    ContentScale.f9447a.getClass();
                                    ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                                    int i7 = i2;
                                    boolean zD = composer2.d(i7);
                                    Function0 function16 = function13;
                                    boolean zK2 = zD | composer2.K(function16);
                                    Object objX2 = composer2.x();
                                    if (zK2 || objX2 == composer$Companion$Empty$4) {
                                        objX2 = new ze(i7, function16, 4);
                                        composer2.q(objX2);
                                    }
                                    ImageLoaderKt.b(modifierC2, str3, contentScale$Companion$Crop$1, null, null, 0, false, null, (Function1) objX2, null, composer2, KyberEngine.KyberPolyBytes, 1528);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        };
                        function6 = function6;
                        a(videoCtaArticleSectionUiModel, function6, ComposableLambdaKt.b(1766485383, function14, gapComposerH), gapComposerH, ((i6 >> 3) & 14) | KyberEngine.KyberPolyBytes | ((i6 >> 9) & 112));
                        gapComposerH.Z(false);
                        boxScopeInstance = boxScopeInstance2;
                        z4 = false;
                        z3 = true;
                        z5 = false;
                        function5 = function8;
                        composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    } else {
                        z2 = true;
                        function4 = function8;
                        assetUiModel = assetUiModel2;
                    }
                    gapComposerH.Z(z4);
                    r2 = z3;
                    r11 = z5;
                }
                AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
                if (assetVideoUiModel == null || (str = assetVideoUiModel.f51783c) == null || StringExtKt.a(str) != z2) {
                    boolean z7 = z2;
                    function5 = function4;
                    z3 = z7;
                    boxScopeInstance = boxScopeInstance2;
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    z4 = false;
                    z5 = false;
                    gapComposerH.L(-2034801187);
                    gapComposerH.Z(false);
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -2037019175, "ImmersiveArticleVideoCtaView");
                    MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                    int iHashCode2 = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                    Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierI);
                    if (applier == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function7);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function9);
                    cj.t(iHashCode2, gapComposerH, function10, gapComposerH, function11);
                    Updater.c(gapComposerH, modifierC2, function12);
                    Object objX = gapComposerH.x();
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    Object obj3 = objX;
                    if (objX == composer$Companion$Empty$1) {
                        LvExoPlayer lvExoPlayer = new LvExoPlayer(context);
                        gapComposerH.q(lvExoPlayer);
                        obj3 = lvExoPlayer;
                    }
                    final LvExoPlayer lvExoPlayer2 = (LvExoPlayer) obj3;
                    function6 = function1;
                    function5 = function4;
                    final AssetUiModel assetUiModel3 = assetUiModel;
                    z5 = false;
                    videoCtaArticleSectionUiModel = videoCtaArticleSectionUiModel;
                    a(videoCtaArticleSectionUiModel, function6, ComposableLambdaKt.b(748630456, new Function3() { // from class: x30
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj4, Object obj5, Object obj6) {
                            Composer composer2 = (Composer) obj5;
                            int iIntValue = ((Integer) obj6).intValue();
                            ((BoxScope) obj4).getClass();
                            if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Modifier modifierB = ClipKt.b(new DTFunctionNameModifier("ImmersiveArticleVideoCtaView$lambda$1$0$1$1").o(SizeKt.f5052c));
                                ExoPlayer exoPlayer = lvExoPlayer2.f50900a;
                                String str3 = assetUiModel3.f51781c.f51783c;
                                VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel2 = videoCtaArticleSectionUiModel;
                                ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = videoCtaArticleSectionUiModel2.g;
                                Float fValueOf = immersiveArticleSizeCardUiModel != ImmersiveArticleSizeCardUiModel.FULLSCREEN ? Float.valueOf(ImmersiveArticleHelper.a(immersiveArticleSizeCardUiModel)) : null;
                                Function1 function15 = function6;
                                boolean zK = composer2.K(function15) | composer2.y(videoCtaArticleSectionUiModel2);
                                Object objX2 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                                if (zK || objX2 == composer$Companion$Empty$4) {
                                    objX2 = new gv(function15, videoCtaArticleSectionUiModel2, 24);
                                    composer2.q(objX2);
                                }
                                Function1 function16 = (Function1) objX2;
                                int i7 = i2;
                                boolean zD = composer2.d(i7);
                                Function0 function17 = function0;
                                boolean zK2 = zD | composer2.K(function17);
                                Object objX3 = composer2.x();
                                if (zK2 || objX3 == composer$Companion$Empty$4) {
                                    objX3 = new v20(i7, 2, function17);
                                    composer2.q(objX3);
                                }
                                Function0 function18 = (Function0) objX3;
                                boolean zD2 = composer2.d(i7);
                                Function0 function19 = function2;
                                boolean zK3 = zD2 | composer2.K(function19);
                                Object objX4 = composer2.x();
                                if (zK3 || objX4 == composer$Companion$Empty$4) {
                                    objX4 = new v20(i7, 1, function19);
                                    composer2.q(objX4);
                                }
                                LvVideoPlayerKt.b(modifierB, exoPlayer, str3, null, fValueOf, true, null, null, false, false, false, z, null, false, 4, null, null, null, function16, function18, (Function0) objX4, composer2, 196614, 24576, 0, 243656);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, ((i6 >> 3) & 14) | KyberEngine.KyberPolyBytes | ((i6 >> 9) & 112));
                    if (z) {
                        boxScopeInstance = boxScopeInstance2;
                        Modifier modifierG = boxScopeInstance.g(n00.i(gapComposerH, -106832472, "ImmersiveArticleVideoCtaView"), Alignment.Companion.f8590j);
                        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer2.f50901b).getF10755b()).booleanValue();
                        boolean zY = gapComposerH.y(lvExoPlayer2);
                        Object objX2 = gapComposerH.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            obj = objX2;
                            gj gjVar = new gj(lvExoPlayer2, 9);
                            gapComposerH.q(gjVar);
                            obj = gjVar;
                        }
                        z4 = false;
                        LVPlayPauseButtonKt.a(0, gapComposerH, modifierG, (Function0) obj, zBooleanValue);
                        gapComposerH.Z(false);
                    } else {
                        boxScopeInstance = boxScopeInstance2;
                        z4 = false;
                        gapComposerH.L(-106279897);
                        gapComposerH.Z(false);
                    }
                    z3 = true;
                    gapComposerH.Z(true);
                    gapComposerH.Z(z4);
                }
                gapComposerH.Z(z4);
                r2 = z3;
                r11 = z5;
            }
            Modifier modifierO = boxScopeInstance.g(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ImmersiveArticleVideoCtaView"), r11, r11, 7), Alignment.Companion.f8587f).o(SizeKt.f5052c);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, gapComposerH, 54);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierO);
            if (applier == null) {
                ComposablesKt.b();
                throw r11;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function9);
            cj.t(iHashCode3, gapComposerH, function10, gapComposerH, function11);
            Updater.c(gapComposerH, modifierC3, function12);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            if (StringsKt.w(videoCtaArticleSectionUiModel.f58844e)) {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                gapComposerH.L(1635053085);
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, 1634210815, "ImmersiveArticleVideoCtaView"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48414b, 2);
                Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
                String str3 = videoCtaArticleSectionUiModel.f58844e;
                if (videoCtaArticleSectionUiModel.f58845f == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                    gapComposerH.L(1634625254);
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    FontWeight.f10727c.getClass();
                    textStyleA2 = TextStyle.a(textStyle, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1634809921);
                    textStyleA2 = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                    gapComposerH.Z(false);
                }
                TextStyle textStyle2 = textStyleA2;
                TextAlign.f10959b.getClass();
                composer$Companion$Empty$2 = composer$Companion$Empty$4;
                TextKt.c(str3, modifierM, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 2, 0, null, textStyle2, gapComposerH, 0, 24576, 113656);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(false);
                gapComposer = gapComposer3;
            }
            if (StringsKt.w(videoCtaArticleSectionUiModel.f58843c)) {
                z6 = false;
                gapComposer.L(1636028221);
                gapComposer.Z(false);
                gapComposer2 = gapComposer;
            } else {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposer, 1635146550, "ImmersiveArticleVideoCtaView"), LVAppDesignKitTheme.l(gapComposer).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48417f, LVAppDesignKitTheme.l(gapComposer).f48417f, 2);
                Object objX3 = gapComposer.x();
                if (objX3 == composer$Companion$Empty$2) {
                    obj2 = objX3;
                    x20 x20Var = new x20(4);
                    gapComposer.q(x20Var);
                    obj2 = x20Var;
                }
                obj2 = objX3;
                Modifier modifierB = SemanticsModifierKt.b(modifierM2, false, (Function1) obj2);
                String str4 = videoCtaArticleSectionUiModel.f58843c;
                if (videoCtaArticleSectionUiModel.d == ImmersiveArticleFontUiModel.HANLEY_PRO) {
                    gapComposer.L(1635643883);
                    TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposer).f48425e;
                    FontWeight.f10727c.getClass();
                    textStyleA = TextStyle.a(textStyle3, 0L, 0L, FontWeight.g, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(1635823590);
                    textStyleA = LVAppDesignKitTheme.n(gapComposer).f48425e;
                    gapComposer.Z(false);
                }
                TextStyle textStyle4 = textStyleA;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer4 = gapComposer;
                TextKt.c(str4, modifierB, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle4, gapComposer4, 0, 0, 130040);
                GapComposer gapComposer5 = gapComposer4;
                z6 = false;
                gapComposer5.Z(false);
                gapComposer2 = gapComposer5;
            }
            ConfigurationIconButton configurationIconButton = LVAppDesignKitTheme.f(gapComposer2).d;
            if (videoCtaArticleSectionUiModel.f58846h != null) {
                gapComposer2.L(1636190103);
                i5 = LVAppDesignKitTheme.g(gapComposer2).Y;
                gapComposer2.Z(z6);
            } else {
                gapComposer2.L(1636265743);
                i5 = LVAppDesignKitTheme.g(gapComposer2).I;
                gapComposer2.Z(z6);
            }
            int i7 = i5;
            ?? r6 = z6;
            if ((i6 & 57344) == 16384) {
                r6 = r2;
            }
            int i8 = (gapComposer2.y(videoCtaArticleSectionUiModel) ? 1 : 0) | r6;
            Object objX4 = gapComposer2.x();
            Object obj4 = objX4;
            if (i8 != 0 || objX4 == composer$Companion$Empty$2) {
                w30 w30Var = new w30(function6, videoCtaArticleSectionUiModel, r2);
                gapComposer2.q(w30Var);
                obj4 = w30Var;
            }
            GapComposer gapComposer6 = gapComposer2;
            LVIconButtonKt.b(null, configurationIconButton, i7, null, null, false, 0, false, false, (Function0) obj4, gapComposer6, 0, 0, 1017);
            ?? r16 = gapComposer6;
            r16.Z(r2);
            r16.Z(r2);
            r15 = r16;
        } else {
            gapComposerH.D();
            r15 = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r15.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(modifier2, videoCtaArticleSectionUiModel, i2, z, function6, function0, function2, i3);
        }
    }
}
