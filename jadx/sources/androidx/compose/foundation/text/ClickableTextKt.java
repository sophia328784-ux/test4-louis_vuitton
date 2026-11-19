package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.km;
import defpackage.mm;
import defpackage.x3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ClickableTextKt {
    public static final void a(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, boolean z, int i2, int i3, Function1 function1, final Function1 function2, Composer composer, int i4, int i5) {
        int i6;
        GapComposer gapComposer;
        boolean z2;
        int i7;
        int i8;
        Function1 function3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "ClickableText-4YKlhWE");
        }
        GapComposer gapComposerH = composer.h(-246609449);
        if ((i4 & 6) == 0) {
            i6 = i4 | (gapComposerH.K(annotatedString) ? 4 : 2);
        } else {
            i6 = i4;
        }
        int i9 = i5 & 2;
        if (i9 != 0) {
            i6 |= 48;
        } else if ((i4 & 48) == 0) {
            i6 |= gapComposerH.K(dTFunctionNameModifier) ? 32 : 16;
        }
        int i10 = i6 | (gapComposerH.K(textStyle) ? 256 : 128) | 1797120 | (gapComposerH.y(function2) ? 8388608 : 4194304);
        if (gapComposerH.p(i10 & 1, (4793491 & i10) != 4793490)) {
            if (i9 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ClickableText-4YKlhWE");
            }
            TextOverflow.f10989a.getClass();
            int i11 = TextOverflow.f10990b;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new km(1);
                gapComposerH.q(objX);
            }
            Function1 function4 = (Function1) objX;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(null);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ClickableText-4YKlhWE");
            boolean z3 = (29360128 & i10) == 8388608;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.ClickableTextKt$ClickableText$pressIndicator$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new x3(mutableState, function2, 4), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            }
            Modifier modifierO = dTFunctionNameModifier.o(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier2, function2, (PointerInputEventHandler) objX3));
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new x3(mutableState, function4, 3);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            BasicTextKt.a(annotatedString, modifierO, textStyle, (Function1) objX4, i11, true, Integer.MAX_VALUE, 0, null, gapComposer, (58254 & i10) | 1769472, 0, Sink.Screenshare.MAX_DIMENSION_HIGH);
            function3 = function4;
            i7 = i11;
            z2 = true;
            i8 = Integer.MAX_VALUE;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z2 = z;
            i7 = i2;
            i8 = i3;
            function3 = function1;
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mm(annotatedString, modifier2, textStyle, z2, i7, i8, function3, function2, i4, i5);
        }
    }
}
