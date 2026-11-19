package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.j6;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DraggableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Function3 f4565a = new DraggableKt$NoOpOnDragStarted$1(3, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Function3 f4566b = new DraggableKt$NoOpOnDragStopped$1(3, null);

    public static Modifier a(Modifier modifier, DraggableState draggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, Function3 function3, boolean z3, int i2) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        boolean z4 = z;
        if ((i2 & 8) != 0) {
            mutableInteractionSource = null;
        }
        return modifier.o(new DraggableElement(draggableState, orientation, z4, mutableInteractionSource, (i2 & 16) != 0 ? false : z2, f4565a, function3, (i2 & 128) != 0 ? false : z3));
    }

    public static final DraggableState b(Composer composer, Function1 function1) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        MutableState mutableStateL = SnapshotStateKt.l(function1, composer);
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            DefaultDraggableState defaultDraggableState = new DefaultDraggableState(new j6(25, mutableStateL));
            composer.q(defaultDraggableState);
            objX = defaultDraggableState;
        }
        return (DraggableState) objX;
    }

    public static final long c(long j2) {
        boolean zIsNaN = Float.isNaN(Velocity.b(j2));
        float fC = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fB = zIsNaN ? 0.0f : Velocity.b(j2);
        if (!Float.isNaN(Velocity.c(j2))) {
            fC = Velocity.c(j2);
        }
        return VelocityKt.a(fB, fC);
    }
}
