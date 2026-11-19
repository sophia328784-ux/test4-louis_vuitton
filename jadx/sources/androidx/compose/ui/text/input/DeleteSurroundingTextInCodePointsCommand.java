package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "", "lengthBeforeCursor", "lengthAfterCursor", "<init>", "(II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DeleteSurroundingTextInCodePointsCommand implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10775b;

    public DeleteSurroundingTextInCodePointsCommand(int i2, int i3) {
        this.f10774a = i2;
        this.f10775b = i3;
        if (i2 >= 0 && i3 >= 0) {
            return;
        }
        InlineClassHelperKt.a("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i2 + " and " + i3 + " respectively.");
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f10774a; i3++) {
            int i4 = i2 + 1;
            int i5 = editingBuffer.f10779b;
            if (i5 <= i4) {
                i2 = i5;
                break;
            }
            i2 = (Character.isHighSurrogate(editingBuffer.b((i5 - i4) + (-1))) && Character.isLowSurrogate(editingBuffer.b(editingBuffer.f10779b - i4))) ? i2 + 2 : i4;
        }
        int iA = 0;
        for (int i6 = 0; i6 < this.f10775b; i6++) {
            int i7 = iA + 1;
            int i8 = editingBuffer.f10780c;
            PartialGapBuffer partialGapBuffer = editingBuffer.f10778a;
            if (i8 + i7 >= partialGapBuffer.a()) {
                iA = partialGapBuffer.a() - editingBuffer.f10780c;
                break;
            }
            iA = (Character.isHighSurrogate(editingBuffer.b((editingBuffer.f10780c + i7) + (-1))) && Character.isLowSurrogate(editingBuffer.b(editingBuffer.f10780c + i7))) ? iA + 2 : i7;
        }
        int i9 = editingBuffer.f10780c;
        editingBuffer.a(i9, iA + i9);
        int i10 = editingBuffer.f10779b;
        editingBuffer.a(i10 - i2, i10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextInCodePointsCommand)) {
            return false;
        }
        DeleteSurroundingTextInCodePointsCommand deleteSurroundingTextInCodePointsCommand = (DeleteSurroundingTextInCodePointsCommand) obj;
        return this.f10774a == deleteSurroundingTextInCodePointsCommand.f10774a && this.f10775b == deleteSurroundingTextInCodePointsCommand.f10775b;
    }

    public final int hashCode() {
        return (this.f10774a * 31) + this.f10775b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeleteSurroundingTextInCodePointsCommand(lengthBeforeCursor=");
        sb.append(this.f10774a);
        sb.append(", lengthAfterCursor=");
        return tr.k(sb, this.f10775b, ')');
    }
}
