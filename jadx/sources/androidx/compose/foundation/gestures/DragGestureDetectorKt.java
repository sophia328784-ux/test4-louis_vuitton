package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import defpackage.bp;
import defpackage.md;
import defpackage.nz;
import defpackage.rt;
import defpackage.u9;
import defpackage.y2;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DragGestureDetectorKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f4487a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f4487a = 0.0069444445f;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:27:0x0088 A[LOOP:0: B:23:0x0074->B:27:0x0088, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x008c A[EDGE_INSN: B:54:0x008c->B:29:0x008c BREAK  A[LOOP:0: B:23:0x0074->B:27:0x0088], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0062 -> B:22:0x0067). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.a(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e3 A[LOOP:0: B:26:0x00cb->B:30:0x00e3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:68:0x00ee A[EDGE_INSN: B:68:0x00ee->B:32:0x00ee BREAK  A[LOOP:0: B:26:0x00cb->B:30:0x00e3], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x017f -> B:62:0x0181). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object b(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, int r21, defpackage.c r22, kotlin.coroutines.jvm.internal.BaseContinuationImpl r23) {
        /*
            Method dump skipped, instruction units count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.b(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, c, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    public static final Object c(AwaitPointerEventScope awaitPointerEventScope, long j2, ContinuationImpl continuationImpl) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$1;
        Object obj;
        PointerInputChange pointerInputChange;
        Ref$BooleanRef ref$BooleanRef;
        if (continuationImpl instanceof DragGestureDetectorKt$awaitLongPressOrCancellation$1) {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = (DragGestureDetectorKt$awaitLongPressOrCancellation$1) continuationImpl;
            int i2 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4500f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4500f = i2 - Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(continuationImpl);
            }
        } else {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(continuationImpl);
        }
        Object obj2 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4499e;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4500f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj2);
                if (!j(awaitPointerEventScope.O0(), j2)) {
                    List list = awaitPointerEventScope.O0().f9305a;
                    int size = list.size();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size) {
                            obj = null;
                            break;
                        }
                        obj = list.get(i4);
                        if (PointerId.a(((PointerInputChange) obj).f9328a, j2)) {
                            break;
                        }
                        i4++;
                    }
                    pointerInputChange = (PointerInputChange) obj;
                    if (pointerInputChange != null) {
                        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                        ref$ObjectRef2.f71921b = pointerInputChange;
                        long jB = awaitPointerEventScope.getViewConfiguration().b();
                        Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
                        Function2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(ref$BooleanRef2, ref$ObjectRef2, ref$ObjectRef, null);
                        dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4497b = pointerInputChange;
                        dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4498c = ref$ObjectRef;
                        dragGestureDetectorKt$awaitLongPressOrCancellation$1.d = ref$BooleanRef2;
                        dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4500f = 1;
                        if (awaitPointerEventScope.c1(jB, dragGestureDetectorKt$awaitLongPressOrCancellation$2, dragGestureDetectorKt$awaitLongPressOrCancellation$1) == obj3) {
                            return obj3;
                        }
                        ref$BooleanRef = ref$BooleanRef2;
                        j2 = ref$ObjectRef;
                    }
                }
                return null;
            }
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$BooleanRef = dragGestureDetectorKt$awaitLongPressOrCancellation$1.d;
            Ref$ObjectRef ref$ObjectRef3 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4498c;
            pointerInputChange = dragGestureDetectorKt$awaitLongPressOrCancellation$1.f4497b;
            ResultKt.b(obj2);
            j2 = ref$ObjectRef3;
            if (ref$BooleanRef.f71917b) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) j2.f71921b;
                return pointerInputChange2 == null ? pointerInputChange : pointerInputChange2;
            }
            return null;
        } catch (PointerEventTimeoutCancellationException unused) {
            PointerInputChange pointerInputChange3 = (PointerInputChange) j2.f71921b;
            return pointerInputChange3 == null ? pointerInputChange : pointerInputChange3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e4 A[LOOP:0: B:25:0x00cc->B:29:0x00e4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ef A[EDGE_INSN: B:67:0x00ef->B:31:0x00ef BREAK  A[LOOP:0: B:25:0x00cc->B:29:0x00e4], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0178 -> B:61:0x017a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object d(androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, defpackage.ll0 r21, kotlin.coroutines.jvm.internal.BaseContinuationImpl r22) {
        /*
            Method dump skipped, instruction units count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.d(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, ll0, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object e(PointerInputScope pointerInputScope, Function1 function1, Function0 function0, Function0 function2, Function2 function3, Continuation continuation) {
        Object objB = ForEachGestureKt.b(pointerInputScope, new DragGestureDetectorKt$detectDragGestures$13(new rt(5), new u9(function1, 3), function3, function2, new y2(function0, 8), null), continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objB != coroutineSingletons) {
            objB = Unit.f71739a;
        }
        return objB == coroutineSingletons ? objB : Unit.f71739a;
    }

    public static /* synthetic */ Object f(PointerInputScope pointerInputScope, Function0 function0, Function2 function2, Continuation continuation, int i2) {
        bp bpVar = new bp(27);
        if ((i2 & 2) != 0) {
            function0 = new rt(7);
        }
        return e(pointerInputScope, bpVar, function0, new rt(8), function2, continuation);
    }

    public static Object g(PointerInputScope pointerInputScope, nz nzVar, Function0 function0, Function2 function2, Continuation continuation, int i2) {
        Function1 bpVar = nzVar;
        if ((i2 & 1) != 0) {
            bpVar = new bp(26);
        }
        Object objB = ForEachGestureKt.b(pointerInputScope, new DragGestureDetectorKt$detectHorizontalDragGestures$5(bpVar, function2, function0, new rt(6), null), continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    /* JADX WARN: Code duplicated, block: B:26:0x0054  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0041 -> B:18:0x0044). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object h(androidx.compose.ui.input.pointer.AwaitPointerEventScope r4, long r5, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1) r0
            int r1 = r0.f4524e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4524e = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f4524e
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2d
            kotlin.jvm.functions.Function1 r4 = r0.f4523c
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = r0.f4522b
            kotlin.ResultKt.b(r8)
            r7 = r4
            r4 = r5
            goto L44
        L2d:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r4)
            r4 = 0
            return r4
        L34:
            kotlin.ResultKt.b(r8)
        L37:
            r0.f4522b = r4
            r0.f4523c = r7
            r0.f4524e = r3
            java.lang.Object r8 = a(r4, r5, r0)
            if (r8 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L4b
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            return r4
        L4b:
            boolean r5 = androidx.compose.ui.input.pointer.PointerEventKt.d(r8)
            if (r5 == 0) goto L54
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            return r4
        L54:
            r7.invoke(r8)
            long r5 = r8.f9328a
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.h(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008c  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a0 A[LOOP:0: B:24:0x008a->B:28:0x00a0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:73:0x00aa A[EDGE_INSN: B:73:0x00aa->B:30:0x00aa BREAK  A[LOOP:0: B:24:0x008a->B:28:0x00a0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0078 -> B:23:0x007e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object i(androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, defpackage.l3 r20, kotlin.coroutines.jvm.internal.BaseContinuationImpl r21) {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.i(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, l3, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final boolean j(PointerEvent pointerEvent, long j2) {
        Object obj;
        List list = pointerEvent.f9305a;
        int size = list.size();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                obj = null;
                break;
            }
            obj = list.get(i2);
            if (PointerId.a(((PointerInputChange) obj).f9328a, j2)) {
                break;
            }
            i2++;
        }
        PointerInputChange pointerInputChange = (PointerInputChange) obj;
        if (pointerInputChange != null && pointerInputChange.d) {
            z = true;
        }
        return true ^ z;
    }

    public static final float k(ViewConfiguration viewConfiguration, int i2) {
        PointerType.f9367b.getClass();
        return i2 == PointerType.d ? viewConfiguration.g() * f4487a : viewConfiguration.g();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0419 -> B:91:0x03c8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:152:0x0559 -> B:162:0x05c7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:158:0x05af -> B:159:0x05b7). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:165:0x05d2 -> B:85:0x03a1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:174:0x0638 -> B:176:0x063b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0243 -> B:31:0x0244). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x02d3 -> B:77:0x038b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0330 -> B:77:0x038b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x037a -> B:74:0x0380). Please report as a decompilation issue!!! */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 17901. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static final java.lang.Object l(androidx.compose.ui.input.pointer.AwaitPointerEventScope r25, androidx.compose.ui.input.pointer.PointerInputChange r26, defpackage.rt r27, defpackage.u9 r28, kotlin.jvm.functions.Function2 r29, kotlin.jvm.functions.Function0 r30, defpackage.y2 r31, kotlin.coroutines.jvm.internal.BaseContinuationImpl r32) {
        /*
            Method dump skipped, instruction units count: 1790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.l(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerInputChange, rt, u9, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0, y2, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }
}
