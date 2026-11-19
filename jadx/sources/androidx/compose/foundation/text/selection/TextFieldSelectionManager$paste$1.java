package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$paste$1", f = "TextFieldSelectionManager.kt", l = {928, 928}, m = "invokeSuspend", v = 1)
final class TextFieldSelectionManager$paste$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextFieldSelectionManager f6484c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$paste$1(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(2, continuation);
        this.f6484c = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$paste$1(this.f6484c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$paste$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        if (r6 == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f6483b
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r2 = r5.f6484c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r6)
            goto L3a
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L19:
            kotlin.ResultKt.b(r6)
            goto L2d
        L1d:
            kotlin.ResultKt.b(r6)
            androidx.compose.ui.platform.Clipboard r6 = r2.f6459h
            if (r6 == 0) goto Lb2
            r5.f6483b = r4
            androidx.compose.ui.platform.ClipEntry r6 = r6.a()
            if (r6 != r0) goto L2d
            goto L39
        L2d:
            androidx.compose.ui.platform.ClipEntry r6 = (androidx.compose.ui.platform.ClipEntry) r6
            if (r6 == 0) goto Lb2
            r5.f6483b = r3
            androidx.compose.ui.text.AnnotatedString r6 = androidx.compose.foundation.internal.ClipboardUtils_androidKt.a(r6)
            if (r6 != r0) goto L3a
        L39:
            return r0
        L3a:
            androidx.compose.ui.text.AnnotatedString r6 = (androidx.compose.ui.text.AnnotatedString) r6
            if (r6 != 0) goto L3f
            goto Lb2
        L3f:
            boolean r5 = r2.k()
            if (r5 != 0) goto L46
            goto Laf
        L46:
            androidx.compose.ui.text.input.TextFieldValue r5 = r2.o()
            androidx.compose.ui.text.input.TextFieldValue r0 = r2.o()
            androidx.compose.ui.text.AnnotatedString r0 = r0.f10840a
            java.lang.String r0 = r0.f10420c
            int r0 = r0.length()
            androidx.compose.ui.text.AnnotatedString r5 = androidx.compose.ui.text.input.TextFieldValueKt.c(r5, r0)
            androidx.compose.ui.text.AnnotatedString$Builder r0 = new androidx.compose.ui.text.AnnotatedString$Builder
            r0.<init>(r5)
            r0.d(r6)
            androidx.compose.ui.text.AnnotatedString r5 = r0.i()
            androidx.compose.ui.text.input.TextFieldValue r0 = r2.o()
            androidx.compose.ui.text.input.TextFieldValue r1 = r2.o()
            androidx.compose.ui.text.AnnotatedString r1 = r1.f10840a
            java.lang.String r1 = r1.f10420c
            int r1 = r1.length()
            androidx.compose.ui.text.AnnotatedString r0 = androidx.compose.ui.text.input.TextFieldValueKt.b(r0, r1)
            androidx.compose.ui.text.AnnotatedString$Builder r1 = new androidx.compose.ui.text.AnnotatedString$Builder
            r1.<init>(r5)
            r1.d(r0)
            androidx.compose.ui.text.AnnotatedString r5 = r1.i()
            androidx.compose.ui.text.input.TextFieldValue r0 = r2.o()
            long r0 = r0.f10841b
            int r0 = androidx.compose.ui.text.TextRange.f(r0)
            java.lang.String r6 = r6.f10420c
            int r6 = r6.length()
            int r6 = r6 + r0
            long r0 = androidx.compose.ui.text.TextRangeKt.a(r6, r6)
            androidx.compose.ui.text.input.TextFieldValue r5 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.e(r5, r0)
            kotlin.jvm.functions.Function1 r6 = r2.f6456c
            r6.invoke(r5)
            androidx.compose.foundation.text.HandleState r5 = androidx.compose.foundation.text.HandleState.None
            r2.s(r5)
            androidx.compose.foundation.text.UndoManager r5 = r2.f6454a
            if (r5 == 0) goto Laf
            r5.f6033f = r4
        Laf:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        Lb2:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$paste$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
