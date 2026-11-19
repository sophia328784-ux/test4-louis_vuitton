package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextFieldFocusModifier_androidKt {
    public static final boolean a(int i2, KeyEvent keyEvent) {
        return ((int) (KeyEvent_androidKt.a(keyEvent) >> 32)) == i2;
    }
}
