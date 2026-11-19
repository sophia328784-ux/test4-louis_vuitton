package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface BringIntoViewSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f4424a = Companion.f4425a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f4425a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final SpringSpec f4426b = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1 f4427c = new BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1();
    }

    default float a(float f2, float f3, float f4) {
        f4424a.getClass();
        float f5 = f3 + f2;
        if ((f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f5 <= f4) || (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM && f5 > f4)) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f6 = f5 - f4;
        return Math.abs(f2) < Math.abs(f6) ? f2 : f6;
    }
}
