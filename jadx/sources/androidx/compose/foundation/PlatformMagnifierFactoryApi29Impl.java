package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.math.MathKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;", "Landroidx/compose/foundation/PlatformMagnifierFactory;", "PlatformMagnifierImpl", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlatformMagnifierFactoryApi29Impl implements PlatformMagnifierFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PlatformMagnifierFactoryApi29Impl f4287a = new PlatformMagnifierFactoryApi29Impl();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;", "Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;", "Landroid/widget/Magnifier;", "magnifier", "<init>", "(Landroid/widget/Magnifier;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PlatformMagnifierImpl extends PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl {
        public PlatformMagnifierImpl(Magnifier magnifier) {
            super(magnifier);
        }

        @Override // androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl, androidx.compose.foundation.PlatformMagnifier
        public final void b(long j2, long j3, float f2) {
            boolean zIsNaN = Float.isNaN(f2);
            Magnifier magnifier = this.f4286a;
            if (!zIsNaN) {
                magnifier.setZoom(f2);
            }
            if ((9223372034707292159L & j3) != 9205357640488583168L) {
                magnifier.show(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)));
            } else {
                magnifier.show(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)));
            }
        }
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public final PlatformMagnifierImpl a(View view, boolean z, long j2, float f2, float f3, boolean z2, Density density, float f4) {
        if (z) {
            return new PlatformMagnifierImpl(new Magnifier(view));
        }
        long jK1 = density.K1(j2);
        float fU1 = density.u1(f2);
        float fU2 = density.u1(f3);
        Magnifier.Builder builder = new Magnifier.Builder(view);
        if (jK1 != 9205357640488583168L) {
            builder.setSize(MathKt.c(Float.intBitsToFloat((int) (jK1 >> 32))), MathKt.c(Float.intBitsToFloat((int) (jK1 & BodyPartID.bodyIdMax))));
        }
        if (!Float.isNaN(fU1)) {
            builder.setCornerRadius(fU1);
        }
        if (!Float.isNaN(fU2)) {
            builder.setElevation(fU2);
        }
        if (!Float.isNaN(f4)) {
            builder.setInitialZoom(f4);
        }
        builder.setClippingEnabled(z2);
        return new PlatformMagnifierImpl(builder.build());
    }
}
