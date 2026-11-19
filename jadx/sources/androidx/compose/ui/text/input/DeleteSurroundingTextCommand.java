package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "", "lengthBeforeCursor", "lengthAfterCursor", "<init>", "(II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DeleteSurroundingTextCommand implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10773b;

    public DeleteSurroundingTextCommand(int i2, int i3) {
        this.f10772a = i2;
        this.f10773b = i3;
        if (i2 >= 0 && i3 >= 0) {
            return;
        }
        InlineClassHelperKt.a("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i2 + " and " + i3 + " respectively.");
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int i2 = editingBuffer.f10780c;
        PartialGapBuffer partialGapBuffer = editingBuffer.f10778a;
        int i3 = this.f10773b;
        int iA = i2 + i3;
        if (((i2 ^ iA) & (i3 ^ iA)) < 0) {
            iA = partialGapBuffer.a();
        }
        editingBuffer.a(editingBuffer.f10780c, Math.min(iA, partialGapBuffer.a()));
        int i4 = editingBuffer.f10779b;
        int i5 = this.f10772a;
        int i6 = i4 - i5;
        if (((i5 ^ i4) & (i4 ^ i6)) < 0) {
            i6 = 0;
        }
        editingBuffer.a(Math.max(0, i6), editingBuffer.f10779b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeleteSurroundingTextCommand)) {
            return false;
        }
        DeleteSurroundingTextCommand deleteSurroundingTextCommand = (DeleteSurroundingTextCommand) obj;
        return this.f10772a == deleteSurroundingTextCommand.f10772a && this.f10773b == deleteSurroundingTextCommand.f10773b;
    }

    public final int hashCode() {
        return (this.f10772a * 31) + this.f10773b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeleteSurroundingTextCommand(lengthBeforeCursor=");
        sb.append(this.f10772a);
        sb.append(", lengthAfterCursor=");
        return tr.k(sb, this.f10773b, ')');
    }
}
