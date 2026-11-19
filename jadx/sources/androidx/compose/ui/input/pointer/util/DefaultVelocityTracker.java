package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/input/pointer/util/DefaultVelocityTracker;", "Landroidx/compose/ui/input/pointer/util/PlatformVelocityTracker;", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DefaultVelocityTracker implements PlatformVelocityTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VelocityTracker1D f9398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VelocityTracker1D f9399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f9400c;

    public DefaultVelocityTracker() {
        VelocityTracker1D.Strategy strategy = VelocityTracker1D.Strategy.Lsq2;
        this.f9398a = new VelocityTracker1D(false, strategy, 1, null);
        this.f9399b = new VelocityTracker1D(false, strategy, 1, null);
        Offset.f8806b.getClass();
    }

    public final void a(long j2, long j3) {
        this.f9398a.a(Float.intBitsToFloat((int) (j3 >> 32)), j2);
        this.f9399b.a(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)), j2);
    }
}
