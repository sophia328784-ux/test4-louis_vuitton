package androidx.compose.foundation;

import android.widget.Magnifier;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"androidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl", "Landroidx/compose/foundation/PlatformMagnifier;", "Landroid/widget/Magnifier;", "magnifier", "<init>", "(Landroid/widget/Magnifier;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl implements PlatformMagnifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Magnifier f4286a;

    public PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl(Magnifier magnifier) {
        this.f4286a = magnifier;
    }

    @Override // androidx.compose.foundation.PlatformMagnifier
    public final long a() {
        Magnifier magnifier = this.f4286a;
        long width = (((long) magnifier.getWidth()) << 32) | (((long) magnifier.getHeight()) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        return width;
    }

    @Override // androidx.compose.foundation.PlatformMagnifier
    public void b(long j2, long j3, float f2) {
        this.f4286a.show(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)));
    }

    @Override // androidx.compose.foundation.PlatformMagnifier
    public final void c() {
        this.f4286a.update();
    }

    @Override // androidx.compose.foundation.PlatformMagnifier
    public final void dismiss() {
        this.f4286a.dismiss();
    }
}
