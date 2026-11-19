package com.vuitton.android.designkit.components.components;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.IntSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt;
import defpackage.c30;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005¨\u0006\u000b²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\b\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\t\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "scale", "offsetX", "offsetY", "Landroidx/compose/ui/unit/IntSize;", "size", "", "isPinchDetected", "animatingScale", "animatingOffsetX", "animatingOffsetY", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVZoomableContentComponentKt {
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:26:0x0054  */
    /* JADX WARN: Code duplicated, block: B:29:0x005d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0064  */
    /* JADX WARN: Code duplicated, block: B:34:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0083  */
    /* JADX WARN: Code duplicated, block: B:40:0x0094  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:46:0x0103  */
    /* JADX WARN: Code duplicated, block: B:49:0x0143  */
    /* JADX WARN: Code duplicated, block: B:50:0x0145  */
    /* JADX WARN: Code duplicated, block: B:53:0x014c  */
    /* JADX WARN: Code duplicated, block: B:54:0x014e  */
    /* JADX WARN: Code duplicated, block: B:60:0x015e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0178  */
    /* JADX WARN: Code duplicated, block: B:66:0x018e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0190  */
    /* JADX WARN: Code duplicated, block: B:71:0x019d  */
    /* JADX WARN: Code duplicated, block: B:74:0x01db  */
    /* JADX WARN: Code duplicated, block: B:76:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:77:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:80:0x023c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0241  */
    /* JADX WARN: Code duplicated, block: B:85:0x0252  */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, float f2, float f3, final Function1 function1, boolean z, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        boolean z2;
        boolean z3;
        final float f4;
        final float f5;
        final boolean z4;
        final Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final MutableFloatState mutableFloatState;
        Object objX2;
        final MutableFloatState mutableFloatState2;
        Object objX3;
        final MutableFloatState mutableFloatState3;
        Object objX4;
        final MutableState mutableState;
        Object objX5;
        MutableState mutableState2;
        State stateB;
        State stateB2;
        State stateB3;
        boolean z5;
        int i4;
        boolean z6;
        boolean z7;
        Object objX6;
        MutableState mutableState3;
        boolean z8;
        boolean z9;
        Object objX7;
        boolean z10;
        Object objX8;
        final float f6;
        final float f7;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVZoomableContentComponent");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(1375059509);
        int i5 = i2 | 438;
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i6 = i3 & 16;
        if (i6 == 0) {
            if ((i2 & 24576) == 0) {
                z2 = z;
                i5 |= gapComposerH.b(z2) ? 16384 : 8192;
            }
            if ((74899 & i5) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVZoomableContentComponent");
                if (i6 != 0) {
                    z2 = false;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = PrimitiveSnapshotStateKt.a(1.0f);
                    gapComposerH.q(objX);
                }
                mutableFloatState = (MutableFloatState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    gapComposerH.q(objX2);
                }
                mutableFloatState2 = (MutableFloatState) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    gapComposerH.q(objX3);
                }
                mutableFloatState3 = (MutableFloatState) objX3;
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    IntSize.f11020b.getClass();
                    objX4 = SnapshotStateKt.g(new IntSize(0L));
                    gapComposerH.q(objX4);
                }
                mutableState = (MutableState) objX4;
                System.out.println((Object) ("scale: " + mutableFloatState.a() + ", offsetX: " + mutableFloatState2.a() + ", offsetY: " + mutableFloatState3.a() + ", size: " + IntSize.c(((IntSize) mutableState.getF10755b()).f11021a)));
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX5);
                }
                mutableState2 = (MutableState) objX5;
                stateB = AnimateAsStateKt.b(mutableFloatState.a(), null, "animatingScale", gapComposerH, 3072, 22);
                stateB2 = AnimateAsStateKt.b(mutableFloatState2.a(), null, "animatingOffsetX", gapComposerH, 3072, 22);
                stateB3 = AnimateAsStateKt.b(mutableFloatState3.a(), null, "animatingOffsetY", gapComposerH, 3072, 22);
                Boolean bool = (Boolean) mutableState2.getF10755b();
                bool.getClass();
                if ((57344 & i5) == 16384) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                i4 = i5 & 7168;
                if (i4 == 2048) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z5 | z6;
                objX6 = gapComposerH.x();
                if (!z7 || objX6 == composer$Companion$Empty$1) {
                    mutableState3 = mutableState2;
                    z8 = true;
                    boolean z11 = z2;
                    objX6 = new LVZoomableContentComponentKt$LVZoomableContentComponent$1$1(z11, function1, mutableState3, mutableFloatState, mutableFloatState2, mutableFloatState3, null);
                    z9 = z11;
                    gapComposerH.q(objX6);
                } else {
                    mutableState3 = mutableState2;
                    z8 = true;
                    z9 = z2;
                }
                EffectsKt.e(gapComposerH, bool, (Function2) objX6);
                objX7 = gapComposerH.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = new c30(8, mutableState);
                    gapComposerH.q(objX7);
                }
                Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifier, (Function1) objX7);
                Unit unit = Unit.f71739a;
                if (i4 == 2048) {
                    z10 = z8;
                } else {
                    z10 = false;
                }
                objX8 = gapComposerH.x();
                f6 = 1.0f;
                f7 = 4.0f;
                if (z10 || objX8 == composer$Companion$Empty$1) {
                    final MutableState mutableState4 = mutableState3;
                    objX8 = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1

                        /* JADX INFO: renamed from: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1, reason: invalid class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1", f = "LVZoomableContentComponent.kt", l = {76, 78}, m = "invokeSuspend", v = 2)
                        final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f48282c;
                            public /* synthetic */ Object d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ float f48283e;

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public final /* synthetic */ float f48284f;
                            public final /* synthetic */ Function1 g;

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public final /* synthetic */ MutableState f48285h;

                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                            public final /* synthetic */ MutableFloatState f48286i;

                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                            public final /* synthetic */ MutableState f48287j;

                            /* JADX INFO: renamed from: k, reason: collision with root package name */
                            public final /* synthetic */ MutableFloatState f48288k;
                            public final /* synthetic */ MutableFloatState l;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass1(float f2, float f3, Function1 function1, MutableState mutableState, MutableFloatState mutableFloatState, MutableState mutableState2, MutableFloatState mutableFloatState2, MutableFloatState mutableFloatState3, Continuation continuation) {
                                super(2, continuation);
                                this.f48283e = f2;
                                this.f48284f = f3;
                                this.g = function1;
                                this.f48285h = mutableState;
                                this.f48286i = mutableFloatState;
                                this.f48287j = mutableState2;
                                this.f48288k = mutableFloatState2;
                                this.l = mutableFloatState3;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48283e, this.f48284f, this.g, this.f48285h, this.f48286i, this.f48287j, this.f48288k, this.l, continuation);
                                anonymousClass1.d = obj;
                                return anonymousClass1;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            /* JADX WARN: Code duplicated, block: B:24:0x005f  */
                            /* JADX WARN: Code duplicated, block: B:54:0x0053 A[SYNTHETIC] */
                            /* JADX WARN: Code duplicated, block: B:55:0x006b A[SYNTHETIC] */
                            /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:1: B:22:0x0059->B:56:?, LOOP_END, SYNTHETIC] */
                            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x003c -> B:16:0x003f). Please report as a decompilation issue!!! */
                            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                                jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                                */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final java.lang.Object invokeSuspend(java.lang.Object r21) {
                                /*
                                    Method dump skipped, instruction units count: 366
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                            }
                        }

                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(f6, f7, function1, mutableState4, mutableFloatState, mutableState, mutableFloatState2, mutableFloatState3, null), continuation);
                            return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX8);
                }
                Modifier modifierA2 = SuspendingPointerInputFilterKt.a(modifierA, unit, (PointerInputEventHandler) objX8);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
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
                composableLambdaImpl.A(new ZoomableContentScopeImpl(((Number) stateB.getF10755b()).floatValue(), ((Number) stateB2.getF10755b()).floatValue(), ((Number) stateB3.getF10755b()).floatValue()), gapComposerH, 48);
                gapComposerH.Z(z8);
                z4 = z9;
                f4 = 1.0f;
                f5 = 4.0f;
            } else {
                gapComposerH.D();
                f4 = f2;
                f5 = f3;
                z4 = z2;
            }
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: w80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVZoomableContentComponentKt.a(modifier2, f4, f5, function1, z4, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 24576;
        z2 = z;
        if ((74899 & i5) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("LVZoomableContentComponent");
            if (i6 != 0) {
                z2 = false;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = PrimitiveSnapshotStateKt.a(1.0f);
                gapComposerH.q(objX);
            }
            mutableFloatState = (MutableFloatState) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX2);
            }
            mutableFloatState2 = (MutableFloatState) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX3);
            }
            mutableFloatState3 = (MutableFloatState) objX3;
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                IntSize.f11020b.getClass();
                objX4 = SnapshotStateKt.g(new IntSize(0L));
                gapComposerH.q(objX4);
            }
            mutableState = (MutableState) objX4;
            System.out.println((Object) ("scale: " + mutableFloatState.a() + ", offsetX: " + mutableFloatState2.a() + ", offsetY: " + mutableFloatState3.a() + ", size: " + IntSize.c(((IntSize) mutableState.getF10755b()).f11021a)));
            objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            mutableState2 = (MutableState) objX5;
            stateB = AnimateAsStateKt.b(mutableFloatState.a(), null, "animatingScale", gapComposerH, 3072, 22);
            stateB2 = AnimateAsStateKt.b(mutableFloatState2.a(), null, "animatingOffsetX", gapComposerH, 3072, 22);
            stateB3 = AnimateAsStateKt.b(mutableFloatState3.a(), null, "animatingOffsetY", gapComposerH, 3072, 22);
            Boolean bool2 = (Boolean) mutableState2.getF10755b();
            bool2.getClass();
            if ((57344 & i5) == 16384) {
                z5 = true;
            } else {
                z5 = false;
            }
            i4 = i5 & 7168;
            if (i4 == 2048) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z5 | z6;
            objX6 = gapComposerH.x();
            if (z7) {
                mutableState3 = mutableState2;
                z8 = true;
                boolean z12 = z2;
                objX6 = new LVZoomableContentComponentKt$LVZoomableContentComponent$1$1(z12, function1, mutableState3, mutableFloatState, mutableFloatState2, mutableFloatState3, null);
                z9 = z12;
                gapComposerH.q(objX6);
            } else {
                mutableState3 = mutableState2;
                z8 = true;
                boolean z13 = z2;
                objX6 = new LVZoomableContentComponentKt$LVZoomableContentComponent$1$1(z13, function1, mutableState3, mutableFloatState, mutableFloatState2, mutableFloatState3, null);
                z9 = z13;
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, bool2, (Function2) objX6);
            objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new c30(8, mutableState);
                gapComposerH.q(objX7);
            }
            Modifier modifierA3 = OnRemeasuredModifierKt.a(dTFunctionNameModifier, (Function1) objX7);
            Unit unit2 = Unit.f71739a;
            if (i4 == 2048) {
                z10 = z8;
            } else {
                z10 = false;
            }
            objX8 = gapComposerH.x();
            f6 = 1.0f;
            f7 = 4.0f;
            if (z10) {
                final MutableState mutableState5 = mutableState3;
                objX8 = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1

                    /* JADX INFO: renamed from: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1", f = "LVZoomableContentComponent.kt", l = {76, 78}, m = "invokeSuspend", v = 2)
                    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f48282c;
                        public /* synthetic */ Object d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ float f48283e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ float f48284f;
                        public final /* synthetic */ Function1 g;

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public final /* synthetic */ MutableState f48285h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public final /* synthetic */ MutableFloatState f48286i;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public final /* synthetic */ MutableState f48287j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public final /* synthetic */ MutableFloatState f48288k;
                        public final /* synthetic */ MutableFloatState l;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(float f2, float f3, Function1 function1, MutableState mutableState, MutableFloatState mutableFloatState, MutableState mutableState2, MutableFloatState mutableFloatState2, MutableFloatState mutableFloatState3, Continuation continuation) {
                            super(2, continuation);
                            this.f48283e = f2;
                            this.f48284f = f3;
                            this.g = function1;
                            this.f48285h = mutableState;
                            this.f48286i = mutableFloatState;
                            this.f48287j = mutableState2;
                            this.f48288k = mutableFloatState2;
                            this.l = mutableFloatState3;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48283e, this.f48284f, this.g, this.f48285h, this.f48286i, this.f48287j, this.f48288k, this.l, continuation);
                            anonymousClass1.d = obj;
                            return anonymousClass1;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        /* JADX WARN: Code duplicated, block: B:24:0x005f  */
                        /* JADX WARN: Code duplicated, block: B:54:0x0053 A[SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:55:0x006b A[SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:1: B:22:0x0059->B:56:?, LOOP_END, SYNTHETIC] */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x003c -> B:16:0x003f). Please report as a decompilation issue!!! */
                        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                            */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
                            /*
                                Method dump skipped, instruction units count: 366
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(f6, f7, function1, mutableState5, mutableFloatState, mutableState, mutableFloatState2, mutableFloatState3, null), continuation);
                        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            } else {
                final MutableState mutableState6 = mutableState3;
                objX8 = new PointerInputEventHandler() { // from class: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1

                    /* JADX INFO: renamed from: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1", f = "LVZoomableContentComponent.kt", l = {76, 78}, m = "invokeSuspend", v = 2)
                    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f48282c;
                        public /* synthetic */ Object d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ float f48283e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ float f48284f;
                        public final /* synthetic */ Function1 g;

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public final /* synthetic */ MutableState f48285h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public final /* synthetic */ MutableFloatState f48286i;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public final /* synthetic */ MutableState f48287j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public final /* synthetic */ MutableFloatState f48288k;
                        public final /* synthetic */ MutableFloatState l;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(float f2, float f3, Function1 function1, MutableState mutableState, MutableFloatState mutableFloatState, MutableState mutableState2, MutableFloatState mutableFloatState2, MutableFloatState mutableFloatState3, Continuation continuation) {
                            super(2, continuation);
                            this.f48283e = f2;
                            this.f48284f = f3;
                            this.g = function1;
                            this.f48285h = mutableState;
                            this.f48286i = mutableFloatState;
                            this.f48287j = mutableState2;
                            this.f48288k = mutableFloatState2;
                            this.l = mutableFloatState3;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f48283e, this.f48284f, this.g, this.f48285h, this.f48286i, this.f48287j, this.f48288k, this.l, continuation);
                            anonymousClass1.d = obj;
                            return anonymousClass1;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        /* JADX WARN: Code duplicated, block: B:24:0x005f  */
                        /* JADX WARN: Code duplicated, block: B:54:0x0053 A[SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:55:0x006b A[SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:1: B:22:0x0059->B:56:?, LOOP_END, SYNTHETIC] */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x003c -> B:16:0x003f). Please report as a decompilation issue!!! */
                        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                            */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
                            /*
                                Method dump skipped, instruction units count: 366
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$3$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(f6, f7, function1, mutableState6, mutableFloatState, mutableState, mutableFloatState2, mutableFloatState3, null), continuation);
                        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX8);
            }
            Modifier modifierA4 = SuspendingPointerInputFilterKt.a(modifierA3, unit2, (PointerInputEventHandler) objX8);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA4);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
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
            composableLambdaImpl.A(new ZoomableContentScopeImpl(((Number) stateB.getF10755b()).floatValue(), ((Number) stateB2.getF10755b()).floatValue(), ((Number) stateB3.getF10755b()).floatValue()), gapComposerH, 48);
            gapComposerH.Z(z8);
            z4 = z9;
            f4 = 1.0f;
            f5 = 4.0f;
        } else {
            gapComposerH.D();
            f4 = f2;
            f5 = f3;
            z4 = z2;
        }
        modifier2 = dTFunctionNameModifier;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: w80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVZoomableContentComponentKt.a(modifier2, f4, f5, function1, z4, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
