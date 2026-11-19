package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.OverlayConstants;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeCapsuleRenderContext;
import defpackage.b41;
import defpackage.bw;
import defpackage.cl0;
import defpackage.d1;
import defpackage.p01;
import defpackage.sa;
import defpackage.sm0;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"", "themeListExpanded", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;", "currentSelectedTheme", "newThemeClicked", "", "fadeOutValue", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpThemesOverlayKt {
    public static final void a(Modifier modifier, final ThemeUiModel themeUiModel, final ThemeUiModel themeUiModel2, final float f2, final ThematicPlpCapsuleStyle thematicPlpCapsuleStyle, final float f3, final float f4, final float f5, int i2, float f6, float f7, float f8, final Function1 function1, Composer composer, final int i3) {
        int i4;
        GapComposer gapComposer;
        final int i5;
        final float f9;
        final float f10;
        final float f11;
        ThematicPlpCapsuleStyle thematicPlpCapsuleStyle2;
        Modifier modifier2;
        boolean z;
        String str;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThematicPlpThemeSelectionContent-ioSWKzA");
        }
        final Modifier modifier3 = modifierE;
        themeUiModel.getClass();
        thematicPlpCapsuleStyle.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1286632121);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier3) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.K(themeUiModel) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(themeUiModel2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.c(f2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.d(thematicPlpCapsuleStyle.ordinal()) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i4 |= gapComposerH.c(f3) ? 131072 : 65536;
        }
        if ((1572864 & i3) == 0) {
            i4 |= gapComposerH.c(f4) ? 1048576 : 524288;
        }
        if ((12582912 & i3) == 0) {
            i4 |= gapComposerH.c(f5) ? 8388608 : 4194304;
        }
        int i6 = i4 | 905969664;
        int i7 = '6' | (gapComposerH.y(function1) ? (char) 256 : (char) 128);
        if (gapComposerH.p(i6 & 1, ((i6 & 306783379) == 306783378 && (i7 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_button_theme);
            float fU1 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).u1(f3);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX);
            }
            Animatable animatable = (Animatable) objX;
            Float fValueOf = Float.valueOf(fU1);
            boolean zC = gapComposerH.c(fU1) | ((i6 & 1879048192) == 536870912) | gapComposerH.y(animatable) | ((234881024 & i6) == 67108864);
            Object objX2 = gapComposerH.x();
            if (zC || objX2 == composer$Companion$Empty$1) {
                objX2 = new ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1(fU1, 0.1f, animatable, 0.5f, 200.0f, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, fValueOf, (Function2) objX2);
            boolean zY = gapComposerH.y(animatable);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new sa(animatable, 4);
                gapComposerH.q(objX3);
            }
            Modifier modifierA = AlphaKt.a(OffsetKt.a(modifier3, (Function1) objX3), f4);
            int i8 = 57344 & i6;
            int i9 = i6 & 896;
            boolean zK = (i9 == 256) | (i8 == 16384) | gapComposerH.K(strC);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                thematicPlpCapsuleStyle2 = thematicPlpCapsuleStyle;
                objX4 = new cl0(thematicPlpCapsuleStyle2, themeUiModel2, strC, 22);
                gapComposerH.q(objX4);
            } else {
                thematicPlpCapsuleStyle2 = thematicPlpCapsuleStyle;
            }
            Modifier modifierB = ModifierExtKt.b(SemanticsModifierKt.b(modifierA, true, (Function1) objX4), themeUiModel2.equals(themeUiModel), new bw(f5, 5), gapComposerH, 0);
            String str2 = themeUiModel2.d.f51778b;
            String str3 = themeUiModel2.f55436b;
            if (str3 != null) {
                Locale locale = Locale.ROOT;
                str = str3.toLowerCase(locale);
                str.getClass();
                modifier2 = modifierB;
                if (str.length() > 0) {
                    StringBuilder sb = new StringBuilder();
                    String strValueOf = String.valueOf(str.charAt(0));
                    strValueOf.getClass();
                    String upperCase = strValueOf.toUpperCase(locale);
                    upperCase.getClass();
                    sb.append((Object) upperCase);
                    z = true;
                    sb.append(str.substring(1));
                    str = sb.toString();
                } else {
                    z = true;
                }
            } else {
                modifier2 = modifierB;
                z = true;
                str = new String();
            }
            ThemeAnimationState.OverlayOpen overlayOpen = ThemeAnimationState.OverlayOpen.f55497a;
            boolean z2 = (i7 & 896) == 256 ? z : false;
            if (i9 != 256) {
                z = false;
            }
            boolean z3 = z2 | z;
            Object objX5 = gapComposerH.x();
            if (z3 || objX5 == composer$Companion$Empty$1) {
                objX5 = new p01(function1, themeUiModel2, 16);
                gapComposerH.q(objX5);
            }
            gapComposer = gapComposerH;
            ThematicPlpToolBoxKt.a(modifier2, f2, str2, str, thematicPlpCapsuleStyle2, overlayOpen, (Function0) objX5, ThemeCapsuleRenderContext.OVERLAY, gapComposer, ((i6 >> 6) & 112) | 12779520 | i8);
            i5 = 500;
            f10 = 200.0f;
            f11 = 0.5f;
            f9 = 0.1f;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            i5 = i2;
            f9 = f6;
            f10 = f7;
            f11 = f8;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: d41
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    ThematicPlpThemesOverlayKt.a(modifier3, themeUiModel, themeUiModel2, f2, thematicPlpCapsuleStyle, f3, f4, f5, i5, f9, f10, f11, function1, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final ThemeUiModel themeUiModel, final List list, final float f2, final float f3, OverlayConstants overlayConstants, final Function1 function1, Composer composer, final int i2) {
        final OverlayConstants overlayConstants2;
        int i3;
        OverlayConstants overlayConstants3;
        HapticFeedback hapticFeedback;
        CoroutineScope coroutineScope;
        MutableState mutableState;
        float f4 = f3;
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(2018009105);
        int i4 = i2 | (gapComposerH.K(themeUiModel) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.c(f4) ? 2048 : 1024) | 8192 | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                i3 = i4 & (-57345);
                overlayConstants3 = new OverlayConstants(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, 3, null);
            } else {
                gapComposerH.D();
                i3 = i4 & (-57345);
                overlayConstants3 = overlayConstants;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope2 = (CoroutineScope) objX;
            HapticFeedback hapticFeedback2 = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(themeUiModel);
                gapComposerH.q(objX3);
            }
            MutableState mutableState3 = (MutableState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX4);
            }
            MutableState mutableState4 = (MutableState) objX4;
            boolean z = (458752 & i3) == 131072;
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$1) {
                objX5 = new ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1(function1, mutableState2, mutableState3, null);
                gapComposerH.q(objX5);
            }
            HapticFeedback hapticFeedback3 = hapticFeedback2;
            CoroutineScope coroutineScope3 = coroutineScope2;
            MutableState mutableState5 = mutableState4;
            Function1 function2 = (Function1) objX5;
            MutableState mutableState6 = mutableState3;
            State stateB = AnimateAsStateKt.b(!((Boolean) mutableState2.getF10755b()).booleanValue() ? 0.0f : 1.0f, AnimationSpecKt.c(250, 0, null, 6), null, gapComposerH, 0, 28);
            String str = "ThematicPlpThemesOverlay-1yyLQnY";
            Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.m(BackgroundKt.b(new DTFunctionNameModifier("ThematicPlpThemesOverlay-1yyLQnY").o(SizeKt.f5052c), Color.b(overlayConstants3.f55441a, overlayConstants3.f55442b), RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7));
            boolean zY = gapComposerH.y(coroutineScope3) | gapComposerH.y(function2);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == composer$Companion$Empty$1) {
                objX6 = new sm0(coroutineScope3, mutableState5, function2, 21);
                gapComposerH.q(objX6);
            }
            Modifier modifierD = ClickableKt.d(modifierB, false, null, null, (Function0) objX6, 15);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8589i, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            OverlayConstants overlayConstants4 = overlayConstants3;
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
            gapComposerH.L(267861613);
            List listM = CollectionsKt.m(list);
            int iIndexOf = ((AbstractList) listM).indexOf(themeUiModel);
            if (iIndexOf > 0) {
                listM = CollectionsKt.Y(CollectionsKt.Y(CollectionsKt.O(listM.get(iIndexOf)), CollectionsKt.q0(listM, iIndexOf)), CollectionsKt.w(listM, iIndexOf + 1));
            }
            Iterator it = listM.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ThemeUiModel themeUiModel2 = (ThemeUiModel) next;
                float f5 = ((Boolean) mutableState2.getF10755b()).booleanValue() ? -((f4 + f2) * i6) : 0.0f;
                Iterator it2 = it;
                Modifier modifierE = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier(str), "thematicPlp_themeCapsuleItem_" + i5);
                ThemeUiModel themeUiModel3 = (ThemeUiModel) mutableState6.getF10755b();
                ThematicPlpCapsuleStyle thematicPlpCapsuleStyle = Intrinsics.c(((ThemeUiModel) mutableState6.getF10755b()).f55435a, themeUiModel2.f55435a) ? ThematicPlpCapsuleStyle.SELECTED : ThematicPlpCapsuleStyle.UNSELECTED;
                float f6 = (!((Boolean) mutableState5.getF10755b()).booleanValue() || themeUiModel2.equals((ThemeUiModel) mutableState6.getF10755b())) ? 1.0f : 0.0f;
                float fFloatValue = ((Number) stateB.getF10755b()).floatValue();
                HapticFeedback hapticFeedback4 = hapticFeedback3;
                boolean zY2 = gapComposerH.y(hapticFeedback4) | gapComposerH.y(coroutineScope3) | gapComposerH.y(function2);
                Function1 function3 = function2;
                Object objX7 = gapComposerH.x();
                if (zY2 || objX7 == composer$Companion$Empty$1) {
                    hapticFeedback = hapticFeedback4;
                    CoroutineScope coroutineScope4 = coroutineScope3;
                    MutableState mutableState7 = mutableState5;
                    objX7 = new d1(hapticFeedback, mutableState6, coroutineScope4, mutableState7, function3, 21);
                    coroutineScope = coroutineScope4;
                    mutableState = mutableState7;
                    gapComposerH.q(objX7);
                } else {
                    hapticFeedback = hapticFeedback4;
                    coroutineScope = coroutineScope3;
                    mutableState = mutableState5;
                }
                GapComposer gapComposer = gapComposerH;
                a(modifierE, themeUiModel3, themeUiModel2, f4, thematicPlpCapsuleStyle, f5, f6, fFloatValue, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, (Function1) objX7, gapComposer, i3 & 7168);
                f4 = f3;
                coroutineScope3 = coroutineScope;
                str = str;
                hapticFeedback3 = hapticFeedback;
                gapComposerH = gapComposer;
                mutableState5 = mutableState;
                i3 = i3;
                mutableState6 = mutableState6;
                function2 = function3;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                it = it2;
                i5 = i6;
            }
            Function1 function4 = function2;
            CoroutineScope coroutineScope5 = coroutineScope3;
            MutableState mutableState8 = mutableState5;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = composer$Companion$Empty$1;
            HapticFeedback hapticFeedback5 = hapticFeedback3;
            gapComposerH.Z(false);
            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier(str), "thematicPlp_closeChangeTheme_button");
            ConfigurationIconButton configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48478b;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
            int i7 = LVAppDesignKitTheme.g(gapComposerH).q;
            boolean zY3 = gapComposerH.y(hapticFeedback5) | gapComposerH.y(coroutineScope5) | gapComposerH.y(function4);
            Object objX8 = gapComposerH.x();
            if (zY3 || objX8 == composer$Companion$Empty$2) {
                objX8 = new b41(hapticFeedback5, coroutineScope5, mutableState8, function4, 0);
                gapComposerH.q(objX8);
            }
            GapComposer gapComposer2 = gapComposerH;
            LVIconButtonKt.b(modifierE2, configurationIconButton, i7, null, strC, false, 0, false, false, (Function0) objX8, gapComposer2, 0, 0, 1000);
            gapComposerH = gapComposer2;
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            overlayConstants2 = overlayConstants4;
        } else {
            gapComposerH.D();
            overlayConstants2 = overlayConstants;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(list, f2, f3, overlayConstants2, function1, i2) { // from class: c41

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ List f21060c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f21061e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ OverlayConstants f21062f;
                public final /* synthetic */ Function1 g;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ThematicPlpThemesOverlayKt.b(this.f21059b, this.f21060c, this.d, this.f21061e, this.f21062f, this.g, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(CoroutineScope coroutineScope, MutableState mutableState, Function1 function1) {
        mutableState.setValue(Boolean.TRUE);
        BuildersKt.c(coroutineScope, null, null, new ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$triggerClose$1(null, function1), 3);
    }
}
