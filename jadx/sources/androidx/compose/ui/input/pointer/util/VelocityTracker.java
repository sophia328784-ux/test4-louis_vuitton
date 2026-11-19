package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/input/pointer/util/VelocityTracker;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VelocityTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DefaultVelocityTracker f9403a = new DefaultVelocityTracker();

    public final long a(long j2) {
        DefaultVelocityTracker defaultVelocityTracker = this.f9403a;
        defaultVelocityTracker.getClass();
        if (Velocity.b(j2) <= Call.Parameters.DEFAULT_CAMERA_ZOOM || Velocity.c(j2) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.c("maximumVelocity should be a positive value. You specified=" + ((Object) Velocity.g(j2)));
        }
        return VelocityKt.a(defaultVelocityTracker.f9398a.b(Velocity.b(j2)), defaultVelocityTracker.f9399b.b(Velocity.c(j2)));
    }
}
