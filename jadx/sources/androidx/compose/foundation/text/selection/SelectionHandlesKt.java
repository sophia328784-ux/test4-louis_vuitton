package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SelectionHandlesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f6429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SemanticsPropertyKey f6431c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6429a = 25.0f;
        f6430b = 25.0f;
        f6431c = new SemanticsPropertyKey("SelectionHandleInfo", (Function2) null, 2, (DefaultConstructorMarker) null);
    }

    public static final long a(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - 1.0f)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }
}
