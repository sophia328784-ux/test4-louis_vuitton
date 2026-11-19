package com.vuitton.android.presentation.screen.onboarding.components;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PathMeasure;
import android.os.Handler;
import android.os.Looper;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LVIconSelectorKt;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.model.onboarding.IconLauncherType;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssetType;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.onboarding.models.PathPositionUIModel;
import defpackage.ag0;
import defpackage.ah0;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.o8;
import defpackage.pq0;
import defpackage.rd0;
import defpackage.rv;
import defpackage.tr;
import defpackage.w3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0012²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\t\u001a\u00020\b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\n\u001a\u00020\b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000b\u001a\u00020\b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\r\u001a\u00020\u00038\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000e\u001a\u00020\b8\n@\nX\u008a\u008e\u0002²\u0006\u0012\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;", "defaultIcon", "selectedIcon", "", "displayStepper", "displayBlurryBackground", "", "selectedIconIndex", "", "animIconPositionX", "animIconPositionY", "animIconSizeHeight", "animIconSizeWidth", "shouldDisplayView", "profilCompleteTextAlpha", "", "Lcom/vuitton/android/presentation/screen/onboarding/models/PathPositionUIModel;", "pathPositionList", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingIconComposableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PathMeasure f59551a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f59552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f59553c;
    public static final float d;

    static {
        int size = IconLauncherType.c().size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(AndroidPath_androidKt.a());
        }
        f59552b = arrayList;
        Dp.Companion companion = Dp.f11004c;
        f59553c = ResourcesExtKt.b(5.0f);
        d = 48.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v23, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v27, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r11v13, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v5, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r11v6, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r19v1, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r28v4, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v36 */
    public static final void a(OnboardingViewState onboardingViewState, Function0 function0, Function0 function1, final Function1 function2, Function1 function3, Function1 function4, final Function0 function5, Composer composer, int i2) {
        Function0 function6;
        Function1 function7;
        ?? r11;
        Object obj;
        Object obj2;
        Function2 function8;
        int i3;
        BoxScopeInstance boxScopeInstance;
        ?? r12;
        MutableState mutableState;
        LVModalBottomSheetState lVModalBottomSheetState;
        MutableState mutableState2;
        int i4;
        ?? r9;
        ?? r13;
        ?? r0;
        ?? r14;
        Object obj3;
        MutableIntState mutableIntState;
        Object obj4;
        MutableFloatState mutableFloatState;
        MutableFloatState mutableFloatState2;
        Object obj5;
        Object obj6;
        float f2;
        double d2;
        float f3;
        onboardingViewState.getClass();
        List list = onboardingViewState.f59602c;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(506798258);
        Applier applier = gapComposerH.f7976a;
        int i5 = (gapComposerH.y(onboardingViewState) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            function6 = function0;
            i5 |= gapComposerH.y(function6) ? 32 : 16;
        } else {
            function6 = function0;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i5 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= gapComposerH.y(function5) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i5 & 1, (i5 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = ((i5 & 896) == 256) | ((458752 & i5) == 131072);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Object obj7 = objX;
            if (z || objX == composer$Companion$Empty$1) {
                OnboardingIconComposableKt$OnboardingIcons$1$1 onboardingIconComposableKt$OnboardingIcons$1$1 = new OnboardingIconComposableKt$OnboardingIcons$1$1(null, function1, function4);
                gapComposerH.q(onboardingIconComposableKt$OnboardingIcons$1$1);
                obj7 = onboardingIconComposableKt$OnboardingIcons$1$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) obj7);
            Iterator it = list.iterator();
            int i6 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i6 = -1;
                    break;
                } else if (((OnboardingAssetType) it.next()) == OnboardingAssetType.ICONS) {
                    break;
                } else {
                    i6++;
                }
            }
            Integer numValueOf = Integer.valueOf(i6);
            if (i6 == -1) {
                numValueOf = null;
            }
            int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX2 = gapComposerH.x();
            Object obj8 = objX2;
            if (objX2 == composer$Companion$Empty$1) {
                MutableState mutableStateG = SnapshotStateKt.g(function6.mo47invoke());
                gapComposerH.q(mutableStateG);
                obj8 = mutableStateG;
            }
            final MutableState mutableState3 = (MutableState) obj8;
            Object objX3 = gapComposerH.x();
            Object obj9 = objX3;
            if (objX3 == composer$Companion$Empty$1) {
                MutableState mutableStateG2 = SnapshotStateKt.g((IconLauncherType) mutableState3.getF10755b());
                gapComposerH.q(mutableStateG2);
                obj9 = mutableStateG2;
            }
            MutableState mutableState4 = (MutableState) obj9;
            Object objX4 = gapComposerH.x();
            Object obj10 = objX4;
            if (objX4 == composer$Companion$Empty$1) {
                MutableState mutableStateG3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(mutableStateG3);
                obj10 = mutableStateG3;
            }
            final MutableState mutableState5 = (MutableState) obj10;
            Object objX5 = gapComposerH.x();
            Object obj11 = objX5;
            if (objX5 == composer$Companion$Empty$1) {
                MutableState mutableStateG4 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(mutableStateG4);
                obj11 = mutableStateG4;
            }
            final MutableState mutableState6 = (MutableState) obj11;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9935a;
            float f4 = ((Configuration) gapComposerH.k(dynamicProvidableCompositionLocal)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            float f5 = ((Configuration) gapComposerH.k(dynamicProvidableCompositionLocal)).screenHeightDp;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                MutableIntState mutableIntStateA = SnapshotIntStateKt.a(IconLauncherType.c().indexOf((IconLauncherType) mutableState3.getF10755b()));
                gapComposerH.q(mutableIntStateA);
                obj = mutableIntStateA;
            } else {
                obj = objX6;
            }
            MutableIntState mutableIntState2 = (MutableIntState) obj;
            Object objX7 = gapComposerH.x();
            Object obj12 = objX7;
            if (objX7 == composer$Companion$Empty$1) {
                MutableFloatState mutableFloatStateA = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(mutableFloatStateA);
                obj12 = mutableFloatStateA;
            }
            final MutableFloatState mutableFloatState3 = (MutableFloatState) obj12;
            float f6 = 0.0f;
            Object objX8 = gapComposerH.x();
            Object obj13 = objX8;
            if (objX8 == composer$Companion$Empty$1) {
                MutableFloatState mutableFloatStateA2 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(mutableFloatStateA2);
                obj13 = mutableFloatStateA2;
            }
            final MutableFloatState mutableFloatState4 = (MutableFloatState) obj13;
            Object objX9 = gapComposerH.x();
            Object obj14 = objX9;
            if (objX9 == composer$Companion$Empty$1) {
                MutableFloatState mutableFloatStateA3 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(mutableFloatStateA3);
                obj14 = mutableFloatStateA3;
            }
            MutableFloatState mutableFloatState5 = (MutableFloatState) obj14;
            Object objX10 = gapComposerH.x();
            Object obj15 = objX10;
            if (objX10 == composer$Companion$Empty$1) {
                MutableFloatState mutableFloatStateA4 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(mutableFloatStateA4);
                obj15 = mutableFloatStateA4;
            }
            MutableFloatState mutableFloatState6 = (MutableFloatState) obj15;
            Object objX11 = gapComposerH.x();
            Object obj16 = objX11;
            if (objX11 == composer$Companion$Empty$1) {
                MutableState mutableStateG5 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(mutableStateG5);
                obj16 = mutableStateG5;
            }
            final MutableState mutableState7 = (MutableState) obj16;
            Object objX12 = gapComposerH.x();
            Object obj17 = objX12;
            if (objX12 == composer$Companion$Empty$1) {
                MutableFloatState mutableFloatStateA5 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(mutableFloatStateA5);
                obj17 = mutableFloatStateA5;
            }
            final MutableFloatState mutableFloatState7 = (MutableFloatState) obj17;
            double d3 = ((double) f4) * 0.5d;
            float fA = mutableFloatState6.a();
            float f7 = f59553c;
            double d4 = d3 - ((double) ((fA + f7) / 2.0f));
            double dA = (((double) f5) * 0.5d) - ((double) ((mutableFloatState5.a() + f7) / 2.0f));
            Object objX13 = gapComposerH.x();
            if (objX13 == composer$Companion$Empty$1) {
                int size = IconLauncherType.c().size();
                ArrayList arrayList = new ArrayList(size);
                int i7 = 0;
                while (i7 < size) {
                    arrayList.add(new PathPositionUIModel(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, null));
                    i7++;
                    size = size;
                }
                MutableState mutableStateG6 = SnapshotStateKt.g(arrayList);
                gapComposerH.q(mutableStateG6);
                obj2 = mutableStateG6;
            } else {
                obj2 = objX13;
            }
            MutableState mutableState8 = (MutableState) obj2;
            Float fValueOf = Float.valueOf(((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(0)).f59603a);
            Object objX14 = gapComposerH.x();
            Object obj18 = objX14;
            if (objX14 == composer$Companion$Empty$1) {
                OnboardingIconComposableKt$OnboardingIcons$2$1 onboardingIconComposableKt$OnboardingIcons$2$1 = new OnboardingIconComposableKt$OnboardingIcons$2$1(mutableFloatState5, null);
                gapComposerH.q(onboardingIconComposableKt$OnboardingIcons$2$1);
                obj18 = onboardingIconComposableKt$OnboardingIcons$2$1;
            }
            EffectsKt.e(gapComposerH, fValueOf, (Function2) obj18);
            Iterator it2 = ((List) mutableState8.getF10755b()).iterator();
            int i8 = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                int i9 = i8 + 1;
                if (i8 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                double d5 = 0.65d;
                switch (i8) {
                    case 0:
                    case 4:
                        f6 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59603a - 50.0f;
                        f2 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59604b;
                        d2 = f2;
                        f3 = (float) (d2 * d5);
                        break;
                    case 1:
                    case 5:
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        f6 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59603a - 180.0f;
                        d2 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59604b;
                        d5 = 0.75d;
                        f3 = (float) (d2 * d5);
                        break;
                    case 2:
                    case 6:
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        f6 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59603a + 170.0f;
                        d2 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59604b;
                        d5 = 0.7d;
                        f3 = (float) (d2 * d5);
                        break;
                    case 3:
                    case 7:
                        f6 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59603a + 50.0f;
                        f2 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59604b;
                        d2 = f2;
                        f3 = (float) (d2 * d5);
                        break;
                    default:
                        f3 = f6;
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        break;
                }
                float f8 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59603a;
                MutableState mutableState9 = mutableState8;
                float f9 = ((PathPositionUIModel) ((List) mutableState8.getF10755b()).get(i8)).f59604b;
                Iterator it3 = it2;
                Dp.Companion companion2 = Dp.f11004c;
                float fB = ResourcesExtKt.b((float) d4);
                double d6 = d4;
                float fB2 = ResourcesExtKt.b((float) dA);
                ArrayList arrayList2 = f59552b;
                ((Path) arrayList2.get(i8)).reset();
                ((Path) arrayList2.get(i8)).a(f8, f9);
                ((Path) arrayList2.get(i8)).i(f6, f3, fB, fB2);
                i8 = i9;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                it2 = it3;
                d4 = d6;
                mutableState8 = mutableState9;
                mutableFloatState5 = mutableFloatState5;
                f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            MutableState mutableState10 = mutableState8;
            MutableFloatState mutableFloatState8 = mutableFloatState5;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = composer$Companion$Empty$1;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("OnboardingIcons");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (applier == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Function2 function10 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function10);
            Function2 function11 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function11);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            Function2 function12 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function12);
            Function1 function13 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function13);
            Function2 function14 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function14);
            Modifier modifierA = GradientKt.a(pq0.i("OnboardingIcons", fillElement), GradientKt.d);
            ContentScale.f9447a.getClass();
            int i10 = i5;
            int i11 = iIntValue;
            ImageKt.a(PainterResources_androidKt.a(R.drawable.onboarding_icons_clear_background, gapComposerH, 0), null, modifierA, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632, 104);
            boolean zBooleanValue = ((Boolean) mutableState6.getF10755b()).booleanValue();
            EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
            ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
            ComposableSingletons$OnboardingIconComposableKt.f59549a.getClass();
            AnimatedVisibilityKt.e(zBooleanValue, null, enterTransitionF, exitTransitionH, null, ComposableSingletons$OnboardingIconComposableKt.f59550b, gapComposerH, 200064, 18);
            GapComposer gapComposer = gapComposerH;
            Modifier modifierC2 = WindowInsetsPadding_androidKt.c(new DTFunctionNameModifier("OnboardingIcons").o(fillElement));
            Color.f8866b.getClass();
            Modifier modifierB = BackgroundKt.b(modifierC2, Color.f8870h, RectangleShapeKt.f8913a);
            Object objX15 = gapComposer.x();
            Object obj19 = objX15;
            if (objX15 == composer$Companion$Empty$2) {
                ag0 ag0Var = new ag0(24);
                gapComposer.q(ag0Var);
                obj19 = ag0Var;
            }
            CanvasKt.a(modifierB, (Function1) obj19, gapComposer, 48);
            boolean zBooleanValue2 = ((Boolean) mutableState7.getF10755b()).booleanValue();
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
            if (zBooleanValue2) {
                function8 = function14;
                i3 = 0;
                boxScopeInstance = boxScopeInstance2;
                gapComposer.L(434364650);
                gapComposer.Z(false);
                r12 = gapComposer;
            } else {
                gapComposer.L(432340784);
                Modifier modifierA2 = AlphaKt.a(new DTFunctionNameModifier("OnboardingIcons"), 1.0f);
                float fA2 = mutableFloatState3.a();
                Dp.Companion companion3 = Dp.f11004c;
                ImageKt.a(PainterResources_androidKt.a(((IconLauncherType) IconLauncherType.c().get(mutableIntState2.f())).getIconResource(), gapComposer, 0), null, AspectRatioKt.a(PaddingKt.i(SizeKt.p(OffsetKt.b(modifierA2, fA2, mutableFloatState4.a()), mutableFloatState6.a(), mutableFloatState8.a()), LVAppDesignKitTheme.l(gapComposer).f48414b), 1.0f, false), null, ContentScale.Companion.f9450c, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposer, 24632, 104);
                Modifier modifierG = boxScopeInstance2.g(SizeKt.x(AlphaKt.a(PaddingKt.m(new DTFunctionNameModifier("OnboardingIcons"), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((mutableFloatState8.a() / 2.0f) * Resources.getSystem().getDisplayMetrics().density) + d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), mutableFloatState7.a()), null, 3), Alignment.Companion.f8587f);
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposer, 48);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposer.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierG);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function9);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, columnMeasurePolicyA, function10);
                Updater.c(gapComposer, persistentCompositionLocalMapU2, function11);
                cj.t(iHashCode2, gapComposer, function12, gapComposer, function13);
                Modifier modifierM = PaddingKt.m(SizeKt.x(tr.e(gapComposer, modifierC3, function14, "OnboardingIcons"), null, 3), LVAppDesignKitTheme.l(gapComposer).g, LVAppDesignKitTheme.l(gapComposer).f48419i, LVAppDesignKitTheme.l(gapComposer).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                String strC = StringResources_androidKt.c(gapComposer, R.string.onboarding_logged_in_profile_completed_description);
                TextAlign.f10959b.getClass();
                boxScopeInstance = boxScopeInstance2;
                function8 = function14;
                TextKt.c(strC, modifierM, LVAppDesignKitTheme.c(gapComposer).f48361b.m, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48425e, gapComposer, 0, 0, 130040);
                LVFlowerLoaderKt.a(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("OnboardingIcons"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(gapComposer).n), LVFlowerLoaderStyle.DARK_BACKGROUND, false, gapComposer, 48, 4);
                GapComposer gapComposer2 = gapComposer;
                gapComposer2.Z(true);
                i3 = 0;
                gapComposer2.Z(false);
                r12 = gapComposer2;
            }
            Modifier modifierM2 = PaddingKt.m(pq0.i("OnboardingIcons", fillElement), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r12).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, r12, i3);
            int iHashCode3 = Long.hashCode(r12.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = r12.U();
            Modifier modifierC4 = ComposedModifierKt.c(r12, modifierM2);
            if (applier == 0) {
                ComposablesKt.b();
                throw r8;
            }
            r12.B();
            if (r12.S) {
                r12.C(function9);
            } else {
                r12.o();
            }
            Updater.c(r12, columnMeasurePolicyA2, function10);
            Updater.c(r12, persistentCompositionLocalMapU3, function11);
            cj.t(iHashCode3, r12, r51, r12, r52);
            Updater.c(r12, modifierC4, function8);
            if (((Boolean) mutableState7.getF10755b()).booleanValue()) {
                Modifier modifierC5 = WindowInsetsPadding_androidKt.c(ColumnScopeInstance.f4944a.a(o60.c(r12, -209888901, "OnboardingIcons", 1.0f), 1.0f, true));
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.d, horizontal, r12, 6);
                int iHashCode4 = Long.hashCode(r12.getT());
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = r12.U();
                Modifier modifierC6 = ComposedModifierKt.c(r12, modifierC5);
                if (applier == 0) {
                    ComposablesKt.b();
                    throw 0;
                }
                r12.B();
                if (r12.S) {
                    r12.C(function9);
                } else {
                    r12.o();
                }
                Updater.c(r12, columnMeasurePolicyA3, function10);
                Updater.c(r12, persistentCompositionLocalMapU4, function11);
                cj.t(iHashCode4, r12, function12, r12, function13);
                Updater.c(r12, modifierC6, function8);
                String strC2 = StringResources_androidKt.c(r12, R.string.onboarding_logged_in_customize_icon_description);
                Modifier modifierE = ModifierExtKt.e(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("OnboardingIcons"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r12).f48418h, 7), LVAppDesignKitTheme.l(r12).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "onboardingCustomIcon_description_text");
                TextStyle textStyle = LVAppDesignKitTheme.n(r12).f48425e;
                TextAlign.f10959b.getClass();
                ?? r1 = i3;
                ?? r28 = r12;
                TextKt.c(strC2, modifierE, LVAppDesignKitTheme.c(r12).f48361b.m, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, r28, 0, 0, 130040);
                IconLauncherType iconLauncherType = (IconLauncherType) mutableState3.getF10755b();
                Modifier modifierK = PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("OnboardingIcons"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r28).f48416e, 7), LVAppDesignKitTheme.l(r28).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                List list2 = (List) mutableState10.getF10755b();
                boolean zY = r28.y(hapticFeedback);
                Object objX16 = r28.x();
                if (zY || objX16 == composer$Companion$Empty$2) {
                    mutableState2 = mutableState4;
                    mutableIntState = mutableIntState2;
                    rv rvVar = new rv(hapticFeedback, mutableState2, mutableIntState, 28);
                    r28.q(rvVar);
                    obj4 = rvVar;
                } else {
                    mutableState2 = mutableState4;
                    mutableIntState = mutableIntState2;
                    obj4 = objX16;
                }
                Function2 function15 = (Function2) obj4;
                Object objX17 = r28.x();
                if (objX17 == composer$Companion$Empty$2) {
                    mutableFloatState = mutableFloatState8;
                    mutableFloatState2 = mutableFloatState6;
                    ah0 ah0Var = new ah0(mutableFloatState, mutableFloatState2, r1 == true ? 1 : 0);
                    r28.q(ah0Var);
                    obj5 = ah0Var;
                } else {
                    mutableFloatState = mutableFloatState8;
                    mutableFloatState2 = mutableFloatState6;
                    obj5 = objX17;
                }
                LVIconSelectorKt.a(modifierK, function15, 0L, iconLauncherType, list2, (Function2) obj5, r28, ImageMetadata.EDGE_MODE, 4);
                ?? r15 = r28;
                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(r15).f48447b;
                Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(PaddingKt.k(PaddingKt.m(new DTFunctionNameModifier("OnboardingIcons"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(r15).g, 7), LVAppDesignKitTheme.l(r15).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), "onboardingCustomIcon_close_button");
                String strC3 = StringResources_androidKt.c(r15, R.string.onboarding_end_cta);
                i4 = i10;
                boolean z2 = ((3670016 & i4) == 1048576 ? true : r1 == true ? 1 : 0) | ((i4 & 7168) == 2048 ? true : r1 == true ? 1 : 0) | (r15.y(lVModalBottomSheetStateF) ? 1 : 0);
                Object objX18 = r15.x();
                if (z2 || objX18 == composer$Companion$Empty$2) {
                    final MutableFloatState mutableFloatState9 = mutableFloatState;
                    final MutableState mutableState11 = mutableState2;
                    final MutableIntState mutableIntState3 = mutableIntState;
                    final MutableFloatState mutableFloatState10 = mutableFloatState2;
                    Function0 function16 = new Function0() { // from class: bh0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                            Boolean bool = Boolean.FALSE;
                            mutableState5.setValue(bool);
                            mutableState7.setValue(bool);
                            mutableState6.setValue(bool);
                            MutableState mutableState12 = mutableState11;
                            function2.invoke(((IconLauncherType) mutableState12.getF10755b()).getIconId());
                            MutableFloatState mutableFloatState11 = mutableFloatState10;
                            final float fA3 = mutableFloatState11.a();
                            MutableFloatState mutableFloatState12 = mutableFloatState9;
                            final float fA4 = mutableFloatState12.a();
                            int iF = mutableIntState3.f();
                            final ah0 ah0Var2 = new ah0(mutableFloatState3, mutableFloatState4, 1);
                            final ah0 ah0Var3 = new ah0(mutableFloatState11, mutableFloatState12, 2);
                            final z30 z30Var = new z30(mutableFloatState7, 2);
                            final r0 r0Var = new r0((Object) function5, (Object) lVModalBottomSheetStateF, mutableState12, (Object) mutableState3, 15);
                            PathMeasure pathMeasure2 = OnboardingIconComposableKt.f59551a;
                            Path path = (Path) OnboardingIconComposableKt.f59552b.get(iF);
                            if (!(path instanceof AndroidPath)) {
                                mt.i("Unable to obtain android.graphics.Path");
                                return null;
                            }
                            pathMeasure2.setPath(((AndroidPath) path).f8841a, false);
                            final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
                            final float[] fArr = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                            valueAnimatorOfFloat.setDuration((long) (((double) pathMeasure2.getLength()) * 0.8d));
                            valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
                            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zg0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    PathMeasure pathMeasure3 = OnboardingIconComposableKt.f59551a;
                                    valueAnimator.getClass();
                                    Object animatedValue = valueAnimator.getAnimatedValue();
                                    animatedValue.getClass();
                                    float fFloatValue = ((Float) animatedValue).floatValue();
                                    Ref$FloatRef ref$FloatRef2 = ref$FloatRef;
                                    ref$FloatRef2.f71918b = fFloatValue;
                                    PathMeasure pathMeasure4 = OnboardingIconComposableKt.f59551a;
                                    float length = pathMeasure4.getLength() * fFloatValue;
                                    float[] fArr2 = fArr;
                                    pathMeasure4.getPosTan(length, fArr2, null);
                                    float f10 = fArr2[0];
                                    float f11 = fArr2[1];
                                    float f12 = OnboardingIconComposableKt.f59553c;
                                    ah0Var3.invoke(Float.valueOf((ref$FloatRef2.f71918b * f12) + fA3), Float.valueOf((f12 * ref$FloatRef2.f71918b) + fA4));
                                    ah0Var2.invoke(Float.valueOf(f10 / Resources.getSystem().getDisplayMetrics().density), Float.valueOf(f11 / Resources.getSystem().getDisplayMetrics().density));
                                }
                            });
                            valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt$initAndLaunchAnimation$$inlined$doOnEnd$1
                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationCancel(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    final Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
                                    ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                                    valueAnimatorOfFloat2.setDuration(500L);
                                    valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                                    final Function1 function17 = z30Var;
                                    valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt$initAndLaunchAnimation$2$1
                                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                            valueAnimator.getClass();
                                            Object animatedValue = valueAnimator.getAnimatedValue();
                                            animatedValue.getClass();
                                            float fFloatValue = ((Float) animatedValue).floatValue();
                                            ref$FloatRef2.f71918b = fFloatValue;
                                            function17.invoke(Float.valueOf(fFloatValue * 1.0f));
                                        }
                                    });
                                    final Function0 function18 = r0Var;
                                    valueAnimatorOfFloat2.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt$initAndLaunchAnimation$lambda$1$$inlined$doOnEnd$1
                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationCancel(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationEnd(Animator animator2) {
                                            Handler handler = new Handler(Looper.getMainLooper());
                                            final Function0 function19 = function18;
                                            handler.postDelayed(new Runnable() { // from class: com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt$initAndLaunchAnimation$2$2$1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    function19.mo47invoke();
                                                }
                                            }, 1500L);
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationRepeat(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationStart(Animator animator2) {
                                        }
                                    });
                                    valueAnimatorOfFloat2.start();
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationRepeat(Animator animator) {
                                }

                                @Override // android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                }
                            });
                            valueAnimatorOfFloat.start();
                            return Unit.f71739a;
                        }
                    };
                    mutableState = mutableState5;
                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                    r15.q(function16);
                    obj6 = function16;
                } else {
                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                    mutableState = mutableState5;
                    obj6 = objX18;
                }
                LVButtonKt.b(0, 504, r15, modifierE2, configurationButton, null, null, strC3, (Function0) obj6, false, false, false);
                r9 = 1;
                r15.Z(true);
                r15.Z(r1);
                r0 = r1;
                r13 = r15;
            } else {
                ?? r2 = i3;
                mutableState = mutableState5;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                mutableState2 = mutableState4;
                i4 = i10;
                r9 = 1;
                r12.L(-205805612);
                r12.Z(r2);
                r0 = r2;
                r13 = r12;
            }
            r13.Z(r9);
            if (!((Boolean) mutableState.getF10755b()).booleanValue() || list.size() <= r9) {
                r13.L(439108394);
                r13.Z(r0);
            } else {
                OnboardingPreferencesComposableKt.c(boxScopeInstance.g(n00.i(r13, 438898896, "OnboardingIcons"), Alignment.Companion.f8585c), i11, list.size(), r13, r0);
                r13.Z(r0);
            }
            r13.Z(true);
            if (lVModalBottomSheetState.a()) {
                r13.L(1228460018);
                String strC4 = StringResources_androidKt.c(r13, R.string.alt_close);
                ?? r3 = (57344 & i4) == 16384 ? 1 : r0;
                Object objX19 = r13.x();
                int i12 = 9;
                if (r3 != 0 || objX19 == composer$Companion$Empty$2) {
                    function7 = function3;
                    o8 o8Var = new o8(function7, mutableState2, i12);
                    r13.q(o8Var);
                    obj3 = o8Var;
                } else {
                    function7 = function3;
                    obj3 = objX19;
                }
                ?? r19 = r13;
                LVModalBottomSheetKt.b(null, strC4, (Function0) obj3, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-1732777725, new rd0(lVModalBottomSheetState, function7, mutableState2, 1), r13), r19, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                ?? r16 = r19;
                r16.Z(r0);
                r14 = r16;
            } else {
                function7 = function3;
                r13.L(1228894576);
                r13.Z(r0);
                r14 = r13;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            r11 = r14;
        } else {
            function7 = function3;
            gapComposerH.D();
            r11 = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r11.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(onboardingViewState, function0, function1, function2, function7, function4, function5, i2);
        }
    }
}
