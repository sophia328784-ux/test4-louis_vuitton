package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Adaptation;", "", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Adaptation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8945b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Adaptation$Companion$Bradford$1 f8946c = new Adaptation$Companion$Bradford$1(new float[]{0.8951f, -0.7502f, 0.0389f, 0.2664f, 1.7135f, -0.0685f, -0.1614f, 0.0367f, 1.0296f}, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f8947a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Adaptation$Companion$VonKries$1(new float[]{0.40024f, -0.2263f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.7076f, 1.16532f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -0.08081f, 0.0457f, 0.91822f}, null);
        new Adaptation$Companion$Ciecat02$1(new float[]{0.7328f, -0.7036f, 0.003f, 0.4296f, 1.6975f, 0.0136f, -0.1624f, 0.0061f, 0.9834f}, null);
    }

    public Adaptation(float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8947a = fArr;
    }
}
