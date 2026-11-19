package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import defpackage.yt0;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0003²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Offset;", "animatedCenter", "targetValue", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionMagnifierKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AnimationVector2D f6432a = new AnimationVector2D(Float.NaN, Float.NaN);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TwoWayConverter f6433b = VectorConvertersKt.a(new yt0(23), new yt0(24));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f6434c;
    public static final SpringSpec d;

    static {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(0.01f)) << 32) | (((long) Float.floatToRawIntBits(0.01f)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        f6434c = jFloatToRawIntBits;
        d = new SpringSpec(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, new Offset(jFloatToRawIntBits), 3, null);
    }
}
