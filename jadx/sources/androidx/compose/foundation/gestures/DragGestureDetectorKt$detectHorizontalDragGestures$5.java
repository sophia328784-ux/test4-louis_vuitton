package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import defpackage.rt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5", f = "DragGestureDetector.kt", l = {727, 730, 738}, m = "invokeSuspend", v = 1)
final class DragGestureDetectorKt$detectHorizontalDragGestures$5 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Ref$FloatRef f4517c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f4519f;
    public final /* synthetic */ Function2 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f4520h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ rt f4521i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureDetectorKt$detectHorizontalDragGestures$5(Function1 function1, Function2 function2, Function0 function0, rt rtVar, Continuation continuation) {
        super(2, continuation);
        this.f4519f = function1;
        this.g = function2;
        this.f4520h = function0;
        this.f4521i = rtVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DragGestureDetectorKt$detectHorizontalDragGestures$5 dragGestureDetectorKt$detectHorizontalDragGestures$5 = new DragGestureDetectorKt$detectHorizontalDragGestures$5(this.f4519f, this.g, this.f4520h, this.f4521i, continuation);
        dragGestureDetectorKt$detectHorizontalDragGestures$5.f4518e = obj;
        return dragGestureDetectorKt$detectHorizontalDragGestures$5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DragGestureDetectorKt$detectHorizontalDragGestures$5) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0091, code lost:
    
        if (r12 == r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.d
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L30
            if (r1 == r5) goto L27
            if (r1 == r4) goto L1c
            if (r1 != r3) goto L16
            kotlin.ResultKt.b(r12)
            r10 = r11
            goto L94
        L16:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            return r2
        L1c:
            kotlin.jvm.internal.Ref$FloatRef r1 = r11.f4517c
            java.lang.Object r4 = r11.f4518e
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
            kotlin.ResultKt.b(r12)
            r10 = r11
            goto L64
        L27:
            java.lang.Object r1 = r11.f4518e
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            kotlin.ResultKt.b(r12)
        L2e:
            r5 = r1
            goto L43
        L30:
            kotlin.ResultKt.b(r12)
            java.lang.Object r12 = r11.f4518e
            r1 = r12
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
            r11.f4518e = r1
            r11.d = r5
            java.lang.Object r12 = androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r1, r2, r11, r4)
            if (r12 != r0) goto L2e
            goto L93
        L43:
            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
            kotlin.jvm.internal.Ref$FloatRef r1 = new kotlin.jvm.internal.Ref$FloatRef
            r1.<init>()
            long r6 = r12.f9328a
            int r8 = r12.f9334i
            c r9 = new c
            r12 = 24
            r9.<init>(r1, r12)
            r11.f4518e = r5
            r11.f4517c = r1
            r11.d = r4
            r10 = r11
            java.lang.Object r12 = androidx.compose.foundation.gestures.DragGestureDetectorKt.b(r5, r6, r8, r9, r10)
            if (r12 != r0) goto L63
            goto L93
        L63:
            r4 = r5
        L64:
            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
            if (r12 == 0) goto La4
            long r5 = r12.f9330c
            androidx.compose.ui.geometry.Offset r11 = new androidx.compose.ui.geometry.Offset
            r11.<init>(r5)
            kotlin.jvm.functions.Function1 r5 = r10.f4519f
            r5.invoke(r11)
            float r11 = r1.f71918b
            java.lang.Float r1 = new java.lang.Float
            r1.<init>(r11)
            kotlin.jvm.functions.Function2 r11 = r10.g
            r11.invoke(r12, r1)
            long r5 = r12.f9328a
            l3 r12 = new l3
            r12.<init>(r3, r11)
            r10.f4518e = r2
            r10.f4517c = r2
            r10.d = r3
            java.lang.Object r12 = androidx.compose.foundation.gestures.DragGestureDetectorKt.i(r4, r5, r12, r10)
            if (r12 != r0) goto L94
        L93:
            return r0
        L94:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r11 = r12.booleanValue()
            if (r11 == 0) goto La2
            kotlin.jvm.functions.Function0 r11 = r10.f4520h
            r11.mo47invoke()
            goto La4
        La2:
            float r11 = androidx.compose.foundation.gestures.DragGestureDetectorKt.f4487a
        La4:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectHorizontalDragGestures$5.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
