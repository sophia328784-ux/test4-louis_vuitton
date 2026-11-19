package androidx.compose.ui.graphics;

import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidGraphicsContext_androidKt {
    public static final GraphicsContext a(AndroidComposeView androidComposeView) {
        return new AndroidGraphicsContext(androidComposeView);
    }
}
