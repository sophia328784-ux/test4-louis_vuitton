package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode$show$1", f = "TextContextMenuToolbarHandlerModifier.kt", l = {205, 206, 208, 208}, m = "invokeSuspend", v = 1)
final class TextContextMenuToolbarHandlerNode$show$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f6137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6138c;
    public final /* synthetic */ TextContextMenuToolbarHandlerNode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TextContextMenuProvider f6139e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextContextMenuToolbarHandlerNode$show$1(TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode, TextContextMenuProvider textContextMenuProvider, Continuation continuation) {
        super(2, continuation);
        this.d = textContextMenuToolbarHandlerNode;
        this.f6139e = textContextMenuProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextContextMenuToolbarHandlerNode$show$1(this.d, this.f6139e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextContextMenuToolbarHandlerNode$show$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004e  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        if (r8.invoke(r7) == r0) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f6138c
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode r6 = r7.d
            if (r1 == 0) goto L2f
            if (r1 == r5) goto L2b
            if (r1 == r4) goto L25
            if (r1 == r3) goto L21
            if (r1 == r2) goto L1b
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L1b:
            java.lang.Throwable r7 = r7.f6137b
            kotlin.ResultKt.b(r8)
            goto L6a
        L21:
            kotlin.ResultKt.b(r8)
            goto L57
        L25:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L29
            goto L4a
        L29:
            r8 = move-exception
            goto L5a
        L2b:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L29
            goto L3f
        L2f:
            kotlin.ResultKt.b(r8)
            kotlin.jvm.functions.Function1 r8 = r6.s     // Catch: java.lang.Throwable -> L29
            if (r8 == 0) goto L3f
            r7.f6138c = r5     // Catch: java.lang.Throwable -> L29
            java.lang.Object r8 = r8.invoke(r7)     // Catch: java.lang.Throwable -> L29
            if (r8 != r0) goto L3f
            goto L68
        L3f:
            androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider r8 = r7.f6139e     // Catch: java.lang.Throwable -> L29
            r7.f6138c = r4     // Catch: java.lang.Throwable -> L29
            java.lang.Object r8 = r8.a(r6, r7)     // Catch: java.lang.Throwable -> L29
            if (r8 != r0) goto L4a
            goto L68
        L4a:
            kotlin.jvm.functions.Function1 r8 = r6.t
            if (r8 == 0) goto L57
            r7.f6138c = r3
            java.lang.Object r7 = r8.invoke(r7)
            if (r7 != r0) goto L57
            goto L68
        L57:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        L5a:
            kotlin.jvm.functions.Function1 r1 = r6.t
            if (r1 == 0) goto L6b
            r7.f6137b = r8
            r7.f6138c = r2
            java.lang.Object r7 = r1.invoke(r7)
            if (r7 != r0) goto L69
        L68:
            return r0
        L69:
            r7 = r8
        L6a:
            r8 = r7
        L6b:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode$show$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
