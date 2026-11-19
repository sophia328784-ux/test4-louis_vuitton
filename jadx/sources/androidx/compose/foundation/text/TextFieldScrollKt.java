package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TransformedText;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class TextFieldScrollKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5995a;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f5995a = iArr;
        }
    }

    public static final Rect a(Placeable.PlacementScope placementScope, int i2, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z, int i3) {
        Rect rectC;
        float f2;
        if (textLayoutResult != null) {
            rectC = textLayoutResult.c(transformedText.f10864b.b(i2));
        } else {
            Rect.f8809e.getClass();
            rectC = Rect.f8810f;
        }
        int iB0 = placementScope.B0(TextFieldCursor_androidKt.f5961a);
        float f3 = z ? (i3 - rectC.f8811a) - iB0 : rectC.f8811a;
        if (z) {
            f2 = i3 - rectC.f8811a;
        } else {
            f2 = iB0 + rectC.f8811a;
        }
        return new Rect(f3, rectC.f8812b, f2, rectC.d);
    }
}
