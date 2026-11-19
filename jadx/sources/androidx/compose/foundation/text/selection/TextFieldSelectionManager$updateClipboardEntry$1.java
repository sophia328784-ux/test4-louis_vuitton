package androidx.compose.foundation.text.selection;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager", f = "TextFieldSelectionManager.kt", l = {827}, m = "updateClipboardEntry$foundation", v = 1)
final class TextFieldSelectionManager$updateClipboardEntry$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextFieldSelectionManager f6488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f6489c;
    public final /* synthetic */ TextFieldSelectionManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6490e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$updateClipboardEntry$1(TextFieldSelectionManager textFieldSelectionManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f6489c = obj;
        this.f6490e |= Integer.MIN_VALUE;
        return this.d.v(this);
    }
}
