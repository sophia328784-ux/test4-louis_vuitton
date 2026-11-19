package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.internal.ChildParentSemanticsKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.fc;
import defpackage.l01;
import defpackage.o11;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SurfaceKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f7319a = CompositionLocalKt.c(new o11(21));

    public static final void a(Modifier modifier, Shape shape, final long j2, long j3, float f2, float f3, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        float f4;
        final float f5;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "Surface-T9BRK9s");
        }
        final Modifier modifier2 = modifier;
        if ((i3 & 2) != 0) {
            shape = RectangleShapeKt.f8913a;
        }
        final Shape shape2 = shape;
        long jB = (i3 & 8) != 0 ? ColorSchemeKt.b(j2, composer) : j3;
        if ((i3 & 16) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f4 = 0.0f;
        } else {
            f4 = f2;
        }
        if ((i3 & 32) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f5 = 0.0f;
        } else {
            f5 = f3;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = f7319a;
        final float f6 = ((Dp) composer.k(dynamicProvidableCompositionLocal)).f11006b + f4;
        final BorderStroke borderStroke = null;
        CompositionLocalKt.b(new ProvidedValue[]{defpackage.a.d(jB, ContentColorKt.f6730a), dynamicProvidableCompositionLocal.c(new Dp(f6))}, ComposableLambdaKt.b(421772006, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SurfaceKt$Surface$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer2 = (Composer) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierD = SurfaceKt.d(modifier2, shape2, SurfaceKt.e(j2, f6, composer2), borderStroke, ((Density) composer2.k(CompositionLocalsKt.f10031h)).u1(f5));
                    Object objX = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new l01(20);
                        composer2.q(objX);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(modifierD, false, (Function1) objX);
                    Unit unit = Unit.f71739a;
                    Object objX2 = composer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = SurfaceKt$Surface$1$3$1.f7325a;
                        composer2.q(objX2);
                    }
                    Modifier modifierA = SuspendingPointerInputFilterKt.a(modifierB, unit, (PointerInputEventHandler) objX2);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                    int iG = composer2.G();
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function0);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Function2 function2 = ComposeUiNode.Companion.g;
                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                        fc.A(function2, iG, composer2, iG);
                    }
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    composableLambdaImpl.invoke(composer2, 0);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            }
        }, composer), composer, 56);
    }

    public static final void b(final boolean z, final Function0 function0, Modifier modifier, final boolean z2, final Shape shape, final long j2, final BorderStroke borderStroke, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Surface-d85dljk");
        }
        final Modifier modifier2 = modifierE;
        long jB = ColorSchemeKt.b(j2, composer);
        Dp.Companion companion = Dp.f11004c;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.L(1528143336);
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = InteractionSourceKt.a();
            composer.q(objX);
        }
        final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
        composer.F();
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = f7319a;
        final float f2 = ((Dp) composer.k(dynamicProvidableCompositionLocal)).f11006b + Call.Parameters.DEFAULT_CAMERA_ZOOM;
        CompositionLocalKt.b(new ProvidedValue[]{defpackage.a.d(jB, ContentColorKt.f6730a), dynamicProvidableCompositionLocal.c(new Dp(f2))}, ComposableLambdaKt.b(1508735219, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SurfaceKt$Surface$3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer2 = (Composer) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                    Modifier modifierA = ChildParentSemanticsKt.a(SelectableKt.a(SurfaceKt.d(modifier2.o(MinimumInteractiveModifier.f7044b), shape, SurfaceKt.e(j2, f2, composer2), borderStroke, ((Density) composer2.k(CompositionLocalsKt.f10031h)).u1(Call.Parameters.DEFAULT_CAMERA_ZOOM)), z, mutableInteractionSource, RippleKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, false), z2, null, function0));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                    int iG = composer2.G();
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Function2 function2 = ComposeUiNode.Companion.g;
                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                        fc.A(function2, iG, composer2, iG);
                    }
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    composableLambdaImpl.invoke(composer2, 0);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            }
        }, composer), composer, 56);
    }

    public static final void c(final Function0 function0, Modifier modifier, boolean z, final Shape shape, final long j2, long j3, float f2, final float f3, MutableInteractionSource mutableInteractionSource, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        float f4;
        final MutableInteractionSource mutableInteractionSource2;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "Surface-o_FOJdg");
        }
        final Modifier modifier2 = modifier;
        final boolean z2 = (i3 & 4) != 0 ? true : z;
        if ((i3 & 64) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        } else {
            f4 = f2;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (mutableInteractionSource == null) {
            composer.L(-1701037204);
            Object objX = composer.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                composer.q(objX);
            }
            composer.F();
            mutableInteractionSource2 = (MutableInteractionSource) objX;
        } else {
            composer.L(2023337163);
            composer.F();
            mutableInteractionSource2 = mutableInteractionSource;
        }
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = f7319a;
        final float f5 = ((Dp) composer.k(dynamicProvidableCompositionLocal)).f11006b + f4;
        final BorderStroke borderStroke = null;
        CompositionLocalKt.b(new ProvidedValue[]{defpackage.a.d(j3, ContentColorKt.f6730a), dynamicProvidableCompositionLocal.c(new Dp(f5))}, ComposableLambdaKt.b(849208527, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SurfaceKt$Surface$2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer2 = (Composer) obj;
                int iIntValue = ((Number) obj2).intValue();
                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                    Modifier modifierA = ChildParentSemanticsKt.a(ClickableKt.b(SurfaceKt.d(modifier2.o(MinimumInteractiveModifier.f7044b), shape, SurfaceKt.e(j2, f5, composer2), borderStroke, ((Density) composer2.k(CompositionLocalsKt.f10031h)).u1(f3)), mutableInteractionSource2, RippleKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, false), z2, null, null, function0, 24));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                    int iG = composer2.G();
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Function2 function2 = ComposeUiNode.Companion.g;
                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                        fc.A(function2, iG, composer2, iG);
                    }
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    composableLambdaImpl.invoke(composer2, 0);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            }
        }, composer), composer, 56);
    }

    public static final Modifier d(Modifier modifier, Shape shape, long j2, BorderStroke borderStroke, float f2) {
        Shape shape2;
        Modifier modifierB;
        Modifier modifierB2 = Modifier.Companion.f8607b;
        if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            shape2 = shape;
            modifierB = GraphicsLayerModifierKt.b(modifierB2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, shape2, 124895);
        } else {
            shape2 = shape;
            modifierB = modifierB2;
        }
        Modifier modifierO = modifier.o(modifierB);
        if (borderStroke != null) {
            modifierB2 = BorderKt.b(modifierB2, borderStroke.f4154a, borderStroke.f4155b, shape2);
        }
        return ClipKt.a(BackgroundKt.b(modifierO.o(modifierB2), j2, shape2), shape2);
    }

    public static final long e(long j2, float f2, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ColorScheme colorSchemeA = MaterialTheme.a(composer);
        boolean zBooleanValue = ((Boolean) composer.k(ColorSchemeKt.f6672b)).booleanValue();
        long j3 = colorSchemeA.p;
        if (Color.c(j2, j3) && zBooleanValue) {
            return Dp.b(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM) ? j3 : ColorKt.f(Color.b(((((float) Math.log(f2 + 1.0f)) * 4.5f) + 2.0f) / 100.0f, colorSchemeA.t), j3);
        }
        return j2;
    }
}
