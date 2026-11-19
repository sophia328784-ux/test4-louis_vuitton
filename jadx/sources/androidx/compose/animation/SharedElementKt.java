package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SharedElementKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3672a = 0;

    static {
        AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new Offset((((long) Float.floatToRawIntBits(3.0f)) << 32) | (((long) Float.floatToRawIntBits(3.0f)) & BodyPartID.bodyIdMax)));
    }
}
