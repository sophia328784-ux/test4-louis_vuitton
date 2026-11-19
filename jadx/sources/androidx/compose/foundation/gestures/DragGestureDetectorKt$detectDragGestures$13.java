package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import com.github.druk.dnssd.NSType;
import defpackage.rt;
import defpackage.u9;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13", f = "DragGestureDetector.kt", l = {248, NSType.TKEY}, m = "invokeSuspend", v = 1)
final class DragGestureDetectorKt$detectDragGestures$13 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4512c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ rt f4513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ u9 f4514f;
    public final /* synthetic */ Function2 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f4515h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ y2 f4516i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureDetectorKt$detectDragGestures$13(rt rtVar, u9 u9Var, Function2 function2, Function0 function0, y2 y2Var, Continuation continuation) {
        super(2, continuation);
        this.f4513e = rtVar;
        this.f4514f = u9Var;
        this.g = function2;
        this.f4515h = function0;
        this.f4516i = y2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DragGestureDetectorKt$detectDragGestures$13 dragGestureDetectorKt$detectDragGestures$13 = new DragGestureDetectorKt$detectDragGestures$13(this.f4513e, this.f4514f, this.g, this.f4515h, this.f4516i, continuation);
        dragGestureDetectorKt$detectDragGestures$13.d = obj;
        return dragGestureDetectorKt$detectDragGestures$13;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DragGestureDetectorKt$detectDragGestures$13) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004c, code lost:
    
        if (androidx.compose.foundation.gestures.DragGestureDetectorKt.l(r4, (androidx.compose.ui.input.pointer.PointerInputChange) r13, r12.f4513e, r12.f4514f, r12.g, r12.f4515h, r12.f4516i, r12) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.f4512c
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L20
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r13)
            goto L4f
        L11:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r2
        L17:
            java.lang.Object r1 = r12.d
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.b(r13)
        L1e:
            r4 = r1
            goto L36
        L20:
            kotlin.ResultKt.b(r13)
            java.lang.Object r13 = r12.d
            r1 = r13
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            r12.d = r1
            r12.f4512c = r4
            r4 = 0
            java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.a(r1, r4, r13, r12)
            if (r13 != r0) goto L1e
            goto L4e
        L36:
            r5 = r13
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            r12.d = r2
            r12.f4512c = r3
            rt r6 = r12.f4513e
            u9 r7 = r12.f4514f
            kotlin.jvm.functions.Function2 r8 = r12.g
            kotlin.jvm.functions.Function0 r9 = r12.f4515h
            y2 r10 = r12.f4516i
            r11 = r12
            java.lang.Object r12 = androidx.compose.foundation.gestures.DragGestureDetectorKt.l(r4, r5, r6, r7, r8, r9, r10, r11)
            if (r12 != r0) goto L4f
        L4e:
            return r0
        L4f:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
