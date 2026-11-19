package androidx.compose.ui.graphics.painter;

import android.graphics.Bitmap;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BitmapPainterKt {
    public static BitmapPainter a(AndroidImageBitmap androidImageBitmap, int i2) {
        IntOffset.f11012b.getClass();
        Bitmap bitmap = androidImageBitmap.f8834a;
        long width = (((long) bitmap.getWidth()) << 32) | (((long) bitmap.getHeight()) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        BitmapPainter bitmapPainter = new BitmapPainter(androidImageBitmap, 0L, width, null);
        bitmapPainter.f9049j = i2;
        return bitmapPainter;
    }
}
