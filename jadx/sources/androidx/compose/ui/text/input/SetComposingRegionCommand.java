package androidx.compose.ui.text.input;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/SetComposingRegionCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "", "start", "end", "<init>", "(II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SetComposingRegionCommand implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10834b;

    public SetComposingRegionCommand(int i2, int i3) {
        this.f10833a = i2;
        this.f10834b = i3;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        boolean zE = editingBuffer.e();
        PartialGapBuffer partialGapBuffer = editingBuffer.f10778a;
        if (zE) {
            editingBuffer.d = -1;
            editingBuffer.f10781e = -1;
        }
        int iD = RangesKt.d(this.f10833a, 0, partialGapBuffer.a());
        int iD2 = RangesKt.d(this.f10834b, 0, partialGapBuffer.a());
        if (iD != iD2) {
            if (iD < iD2) {
                editingBuffer.g(iD, iD2);
            } else {
                editingBuffer.g(iD2, iD);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetComposingRegionCommand)) {
            return false;
        }
        SetComposingRegionCommand setComposingRegionCommand = (SetComposingRegionCommand) obj;
        return this.f10833a == setComposingRegionCommand.f10833a && this.f10834b == setComposingRegionCommand.f10834b;
    }

    public final int hashCode() {
        return (this.f10833a * 31) + this.f10834b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetComposingRegionCommand(start=");
        sb.append(this.f10833a);
        sb.append(", end=");
        return tr.k(sb, this.f10834b, ')');
    }
}
