package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.n00;
import defpackage.o51;
import defpackage.r5;
import defpackage.v70;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VtoCameraButtonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f62053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f62054b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f62053a = 5.0f;
        f62054b = 2.0f;
    }

    public static final void a(int i2, Composer composer, Modifier modifier, final Function0 function0, boolean z) {
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "VtoCameraButton");
        }
        modifierE.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1449466299);
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2 | 48 | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierA = ClipKt.a(modifierE, RoundedCornerShapeKt.f5846a);
            DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -550456498, "VtoCameraButton");
            Unit unit = Unit.f71739a;
            boolean z3 = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.VtoCameraButtonKt$VtoCameraButton$1$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.VtoCameraButtonKt$VtoCameraButton$1$1$2, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/PressGestureScope;", "it", "Landroidx/compose/ui/geometry/Offset;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.VtoCameraButtonKt$VtoCameraButton$1$1$2", f = "VtoCameraButton.kt", l = {}, m = "invokeSuspend", v = 2)
                    final class AnonymousClass2 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ Function0 f62056b;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass2(Function0 function0, Continuation continuation) {
                            super(3, continuation);
                            this.f62056b = function0;
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            long j2 = ((Offset) obj2).f8808a;
                            return new AnonymousClass2(this.f62056b, (Continuation) obj3).invokeSuspend(Unit.f71739a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            ResultKt.b(obj);
                            this.f62056b.mo47invoke();
                            return Unit.f71739a;
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, new o51(2), new AnonymousClass2(function0, null), null, continuation, 9);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            Modifier modifierA2 = SuspendingPointerInputFilterKt.a(dTFunctionNameModifierI, unit, (PointerInputEventHandler) objX);
            gapComposerH.Z(false);
            Modifier modifierO = modifierA.o(modifierA2);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            Modifier modifierO2 = new DTFunctionNameModifier("VtoCameraButton").o(SizeKt.f5052c);
            boolean zE = gapComposerH.e(j2);
            Object objX2 = gapComposerH.x();
            if (zE || objX2 == composer$Companion$Empty$1) {
                objX2 = new r5(j2, 18);
                gapComposerH.q(objX2);
            }
            CanvasKt.a(modifierO2, (Function1) objX2, gapComposerH, 6);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).l0, gapComposerH, 0), null, BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("VtoCameraButton"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, gapComposerH, 56, 0);
            gapComposerH.Z(true);
            z2 = true;
        } else {
            gapComposerH.D();
            z2 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v70(modifierE, i2, z2, function0, 1);
        }
    }
}
