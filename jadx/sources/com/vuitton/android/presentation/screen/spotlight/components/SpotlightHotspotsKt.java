package com.vuitton.android.presentation.screen.spotlight.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.ExoPlayer;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieClipSpec;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.screen.spotlight.components.ComposableSingletons$SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotPositionUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import defpackage.am;
import defpackage.d21;
import defpackage.n00;
import defpackage.na;
import defpackage.nj0;
import defpackage.nw0;
import defpackage.ys0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0010²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00078\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\n\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u0004\u0018\u00010\u000b8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\r\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u000f\u001a\u00020\u000e8\nX\u008a\u0084\u0002"}, d2 = {"", "isImageLoaded", "Landroidx/compose/ui/unit/Dp;", "heightContainer", "widthContainer", "heightImage", "widthImage", "", "isHotspotVisibilityTab", "displayOneByOne", "isSpotlightVisibleToUserInternal", "Lcom/airbnb/lottie/LottieComposition;", "composition", "isPlaying", "", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightHotspotsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64588a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64599a;

        static {
            int[] iArr = new int[FeatureThemeUiModel.values().length];
            try {
                iArr[FeatureThemeUiModel.DARK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeUiModel.LIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64599a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f64588a = 56.0f;
    }

    public static final void a(Modifier modifier, FeatureThemeUiModel featureThemeUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "HotSpot");
        }
        Modifier modifier2 = modifierE;
        featureThemeUiModel.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1265540927);
        int i4 = i2 | (gapComposerH.d(featureThemeUiModel.ordinal()) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = WhenMappings.f64599a[featureThemeUiModel.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(709097130);
                i3 = LVAppDesignKitTheme.a(gapComposerH).A;
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, 709094443, false);
                }
                gapComposerH.L(709099947);
                i3 = LVAppDesignKitTheme.a(gapComposerH).z;
                gapComposerH.Z(false);
            }
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(i3, gapComposerH, 0);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), ((Boolean) mutableState.getF10755b()).booleanValue(), new LottieClipSpec.Frame(1, null, false, 6, null), 0, gapComposerH, 1004);
            if (((Number) lottieAnimatableA.getF10755b()).floatValue() == 1.0f) {
                function1.mo47invoke();
            }
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_hotspot_button);
            LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new am(lottieAnimatableA, 5);
                gapComposerH.q(objX2);
            }
            Function0 function2 = (Function0) objX2;
            boolean zK2 = gapComposerH.K(strC);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new nj0(strC, 18);
                gapComposerH.q(objX3);
            }
            Modifier modifierO = SizeKt.o(SemanticsModifierKt.b(modifier2, false, (Function1) objX3), f64588a);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = InteractionSourceKt.a();
                gapComposerH.q(objX4);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX4;
            boolean z = (i4 & 896) == 256;
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$1) {
                objX5 = new na(function0, mutableState, 12);
                gapComposerH.q(objX5);
            }
            gapComposer = gapComposerH;
            LottieAnimationKt.b(f10755b, function2, ClickableKt.b(modifierO, mutableInteractionSource, null, false, null, null, (Function0) objX5, 28), false, false, false, false, null, false, null, null, null, false, false, null, null, false, gapComposer, 0, 0, 131064);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ys0(modifier2, featureThemeUiModel, function0, function1, i2, 4);
        }
    }

    public static final void b(Modifier modifier, final FeatureThemeUiModel featureThemeUiModel, final AssetUiModel assetUiModel, final List list, final Function1 function1, final float f2, boolean z, boolean z2, final boolean z3, boolean z4, Function0 function0, Composer composer, final int i2, final int i3) {
        boolean z5;
        int i4;
        boolean z6;
        int i5;
        boolean z7;
        Function0 function2;
        char c2;
        GapComposer gapComposer;
        final boolean z8;
        final boolean z9;
        final Function0 function3;
        final boolean z10;
        Function0 function4;
        Object spotlightHotspotsKt$SpotlightHotSpots$2$1;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        char c3;
        MutableState mutableState;
        boolean z11;
        boolean z12;
        MutableState mutableState2;
        Function0 function5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightHotSpots");
        }
        final Modifier modifier2 = modifierE;
        featureThemeUiModel.getClass();
        assetUiModel.getClass();
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-45876208);
        int i6 = ((i2 & 48) == 0 ? (gapComposerH.d(featureThemeUiModel.ordinal()) ? 32 : 16) | i2 : i2) | (gapComposerH.y(assetUiModel) ? 256 : 128) | (gapComposerH.y(list) ? 2048 : 1024);
        if ((i2 & 24576) == 0) {
            i6 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i6 |= gapComposerH.c(f2) ? 131072 : 65536;
        }
        int i7 = i3 & 64;
        if (i7 != 0) {
            i4 = i6 | 1572864;
            z5 = z;
        } else {
            z5 = z;
            i4 = i6 | (gapComposerH.b(z5) ? 1048576 : 524288);
        }
        int i8 = i3 & 128;
        if (i8 != 0) {
            i5 = i4 | 12582912;
            z6 = z2;
        } else {
            z6 = z2;
            i5 = i4 | (gapComposerH.b(z6) ? 8388608 : 4194304);
        }
        if ((100663296 & i2) == 0) {
            z7 = z3;
            i5 |= gapComposerH.b(z7) ? 67108864 : 33554432;
        } else {
            z7 = z3;
        }
        int i9 = i3 & 512;
        int i10 = i9 != 0 ? i5 | 805306368 : i5 | (gapComposerH.b(z4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i11 = i3 & 1024;
        if (i11 != 0) {
            c2 = 6;
            function2 = function0;
        } else {
            function2 = function0;
            c2 = gapComposerH.y(function2) ? (char) 4 : (char) 2;
        }
        if (gapComposerH.p(i10 & 1, ((i10 & 306783379) == 306783378 && (c2 & 3) == 2) ? false : true)) {
            boolean z13 = i7 != 0 ? true : z5;
            boolean z14 = i8 != 0 ? true : z6;
            boolean z15 = i9 != 0 ? true : z4;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (i11 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$2) {
                    objX = new nw0(19);
                    gapComposerH.q(objX);
                }
                function4 = (Function0) objX;
            } else {
                function4 = function2;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState3 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX3);
            }
            final MutableState mutableState4 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX4);
            }
            final MutableState mutableState5 = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$2) {
                objX5 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX5);
            }
            final MutableState mutableState6 = (MutableState) objX5;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX6);
            }
            final MutableState mutableState7 = (MutableState) objX6;
            boolean z16 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$2) {
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i12 = 0; i12 < size; i12++) {
                    arrayList.add(Boolean.FALSE);
                }
                objX7 = SnapshotStateKt.g(arrayList);
                gapComposerH.q(objX7);
            }
            MutableState mutableState8 = (MutableState) objX7;
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$2) {
                objX8 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX8);
            }
            final MutableState mutableState9 = (MutableState) objX8;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$2) {
                objX9 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX9);
            }
            MutableState mutableState10 = (MutableState) objX9;
            if (!((Boolean) mutableState10.getF10755b()).booleanValue() && z13) {
                mutableState10.setValue(Boolean.TRUE);
            } else if (!((Boolean) mutableState3.getF10755b()).booleanValue()) {
                mutableState10.setValue(Boolean.FALSE);
            }
            Boolean boolValueOf = Boolean.valueOf(z7);
            Boolean bool = (Boolean) mutableState10.getF10755b();
            bool.getClass();
            boolean z17 = z14;
            Boolean boolValueOf2 = Boolean.valueOf(z17);
            boolean z18 = z15;
            Boolean bool2 = (Boolean) mutableState3.getF10755b();
            bool2.getClass();
            Boolean[] boolArr = {boolValueOf, bool, boolValueOf2, bool2, Boolean.valueOf(z18)};
            boolean zY = ((i10 & 234881024) == 67108864) | ((i10 & 29360128) == 8388608) | ((i10 & 1879048192) == 536870912) | gapComposerH.y(list);
            Object objX10 = gapComposerH.x();
            if (zY || objX10 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                boolean z19 = z7;
                c3 = 4;
                mutableState = mutableState8;
                spotlightHotspotsKt$SpotlightHotSpots$2$1 = new SpotlightHotspotsKt$SpotlightHotSpots$2$1(z19, z17, z18, list, mutableState3, mutableState10, mutableState9, mutableState, null);
                z11 = z17;
                z12 = z18;
                mutableState2 = mutableState3;
                gapComposerH.q(spotlightHotspotsKt$SpotlightHotSpots$2$1);
            } else {
                mutableState = mutableState8;
                z11 = z17;
                z12 = z18;
                mutableState2 = mutableState3;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                spotlightHotspotsKt$SpotlightHotSpots$2$1 = objX10;
                c3 = 4;
            }
            EffectsKt.e(gapComposerH, boolArr, (Function2) spotlightHotspotsKt$SpotlightHotSpots$2$1);
            Boolean bool3 = (Boolean) mutableState9.getF10755b();
            bool3.getClass();
            boolean zY2 = gapComposerH.y(list) | ((c2 & 14) == c3);
            Object objX11 = gapComposerH.x();
            if (zY2 || objX11 == composer$Companion$Empty$1) {
                Function0 function6 = function4;
                SpotlightHotspotsKt$SpotlightHotSpots$3$1 spotlightHotspotsKt$SpotlightHotSpots$3$1 = new SpotlightHotspotsKt$SpotlightHotSpots$3$1(list, function6, mutableState9, mutableState, null);
                function5 = function6;
                gapComposerH.q(spotlightHotspotsKt$SpotlightHotSpots$3$1);
                objX11 = spotlightHotspotsKt$SpotlightHotSpots$3$1;
            } else {
                function5 = function4;
            }
            EffectsKt.e(gapComposerH, bool3, (Function2) objX11);
            Modifier modifierO = modifier2.o(SizeKt.f5052c);
            final MutableState mutableState11 = mutableState2;
            final boolean z20 = z16;
            final MutableState mutableState12 = mutableState;
            gapComposer = gapComposerH;
            BoxWithConstraintsKt.a(modifierO, null, false, ComposableLambdaKt.b(863187578, new Function3() { // from class: x01
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    MutableState mutableState13;
                    String str;
                    float f3;
                    MutableState mutableState14;
                    float f4;
                    float f5;
                    BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    float f6 = SpotlightHotspotsKt.f64588a;
                    boxWithConstraintsScope.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(boxWithConstraintsScope) ? 4 : 2;
                    }
                    int i13 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        mutableState4.setValue(new Dp(boxWithConstraintsScope.i()));
                        Dp dp = new Dp(boxWithConstraintsScope.e());
                        MutableState mutableState15 = mutableState5;
                        mutableState15.setValue(dp);
                        AssetUiModel assetUiModel2 = assetUiModel;
                        AssetVideoUiModel assetVideoUiModel = assetUiModel2.f51781c;
                        boolean z21 = z3;
                        Density density2 = density;
                        MutableState mutableState16 = mutableState6;
                        MutableState mutableState17 = mutableState7;
                        MutableState mutableState18 = mutableState11;
                        if (assetVideoUiModel != null && StringExtKt.a(assetVideoUiModel.f51783c) && z21) {
                            Modifier modifierB = ClipKt.b(pq0.j(1252162433, composer2, "SpotlightHotSpots$lambda$27").o(SizeKt.f5052c));
                            boolean zK = composer2.K(density2);
                            Object objX12 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                            if (zK || objX12 == composer$Companion$Empty$3) {
                                objX12 = new u30(density2, mutableState16, mutableState17, i13);
                                composer2.q(objX12);
                            }
                            Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierB, (Function1) objX12);
                            Object objX13 = composer2.x();
                            if (objX13 == composer$Companion$Empty$3) {
                                objX13 = new LvExoPlayer(context).f50900a;
                                composer2.q(objX13);
                            }
                            ExoPlayer exoPlayer = (ExoPlayer) objX13;
                            String str2 = assetUiModel2.f51781c.f51783c;
                            ComposableSingletons$SpotlightHotspotsKt.f64578a.getClass();
                            ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SpotlightHotspotsKt.f64579b;
                            ComposableLambdaImpl composableLambdaImpl2 = ComposableSingletons$SpotlightHotspotsKt.f64580c;
                            Object objX14 = composer2.x();
                            if (objX14 == composer$Companion$Empty$3) {
                                objX14 = new u00(28, mutableState18);
                                composer2.q(objX14);
                            }
                            mutableState13 = mutableState17;
                            str = "SpotlightHotSpots$lambda$27";
                            LvVideoPlayerKt.b(modifierA, exoPlayer, str2, null, null, true, null, null, false, false, false, false, null, false, 4, composableLambdaImpl, composableLambdaImpl2, null, null, (Function0) objX14, null, composer2, ImageMetadata.EDGE_MODE, 807100416, 0, 1458136);
                            composer2 = composer2;
                            composer2.F();
                            mutableState14 = mutableState16;
                        } else {
                            mutableState13 = mutableState17;
                            str = "SpotlightHotSpots$lambda$27";
                            Modifier modifierO2 = pq0.j(1253438703, composer2, str).o(SizeKt.f5052c);
                            if (z21) {
                                composer2.L(1253583690);
                                f3 = LVAppDesignKitTheme.h(composer2).f48401a;
                                composer2.F();
                            } else {
                                composer2.L(1253682828);
                                f3 = LVAppDesignKitTheme.h(composer2).g;
                                composer2.F();
                            }
                            Modifier modifierA2 = AlphaKt.a(modifierO2, f3);
                            AssetImageUiModel assetImageUiModel = assetUiModel2.f51780b;
                            String str3 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
                            if (str3 == null) {
                                str3 = "";
                            }
                            ComposableSingletons$SpotlightHotspotsKt.f64578a.getClass();
                            mutableState14 = mutableState16;
                            ImageLoaderKt.c(modifierA2, str3, null, 0, ComposableSingletons$SpotlightHotspotsKt.d, ComposableSingletons$SpotlightHotspotsKt.f64581e, ComposableLambdaKt.b(-382245412, new w4(density2, mutableState14, mutableState13, mutableState18, 13), composer2), false, null, null, null, composer2, 14352384);
                            composer2.F();
                        }
                        List list2 = list;
                        int i14 = 0;
                        for (Object obj4 : list2) {
                            int i15 = i14 + 1;
                            if (i14 < 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            SpotlightHotspotUiModel spotlightHotspotUiModel = (SpotlightHotspotUiModel) obj4;
                            float f7 = ((Dp) mutableState13.getF10755b()).f11006b;
                            float f8 = ((Dp) mutableState14.getF10755b()).f11006b;
                            float f9 = (((Dp) mutableState15.getF10755b()).f11006b - ((Dp) mutableState13.getF10755b()).f11006b) / 2.0f;
                            float f10 = f7 / f8;
                            float f11 = f2;
                            boolean z22 = z20;
                            if (f11 > f10) {
                                float f12 = f11 * f8;
                                Dp.Companion companion = Dp.f11004c;
                                float f13 = (f12 - f7) / 2.0f;
                                f5 = z22 ? ((1.0f - spotlightHotspotUiModel.f64644b.f64630a) * f12) - f13 : (f12 * spotlightHotspotUiModel.f64644b.f64630a) - f13;
                                f4 = f8 * spotlightHotspotUiModel.f64644b.f64631b;
                            } else {
                                float f14 = f7 / f11;
                                Dp.Companion companion2 = Dp.f11004c;
                                HotspotPositionUiModel hotspotPositionUiModel = spotlightHotspotUiModel.f64644b;
                                f4 = (f14 * hotspotPositionUiModel.f64631b) - ((f14 - f8) / 2.0f);
                                float f15 = hotspotPositionUiModel.f64630a;
                                f5 = z22 ? (1.0f - f15) * f7 : f7 * f15;
                            }
                            Pair pair = new Pair(new Dp(f5 + f9), new Dp(f4));
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
                            float f16 = ((Dp) pair.f71705b).f11006b;
                            float f17 = SpotlightHotspotsKt.f64588a / 2.0f;
                            Modifier modifierB2 = OffsetKt.b(dTFunctionNameModifier, f16 - f17, ((Dp) pair.f71706c).f11006b - f17);
                            MutableState mutableState19 = mutableState12;
                            AnimatedVisibilityKt.e(((Boolean) ((List) mutableState19.getF10755b()).get(i14)).booleanValue(), modifierB2, EnterExitTransitionKt.f(AnimationSpecKt.c(450, ((Boolean) mutableState9.getF10755b()).booleanValue() ? i14 * 150 : 0, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(450, 0, null, 6), 2), null, ComposableLambdaKt.b(1370945797, new ne0(featureThemeUiModel, list2, i14, function1, mutableState19), composer2), composer2, 199680, 16);
                            i14 = i15;
                            list2 = list2;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 3072, 6);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            z9 = z11;
            z8 = z12;
            function3 = function5;
            z10 = z13;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z8 = z4;
            z9 = z6;
            function3 = function2;
            z10 = z5;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: y01
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    SpotlightHotspotsKt.b(modifier2, featureThemeUiModel, assetUiModel, list, function1, f2, z10, z9, z3, z8, function3, (Composer) obj, iA, i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
