package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/input/CommitTextCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "Landroidx/compose/ui/text/AnnotatedString;", "annotatedString", "", "newCursorPosition", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;I)V", "", "text", "(Ljava/lang/String;I)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommitTextCommand implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f10759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10760b;

    public CommitTextCommand(String str, int i2) {
        this(new AnnotatedString(str, null, 2, null), i2);
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        boolean zE = editingBuffer.e();
        AnnotatedString annotatedString = this.f10759a;
        if (zE) {
            editingBuffer.f(editingBuffer.d, editingBuffer.f10781e, annotatedString.f10420c);
        } else {
            editingBuffer.f(editingBuffer.f10779b, editingBuffer.f10780c, annotatedString.f10420c);
        }
        int iD = editingBuffer.d();
        int i2 = this.f10760b;
        int iD2 = RangesKt.d(i2 > 0 ? (iD + i2) - 1 : (iD + i2) - annotatedString.f10420c.length(), 0, editingBuffer.f10778a.a());
        editingBuffer.h(iD2, iD2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommitTextCommand)) {
            return false;
        }
        CommitTextCommand commitTextCommand = (CommitTextCommand) obj;
        return Intrinsics.c(this.f10759a.f10420c, commitTextCommand.f10759a.f10420c) && this.f10760b == commitTextCommand.f10760b;
    }

    public final int hashCode() {
        return (this.f10759a.f10420c.hashCode() * 31) + this.f10760b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CommitTextCommand(text='");
        sb.append(this.f10759a.f10420c);
        sb.append("', newCursorPosition=");
        return tr.k(sb, this.f10760b, ')');
    }

    public CommitTextCommand(AnnotatedString annotatedString, int i2) {
        this.f10759a = annotatedString;
        this.f10760b = i2;
    }
}
