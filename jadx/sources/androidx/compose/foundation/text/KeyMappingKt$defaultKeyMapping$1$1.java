package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.Key_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1", "Landroidx/compose/foundation/text/KeyMapping;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyMappingKt$defaultKeyMapping$1$1 implements KeyMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ KeyMappingKt$commonKeyMapping$1 f5902a;

    public KeyMappingKt$defaultKeyMapping$1$1(KeyMappingKt$commonKeyMapping$1 keyMappingKt$commonKeyMapping$1) {
        this.f5902a = keyMappingKt$commonKeyMapping$1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    @Override // androidx.compose.foundation.text.KeyMapping
    public final KeyCommand a(KeyEvent keyEvent) {
        KeyCommand keyCommand;
        int iA = KeyModifiersKt.a(keyEvent);
        long jA = Key_androidKt.a(keyEvent.getKeyCode());
        Key.f9226a.getClass();
        KeyCommand keyCommand2 = null;
        if (Key.a(jA, Key.t)) {
            KeyModifiers.f5904a.getClass();
            if (iA == 0 || iA == KeyModifiers.d || iA == KeyModifiers.g) {
                keyCommand = KeyCommand.DELETE_PREV_CHAR;
            } else if (iA == KeyModifiers.f5906c || iA == KeyModifiers.f5908f) {
                keyCommand = KeyCommand.DELETE_PREV_WORD;
            } else {
                keyCommand = null;
            }
        } else if (Key.a(jA, Key.s) || Key.a(jA, Key.F)) {
            KeyModifiers.f5904a.getClass();
            if (iA == 0 || iA == KeyModifiers.d || iA == KeyModifiers.f5906c || iA == KeyModifiers.f5908f) {
                keyCommand = KeyCommand.NEW_LINE;
            } else {
                keyCommand = null;
            }
        } else {
            keyCommand = null;
        }
        if (keyCommand != null) {
            return keyCommand;
        }
        int iA2 = KeyModifiersKt.a(keyEvent);
        KeyModifiers.f5904a.getClass();
        if (iA2 == KeyModifiers.f5908f) {
            long jA2 = Key_androidKt.a(keyEvent.getKeyCode());
            if (Key.a(jA2, Key.g) || Key.a(jA2, Key.I)) {
                keyCommand2 = KeyCommand.SELECT_LEFT_WORD;
            } else if (Key.a(jA2, Key.f9231h) || Key.a(jA2, Key.J)) {
                keyCommand2 = KeyCommand.SELECT_RIGHT_WORD;
            } else if (Key.a(jA2, Key.f9229e) || Key.a(jA2, Key.G)) {
                keyCommand2 = KeyCommand.SELECT_PREV_PARAGRAPH;
            } else if (Key.a(jA2, Key.f9230f) || Key.a(jA2, Key.H)) {
                keyCommand2 = KeyCommand.SELECT_NEXT_PARAGRAPH;
            }
        } else if (iA2 == KeyModifiers.f5906c) {
            long jA3 = Key_androidKt.a(keyEvent.getKeyCode());
            if (Key.a(jA3, Key.g) || Key.a(jA3, Key.I)) {
                keyCommand2 = KeyCommand.LEFT_WORD;
            } else if (Key.a(jA3, Key.f9231h) || Key.a(jA3, Key.J)) {
                keyCommand2 = KeyCommand.RIGHT_WORD;
            } else if (Key.a(jA3, Key.f9229e) || Key.a(jA3, Key.G)) {
                keyCommand2 = KeyCommand.PREV_PARAGRAPH;
            } else if (Key.a(jA3, Key.f9230f) || Key.a(jA3, Key.H)) {
                keyCommand2 = KeyCommand.NEXT_PARAGRAPH;
            } else if (Key.a(jA3, Key.l)) {
                keyCommand2 = KeyCommand.DELETE_PREV_CHAR;
            } else if (Key.a(jA3, Key.u)) {
                keyCommand2 = KeyCommand.DELETE_NEXT_WORD;
            } else if (Key.a(jA3, Key.C)) {
                keyCommand2 = KeyCommand.DESELECT;
            }
        } else if (iA2 == KeyModifiers.d) {
            long jA4 = Key_androidKt.a(keyEvent.getKeyCode());
            if (Key.a(jA4, Key.w) || Key.a(jA4, Key.K)) {
                keyCommand2 = KeyCommand.SELECT_LINE_START;
            } else if (Key.a(jA4, Key.x) || Key.a(jA4, Key.L)) {
                keyCommand2 = KeyCommand.SELECT_LINE_END;
            }
        } else if (iA2 == KeyModifiers.f5905b && Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.u)) {
            keyCommand2 = KeyCommand.DELETE_TO_LINE_END;
        }
        return keyCommand2 == null ? this.f5902a.a(keyEvent) : keyCommand2;
    }
}
