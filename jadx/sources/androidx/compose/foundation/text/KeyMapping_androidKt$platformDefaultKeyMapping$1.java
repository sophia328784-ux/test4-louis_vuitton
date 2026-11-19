package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.Key_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/text/KeyMapping_androidKt$platformDefaultKeyMapping$1", "Landroidx/compose/foundation/text/KeyMapping;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyMapping_androidKt$platformDefaultKeyMapping$1 implements KeyMapping {
    @Override // androidx.compose.foundation.text.KeyMapping
    public final KeyCommand a(KeyEvent keyEvent) {
        int iA = KeyModifiersKt.a(keyEvent);
        KeyModifiers.f5904a.getClass();
        KeyCommand keyCommand = null;
        if (iA == KeyModifiers.f5907e) {
            long jA = Key_androidKt.a(keyEvent.getKeyCode());
            Key.f9226a.getClass();
            if (Key.a(jA, Key.g)) {
                keyCommand = KeyCommand.SELECT_LINE_LEFT;
            } else if (Key.a(jA, Key.f9231h)) {
                keyCommand = KeyCommand.SELECT_LINE_RIGHT;
            } else if (Key.a(jA, Key.f9229e)) {
                keyCommand = KeyCommand.SELECT_HOME;
            } else if (Key.a(jA, Key.f9230f)) {
                keyCommand = KeyCommand.SELECT_END;
            }
        } else if (iA == KeyModifiers.f5905b) {
            long jA2 = Key_androidKt.a(keyEvent.getKeyCode());
            Key.f9226a.getClass();
            if (Key.a(jA2, Key.g)) {
                keyCommand = KeyCommand.LINE_LEFT;
            } else if (Key.a(jA2, Key.f9231h)) {
                keyCommand = KeyCommand.LINE_RIGHT;
            } else if (Key.a(jA2, Key.f9229e)) {
                keyCommand = KeyCommand.HOME;
            } else if (Key.a(jA2, Key.f9230f)) {
                keyCommand = KeyCommand.END;
            } else if (Key.a(jA2, Key.t)) {
                keyCommand = KeyCommand.DELETE_FROM_LINE_START;
            }
        }
        return keyCommand == null ? KeyMappingKt.f5900a.a(keyEvent) : keyCommand;
    }
}
