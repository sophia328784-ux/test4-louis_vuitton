package coil3.compose;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "coil3.compose.AsyncImagePainter$launchJob$1", f = "AsyncImagePainter.kt", l = {234, 238}, m = "invokeSuspend", v = 1)
final class AsyncImagePainter$launchJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AsyncImagePainter f21284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f21285c;
    public final /* synthetic */ AsyncImagePainter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AsyncImagePainter.Input f21286e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncImagePainter$launchJob$1(AsyncImagePainter asyncImagePainter, AsyncImagePainter.Input input, Continuation continuation) {
        super(2, continuation);
        this.d = asyncImagePainter;
        this.f21286e = input;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AsyncImagePainter$launchJob$1(this.d, this.f21286e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AsyncImagePainter$launchJob$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0071  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:28:0x007d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0091  */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        if (r7 == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.f21285c
            r2 = 2
            coil3.compose.AsyncImagePainter r3 = r6.d
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L1b
            if (r1 != r2) goto L15
            coil3.compose.AsyncImagePainter r6 = r6.f21284b
            kotlin.ResultKt.b(r7)
            goto L51
        L15:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r5
        L1b:
            kotlin.ResultKt.b(r7)
            goto L39
        L1f:
            kotlin.ResultKt.b(r7)
            coil3.compose.AsyncImagePreviewHandler r7 = r3.s
            coil3.compose.AsyncImagePainter$Input r1 = r6.f21286e
            if (r7 == 0) goto L3c
            coil3.request.ImageRequest r2 = r1.f21276b
            coil3.request.ImageRequest r2 = coil3.compose.AsyncImagePainter.j(r3, r2, r4)
            coil3.ImageLoader r1 = r1.f21275a
            r6.f21285c = r4
            java.lang.Object r7 = r7.a(r1, r2, r6)
            if (r7 != r0) goto L39
            goto L4f
        L39:
            coil3.compose.AsyncImagePainter$State r7 = (coil3.compose.AsyncImagePainter.State) r7
            goto L8b
        L3c:
            coil3.request.ImageRequest r7 = r1.f21276b
            r4 = 0
            coil3.request.ImageRequest r7 = coil3.compose.AsyncImagePainter.j(r3, r7, r4)
            coil3.ImageLoader r1 = r1.f21275a
            r6.f21284b = r3
            r6.f21285c = r2
            java.lang.Object r7 = r1.b(r7, r6)
            if (r7 != r0) goto L50
        L4f:
            return r0
        L50:
            r6 = r3
        L51:
            coil3.request.ImageResult r7 = (coil3.request.ImageResult) r7
            coil3.compose.AsyncImagePainter$Companion r0 = coil3.compose.AsyncImagePainter.y
            r6.getClass()
            boolean r0 = r7 instanceof coil3.request.SuccessResult
            if (r0 == 0) goto L71
            coil3.compose.AsyncImagePainter$State$Success r0 = new coil3.compose.AsyncImagePainter$State$Success
            coil3.request.SuccessResult r7 = (coil3.request.SuccessResult) r7
            coil3.Image r1 = r7.f21668a
            coil3.request.ImageRequest r2 = r7.f21669b
            android.content.Context r2 = r2.f21612a
            int r6 = r6.r
            androidx.compose.ui.graphics.painter.Painter r6 = coil3.compose.ImagePainter_androidKt.a(r1, r2, r6)
            r0.<init>(r6, r7)
        L6f:
            r7 = r0
            goto L8b
        L71:
            boolean r0 = r7 instanceof coil3.request.ErrorResult
            if (r0 == 0) goto L91
            coil3.compose.AsyncImagePainter$State$Error r0 = new coil3.compose.AsyncImagePainter$State$Error
            coil3.request.ErrorResult r7 = (coil3.request.ErrorResult) r7
            coil3.Image r1 = r7.f21609a
            if (r1 == 0) goto L87
            coil3.request.ImageRequest r2 = r7.f21610b
            android.content.Context r2 = r2.f21612a
            int r6 = r6.r
            androidx.compose.ui.graphics.painter.Painter r5 = coil3.compose.ImagePainter_androidKt.a(r1, r2, r6)
        L87:
            r0.<init>(r5, r7)
            goto L6f
        L8b:
            coil3.compose.AsyncImagePainter.k(r3, r7)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L91:
            defpackage.v40.g()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.compose.AsyncImagePainter$launchJob$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
