package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/layout/Arrangement$Center$1", "Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Arrangement$Center$1 implements Arrangement.HorizontalOrVertical {
    @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
    /* JADX INFO: renamed from: a */
    public final float getD() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.foundation.layout.Arrangement.Vertical
    public final void b(Density density, int i2, int[] iArr, int[] iArr2) {
        Arrangement.a(i2, iArr, iArr2, false);
    }

    @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
    public final void c(Density density, int i2, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        if (layoutDirection == LayoutDirection.Ltr) {
            Arrangement.a(i2, iArr, iArr2, false);
        } else {
            Arrangement.a(i2, iArr, iArr2, true);
        }
    }

    public final String toString() {
        return "Arrangement#Center";
    }
}
