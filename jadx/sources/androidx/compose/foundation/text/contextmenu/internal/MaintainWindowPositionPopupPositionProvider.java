package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/internal/MaintainWindowPositionPopupPositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "popupPositionProvider", "<init>", "(Landroidx/compose/ui/window/PopupPositionProvider;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MaintainWindowPositionPopupPositionProvider implements PopupPositionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PopupPositionProvider f6103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IntSize f6104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutDirection f6105c;
    public IntSize d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IntOffset f6106e;

    public MaintainWindowPositionPopupPositionProvider(PopupPositionProvider popupPositionProvider) {
        this.f6103a = popupPositionProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j2, LayoutDirection layoutDirection, long j3) {
        IntOffset intOffset = this.f6106e;
        if (intOffset != null) {
            IntSize intSize = this.f6104b;
            if ((intSize == null ? false : IntSize.b(intSize.f11021a, j2)) && this.f6105c == layoutDirection) {
                IntSize intSize2 = this.d;
                if (intSize2 != null ? IntSize.b(intSize2.f11021a, j3) : false) {
                    return intOffset.f11014a;
                }
            }
        }
        long jA = this.f6103a.a(intRect, j2, layoutDirection, j3);
        this.f6104b = new IntSize(j2);
        this.f6105c = layoutDirection;
        this.d = new IntSize(j3);
        this.f6106e = new IntOffset(jA);
        return jA;
    }
}
