package androidx.compose.ui.graphics;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CanvasKt {
    public static final AndroidCanvas a(AndroidImageBitmap androidImageBitmap) {
        android.graphics.Canvas canvas = AndroidCanvas_androidKt.f8826a;
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.f8823a = new android.graphics.Canvas(AndroidImageBitmap_androidKt.a(androidImageBitmap));
        return androidCanvas;
    }
}
