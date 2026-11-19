package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.ku0;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TapGestureDetectorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function3 f4734a = new TapGestureDetectorKt$NoPressGesture$1(3, null);

    /* JADX WARN: Code duplicated, block: B:17:0x0049 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0047 -> B:18:0x004a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(androidx.compose.ui.input.pointer.AwaitPointerEventScope r5, boolean r6, androidx.compose.ui.input.pointer.PointerEventPass r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2) r0
            int r1 = r0.f4738f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4738f = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f4737e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f4738f
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L31
            boolean r5 = r0.d
            androidx.compose.ui.input.pointer.PointerEventPass r6 = r0.f4736c
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = r0.f4735b
            kotlin.ResultKt.b(r8)
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L4a
        L31:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L38:
            kotlin.ResultKt.b(r8)
        L3b:
            r0.f4735b = r5
            r0.f4736c = r7
            r0.d = r6
            r0.f4738f = r3
            java.lang.Object r8 = r5.N0(r7, r0)
            if (r8 != r1) goto L4a
            return r1
        L4a:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            boolean r2 = f(r8, r6)
            if (r2 == 0) goto L3b
            java.util.List r5 = r8.f9305a
            r6 = 0
            java.lang.Object r5 = r5.get(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.a(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object b(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, Continuation continuation, int i2) {
        boolean z = (i2 & 1) != 0;
        if ((i2 & 2) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return a(awaitPointerEventScope, z, pointerEventPass, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x004f A[LOOP:0: B:19:0x004d->B:20:0x004f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:23:0x0066  */
    /* JADX WARN: Code duplicated, block: B:26:0x0071 A[LOOP:1: B:22:0x0064->B:26:0x0071, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:18:0x0040). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static final java.lang.Object c(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$consumeUntilUp$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f4743c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = r0.f4742b
            kotlin.ResultKt.b(r9)
            goto L40
        L29:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L30:
            kotlin.ResultKt.b(r9)
        L33:
            r0.f4742b = r8
            r0.d = r3
            androidx.compose.ui.input.pointer.PointerEventPass r9 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            java.lang.Object r9 = r8.N0(r9, r0)
            if (r9 != r1) goto L40
            return r1
        L40:
            androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
            java.util.List r2 = r9.f9305a
            r4 = r2
            java.util.Collection r4 = (java.util.Collection) r4
            int r4 = r4.size()
            r5 = 0
            r6 = r5
        L4d:
            if (r6 >= r4) goto L5b
            java.lang.Object r7 = r2.get(r6)
            androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
            r7.a()
            int r6 = r6 + 1
            goto L4d
        L5b:
            java.util.List r9 = r9.f9305a
            r2 = r9
            java.util.Collection r2 = (java.util.Collection) r2
            int r2 = r2.size()
        L64:
            if (r5 >= r2) goto L74
            java.lang.Object r4 = r9.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
            boolean r4 = r4.d
            if (r4 == 0) goto L71
            goto L33
        L71:
            int r5 = r5 + 1
            goto L64
        L74:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.c(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object d(PointerInputScope pointerInputScope, Function3 function3, ku0 ku0Var, Continuation continuation) {
        Object objD = CoroutineScopeKt.d(new TapGestureDetectorKt$detectTapAndPress$2(pointerInputScope, function3, ku0Var, new PressGestureScopeImpl(pointerInputScope), null), continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    public static Object e(PointerInputScope pointerInputScope, Function1 function1, Function1 function2, Function3 function3, Function1 function4, Continuation continuation, int i2) {
        Function1 function5 = (i2 & 1) != 0 ? null : function1;
        Function1 function6 = (i2 & 2) != 0 ? null : function2;
        if ((i2 & 4) != 0) {
            function3 = f4734a;
        }
        Object objD = CoroutineScopeKt.d(new TapGestureDetectorKt$detectTapGestures$2(pointerInputScope, function5, function6, function3, (i2 & 8) != 0 ? null : function4, null), continuation);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
    }

    public static boolean f(PointerEvent pointerEvent, boolean z) {
        List list = pointerEvent.f9305a;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
            if (!(z ? PointerEventKt.a(pointerInputChange) : PointerEventKt.b(pointerInputChange))) {
                return false;
            }
        }
        return true;
    }

    public static Job g(CoroutineScope coroutineScope, Job job, Function2 function2) {
        return BuildersKt.c(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$launchAwaitingReset$1(job, function2, null), 1);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x037c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0383  */
    /* JADX WARN: Code duplicated, block: B:26:0x0178  */
    /* JADX WARN: Code duplicated, block: B:28:0x0182  */
    /* JADX WARN: Code duplicated, block: B:31:0x019f  */
    /* JADX WARN: Code duplicated, block: B:33:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:36:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:39:0x01db  */
    /* JADX WARN: Code duplicated, block: B:42:0x0202  */
    /* JADX WARN: Code duplicated, block: B:45:0x020f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0213  */
    /* JADX WARN: Code duplicated, block: B:48:0x0218  */
    /* JADX WARN: Code duplicated, block: B:50:0x021c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0224  */
    /* JADX WARN: Code duplicated, block: B:54:0x022e  */
    /* JADX WARN: Code duplicated, block: B:56:0x023c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x023e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0240  */
    /* JADX WARN: Code duplicated, block: B:59:0x024c  */
    /* JADX WARN: Code duplicated, block: B:62:0x0276  */
    /* JADX WARN: Code duplicated, block: B:65:0x0282 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x0284  */
    /* JADX WARN: Code duplicated, block: B:67:0x0290  */
    /* JADX WARN: Code duplicated, block: B:69:0x029e  */
    /* JADX WARN: Code duplicated, block: B:71:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:74:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:76:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x0302  */
    /* JADX WARN: Code duplicated, block: B:85:0x0329  */
    /* JADX WARN: Code duplicated, block: B:88:0x0337  */
    /* JADX WARN: Code duplicated, block: B:90:0x033b  */
    /* JADX WARN: Code duplicated, block: B:92:0x0346  */
    /* JADX WARN: Code duplicated, block: B:94:0x034a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0351  */
    /* JADX WARN: Code duplicated, block: B:97:0x0367  */
    /* JADX WARN: Code duplicated, block: B:99:0x0371  */
    public static final Object h(AwaitPointerEventScope awaitPointerEventScope, CoroutineScope coroutineScope, PressGestureScopeImpl pressGestureScopeImpl, Function1 function1, Function1 function2, Function3 function3, Function1 function4, BaseContinuationImpl baseContinuationImpl) {
        TapGestureDetectorKt$processTapGesture$1 tapGestureDetectorKt$processTapGesture$1;
        Function1 function5;
        Function1 function6;
        AwaitPointerEventScope awaitPointerEventScope2;
        Function1 function7;
        CoroutineScope coroutineScope2;
        PressGestureScopeImpl pressGestureScopeImpl2;
        Function3 function8;
        PointerInputChange pointerInputChange;
        Job jobC;
        Object objI;
        Function1 function9;
        Job job;
        AwaitPointerEventScope awaitPointerEventScope3;
        Function1 function10;
        Function3 function11;
        PointerInputChange pointerInputChange2;
        Function1 function12;
        Function1 function13;
        Function3 function14;
        Function1 function15;
        PointerInputChange pointerInputChange3;
        Job jobG;
        Object objD1;
        PointerInputChange pointerInputChange4;
        Function1 function16;
        Function3 function17;
        Function1 function18;
        LongPressResult longPressResult;
        PressGestureScopeImpl pressGestureScopeImpl3;
        CoroutineScope coroutineScope3;
        PointerInputChange pointerInputChange5;
        Job jobC2;
        Object objI2;
        Job job2;
        PointerInputChange pointerInputChange6;
        Function1 function19;
        Function1 function20;
        PressGestureScopeImpl pressGestureScopeImpl4;
        CoroutineScope coroutineScope4;
        AwaitPointerEventScope awaitPointerEventScope4;
        Function1 function21;
        PressGestureScopeImpl pressGestureScopeImpl5;
        CoroutineScope coroutineScope5;
        PointerInputChange pointerInputChange7;
        LongPressResult longPressResult2;
        Job job3;
        PressGestureScopeImpl pressGestureScopeImpl6;
        CoroutineScope coroutineScope6;
        if (baseContinuationImpl instanceof TapGestureDetectorKt$processTapGesture$1) {
            tapGestureDetectorKt$processTapGesture$1 = (TapGestureDetectorKt$processTapGesture$1) baseContinuationImpl;
            int i2 = tapGestureDetectorKt$processTapGesture$1.l;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                tapGestureDetectorKt$processTapGesture$1.l = i2 - Integer.MIN_VALUE;
            } else {
                tapGestureDetectorKt$processTapGesture$1 = new TapGestureDetectorKt$processTapGesture$1(baseContinuationImpl);
            }
        } else {
            tapGestureDetectorKt$processTapGesture$1 = new TapGestureDetectorKt$processTapGesture$1(baseContinuationImpl);
        }
        Object objJ = tapGestureDetectorKt$processTapGesture$1.f4781k;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = tapGestureDetectorKt$processTapGesture$1.l;
        Function3 function22 = f4734a;
        switch (i3) {
            case 0:
                ResultKt.b(objJ);
                tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope;
                tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope;
                tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl;
                function5 = function1;
                tapGestureDetectorKt$processTapGesture$1.f4776e = function5;
                function6 = function2;
                tapGestureDetectorKt$processTapGesture$1.f4777f = function6;
                tapGestureDetectorKt$processTapGesture$1.g = function3;
                tapGestureDetectorKt$processTapGesture$1.f4778h = function4;
                tapGestureDetectorKt$processTapGesture$1.l = 1;
                Object objB = b(awaitPointerEventScope, null, tapGestureDetectorKt$processTapGesture$1, 3);
                if (objB != coroutineSingletons) {
                    awaitPointerEventScope2 = awaitPointerEventScope;
                    function7 = function4;
                    coroutineScope2 = coroutineScope;
                    objJ = objB;
                    pressGestureScopeImpl2 = pressGestureScopeImpl;
                    function8 = function3;
                    pointerInputChange = (PointerInputChange) objJ;
                    pointerInputChange.a();
                    jobC = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$resetJob$1(pressGestureScopeImpl2, null), 1);
                    if (function8 != function22) {
                        g(coroutineScope2, jobC, new TapGestureDetectorKt$processTapGesture$2(function8, pressGestureScopeImpl2, pointerInputChange, null));
                    }
                    if (function6 == null) {
                        tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                        tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                        tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.f4776e = function5;
                        tapGestureDetectorKt$processTapGesture$1.f4777f = function6;
                        tapGestureDetectorKt$processTapGesture$1.g = function8;
                        tapGestureDetectorKt$processTapGesture$1.f4778h = function7;
                        tapGestureDetectorKt$processTapGesture$1.f4779i = jobC;
                        tapGestureDetectorKt$processTapGesture$1.l = 2;
                        objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                        if (objJ != coroutineSingletons) {
                            Function1 function23 = function6;
                            function12 = function5;
                            function13 = function23;
                            function14 = function8;
                            function15 = function7;
                            job = jobC;
                            pointerInputChange3 = (PointerInputChange) objJ;
                            if (pointerInputChange3 == null) {
                                jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl2, null));
                            } else {
                                pointerInputChange3.a();
                                jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl2, null));
                            }
                            if (pointerInputChange3 != null) {
                                if (function12 == null) {
                                    tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                    tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                    tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                    tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                    tapGestureDetectorKt$processTapGesture$1.f4777f = function13;
                                    tapGestureDetectorKt$processTapGesture$1.g = function14;
                                    tapGestureDetectorKt$processTapGesture$1.f4778h = function15;
                                    tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange3;
                                    tapGestureDetectorKt$processTapGesture$1.f4780j = jobG;
                                    tapGestureDetectorKt$processTapGesture$1.l = 5;
                                    objD1 = awaitPointerEventScope2.D1(awaitPointerEventScope2.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange3, null), tapGestureDetectorKt$processTapGesture$1);
                                    if (objD1 != coroutineSingletons) {
                                        Function1 function24 = function15;
                                        pointerInputChange4 = pointerInputChange3;
                                        objJ = objD1;
                                        function16 = function13;
                                        function17 = function14;
                                        function18 = function24;
                                        pointerInputChange5 = (PointerInputChange) objJ;
                                        if (pointerInputChange5 != null) {
                                            jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                                            if (function17 != function22) {
                                                g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                                            }
                                            if (function16 == null) {
                                                tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                                                tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                                                tapGestureDetectorKt$processTapGesture$1.d = function12;
                                                tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                                                tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                                                tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                                                tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                tapGestureDetectorKt$processTapGesture$1.l = 6;
                                                objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                                if (objJ != coroutineSingletons) {
                                                    job2 = jobC2;
                                                    pointerInputChange4 = pointerInputChange4;
                                                    function19 = function18;
                                                    function21 = function12;
                                                    pressGestureScopeImpl5 = pressGestureScopeImpl2;
                                                    coroutineScope5 = coroutineScope2;
                                                    pointerInputChange7 = (PointerInputChange) objJ;
                                                    if (pointerInputChange7 != null) {
                                                        pointerInputChange7.a();
                                                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                        function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                    } else {
                                                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                        if (function19 != null) {
                                                            function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                        }
                                                    }
                                                }
                                            } else {
                                                tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                                tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                                tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                                tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                                tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                                                tapGestureDetectorKt$processTapGesture$1.g = function18;
                                                tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                                                tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                                                tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                                                tapGestureDetectorKt$processTapGesture$1.l = 7;
                                                objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                                if (objI2 != coroutineSingletons) {
                                                    Function1 function25 = function18;
                                                    job2 = jobC2;
                                                    pointerInputChange6 = pointerInputChange5;
                                                    objJ = objI2;
                                                    function19 = function25;
                                                    function20 = function12;
                                                    pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                                    coroutineScope4 = coroutineScope2;
                                                    awaitPointerEventScope4 = awaitPointerEventScope2;
                                                    longPressResult2 = (LongPressResult) objJ;
                                                    if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                                        function16.invoke(new Offset(pointerInputChange6.f9330c));
                                                        tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                                        tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                                        tapGestureDetectorKt$processTapGesture$1.d = job2;
                                                        tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                                        tapGestureDetectorKt$processTapGesture$1.g = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                        tapGestureDetectorKt$processTapGesture$1.l = 8;
                                                        if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                                            job3 = job2;
                                                            pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                                            coroutineScope6 = coroutineScope4;
                                                            g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                            return Unit.f71739a;
                                                        }
                                                    } else {
                                                        if (longPressResult2 instanceof LongPressResult.Released) {
                                                            pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                                        } else {
                                                            if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                                v40.g();
                                                                return null;
                                                            }
                                                            pointerInputChange7 = null;
                                                        }
                                                        function21 = function20;
                                                        pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                                        coroutineScope5 = coroutineScope4;
                                                        if (pointerInputChange7 != null) {
                                                            pointerInputChange7.a();
                                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                            function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                        } else {
                                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                            if (function19 != null) {
                                                                function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (function18 != null) {
                                            function18.invoke(new Offset(pointerInputChange4.f9330c));
                                        }
                                    }
                                } else if (function15 != null) {
                                    function15.invoke(new Offset(pointerInputChange3.f9330c));
                                }
                            }
                            return Unit.f71739a;
                        }
                    } else {
                        tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                        tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                        tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.f4776e = function5;
                        tapGestureDetectorKt$processTapGesture$1.f4777f = function6;
                        tapGestureDetectorKt$processTapGesture$1.g = function8;
                        tapGestureDetectorKt$processTapGesture$1.f4778h = function7;
                        tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange;
                        tapGestureDetectorKt$processTapGesture$1.f4780j = jobC;
                        tapGestureDetectorKt$processTapGesture$1.l = 3;
                        objI = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                        if (objI != coroutineSingletons) {
                            function9 = function7;
                            job = jobC;
                            awaitPointerEventScope3 = awaitPointerEventScope2;
                            function10 = function5;
                            function11 = function8;
                            pointerInputChange2 = pointerInputChange;
                            objJ = objI;
                            longPressResult = (LongPressResult) objJ;
                            if (!Intrinsics.c(longPressResult, LongPressResult.Success.f4605a)) {
                                if (longPressResult instanceof LongPressResult.Released) {
                                    pointerInputChange3 = ((LongPressResult.Released) longPressResult).f4604a;
                                } else {
                                    if (!(longPressResult instanceof LongPressResult.Canceled)) {
                                        v40.g();
                                        return null;
                                    }
                                    pointerInputChange3 = null;
                                }
                                function15 = function9;
                                function14 = function11;
                                function13 = function6;
                                function12 = function10;
                                awaitPointerEventScope2 = awaitPointerEventScope3;
                                if (pointerInputChange3 == null) {
                                    jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl2, null));
                                } else {
                                    pointerInputChange3.a();
                                    jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl2, null));
                                }
                                if (pointerInputChange3 != null) {
                                    if (function12 == null) {
                                        tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                        tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                        tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                        tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                        tapGestureDetectorKt$processTapGesture$1.f4777f = function13;
                                        tapGestureDetectorKt$processTapGesture$1.g = function14;
                                        tapGestureDetectorKt$processTapGesture$1.f4778h = function15;
                                        tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange3;
                                        tapGestureDetectorKt$processTapGesture$1.f4780j = jobG;
                                        tapGestureDetectorKt$processTapGesture$1.l = 5;
                                        objD1 = awaitPointerEventScope2.D1(awaitPointerEventScope2.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange3, null), tapGestureDetectorKt$processTapGesture$1);
                                        if (objD1 != coroutineSingletons) {
                                            Function1 function26 = function15;
                                            pointerInputChange4 = pointerInputChange3;
                                            objJ = objD1;
                                            function16 = function13;
                                            function17 = function14;
                                            function18 = function26;
                                            pointerInputChange5 = (PointerInputChange) objJ;
                                            if (pointerInputChange5 != null) {
                                                jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                                                if (function17 != function22) {
                                                    g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                                                }
                                                if (function16 == null) {
                                                    tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                                                    tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                                                    tapGestureDetectorKt$processTapGesture$1.d = function12;
                                                    tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                                                    tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                                                    tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                                                    tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                    tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                    tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                    tapGestureDetectorKt$processTapGesture$1.l = 6;
                                                    objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                                    if (objJ != coroutineSingletons) {
                                                        job2 = jobC2;
                                                        pointerInputChange4 = pointerInputChange4;
                                                        function19 = function18;
                                                        function21 = function12;
                                                        pressGestureScopeImpl5 = pressGestureScopeImpl2;
                                                        coroutineScope5 = coroutineScope2;
                                                        pointerInputChange7 = (PointerInputChange) objJ;
                                                        if (pointerInputChange7 != null) {
                                                            pointerInputChange7.a();
                                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                            function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                        } else {
                                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                            if (function19 != null) {
                                                                function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                                    tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                                    tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                                    tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                                    tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                                                    tapGestureDetectorKt$processTapGesture$1.g = function18;
                                                    tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                                                    tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                                                    tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                                                    tapGestureDetectorKt$processTapGesture$1.l = 7;
                                                    objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                                    if (objI2 != coroutineSingletons) {
                                                        Function1 function27 = function18;
                                                        job2 = jobC2;
                                                        pointerInputChange6 = pointerInputChange5;
                                                        objJ = objI2;
                                                        function19 = function27;
                                                        function20 = function12;
                                                        pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                                        coroutineScope4 = coroutineScope2;
                                                        awaitPointerEventScope4 = awaitPointerEventScope2;
                                                        longPressResult2 = (LongPressResult) objJ;
                                                        if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                                            function16.invoke(new Offset(pointerInputChange6.f9330c));
                                                            tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                                            tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                                            tapGestureDetectorKt$processTapGesture$1.d = job2;
                                                            tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                                            tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                                            tapGestureDetectorKt$processTapGesture$1.g = null;
                                                            tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                            tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                            tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                            tapGestureDetectorKt$processTapGesture$1.l = 8;
                                                            if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                                                job3 = job2;
                                                                pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                                                coroutineScope6 = coroutineScope4;
                                                                g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                                return Unit.f71739a;
                                                            }
                                                        } else {
                                                            if (longPressResult2 instanceof LongPressResult.Released) {
                                                                pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                                            } else {
                                                                if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                                    v40.g();
                                                                    return null;
                                                                }
                                                                pointerInputChange7 = null;
                                                            }
                                                            function21 = function20;
                                                            pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                                            coroutineScope5 = coroutineScope4;
                                                            if (pointerInputChange7 != null) {
                                                                pointerInputChange7.a();
                                                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                                function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                            } else {
                                                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                                if (function19 != null) {
                                                                    function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else if (function18 != null) {
                                                function18.invoke(new Offset(pointerInputChange4.f9330c));
                                            }
                                        }
                                    } else if (function15 != null) {
                                        function15.invoke(new Offset(pointerInputChange3.f9330c));
                                    }
                                }
                                return Unit.f71739a;
                            }
                            function6.invoke(new Offset(pointerInputChange2.f9330c));
                            tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                            tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                            tapGestureDetectorKt$processTapGesture$1.d = job;
                            tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                            tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                            tapGestureDetectorKt$processTapGesture$1.g = null;
                            tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                            tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                            tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                            tapGestureDetectorKt$processTapGesture$1.l = 4;
                            if (c(awaitPointerEventScope3, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                pressGestureScopeImpl3 = pressGestureScopeImpl2;
                                coroutineScope3 = coroutineScope2;
                                g(coroutineScope3, job, new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl3, null));
                                return Unit.f71739a;
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 1:
                function7 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4778h;
                function8 = (Function3) tapGestureDetectorKt$processTapGesture$1.g;
                Function1 function28 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4777f;
                Function1 function29 = tapGestureDetectorKt$processTapGesture$1.f4776e;
                pressGestureScopeImpl2 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.d;
                coroutineScope2 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4775c;
                awaitPointerEventScope2 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                function6 = function28;
                function5 = function29;
                pointerInputChange = (PointerInputChange) objJ;
                pointerInputChange.a();
                jobC = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$resetJob$1(pressGestureScopeImpl2, null), 1);
                if (function8 != function22) {
                    g(coroutineScope2, jobC, new TapGestureDetectorKt$processTapGesture$2(function8, pressGestureScopeImpl2, pointerInputChange, null));
                }
                if (function6 == null) {
                    tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                    tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                    tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                    tapGestureDetectorKt$processTapGesture$1.f4776e = function5;
                    tapGestureDetectorKt$processTapGesture$1.f4777f = function6;
                    tapGestureDetectorKt$processTapGesture$1.g = function8;
                    tapGestureDetectorKt$processTapGesture$1.f4778h = function7;
                    tapGestureDetectorKt$processTapGesture$1.f4779i = jobC;
                    tapGestureDetectorKt$processTapGesture$1.l = 2;
                    objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                    if (objJ != coroutineSingletons) {
                        Function1 function210 = function6;
                        function12 = function5;
                        function13 = function210;
                        function14 = function8;
                        function15 = function7;
                        job = jobC;
                        pointerInputChange3 = (PointerInputChange) objJ;
                        if (pointerInputChange3 == null) {
                            jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl2, null));
                        } else {
                            pointerInputChange3.a();
                            jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl2, null));
                        }
                        if (pointerInputChange3 != null) {
                            if (function12 == null) {
                                tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                tapGestureDetectorKt$processTapGesture$1.f4777f = function13;
                                tapGestureDetectorKt$processTapGesture$1.g = function14;
                                tapGestureDetectorKt$processTapGesture$1.f4778h = function15;
                                tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange3;
                                tapGestureDetectorKt$processTapGesture$1.f4780j = jobG;
                                tapGestureDetectorKt$processTapGesture$1.l = 5;
                                objD1 = awaitPointerEventScope2.D1(awaitPointerEventScope2.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange3, null), tapGestureDetectorKt$processTapGesture$1);
                                if (objD1 != coroutineSingletons) {
                                    Function1 function211 = function15;
                                    pointerInputChange4 = pointerInputChange3;
                                    objJ = objD1;
                                    function16 = function13;
                                    function17 = function14;
                                    function18 = function211;
                                    pointerInputChange5 = (PointerInputChange) objJ;
                                    if (pointerInputChange5 != null) {
                                        jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                                        if (function17 != function22) {
                                            g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                                        }
                                        if (function16 == null) {
                                            tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                                            tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                                            tapGestureDetectorKt$processTapGesture$1.d = function12;
                                            tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                                            tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                                            tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                                            tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                            tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                            tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                            tapGestureDetectorKt$processTapGesture$1.l = 6;
                                            objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                            if (objJ != coroutineSingletons) {
                                                job2 = jobC2;
                                                pointerInputChange4 = pointerInputChange4;
                                                function19 = function18;
                                                function21 = function12;
                                                pressGestureScopeImpl5 = pressGestureScopeImpl2;
                                                coroutineScope5 = coroutineScope2;
                                                pointerInputChange7 = (PointerInputChange) objJ;
                                                if (pointerInputChange7 != null) {
                                                    pointerInputChange7.a();
                                                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                    function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                } else {
                                                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                    if (function19 != null) {
                                                        function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                    }
                                                }
                                            }
                                        } else {
                                            tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                            tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                            tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                            tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                            tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                                            tapGestureDetectorKt$processTapGesture$1.g = function18;
                                            tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                                            tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                                            tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                                            tapGestureDetectorKt$processTapGesture$1.l = 7;
                                            objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                            if (objI2 != coroutineSingletons) {
                                                Function1 function212 = function18;
                                                job2 = jobC2;
                                                pointerInputChange6 = pointerInputChange5;
                                                objJ = objI2;
                                                function19 = function212;
                                                function20 = function12;
                                                pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                                coroutineScope4 = coroutineScope2;
                                                awaitPointerEventScope4 = awaitPointerEventScope2;
                                                longPressResult2 = (LongPressResult) objJ;
                                                if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                                    function16.invoke(new Offset(pointerInputChange6.f9330c));
                                                    tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                                    tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                                    tapGestureDetectorKt$processTapGesture$1.d = job2;
                                                    tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                                    tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                                    tapGestureDetectorKt$processTapGesture$1.g = null;
                                                    tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                    tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                    tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                    tapGestureDetectorKt$processTapGesture$1.l = 8;
                                                    if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                                        job3 = job2;
                                                        pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                                        coroutineScope6 = coroutineScope4;
                                                        g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                        return Unit.f71739a;
                                                    }
                                                } else {
                                                    if (longPressResult2 instanceof LongPressResult.Released) {
                                                        pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                                    } else {
                                                        if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                            v40.g();
                                                            return null;
                                                        }
                                                        pointerInputChange7 = null;
                                                    }
                                                    function21 = function20;
                                                    pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                                    coroutineScope5 = coroutineScope4;
                                                    if (pointerInputChange7 != null) {
                                                        pointerInputChange7.a();
                                                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                        function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                    } else {
                                                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                        if (function19 != null) {
                                                            function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else if (function18 != null) {
                                        function18.invoke(new Offset(pointerInputChange4.f9330c));
                                    }
                                }
                            } else if (function15 != null) {
                                function15.invoke(new Offset(pointerInputChange3.f9330c));
                            }
                        }
                        return Unit.f71739a;
                    }
                } else {
                    tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                    tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                    tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                    tapGestureDetectorKt$processTapGesture$1.f4776e = function5;
                    tapGestureDetectorKt$processTapGesture$1.f4777f = function6;
                    tapGestureDetectorKt$processTapGesture$1.g = function8;
                    tapGestureDetectorKt$processTapGesture$1.f4778h = function7;
                    tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange;
                    tapGestureDetectorKt$processTapGesture$1.f4780j = jobC;
                    tapGestureDetectorKt$processTapGesture$1.l = 3;
                    objI = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                    if (objI != coroutineSingletons) {
                        function9 = function7;
                        job = jobC;
                        awaitPointerEventScope3 = awaitPointerEventScope2;
                        function10 = function5;
                        function11 = function8;
                        pointerInputChange2 = pointerInputChange;
                        objJ = objI;
                        longPressResult = (LongPressResult) objJ;
                        if (!Intrinsics.c(longPressResult, LongPressResult.Success.f4605a)) {
                            if (longPressResult instanceof LongPressResult.Released) {
                                pointerInputChange3 = ((LongPressResult.Released) longPressResult).f4604a;
                            } else {
                                if (!(longPressResult instanceof LongPressResult.Canceled)) {
                                    v40.g();
                                    return null;
                                }
                                pointerInputChange3 = null;
                            }
                            function15 = function9;
                            function14 = function11;
                            function13 = function6;
                            function12 = function10;
                            awaitPointerEventScope2 = awaitPointerEventScope3;
                            if (pointerInputChange3 == null) {
                                jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl2, null));
                            } else {
                                pointerInputChange3.a();
                                jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl2, null));
                            }
                            if (pointerInputChange3 != null) {
                                if (function12 == null) {
                                    tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                    tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                    tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                    tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                    tapGestureDetectorKt$processTapGesture$1.f4777f = function13;
                                    tapGestureDetectorKt$processTapGesture$1.g = function14;
                                    tapGestureDetectorKt$processTapGesture$1.f4778h = function15;
                                    tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange3;
                                    tapGestureDetectorKt$processTapGesture$1.f4780j = jobG;
                                    tapGestureDetectorKt$processTapGesture$1.l = 5;
                                    objD1 = awaitPointerEventScope2.D1(awaitPointerEventScope2.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange3, null), tapGestureDetectorKt$processTapGesture$1);
                                    if (objD1 != coroutineSingletons) {
                                        Function1 function213 = function15;
                                        pointerInputChange4 = pointerInputChange3;
                                        objJ = objD1;
                                        function16 = function13;
                                        function17 = function14;
                                        function18 = function213;
                                        pointerInputChange5 = (PointerInputChange) objJ;
                                        if (pointerInputChange5 != null) {
                                            jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                                            if (function17 != function22) {
                                                g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                                            }
                                            if (function16 == null) {
                                                tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                                                tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                                                tapGestureDetectorKt$processTapGesture$1.d = function12;
                                                tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                                                tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                                                tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                                                tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                tapGestureDetectorKt$processTapGesture$1.l = 6;
                                                objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                                if (objJ != coroutineSingletons) {
                                                    job2 = jobC2;
                                                    pointerInputChange4 = pointerInputChange4;
                                                    function19 = function18;
                                                    function21 = function12;
                                                    pressGestureScopeImpl5 = pressGestureScopeImpl2;
                                                    coroutineScope5 = coroutineScope2;
                                                    pointerInputChange7 = (PointerInputChange) objJ;
                                                    if (pointerInputChange7 != null) {
                                                        pointerInputChange7.a();
                                                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                        function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                    } else {
                                                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                        if (function19 != null) {
                                                            function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                        }
                                                    }
                                                }
                                            } else {
                                                tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                                tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                                tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                                tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                                tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                                                tapGestureDetectorKt$processTapGesture$1.g = function18;
                                                tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                                                tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                                                tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                                                tapGestureDetectorKt$processTapGesture$1.l = 7;
                                                objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                                if (objI2 != coroutineSingletons) {
                                                    Function1 function214 = function18;
                                                    job2 = jobC2;
                                                    pointerInputChange6 = pointerInputChange5;
                                                    objJ = objI2;
                                                    function19 = function214;
                                                    function20 = function12;
                                                    pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                                    coroutineScope4 = coroutineScope2;
                                                    awaitPointerEventScope4 = awaitPointerEventScope2;
                                                    longPressResult2 = (LongPressResult) objJ;
                                                    if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                                        function16.invoke(new Offset(pointerInputChange6.f9330c));
                                                        tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                                        tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                                        tapGestureDetectorKt$processTapGesture$1.d = job2;
                                                        tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                                        tapGestureDetectorKt$processTapGesture$1.g = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                        tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                        tapGestureDetectorKt$processTapGesture$1.l = 8;
                                                        if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                                            job3 = job2;
                                                            pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                                            coroutineScope6 = coroutineScope4;
                                                            g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                            return Unit.f71739a;
                                                        }
                                                    } else {
                                                        if (longPressResult2 instanceof LongPressResult.Released) {
                                                            pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                                        } else {
                                                            if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                                v40.g();
                                                                return null;
                                                            }
                                                            pointerInputChange7 = null;
                                                        }
                                                        function21 = function20;
                                                        pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                                        coroutineScope5 = coroutineScope4;
                                                        if (pointerInputChange7 != null) {
                                                            pointerInputChange7.a();
                                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                            function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                        } else {
                                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                            if (function19 != null) {
                                                                function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else if (function18 != null) {
                                            function18.invoke(new Offset(pointerInputChange4.f9330c));
                                        }
                                    }
                                } else if (function15 != null) {
                                    function15.invoke(new Offset(pointerInputChange3.f9330c));
                                }
                            }
                            return Unit.f71739a;
                        }
                        function6.invoke(new Offset(pointerInputChange2.f9330c));
                        tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                        tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.d = job;
                        tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                        tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                        tapGestureDetectorKt$processTapGesture$1.g = null;
                        tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                        tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                        tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                        tapGestureDetectorKt$processTapGesture$1.l = 4;
                        if (c(awaitPointerEventScope3, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                            pressGestureScopeImpl3 = pressGestureScopeImpl2;
                            coroutineScope3 = coroutineScope2;
                            g(coroutineScope3, job, new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl3, null));
                            return Unit.f71739a;
                        }
                    }
                }
                return coroutineSingletons;
            case 2:
                job = (Job) tapGestureDetectorKt$processTapGesture$1.f4779i;
                function15 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4778h;
                function14 = (Function3) tapGestureDetectorKt$processTapGesture$1.g;
                function13 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4777f;
                function12 = tapGestureDetectorKt$processTapGesture$1.f4776e;
                pressGestureScopeImpl2 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.d;
                coroutineScope2 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4775c;
                awaitPointerEventScope2 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                pointerInputChange3 = (PointerInputChange) objJ;
                if (pointerInputChange3 == null) {
                    jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl2, null));
                } else {
                    pointerInputChange3.a();
                    jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl2, null));
                }
                if (pointerInputChange3 != null) {
                    if (function12 == null) {
                        tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                        tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                        tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                        tapGestureDetectorKt$processTapGesture$1.f4777f = function13;
                        tapGestureDetectorKt$processTapGesture$1.g = function14;
                        tapGestureDetectorKt$processTapGesture$1.f4778h = function15;
                        tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange3;
                        tapGestureDetectorKt$processTapGesture$1.f4780j = jobG;
                        tapGestureDetectorKt$processTapGesture$1.l = 5;
                        objD1 = awaitPointerEventScope2.D1(awaitPointerEventScope2.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange3, null), tapGestureDetectorKt$processTapGesture$1);
                        if (objD1 != coroutineSingletons) {
                            Function1 function215 = function15;
                            pointerInputChange4 = pointerInputChange3;
                            objJ = objD1;
                            function16 = function13;
                            function17 = function14;
                            function18 = function215;
                            pointerInputChange5 = (PointerInputChange) objJ;
                            if (pointerInputChange5 != null) {
                                jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                                if (function17 != function22) {
                                    g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                                }
                                if (function16 == null) {
                                    tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                                    tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                                    tapGestureDetectorKt$processTapGesture$1.d = function12;
                                    tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                                    tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                                    tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                                    tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                    tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                    tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                    tapGestureDetectorKt$processTapGesture$1.l = 6;
                                    objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                    if (objJ != coroutineSingletons) {
                                        job2 = jobC2;
                                        pointerInputChange4 = pointerInputChange4;
                                        function19 = function18;
                                        function21 = function12;
                                        pressGestureScopeImpl5 = pressGestureScopeImpl2;
                                        coroutineScope5 = coroutineScope2;
                                        pointerInputChange7 = (PointerInputChange) objJ;
                                        if (pointerInputChange7 != null) {
                                            pointerInputChange7.a();
                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                            function21.invoke(new Offset(pointerInputChange7.f9330c));
                                        } else {
                                            g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                            if (function19 != null) {
                                                function19.invoke(new Offset(pointerInputChange4.f9330c));
                                            }
                                        }
                                    }
                                } else {
                                    tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                    tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                    tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                    tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                    tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                                    tapGestureDetectorKt$processTapGesture$1.g = function18;
                                    tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                                    tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                                    tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                                    tapGestureDetectorKt$processTapGesture$1.l = 7;
                                    objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                    if (objI2 != coroutineSingletons) {
                                        Function1 function216 = function18;
                                        job2 = jobC2;
                                        pointerInputChange6 = pointerInputChange5;
                                        objJ = objI2;
                                        function19 = function216;
                                        function20 = function12;
                                        pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                        coroutineScope4 = coroutineScope2;
                                        awaitPointerEventScope4 = awaitPointerEventScope2;
                                        longPressResult2 = (LongPressResult) objJ;
                                        if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                            function16.invoke(new Offset(pointerInputChange6.f9330c));
                                            tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                            tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                            tapGestureDetectorKt$processTapGesture$1.d = job2;
                                            tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                            tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                            tapGestureDetectorKt$processTapGesture$1.g = null;
                                            tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                            tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                            tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                            tapGestureDetectorKt$processTapGesture$1.l = 8;
                                            if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                                job3 = job2;
                                                pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                                coroutineScope6 = coroutineScope4;
                                                g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                return Unit.f71739a;
                                            }
                                        } else {
                                            if (longPressResult2 instanceof LongPressResult.Released) {
                                                pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                            } else {
                                                if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                    v40.g();
                                                    return null;
                                                }
                                                pointerInputChange7 = null;
                                            }
                                            function21 = function20;
                                            pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                            coroutineScope5 = coroutineScope4;
                                            if (pointerInputChange7 != null) {
                                                pointerInputChange7.a();
                                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                function21.invoke(new Offset(pointerInputChange7.f9330c));
                                            } else {
                                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                if (function19 != null) {
                                                    function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (function18 != null) {
                                function18.invoke(new Offset(pointerInputChange4.f9330c));
                            }
                        }
                        return coroutineSingletons;
                    }
                    if (function15 != null) {
                        function15.invoke(new Offset(pointerInputChange3.f9330c));
                    }
                }
                return Unit.f71739a;
            case 3:
                job = (Job) tapGestureDetectorKt$processTapGesture$1.f4780j;
                pointerInputChange2 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.f4779i;
                function9 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4778h;
                function11 = (Function3) tapGestureDetectorKt$processTapGesture$1.g;
                function6 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4777f;
                Function1 function30 = tapGestureDetectorKt$processTapGesture$1.f4776e;
                PressGestureScopeImpl pressGestureScopeImpl7 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.d;
                CoroutineScope coroutineScope7 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4775c;
                awaitPointerEventScope3 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                function10 = function30;
                pressGestureScopeImpl2 = pressGestureScopeImpl7;
                coroutineScope2 = coroutineScope7;
                longPressResult = (LongPressResult) objJ;
                if (!Intrinsics.c(longPressResult, LongPressResult.Success.f4605a)) {
                    if (longPressResult instanceof LongPressResult.Released) {
                        pointerInputChange3 = ((LongPressResult.Released) longPressResult).f4604a;
                    } else {
                        if (!(longPressResult instanceof LongPressResult.Canceled)) {
                            v40.g();
                            return null;
                        }
                        pointerInputChange3 = null;
                    }
                    function15 = function9;
                    function14 = function11;
                    function13 = function6;
                    function12 = function10;
                    awaitPointerEventScope2 = awaitPointerEventScope3;
                    if (pointerInputChange3 == null) {
                        jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl2, null));
                    } else {
                        pointerInputChange3.a();
                        jobG = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl2, null));
                    }
                    if (pointerInputChange3 != null) {
                        if (function12 == null) {
                            tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                            tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                            tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                            tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                            tapGestureDetectorKt$processTapGesture$1.f4777f = function13;
                            tapGestureDetectorKt$processTapGesture$1.g = function14;
                            tapGestureDetectorKt$processTapGesture$1.f4778h = function15;
                            tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange3;
                            tapGestureDetectorKt$processTapGesture$1.f4780j = jobG;
                            tapGestureDetectorKt$processTapGesture$1.l = 5;
                            objD1 = awaitPointerEventScope2.D1(awaitPointerEventScope2.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange3, null), tapGestureDetectorKt$processTapGesture$1);
                            if (objD1 != coroutineSingletons) {
                                Function1 function217 = function15;
                                pointerInputChange4 = pointerInputChange3;
                                objJ = objD1;
                                function16 = function13;
                                function17 = function14;
                                function18 = function217;
                                pointerInputChange5 = (PointerInputChange) objJ;
                                if (pointerInputChange5 != null) {
                                    jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                                    if (function17 != function22) {
                                        g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                                    }
                                    if (function16 == null) {
                                        tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                                        tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                                        tapGestureDetectorKt$processTapGesture$1.d = function12;
                                        tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                                        tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                                        tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                                        tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                        tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                        tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                        tapGestureDetectorKt$processTapGesture$1.l = 6;
                                        objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                        if (objJ != coroutineSingletons) {
                                            job2 = jobC2;
                                            pointerInputChange4 = pointerInputChange4;
                                            function19 = function18;
                                            function21 = function12;
                                            pressGestureScopeImpl5 = pressGestureScopeImpl2;
                                            coroutineScope5 = coroutineScope2;
                                            pointerInputChange7 = (PointerInputChange) objJ;
                                            if (pointerInputChange7 != null) {
                                                pointerInputChange7.a();
                                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                function21.invoke(new Offset(pointerInputChange7.f9330c));
                                            } else {
                                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                if (function19 != null) {
                                                    function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                }
                                            }
                                        }
                                    } else {
                                        tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                                        tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                                        tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                                        tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                                        tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                                        tapGestureDetectorKt$processTapGesture$1.g = function18;
                                        tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                                        tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                                        tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                                        tapGestureDetectorKt$processTapGesture$1.l = 7;
                                        objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                                        if (objI2 != coroutineSingletons) {
                                            Function1 function218 = function18;
                                            job2 = jobC2;
                                            pointerInputChange6 = pointerInputChange5;
                                            objJ = objI2;
                                            function19 = function218;
                                            function20 = function12;
                                            pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                            coroutineScope4 = coroutineScope2;
                                            awaitPointerEventScope4 = awaitPointerEventScope2;
                                            longPressResult2 = (LongPressResult) objJ;
                                            if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                                function16.invoke(new Offset(pointerInputChange6.f9330c));
                                                tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                                tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                                tapGestureDetectorKt$processTapGesture$1.d = job2;
                                                tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                                tapGestureDetectorKt$processTapGesture$1.g = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                                tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                                tapGestureDetectorKt$processTapGesture$1.l = 8;
                                                if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                                    job3 = job2;
                                                    pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                                    coroutineScope6 = coroutineScope4;
                                                    g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                    return Unit.f71739a;
                                                }
                                            } else {
                                                if (longPressResult2 instanceof LongPressResult.Released) {
                                                    pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                                } else {
                                                    if (longPressResult2 instanceof LongPressResult.Canceled) {
                                                        v40.g();
                                                        return null;
                                                    }
                                                    pointerInputChange7 = null;
                                                }
                                                function21 = function20;
                                                pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                                coroutineScope5 = coroutineScope4;
                                                if (pointerInputChange7 != null) {
                                                    pointerInputChange7.a();
                                                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                    function21.invoke(new Offset(pointerInputChange7.f9330c));
                                                } else {
                                                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                    if (function19 != null) {
                                                        function19.invoke(new Offset(pointerInputChange4.f9330c));
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if (function18 != null) {
                                    function18.invoke(new Offset(pointerInputChange4.f9330c));
                                }
                            }
                        } else if (function15 != null) {
                            function15.invoke(new Offset(pointerInputChange3.f9330c));
                        }
                    }
                    return Unit.f71739a;
                }
                function6.invoke(new Offset(pointerInputChange2.f9330c));
                tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                tapGestureDetectorKt$processTapGesture$1.d = job;
                tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                tapGestureDetectorKt$processTapGesture$1.g = null;
                tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                tapGestureDetectorKt$processTapGesture$1.l = 4;
                if (c(awaitPointerEventScope3, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                    pressGestureScopeImpl3 = pressGestureScopeImpl2;
                    coroutineScope3 = coroutineScope2;
                    g(coroutineScope3, job, new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl3, null));
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            case 4:
                job = (Job) tapGestureDetectorKt$processTapGesture$1.d;
                pressGestureScopeImpl3 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.f4775c;
                coroutineScope3 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                g(coroutineScope3, job, new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl3, null));
                return Unit.f71739a;
            case 5:
                jobG = (Job) tapGestureDetectorKt$processTapGesture$1.f4780j;
                pointerInputChange4 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.f4779i;
                function18 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4778h;
                function17 = (Function3) tapGestureDetectorKt$processTapGesture$1.g;
                Function1 function31 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4777f;
                Function1 function32 = tapGestureDetectorKt$processTapGesture$1.f4776e;
                PressGestureScopeImpl pressGestureScopeImpl8 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.d;
                CoroutineScope coroutineScope8 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4775c;
                AwaitPointerEventScope awaitPointerEventScope5 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                function16 = function31;
                function12 = function32;
                pressGestureScopeImpl2 = pressGestureScopeImpl8;
                coroutineScope2 = coroutineScope8;
                awaitPointerEventScope2 = awaitPointerEventScope5;
                pointerInputChange5 = (PointerInputChange) objJ;
                if (pointerInputChange5 != null) {
                    jobC2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.UNDISPATCHED, new TapGestureDetectorKt$processTapGesture$6(jobG, pressGestureScopeImpl2, null), 1);
                    if (function17 != function22) {
                        g(coroutineScope2, jobC2, new TapGestureDetectorKt$processTapGesture$7(function17, pressGestureScopeImpl2, pointerInputChange5, null));
                    }
                    if (function16 == null) {
                        tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope2;
                        tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.d = function12;
                        tapGestureDetectorKt$processTapGesture$1.f4776e = function18;
                        tapGestureDetectorKt$processTapGesture$1.f4777f = jobC2;
                        tapGestureDetectorKt$processTapGesture$1.g = pointerInputChange4;
                        tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                        tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                        tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                        tapGestureDetectorKt$processTapGesture$1.l = 6;
                        objJ = j(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                        if (objJ != coroutineSingletons) {
                            job2 = jobC2;
                            pointerInputChange4 = pointerInputChange4;
                            function19 = function18;
                            function21 = function12;
                            pressGestureScopeImpl5 = pressGestureScopeImpl2;
                            coroutineScope5 = coroutineScope2;
                            pointerInputChange7 = (PointerInputChange) objJ;
                            if (pointerInputChange7 != null) {
                                pointerInputChange7.a();
                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                function21.invoke(new Offset(pointerInputChange7.f9330c));
                            } else {
                                g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                if (function19 != null) {
                                    function19.invoke(new Offset(pointerInputChange4.f9330c));
                                }
                            }
                        }
                    } else {
                        tapGestureDetectorKt$processTapGesture$1.f4774b = awaitPointerEventScope2;
                        tapGestureDetectorKt$processTapGesture$1.f4775c = coroutineScope2;
                        tapGestureDetectorKt$processTapGesture$1.d = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.f4776e = function12;
                        tapGestureDetectorKt$processTapGesture$1.f4777f = function16;
                        tapGestureDetectorKt$processTapGesture$1.g = function18;
                        tapGestureDetectorKt$processTapGesture$1.f4778h = jobC2;
                        tapGestureDetectorKt$processTapGesture$1.f4779i = pointerInputChange4;
                        tapGestureDetectorKt$processTapGesture$1.f4780j = pointerInputChange5;
                        tapGestureDetectorKt$processTapGesture$1.l = 7;
                        objI2 = i(awaitPointerEventScope2, PointerEventPass.Main, tapGestureDetectorKt$processTapGesture$1);
                        if (objI2 != coroutineSingletons) {
                            Function1 function219 = function18;
                            job2 = jobC2;
                            pointerInputChange6 = pointerInputChange5;
                            objJ = objI2;
                            function19 = function219;
                            function20 = function12;
                            pressGestureScopeImpl4 = pressGestureScopeImpl2;
                            coroutineScope4 = coroutineScope2;
                            awaitPointerEventScope4 = awaitPointerEventScope2;
                            longPressResult2 = (LongPressResult) objJ;
                            if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                                function16.invoke(new Offset(pointerInputChange6.f9330c));
                                tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                                tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                                tapGestureDetectorKt$processTapGesture$1.d = job2;
                                tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                                tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                                tapGestureDetectorKt$processTapGesture$1.g = null;
                                tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                                tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                                tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                                tapGestureDetectorKt$processTapGesture$1.l = 8;
                                if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                                    job3 = job2;
                                    pressGestureScopeImpl6 = pressGestureScopeImpl4;
                                    coroutineScope6 = coroutineScope4;
                                    g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                    return Unit.f71739a;
                                }
                            } else {
                                if (longPressResult2 instanceof LongPressResult.Released) {
                                    pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                                } else {
                                    if (longPressResult2 instanceof LongPressResult.Canceled) {
                                        v40.g();
                                        return null;
                                    }
                                    pointerInputChange7 = null;
                                }
                                function21 = function20;
                                pressGestureScopeImpl5 = pressGestureScopeImpl4;
                                coroutineScope5 = coroutineScope4;
                                if (pointerInputChange7 != null) {
                                    pointerInputChange7.a();
                                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                    function21.invoke(new Offset(pointerInputChange7.f9330c));
                                } else {
                                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                    if (function19 != null) {
                                        function19.invoke(new Offset(pointerInputChange4.f9330c));
                                    }
                                }
                            }
                        }
                    }
                    return coroutineSingletons;
                }
                if (function18 != null) {
                    function18.invoke(new Offset(pointerInputChange4.f9330c));
                }
                return Unit.f71739a;
            case 6:
                pointerInputChange4 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.g;
                job2 = (Job) tapGestureDetectorKt$processTapGesture$1.f4777f;
                function19 = tapGestureDetectorKt$processTapGesture$1.f4776e;
                function21 = (Function1) tapGestureDetectorKt$processTapGesture$1.d;
                pressGestureScopeImpl5 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.f4775c;
                coroutineScope5 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                pointerInputChange7 = (PointerInputChange) objJ;
                if (pointerInputChange7 != null) {
                    pointerInputChange7.a();
                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                    function21.invoke(new Offset(pointerInputChange7.f9330c));
                } else {
                    g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                    if (function19 != null) {
                        function19.invoke(new Offset(pointerInputChange4.f9330c));
                    }
                }
                return Unit.f71739a;
            case 7:
                pointerInputChange6 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.f4780j;
                pointerInputChange4 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.f4779i;
                job2 = (Job) tapGestureDetectorKt$processTapGesture$1.f4778h;
                function19 = (Function1) tapGestureDetectorKt$processTapGesture$1.g;
                function16 = (Function1) tapGestureDetectorKt$processTapGesture$1.f4777f;
                function20 = tapGestureDetectorKt$processTapGesture$1.f4776e;
                pressGestureScopeImpl4 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.d;
                coroutineScope4 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4775c;
                awaitPointerEventScope4 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                longPressResult2 = (LongPressResult) objJ;
                if (!Intrinsics.c(longPressResult2, LongPressResult.Success.f4605a)) {
                    if (longPressResult2 instanceof LongPressResult.Released) {
                        pointerInputChange7 = ((LongPressResult.Released) longPressResult2).f4604a;
                    } else {
                        if (longPressResult2 instanceof LongPressResult.Canceled) {
                            v40.g();
                            return null;
                        }
                        pointerInputChange7 = null;
                    }
                    function21 = function20;
                    pressGestureScopeImpl5 = pressGestureScopeImpl4;
                    coroutineScope5 = coroutineScope4;
                    if (pointerInputChange7 != null) {
                        pointerInputChange7.a();
                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                        function21.invoke(new Offset(pointerInputChange7.f9330c));
                    } else {
                        g(coroutineScope5, job2, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                        if (function19 != null) {
                            function19.invoke(new Offset(pointerInputChange4.f9330c));
                        }
                    }
                    return Unit.f71739a;
                }
                function16.invoke(new Offset(pointerInputChange6.f9330c));
                tapGestureDetectorKt$processTapGesture$1.f4774b = coroutineScope4;
                tapGestureDetectorKt$processTapGesture$1.f4775c = pressGestureScopeImpl4;
                tapGestureDetectorKt$processTapGesture$1.d = job2;
                tapGestureDetectorKt$processTapGesture$1.f4776e = null;
                tapGestureDetectorKt$processTapGesture$1.f4777f = null;
                tapGestureDetectorKt$processTapGesture$1.g = null;
                tapGestureDetectorKt$processTapGesture$1.f4778h = null;
                tapGestureDetectorKt$processTapGesture$1.f4779i = null;
                tapGestureDetectorKt$processTapGesture$1.f4780j = null;
                tapGestureDetectorKt$processTapGesture$1.l = 8;
                if (c(awaitPointerEventScope4, tapGestureDetectorKt$processTapGesture$1) != coroutineSingletons) {
                    job3 = job2;
                    pressGestureScopeImpl6 = pressGestureScopeImpl4;
                    coroutineScope6 = coroutineScope4;
                    g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            case 8:
                job3 = (Job) tapGestureDetectorKt$processTapGesture$1.d;
                pressGestureScopeImpl6 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.f4775c;
                coroutineScope6 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.f4774b;
                ResultKt.b(objJ);
                g(coroutineScope6, job3, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                return Unit.f71739a;
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object i(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, ContinuationImpl continuationImpl) {
        TapGestureDetectorKt$waitForLongPress$1 tapGestureDetectorKt$waitForLongPress$1;
        Ref$ObjectRef ref$ObjectRef;
        if (continuationImpl instanceof TapGestureDetectorKt$waitForLongPress$1) {
            tapGestureDetectorKt$waitForLongPress$1 = (TapGestureDetectorKt$waitForLongPress$1) continuationImpl;
            int i2 = tapGestureDetectorKt$waitForLongPress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                tapGestureDetectorKt$waitForLongPress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                tapGestureDetectorKt$waitForLongPress$1 = new TapGestureDetectorKt$waitForLongPress$1(continuationImpl);
            }
        } else {
            tapGestureDetectorKt$waitForLongPress$1 = new TapGestureDetectorKt$waitForLongPress$1(continuationImpl);
        }
        Object obj = tapGestureDetectorKt$waitForLongPress$1.f4799c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = tapGestureDetectorKt$waitForLongPress$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                ref$ObjectRef2.f71921b = LongPressResult.Canceled.f4603a;
                long jB = awaitPointerEventScope.getViewConfiguration().b();
                Function2 tapGestureDetectorKt$waitForLongPress$2 = new TapGestureDetectorKt$waitForLongPress$2(pointerEventPass, ref$ObjectRef2, null);
                tapGestureDetectorKt$waitForLongPress$1.f4798b = ref$ObjectRef2;
                tapGestureDetectorKt$waitForLongPress$1.d = 1;
                if (awaitPointerEventScope.c1(jB, tapGestureDetectorKt$waitForLongPress$2, tapGestureDetectorKt$waitForLongPress$1) == obj2) {
                    return obj2;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$ObjectRef = tapGestureDetectorKt$waitForLongPress$1.f4798b;
                ResultKt.b(obj);
            }
            return ref$ObjectRef.f71921b;
        } catch (PointerEventTimeoutCancellationException unused) {
            return LongPressResult.Success.f4605a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0073  */
    /* JADX WARN: Code duplicated, block: B:28:0x0089  */
    /* JADX WARN: Code duplicated, block: B:30:0x0095  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d7 A[LOOP:1: B:23:0x0071->B:44:0x00d7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x007f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b3 -> B:13:0x0031). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public static final java.lang.Object j(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, androidx.compose.ui.input.pointer.PointerEventPass r18, kotlin.coroutines.jvm.internal.BaseContinuationImpl r19) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.j(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }
}
