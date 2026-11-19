package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import defpackage.cl0;
import defpackage.lq;
import defpackage.md;
import defpackage.xo0;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionGesturesKt {
    /* JADX WARN: Code duplicated, block: B:17:0x003f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x004e  */
    /* JADX WARN: Code duplicated, block: B:23:0x005b A[LOOP:0: B:19:0x004c->B:23:0x005b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:18:0x0040). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(androidx.compose.ui.input.pointer.AwaitPointerEventScope r7, kotlin.coroutines.jvm.internal.BaseContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = (androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = new androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f6403c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = r0.f6402b
            kotlin.ResultKt.b(r8)
            goto L40
        L29:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L30:
            kotlin.ResultKt.b(r8)
        L33:
            androidx.compose.ui.input.pointer.PointerEventPass r8 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r0.f6402b = r7
            r0.d = r3
            java.lang.Object r8 = r7.N0(r8, r0)
            if (r8 != r1) goto L40
            return r1
        L40:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            java.util.List r2 = r8.f9305a
            r4 = r2
            java.util.Collection r4 = (java.util.Collection) r4
            int r4 = r4.size()
            r5 = 0
        L4c:
            if (r5 >= r4) goto L5e
            java.lang.Object r6 = r2.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = androidx.compose.ui.input.pointer.PointerEventKt.a(r6)
            if (r6 != 0) goto L5b
            goto L33
        L5b:
            int r5 = r5 + 1
            goto L4c
        L5e:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.a(androidx.compose.ui.input.pointer.AwaitPointerEventScope, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c5, code lost:
    
        if (r14 == r1) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(androidx.compose.ui.input.pointer.AwaitPointerEventScope r10, androidx.compose.foundation.text.TextDragObserver r11, androidx.compose.ui.input.pointer.PointerEvent r12, int r13, kotlin.coroutines.jvm.internal.BaseContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.b(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, int, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object c(PointerInputScope pointerInputScope, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation continuation) {
        Object objB = ForEachGestureKt.b(pointerInputScope, new SelectionGesturesKt$awaitSelectionGestures$2(new ClicksCounter(pointerInputScope.getViewConfiguration()), mouseSelectionObserver, textDragObserver, null), continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x007f A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:20:0x0040, B:31:0x0077, B:33:0x007f, B:35:0x008e, B:37:0x009a, B:28:0x005e), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x008e A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:20:0x0040, B:31:0x0077, B:33:0x007f, B:35:0x008e, B:37:0x009a, B:28:0x005e), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x009a A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #1 {all -> 0x0044, blocks: (B:20:0x0040, B:31:0x0077, B:33:0x007f, B:35:0x008e, B:37:0x009a, B:28:0x005e), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0102 A[Catch: all -> 0x0032, TryCatch #0 {all -> 0x0032, blocks: (B:13:0x002d, B:54:0x00e7, B:56:0x00ef, B:58:0x00f3, B:60:0x0102, B:62:0x010e, B:50:0x00c0), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x010e A[Catch: all -> 0x0032, TRY_LEAVE, TryCatch #0 {all -> 0x0032, blocks: (B:13:0x002d, B:54:0x00e7, B:56:0x00ef, B:58:0x00f3, B:60:0x0102, B:62:0x010e, B:50:0x00c0), top: B:69:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(AwaitPointerEventScope awaitPointerEventScope, MouseSelectionObserver mouseSelectionObserver, ClicksCounter clicksCounter, PointerEvent pointerEvent, BaseContinuationImpl baseContinuationImpl) {
        SelectionGesturesKt$mouseSelection$1 selectionGesturesKt$mouseSelection$1;
        a aVar;
        AwaitPointerEventScope awaitPointerEventScope2;
        Ref$BooleanRef ref$BooleanRef;
        List list;
        int size;
        PointerInputChange pointerInputChange;
        List list2;
        int size2;
        PointerInputChange pointerInputChange2;
        if (baseContinuationImpl instanceof SelectionGesturesKt$mouseSelection$1) {
            selectionGesturesKt$mouseSelection$1 = (SelectionGesturesKt$mouseSelection$1) baseContinuationImpl;
            int i2 = selectionGesturesKt$mouseSelection$1.f6410f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                selectionGesturesKt$mouseSelection$1.f6410f = i2 - Integer.MIN_VALUE;
            } else {
                selectionGesturesKt$mouseSelection$1 = new SelectionGesturesKt$mouseSelection$1(baseContinuationImpl);
            }
        } else {
            selectionGesturesKt$mouseSelection$1 = new SelectionGesturesKt$mouseSelection$1(baseContinuationImpl);
        }
        Object objH = selectionGesturesKt$mouseSelection$1.f6409e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = selectionGesturesKt$mouseSelection$1.f6410f;
        int i4 = 0;
        try {
            try {
                if (i3 == 0) {
                    ResultKt.b(objH);
                    PointerInputChange pointerInputChange3 = (PointerInputChange) pointerEvent.f9305a.get(0);
                    if ((pointerEvent.f9308e & 1) == 0) {
                        int i5 = clicksCounter.f6342b;
                        a aVar2 = SelectionAdjustment.Companion.f6397a;
                        if (i5 != 1) {
                            aVar = i5 != 2 ? SelectionAdjustment.Companion.f6399c : SelectionAdjustment.Companion.f6398b;
                        } else {
                            aVar = aVar2;
                        }
                        if (mouseSelectionObserver.a(pointerInputChange3.f9330c, aVar, i5)) {
                            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
                            ref$BooleanRef2.f71917b = !aVar.equals(aVar2);
                            long j2 = pointerInputChange3.f9328a;
                            cl0 cl0Var = new cl0(mouseSelectionObserver, aVar, ref$BooleanRef2, 10);
                            selectionGesturesKt$mouseSelection$1.f6407b = awaitPointerEventScope;
                            selectionGesturesKt$mouseSelection$1.f6408c = mouseSelectionObserver;
                            selectionGesturesKt$mouseSelection$1.d = ref$BooleanRef2;
                            selectionGesturesKt$mouseSelection$1.f6410f = 2;
                            objH = DragGestureDetectorKt.h(awaitPointerEventScope, j2, cl0Var, selectionGesturesKt$mouseSelection$1);
                            if (objH != coroutineSingletons) {
                                awaitPointerEventScope2 = awaitPointerEventScope;
                                ref$BooleanRef = ref$BooleanRef2;
                                if (((Boolean) objH).booleanValue()) {
                                    list2 = awaitPointerEventScope2.O0().f9305a;
                                    size2 = list2.size();
                                    while (i4 < size2) {
                                        pointerInputChange2 = (PointerInputChange) list2.get(i4);
                                        if (PointerEventKt.c(pointerInputChange2)) {
                                            pointerInputChange2.a();
                                        }
                                        i4++;
                                    }
                                }
                                mouseSelectionObserver.b();
                            }
                            return coroutineSingletons;
                        }
                    } else if (mouseSelectionObserver.e(pointerInputChange3.f9330c)) {
                        pointerInputChange3.a();
                        long j3 = pointerInputChange3.f9328a;
                        xo0 xo0Var = new xo0(mouseSelectionObserver, 17);
                        selectionGesturesKt$mouseSelection$1.f6407b = awaitPointerEventScope;
                        selectionGesturesKt$mouseSelection$1.f6408c = mouseSelectionObserver;
                        selectionGesturesKt$mouseSelection$1.f6410f = 1;
                        objH = DragGestureDetectorKt.h(awaitPointerEventScope, j3, xo0Var, selectionGesturesKt$mouseSelection$1);
                        if (objH == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        if (((Boolean) objH).booleanValue()) {
                            list = awaitPointerEventScope.O0().f9305a;
                            size = list.size();
                            while (i4 < size) {
                                pointerInputChange = (PointerInputChange) list.get(i4);
                                if (PointerEventKt.c(pointerInputChange)) {
                                    pointerInputChange.a();
                                }
                                i4++;
                            }
                        }
                        mouseSelectionObserver.b();
                    }
                } else if (i3 == 1) {
                    mouseSelectionObserver = selectionGesturesKt$mouseSelection$1.f6408c;
                    awaitPointerEventScope = selectionGesturesKt$mouseSelection$1.f6407b;
                    ResultKt.b(objH);
                    if (((Boolean) objH).booleanValue()) {
                        list = awaitPointerEventScope.O0().f9305a;
                        size = list.size();
                        while (i4 < size) {
                            pointerInputChange = (PointerInputChange) list.get(i4);
                            if (PointerEventKt.c(pointerInputChange)) {
                                pointerInputChange.a();
                            }
                            i4++;
                        }
                    }
                    mouseSelectionObserver.b();
                } else {
                    if (i3 != 2) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ref$BooleanRef = selectionGesturesKt$mouseSelection$1.d;
                    mouseSelectionObserver = selectionGesturesKt$mouseSelection$1.f6408c;
                    awaitPointerEventScope2 = selectionGesturesKt$mouseSelection$1.f6407b;
                    ResultKt.b(objH);
                    if (((Boolean) objH).booleanValue() && ref$BooleanRef.f71917b) {
                        list2 = awaitPointerEventScope2.O0().f9305a;
                        size2 = list2.size();
                        while (i4 < size2) {
                            pointerInputChange2 = (PointerInputChange) list2.get(i4);
                            if (PointerEventKt.c(pointerInputChange2)) {
                                pointerInputChange2.a();
                            }
                            i4++;
                        }
                    }
                    mouseSelectionObserver.b();
                }
                return Unit.f71739a;
            } catch (Throwable th) {
                mouseSelectionObserver.b();
                throw th;
            }
        } catch (Throwable th2) {
            mouseSelectionObserver.b();
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009e, code lost:
    
        if (r15 == r1) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(androidx.compose.ui.input.pointer.AwaitPointerEventScope r12, androidx.compose.foundation.text.TextDragObserver r13, androidx.compose.ui.input.pointer.PointerEvent r14, kotlin.coroutines.jvm.internal.BaseContinuationImpl r15) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt.e(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Modifier f(Modifier modifier, final lq lqVar) {
        return SuspendingPointerInputFilterKt.a(modifier, 8675309, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1

            /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1", f = "SelectionGestures.kt", l = {94}, m = "invokeSuspend", v = 1)
            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f6423c;
                public /* synthetic */ Object d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ lq f6424e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(lq lqVar, Continuation continuation) {
                    super(2, continuation);
                    this.f6424e = lqVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f6424e, continuation);
                    anonymousClass1.d = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code duplicated, block: B:11:0x002c A[RETURN] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002a -> B:12:0x002d). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x002c
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final java.lang.Object invokeSuspend(java.lang.Object r5) {
                    /*
                        r4 = this;
                        kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r1 = r4.f6423c
                        r2 = 1
                        if (r1 == 0) goto L18
                        if (r1 != r2) goto L11
                        java.lang.Object r1 = r4.d
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        kotlin.ResultKt.b(r5)
                        goto L2d
                    L11:
                        java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.md.k(r4)
                        r4 = 0
                        return r4
                    L18:
                        kotlin.ResultKt.b(r5)
                        java.lang.Object r5 = r4.d
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                        r1 = r5
                    L20:
                        androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r4.d = r1
                        r4.f6423c = r2
                        java.lang.Object r5 = r1.N0(r5, r4)
                        if (r5 != r0) goto L2d
                        return r0
                    L2d:
                        androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                        boolean r5 = androidx.compose.foundation.text.selection.SelectionGestures_androidKt.a(r5)
                        r5 = r5 ^ r2
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        lq r3 = r4.f6424e
                        r3.invoke(r5)
                        goto L20
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object objC0 = pointerInputScope.c0(new AnonymousClass1(lqVar, null), continuation);
                return objC0 == CoroutineSingletons.COROUTINE_SUSPENDED ? objC0 : Unit.f71739a;
            }
        });
    }
}
