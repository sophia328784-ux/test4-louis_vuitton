package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValueKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1", f = "TextFieldSelectionManager.kt", l = {971}, m = "invokeSuspend", v = 1)
final class TextFieldSelectionManager$cut$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TextFieldSelectionManager f6472c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$cut$1(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(2, continuation);
        this.f6472c = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$cut$1(this.f6472c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$cut$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6471b;
        AnnotatedString annotatedStringA = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            TextFieldSelectionManager textFieldSelectionManager = this.f6472c;
            if (!TextRange.c(textFieldSelectionManager.o().f10841b) && textFieldSelectionManager.k() && !(textFieldSelectionManager.f6458f instanceof PasswordVisualTransformation)) {
                annotatedStringA = TextFieldValueKt.a(textFieldSelectionManager.o());
                AnnotatedString annotatedStringC = TextFieldValueKt.c(textFieldSelectionManager.o(), textFieldSelectionManager.o().f10840a.f10420c.length());
                AnnotatedString annotatedStringB = TextFieldValueKt.b(textFieldSelectionManager.o(), textFieldSelectionManager.o().f10840a.f10420c.length());
                AnnotatedString.Builder builder = new AnnotatedString.Builder(annotatedStringC);
                builder.d(annotatedStringB);
                AnnotatedString annotatedStringI = builder.i();
                int iF = TextRange.f(textFieldSelectionManager.o().f10841b);
                textFieldSelectionManager.f6456c.invoke(TextFieldSelectionManager.e(annotatedStringI, TextRangeKt.a(iF, iF)));
                textFieldSelectionManager.s(HandleState.None);
                UndoManager undoManager = textFieldSelectionManager.f6454a;
                if (undoManager != null) {
                    undoManager.f6033f = true;
                }
            }
            if (annotatedStringA == null) {
                return Unit.f71739a;
            }
            Clipboard clipboard = textFieldSelectionManager.f6459h;
            if (clipboard != null) {
                ClipEntry clipEntryB = ClipboardUtils_androidKt.b(annotatedStringA);
                this.f6471b = 1;
                if (clipboard.c(clipEntryB) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
