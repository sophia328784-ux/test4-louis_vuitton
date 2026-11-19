package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.Key_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1", "Landroidx/compose/foundation/text/KeyMapping;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class KeyMappingKt$commonKeyMapping$1 implements KeyMapping {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5901a;

    public KeyMappingKt$commonKeyMapping$1(int i2) {
        this.f5901a = i2;
    }

    @Override // androidx.compose.foundation.text.KeyMapping
    public final KeyCommand a(KeyEvent keyEvent) {
        int iA = KeyModifiersKt.a(keyEvent);
        KeyModifiers.f5904a.getClass();
        int i2 = KeyModifiers.d;
        int i3 = this.f5901a;
        if (iA == (i3 | i2)) {
            long jA = Key_androidKt.a(keyEvent.getKeyCode());
            Key.f9226a.getClass();
            if (Key.a(jA, Key.p)) {
                return KeyCommand.REDO;
            }
            return null;
        }
        if (iA == i3) {
            long jA2 = Key_androidKt.a(keyEvent.getKeyCode());
            Key.f9226a.getClass();
            if (Key.a(jA2, Key.f9234k) || Key.a(jA2, Key.y) || Key.a(jA2, Key.O)) {
                return KeyCommand.COPY;
            }
            if (Key.a(jA2, Key.m)) {
                return KeyCommand.PASTE;
            }
            if (Key.a(jA2, Key.n)) {
                return KeyCommand.CUT;
            }
            if (Key.a(jA2, Key.f9233j)) {
                return KeyCommand.SELECT_ALL;
            }
            if (Key.a(jA2, Key.o)) {
                return KeyCommand.REDO;
            }
            if (Key.a(jA2, Key.p)) {
                return KeyCommand.UNDO;
            }
            return null;
        }
        if (iA == i2) {
            long jA3 = Key_androidKt.a(keyEvent.getKeyCode());
            Key.f9226a.getClass();
            if (Key.a(jA3, Key.g) || Key.a(jA3, Key.I)) {
                return KeyCommand.SELECT_LEFT_CHAR;
            }
            if (Key.a(jA3, Key.f9231h) || Key.a(jA3, Key.J)) {
                return KeyCommand.SELECT_RIGHT_CHAR;
            }
            if (Key.a(jA3, Key.f9229e) || Key.a(jA3, Key.G)) {
                return KeyCommand.SELECT_UP;
            }
            if (Key.a(jA3, Key.f9230f) || Key.a(jA3, Key.H)) {
                return KeyCommand.SELECT_DOWN;
            }
            if (Key.a(jA3, Key.D) || Key.a(jA3, Key.M)) {
                return KeyCommand.SELECT_PAGE_UP;
            }
            if (Key.a(jA3, Key.E) || Key.a(jA3, Key.N)) {
                return KeyCommand.SELECT_PAGE_DOWN;
            }
            if (Key.a(jA3, Key.w) || Key.a(jA3, Key.K)) {
                return KeyCommand.SELECT_LINE_START;
            }
            if (Key.a(jA3, Key.x) || Key.a(jA3, Key.L)) {
                return KeyCommand.SELECT_LINE_END;
            }
            if (Key.a(jA3, Key.y) || Key.a(jA3, Key.O)) {
                return KeyCommand.PASTE;
            }
            return null;
        }
        if (iA != 0) {
            return null;
        }
        long jA4 = Key_androidKt.a(keyEvent.getKeyCode());
        Key.f9226a.getClass();
        if (Key.a(jA4, Key.g) || Key.a(jA4, Key.I)) {
            return KeyCommand.LEFT_CHAR;
        }
        if (Key.a(jA4, Key.f9231h) || Key.a(jA4, Key.J)) {
            return KeyCommand.RIGHT_CHAR;
        }
        if (Key.a(jA4, Key.f9229e) || Key.a(jA4, Key.G)) {
            return KeyCommand.UP;
        }
        if (Key.a(jA4, Key.f9230f) || Key.a(jA4, Key.H)) {
            return KeyCommand.DOWN;
        }
        if (Key.a(jA4, Key.f9232i)) {
            return KeyCommand.CENTER;
        }
        if (Key.a(jA4, Key.D) || Key.a(jA4, Key.M)) {
            return KeyCommand.PAGE_UP;
        }
        if (Key.a(jA4, Key.E) || Key.a(jA4, Key.N)) {
            return KeyCommand.PAGE_DOWN;
        }
        if (Key.a(jA4, Key.w) || Key.a(jA4, Key.K)) {
            return KeyCommand.LINE_START;
        }
        if (Key.a(jA4, Key.x) || Key.a(jA4, Key.L)) {
            return KeyCommand.LINE_END;
        }
        if (Key.a(jA4, Key.s) || Key.a(jA4, Key.F)) {
            return KeyCommand.NEW_LINE;
        }
        if (Key.a(jA4, Key.t)) {
            return KeyCommand.DELETE_PREV_CHAR;
        }
        if (Key.a(jA4, Key.u)) {
            return KeyCommand.DELETE_NEXT_CHAR;
        }
        if (Key.a(jA4, Key.B)) {
            return KeyCommand.PASTE;
        }
        if (Key.a(jA4, Key.z)) {
            return KeyCommand.CUT;
        }
        if (Key.a(jA4, Key.A)) {
            return KeyCommand.COPY;
        }
        if (Key.a(jA4, Key.q)) {
            return KeyCommand.TAB;
        }
        return null;
    }
}
