package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$2", f = "TextFieldSelectionManager.kt", l = {241, 243}, m = "invokeSuspend", v = 1)
final class TextFieldSelectionManager$contextMenuAreaModifier$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextFieldSelectionManager f6466c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$contextMenuAreaModifier$2(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(1, continuation);
        this.f6466c = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new TextFieldSelectionManager$contextMenuAreaModifier$2(this.f6466c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((TextFieldSelectionManager$contextMenuAreaModifier$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        if (r8.a(r1, r5, r7) == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f6465b
            r2 = 2
            r3 = 1
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r4 = r7.f6466c
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r8)
            goto L46
        L12:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L19:
            kotlin.ResultKt.b(r8)
            goto L29
        L1d:
            kotlin.ResultKt.b(r8)
            r7.f6465b = r3
            java.lang.Object r8 = r4.v(r7)
            if (r8 != r0) goto L29
            goto L45
        L29:
            kotlin.Pair r8 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.a(r4)
            if (r8 == 0) goto L46
            java.lang.Object r1 = r8.f71705b
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r8 = r8.f71706c
            androidx.compose.ui.text.TextRange r8 = (androidx.compose.ui.text.TextRange) r8
            long r5 = r8.f10566a
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviors r8 = r4.f6461j
            if (r8 == 0) goto L46
            r7.f6465b = r2
            java.lang.Object r7 = r8.a(r1, r5, r7)
            if (r7 != r0) goto L46
        L45:
            return r0
        L46:
            r4.C = r3
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
