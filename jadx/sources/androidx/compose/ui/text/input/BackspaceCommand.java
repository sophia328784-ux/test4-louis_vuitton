package androidx.compose.ui.text.input;

import java.text.BreakIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/input/BackspaceCommand;", "Landroidx/compose/ui/text/input/EditCommand;", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BackspaceCommand implements EditCommand {
    @Override // androidx.compose.ui.text.input.EditCommand
    public final void a(EditingBuffer editingBuffer) {
        if (editingBuffer.e()) {
            editingBuffer.a(editingBuffer.d, editingBuffer.f10781e);
            return;
        }
        if (editingBuffer.d() == -1) {
            int i2 = editingBuffer.f10779b;
            int i3 = editingBuffer.f10780c;
            editingBuffer.h(i2, i2);
            editingBuffer.a(i2, i3);
            return;
        }
        if (editingBuffer.d() == 0) {
            return;
        }
        String string = editingBuffer.f10778a.toString();
        int iD = editingBuffer.d();
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(string);
        editingBuffer.a(characterInstance.preceding(iD), editingBuffer.d());
    }

    public final boolean equals(Object obj) {
        return obj instanceof BackspaceCommand;
    }

    public final int hashCode() {
        return Reflection.f71922a.b(BackspaceCommand.class).hashCode();
    }

    public final String toString() {
        return "BackspaceCommand()";
    }
}
