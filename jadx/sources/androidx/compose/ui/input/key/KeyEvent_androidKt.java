package androidx.compose.ui.input.key;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002*\n\u0010\u0001\"\u00020\u00002\u00020\u0000¨\u0006\u0002"}, d2 = {"Landroid/view/KeyEvent;", "NativeKeyEvent", "ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class KeyEvent_androidKt {
    public static final long a(android.view.KeyEvent keyEvent) {
        return Key_androidKt.a(keyEvent.getKeyCode());
    }

    public static final int b(android.view.KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action == 0) {
            KeyEventType.f9236a.getClass();
            return KeyEventType.f9238c;
        }
        if (action != 1) {
            KeyEventType.f9236a.getClass();
            return 0;
        }
        KeyEventType.f9236a.getClass();
        return KeyEventType.f9237b;
    }
}
