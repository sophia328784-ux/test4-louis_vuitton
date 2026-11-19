package androidx.compose.foundation.gestures;

import android.view.ViewConfiguration;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.List;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/gestures/AndroidConfig;", "Landroidx/compose/foundation/gestures/ScrollConfig;", "Landroid/view/ViewConfiguration;", "viewConfiguration", "<init>", "(Landroid/view/ViewConfiguration;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidConfig implements ScrollConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewConfiguration f4422a;

    public AndroidConfig(ViewConfiguration viewConfiguration) {
        this.f4422a = viewConfiguration;
    }

    @Override // androidx.compose.foundation.gestures.ScrollConfig
    public final long a(PointerEvent pointerEvent) {
        ViewConfiguration viewConfiguration = this.f4422a;
        float f2 = -viewConfiguration.getScaledVerticalScrollFactor();
        float f3 = -viewConfiguration.getScaledHorizontalScrollFactor();
        List list = pointerEvent.f9305a;
        Offset.f8806b.getClass();
        Offset offset = new Offset(0L);
        int size = list.size();
        int i2 = 0;
        while (true) {
            long j2 = offset.f8808a;
            if (i2 >= size) {
                float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) * f3;
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) * f2;
                return (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
            }
            offset = new Offset(Offset.f(j2, ((PointerInputChange) list.get(i2)).f9335j));
            i2++;
        }
    }
}
