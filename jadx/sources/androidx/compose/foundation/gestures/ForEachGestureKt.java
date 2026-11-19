package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ForEachGestureKt {
    /* JADX WARN: Code duplicated, block: B:23:0x006e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079 A[LOOP:0: B:22:0x006c->B:26:0x0079, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x007f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0053 A[EDGE_INSN: B:31:0x0053->B:18:0x0053 BREAK  A[LOOP:0: B:22:0x006c->B:26:0x0079], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:21:0x0060). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(androidx.compose.ui.input.pointer.AwaitPointerEventScope r8, androidx.compose.ui.input.pointer.PointerEventPass r9, kotlin.coroutines.jvm.internal.BaseContinuationImpl r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3
            if (r0 == 0) goto L13
            r0 = r10
            androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3 r0 = (androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3) r0
            int r1 = r0.f4578e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4578e = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3 r0 = new androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$3
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f4578e
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2f
            androidx.compose.ui.input.pointer.PointerEventPass r8 = r0.f4577c
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = r0.f4576b
            kotlin.ResultKt.b(r10)
            r7 = r9
            r9 = r8
            r8 = r7
            goto L60
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L36:
            kotlin.ResultKt.b(r10)
            androidx.compose.ui.input.pointer.PointerEvent r10 = r8.O0()
            java.util.List r10 = r10.f9305a
            r2 = r10
            java.util.Collection r2 = (java.util.Collection) r2
            int r2 = r2.size()
            r5 = r3
        L47:
            if (r5 >= r2) goto L7f
            java.lang.Object r6 = r10.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = r6.d
            if (r6 == 0) goto L7c
        L53:
            r0.f4576b = r8
            r0.f4577c = r9
            r0.f4578e = r4
            java.lang.Object r10 = r8.N0(r9, r0)
            if (r10 != r1) goto L60
            return r1
        L60:
            androidx.compose.ui.input.pointer.PointerEvent r10 = (androidx.compose.ui.input.pointer.PointerEvent) r10
            java.util.List r10 = r10.f9305a
            r2 = r10
            java.util.Collection r2 = (java.util.Collection) r2
            int r2 = r2.size()
            r5 = r3
        L6c:
            if (r5 >= r2) goto L7f
            java.lang.Object r6 = r10.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = r6.d
            if (r6 == 0) goto L79
            goto L53
        L79:
            int r5 = r5 + 1
            goto L6c
        L7c:
            int r5 = r5 + 1
            goto L47
        L7f:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ForEachGestureKt.a(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object b(PointerInputScope pointerInputScope, Function2 function2, Continuation continuation) {
        Object objC0 = pointerInputScope.c0(new ForEachGestureKt$awaitEachGesture$2(continuation.getContext(), function2, null), continuation);
        return objC0 == CoroutineSingletons.COROUTINE_SUSPENDED ? objC0 : Unit.f71739a;
    }
}
