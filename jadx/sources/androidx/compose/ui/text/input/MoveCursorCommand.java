package androidx.compose.ui.text.input;

import defpackage.tr;
import java.text.BreakIterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/input/MoveCursorCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "", "amount", "<init>", "(I)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MoveCursorCommand implements EditCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10818a;

    public MoveCursorCommand(int i2) {
        this.f10818a = i2;
    }

    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        if (editingBuffer.d() == -1) {
            int i2 = editingBuffer.f10779b;
            editingBuffer.h(i2, i2);
        }
        int i3 = editingBuffer.f10779b;
        String string = editingBuffer.f10778a.toString();
        int i4 = 0;
        int i5 = this.f10818a;
        if (i5 <= 0) {
            int i6 = -i5;
            while (i4 < i6) {
                BreakIterator characterInstance = BreakIterator.getCharacterInstance();
                characterInstance.setText(string);
                int iPreceding = characterInstance.preceding(i3);
                if (iPreceding == -1) {
                    break;
                }
                i4++;
                i3 = iPreceding;
            }
        } else {
            while (i4 < i5) {
                BreakIterator characterInstance2 = BreakIterator.getCharacterInstance();
                characterInstance2.setText(string);
                int iFollowing = characterInstance2.following(i3);
                if (iFollowing == -1) {
                    break;
                }
                i4++;
                i3 = iFollowing;
            }
        }
        editingBuffer.h(i3, i3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MoveCursorCommand) {
            return this.f10818a == ((MoveCursorCommand) obj).f10818a;
        }
        return false;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF10818a() {
        return this.f10818a;
    }

    public final String toString() {
        return tr.k(new StringBuilder("MoveCursorCommand(amount="), this.f10818a, ')');
    }
}
