package androidx.compose.ui.text.input;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/input/SetSelectionCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "", "start", "end", "<init>", "(II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SetSelectionCommand implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10838b;

    public SetSelectionCommand(int i2, int i3) {
        this.f10837a = i2;
        this.f10838b = i3;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        int iD = RangesKt.d(this.f10837a, 0, editingBuffer.f10778a.a());
        int iD2 = RangesKt.d(this.f10838b, 0, editingBuffer.f10778a.a());
        if (iD < iD2) {
            editingBuffer.h(iD, iD2);
        } else {
            editingBuffer.h(iD2, iD);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SetSelectionCommand)) {
            return false;
        }
        SetSelectionCommand setSelectionCommand = (SetSelectionCommand) obj;
        return this.f10837a == setSelectionCommand.f10837a && this.f10838b == setSelectionCommand.f10838b;
    }

    public final int hashCode() {
        return (this.f10837a * 31) + this.f10838b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SetSelectionCommand(start=");
        sb.append(this.f10837a);
        sb.append(", end=");
        return tr.k(sb, this.f10838b, ')');
    }
}
