package com.vuitton.android.presentation.screen.portal.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.StringKt;
import androidx.compose.ui.text.intl.Locale;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.compose.components.PagerParallaxFactor;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideStructureKt;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideType;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideWithCountdownKt;
import com.vuitton.android.presentation.screen.portal.components.ContentSlideWithoutCountdownKt;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt;
import com.vuitton.android.presentation.screen.portal.models.PortalDataUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalTeaserUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.ee0;
import defpackage.gj;
import defpackage.n00;
import defpackage.nj0;
import defpackage.o60;
import defpackage.pm;
import defpackage.tr;
import defpackage.xn0;
import defpackage.yo0;
import defpackage.zo0;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "previousPage", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PortalSliderComponentKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63275a;

        static {
            int[] iArr = new int[PagerParallaxFactor.values().length];
            try {
                iArr[PagerParallaxFactor.LightParallax.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PagerParallaxFactor.MediumParallax.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PagerParallaxFactor.StrongParallax.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f63275a = iArr;
        }
    }

    public static final void a(Modifier modifier, AssetUiModel assetUiModel, boolean z, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        Modifier modifier2;
        AssetVideoUiModel assetVideoUiModel;
        String str;
        boolean z2;
        AssetImageUiModel assetImageUiModel;
        String str2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PortalAsset");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(397064379);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier3) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(assetUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
            Context context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
            if (assetUiModel == null || (assetImageUiModel = assetUiModel.f51780b) == null || (str2 = assetImageUiModel.f51778b) == null || !StringExtKt.a(str2)) {
                gapComposer = gapComposerH;
                if (assetUiModel == null || (assetVideoUiModel = assetUiModel.f51781c) == null || (str = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str)) {
                    modifier2 = modifier3;
                    gapComposer.L(607128295);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(605749074);
                    Object objX = gapComposer.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new LvExoPlayer(context);
                        gapComposer.q(objX);
                    }
                    LvExoPlayer lvExoPlayer = (LvExoPlayer) objX;
                    Modifier modifierO = new DTFunctionNameModifier("PortalAsset").o(SizeKt.f5052c);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
                    Modifier modifierC = ComposedModifierKt.c(gapComposer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    modifier2 = modifier3;
                    LvVideoPlayerKt.b(GradientKt.c(SizeKt.d(new DTFunctionNameModifier("PortalAsset"), 1.0f)), lvExoPlayer.f50900a, assetVideoUiModel.f51783c, null, null, true, assetVideoUiModel.d, null, false, false, !z, z, null, false, 4, null, null, null, null, null, null, gapComposer, ImageMetadata.EDGE_MODE, ((i3 >> 3) & 112) | 27648, 0, 2069400);
                    gapComposer = gapComposer;
                    if (z) {
                        Modifier modifierB = WindowInsetsPadding_androidKt.b(BoxScopeInstance.f4938a.g(n00.i(gapComposer, 338635501, "PortalAsset"), Alignment.Companion.f8590j));
                        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                        boolean zY = gapComposer.y(lvExoPlayer);
                        Object objX2 = gapComposer.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new gj(lvExoPlayer, 13);
                            gapComposer.q(objX2);
                        }
                        z2 = false;
                        LVPlayPauseButtonKt.a(0, gapComposer, modifierB, (Function0) objX2, zBooleanValue);
                        gapComposer.Z(false);
                    } else {
                        z2 = false;
                        gapComposer.L(339220750);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(true);
                    gapComposer.Z(z2);
                }
            } else {
                gapComposerH.L(605223283);
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(staticProvidableCompositionLocal))).b(assetImageUiModel.f51778b, new ImageConfiguration.Background.Opaque(null, 1, null));
                strB.getClass();
                ImageLoaderKt.b(modifier3, strB, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerH, (i3 & 14) | KyberEngine.KyberPolyBytes, 2040);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
                modifier2 = modifier3;
            }
        } else {
            gapComposer = gapComposerH;
            modifier2 = modifier3;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yo0(modifier2, assetUiModel, z, i2, 1);
        }
    }

    public static final void b(Modifier modifier, AssetUiModel assetUiModel, boolean z, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "PortalAssetSlide");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(87977398);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(assetUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = modifier2.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            a(new DTFunctionNameModifier("PortalAssetSlide").o(fillElement), assetUiModel, z, gapComposerH, (i3 & 896) | (i3 & 112) | 6);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yo0(modifier2, assetUiModel, z, i2, 0);
        }
    }

    public static final void c(Modifier modifier, final PortalUiModel portalUiModel, final boolean z, final boolean z2, final PagerParallaxFactor pagerParallaxFactor, final Function1 function1, final Function0 function0, final Function1 function2, final boolean z3, final boolean z4, final boolean z5, Composer composer, final int i2) {
        Modifier modifier2;
        GapComposer gapComposer;
        final PortalUiModel portalUiModel2;
        Context context;
        PagerState pagerState;
        float f2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PortalSliderComponent");
        }
        portalUiModel.getClass();
        pagerParallaxFactor.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(363637046);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(portalUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.b(z3) ? 67108864 : 33554432) | (gapComposerH.b(z4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && ((gapComposerH.b(z5) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            boolean zY = gapComposerH.y(portalUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new xn0(portalUiModel, 2);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new SnapshotStateMap();
                gapComposerH.q(objX2);
            }
            final SnapshotStateMap snapshotStateMap = (SnapshotStateMap) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                int i4 = WhenMappings.f63275a[pagerParallaxFactor.ordinal()];
                if (i4 == 1) {
                    f2 = 0.6f;
                } else if (i4 != 2) {
                    f2 = i4 != 3 ? 1.0f : 0.2f;
                } else {
                    f2 = 0.4f;
                }
                objX3 = Float.valueOf(f2);
                gapComposerH.q(objX3);
            }
            final float fFloatValue = ((Number) objX3).floatValue();
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX4);
            }
            MutableIntState mutableIntState = (MutableIntState) objX4;
            boolean zK = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(pagerStateB) | gapComposerH.y(context2);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$1) {
                context = context2;
                objX5 = new PortalSliderComponentKt$PortalSliderComponent$1$1(pagerStateB, function1, context, mutableIntState, null);
                pagerState = pagerStateB;
                gapComposerH.q(objX5);
            } else {
                pagerState = pagerStateB;
                context = context2;
            }
            EffectsKt.e(gapComposerH, pagerState, (Function2) objX5);
            final float fL = pagerState.l();
            final int i5 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
            final Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            final PagerState pagerState2 = pagerState;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Modifier modifier3 = modifierE;
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            modifier2 = modifier3;
            final Context context3 = context;
            Function4 function4 = new Function4() { // from class: com.vuitton.android.presentation.screen.portal.components.a
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    Composer composer2;
                    PortalDataUiModel portalDataUiModel;
                    PortalTeaserUiModel portalTeaserUiModel;
                    final int iIntValue = ((Integer) obj2).intValue();
                    Composer composer3 = (Composer) obj3;
                    ((Integer) obj4).getClass();
                    ((PagerScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PortalSliderComponent$lambda$7$0");
                    FillElement fillElement = SizeKt.f5052c;
                    Modifier modifierB = ClipKt.b(dTFunctionNameModifier.o(fillElement));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function5 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function5);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                    final PagerState pagerState3 = pagerState2;
                    float fAbs = Math.abs(pagerState3.l() + (pagerState3.k() - iIntValue));
                    int iK = pagerState3.k();
                    final float f3 = fL;
                    final Ref$FloatRef ref$FloatRef3 = ref$FloatRef;
                    int i6 = i5;
                    float f4 = fFloatValue;
                    final Ref$FloatRef ref$FloatRef4 = ref$FloatRef2;
                    final Ref$IntRef ref$IntRef3 = ref$IntRef;
                    final Ref$IntRef ref$IntRef4 = ref$IntRef2;
                    if ((iK != iIntValue || f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) && (pagerState3.k() == iIntValue || f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                        ref$FloatRef3.f71918b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        ref$FloatRef4.f71918b = fAbs * i6 * (1.0f - f4);
                        ref$IntRef3.f71919b = 50;
                        ref$IntRef4.f71919b = 200;
                    } else {
                        ref$FloatRef3.f71918b = fAbs * i6 * (1.0f - f4);
                        ref$FloatRef4.f71918b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        ref$IntRef3.f71919b = 200;
                        ref$IntRef4.f71919b = 50;
                    }
                    PortalUiModel portalUiModel3 = portalUiModel;
                    PortalUiModel.SlideUiModel slideUiModel = iIntValue != 0 ? (PortalUiModel.SlideUiModel) portalUiModel3.f63327e.get(iIntValue - 1) : null;
                    Instant instant = (slideUiModel == null || (portalDataUiModel = slideUiModel.f63331c) == null || (portalTeaserUiModel = portalDataUiModel.f63311f) == null) ? null : portalTeaserUiModel.f63312a;
                    Integer numValueOf = Integer.valueOf(iIntValue - 1);
                    final SnapshotStateMap snapshotStateMap2 = snapshotStateMap;
                    Boolean bool = (Boolean) snapshotStateMap2.get(numValueOf);
                    boolean z6 = (bool != null ? bool.booleanValue() : false) || instant == null || instant.isBefore(Instant.now());
                    final boolean z7 = z4;
                    final boolean z8 = z5;
                    if (slideUiModel == null) {
                        composer3.L(-211212325);
                        PortalCoverKt.a(portalUiModel3.f63325b, portalUiModel3.f63326c, portalUiModel3.d, ref$FloatRef4.f71918b, ref$FloatRef3.f71918b, z7, z8, composer3, 0);
                        composer2 = composer3;
                        composer2.F();
                    } else {
                        composer2 = composer3;
                        composer2.L(-210653581);
                        Boolean boolValueOf = Boolean.valueOf(z6);
                        boolean zB = composer2.b(z6) | composer2.y(slideUiModel);
                        Context context4 = context3;
                        boolean zY2 = zB | composer2.y(context4);
                        Object objX6 = composer2.x();
                        if (zY2 || objX6 == Composer.Companion.f7939a) {
                            objX6 = new PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1(z6, slideUiModel, context4, null);
                            composer2.q(objX6);
                        }
                        EffectsKt.e(composer2, boolValueOf, (Function2) objX6);
                        Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("PortalSliderComponent$lambda$7$0").o(fillElement), LVAppDesignKitTheme.c(composer2).f48361b.g, RectangleShapeKt.f8913a);
                        TweenSpec tweenSpecC = AnimationSpecKt.c(1000, 0, null, 6);
                        Boolean boolValueOf2 = Boolean.valueOf(z6);
                        final Function1 function6 = function2;
                        final PortalUiModel.SlideUiModel slideUiModel2 = slideUiModel;
                        CrossfadeKt.b(boolValueOf2, modifierB2, tweenSpecC, "portal_content_slide", ComposableLambdaKt.b(-1472831587, new Function3() { // from class: bp0
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj5, Object obj6, Object obj7) {
                                final PortalUiModel.SlideUiModel slideUiModel3 = slideUiModel2;
                                PortalDataUiModel portalDataUiModel2 = slideUiModel3.f63331c;
                                boolean zBooleanValue = ((Boolean) obj5).booleanValue();
                                Composer composer4 = (Composer) obj6;
                                int iIntValue2 = ((Integer) obj7).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    iIntValue2 |= composer4.b(zBooleanValue) ? 4 : 2;
                                }
                                if (composer4.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Ref$FloatRef ref$FloatRef5 = ref$FloatRef4;
                                    Ref$FloatRef ref$FloatRef6 = ref$FloatRef3;
                                    boolean z9 = z7;
                                    boolean z10 = z8;
                                    final PagerState pagerState4 = pagerState3;
                                    final int i7 = iIntValue;
                                    final Ref$IntRef ref$IntRef5 = ref$IntRef3;
                                    final Ref$IntRef ref$IntRef6 = ref$IntRef4;
                                    final float f5 = f3;
                                    final Function1 function7 = function6;
                                    if (zBooleanValue) {
                                        composer4.L(260209172);
                                        ContentSlideStructureKt.a(ref$FloatRef5.f71918b, ref$FloatRef6.f71918b, z9, z10, portalDataUiModel2.d, ContentSlideType.WITHOUT_COUNTDOWN, ComposableLambdaKt.b(-1448061102, new Function3() { // from class: cp0
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object A(Object obj8, Object obj9, Object obj10) {
                                                ColumnScope columnScope = (ColumnScope) obj8;
                                                Composer composer5 = (Composer) obj9;
                                                int iIntValue3 = ((Integer) obj10).intValue();
                                                columnScope.getClass();
                                                if ((iIntValue3 & 6) == 0) {
                                                    iIntValue3 |= composer5.K(columnScope) ? 4 : 2;
                                                }
                                                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                    ContentSlideWithoutCountdownKt.a(columnScope, pagerState4, i7, ref$IntRef5.f71919b, ref$IntRef6.f71919b, f5, slideUiModel3.f63331c, function7, composer5, iIntValue3 & 14);
                                                } else {
                                                    composer5.D();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }, composer4), composer4, 1769472);
                                        composer4.F();
                                    } else {
                                        composer4.L(261372943);
                                        float f6 = ref$FloatRef5.f71918b;
                                        float f7 = ref$FloatRef6.f71918b;
                                        ContentSlideType contentSlideType = ContentSlideType.WITH_COUNTDOWN;
                                        AssetUiModel assetUiModel = portalDataUiModel2.d;
                                        final SnapshotStateMap snapshotStateMap3 = snapshotStateMap2;
                                        ContentSlideStructureKt.a(f6, f7, z9, z10, assetUiModel, contentSlideType, ComposableLambdaKt.b(1165487707, new Function3() { // from class: dp0
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object A(Object obj8, Object obj9, Object obj10) {
                                                ColumnScope columnScope = (ColumnScope) obj8;
                                                Composer composer5 = (Composer) obj9;
                                                int iIntValue3 = ((Integer) obj10).intValue();
                                                columnScope.getClass();
                                                if ((iIntValue3 & 6) == 0) {
                                                    iIntValue3 |= composer5.K(columnScope) ? 4 : 2;
                                                }
                                                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                    int i8 = ref$IntRef5.f71919b;
                                                    int i9 = ref$IntRef6.f71919b;
                                                    PortalTeaserUiModel portalTeaserUiModel2 = slideUiModel3.f63331c.f63311f;
                                                    int i10 = i7;
                                                    boolean zD = composer5.d(i10);
                                                    Object objX7 = composer5.x();
                                                    if (zD || objX7 == Composer.Companion.f7939a) {
                                                        objX7 = new j70(snapshotStateMap3, i10, 1);
                                                        composer5.q(objX7);
                                                    }
                                                    ContentSlideWithCountdownKt.a(columnScope, pagerState4, i10, i8, i9, f5, portalTeaserUiModel2, function7, (Function0) objX7, composer5, iIntValue3 & 14);
                                                } else {
                                                    composer5.D();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }, composer4), composer4, 1769472);
                                        composer4.F();
                                    }
                                } else {
                                    composer4.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 28032, 0);
                        composer2.F();
                    }
                    composer2.r();
                    return Unit.f71739a;
                }
            };
            portalUiModel2 = portalUiModel;
            PagerKt.a(pagerState2, null, null, null, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, null, null, null, ComposableLambdaKt.b(1685492541, function4, gapComposerH), gapComposerH, 24576, 24576, 16366);
            gapComposer = gapComposerH;
            Modifier modifierB = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("PortalSliderComponent"));
            BiasAlignment biasAlignment = Alignment.Companion.f8589i;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            AnimatedVisibilityKt.e(pagerState2.k() != 0, PaddingKt.m(boxScopeInstance.g(modifierB, biasAlignment), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).l, 7), EnterExitTransitionKt.f(AnimationSpecKt.c(100, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(100, 0, null, 6), 2), null, ComposableLambdaKt.b(1798466964, new zo0(pagerState2, 0), gapComposer), gapComposer, 200064, 16);
            String str = portalUiModel2.f63328f;
            if (str == null) {
                gapComposer.L(1717547665);
                gapComposer.Z(false);
            } else {
                d(boxScopeInstance.g(n00.i(gapComposer, 1717547666, "PortalSliderComponent"), Alignment.Companion.f8588h), str, (!AccessibilityExtKt.a(gapComposer) || z2) ? z : false, function0, gapComposer, (i3 >> 9) & 7168);
                gapComposer.Z(false);
            }
            if (pagerState2.o() <= 1 || !z3) {
                gapComposer.L(1718420006);
                gapComposer.Z(false);
            } else {
                AccessibilityPagerButtonsKt.b(PaddingKt.i(boxScopeInstance.g(o60.c(gapComposer, 1718014464, "PortalSliderComponent", 1.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposer).f48416e), pagerState2, null, Arrangement.g, Alignment.Companion.l, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposer, 27648, 36);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            portalUiModel2 = portalUiModel;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier4 = modifier2;
            recomposeScopeImplB0.d = new Function2(portalUiModel2, z, z2, pagerParallaxFactor, function1, function0, function2, z3, z4, z5, i2) { // from class: ap0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PortalUiModel f20577c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f20578e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ PagerParallaxFactor f20579f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f20580h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f20581i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ boolean f20582j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ boolean f20583k;
                public final /* synthetic */ boolean l;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(24577);
                    PortalSliderComponentKt.c(this.f20576b, this.f20577c, this.d, this.f20578e, this.f20579f, this.g, this.f20580h, this.f20581i, this.f20582j, this.f20583k, this.l, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void d(Modifier modifier, String str, boolean z, Function0 function0, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SoundComponent");
        }
        GapComposer gapComposerH = composer.h(1724072605);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_sound);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new LvExoPlayer(context);
                gapComposerH.q(objX);
            }
            modifier2 = modifierE;
            LvVideoPlayerKt.b(GradientKt.c(SizeKt.o(new DTFunctionNameModifier("SoundComponent"), LVAppDesignKitTheme.d(gapComposerH).f48383a)), ((LvExoPlayer) objX).f50900a, str, null, null, false, null, null, true, true, false, false, Boolean.valueOf(z), false, 0, null, null, null, null, null, null, gapComposerH, ((i3 << 3) & 896) | 905969664, (i3 & 896) | 6, 0, 2091256);
            Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.b(modifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 6);
            boolean z2 = (i3 & 7168) == 2048;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new ee0(function0, 23);
                gapComposerH.q(objX2);
            }
            Modifier modifierD = ClickableKt.d(modifierM, false, null, null, (Function0) objX2, 15);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierM2 = PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "SoundComponent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            boolean zK = gapComposerH.K(strC);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new nj0(strC, 9);
                gapComposerH.q(objX3);
            }
            IconKt.a(PainterResources_androidKt.a(z ? R.drawable.ic_portal_sound_on : R.drawable.ic_portal_sound_off, gapComposerH, 0), null, SemanticsModifierKt.b(modifierM2, false, (Function1) objX3), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 56, 0);
            String strC2 = StringResources_androidKt.c(gapComposerH, z ? R.string.christmas_sound_on : R.string.christmas_sound_off);
            Locale.f10870b.getClass();
            TextKt.c(StringKt.a(strC2, Locale.Companion.a()), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new pm(modifier2, str, z, function0, i2, 1);
        }
    }
}
