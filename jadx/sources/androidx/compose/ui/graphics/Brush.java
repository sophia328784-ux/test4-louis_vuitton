package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/Brush;", "", "Companion", "Landroidx/compose/ui/graphics/ShaderBrush;", "Landroidx/compose/ui/graphics/SolidColor;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Brush {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8862a = new Companion(null);

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/Brush$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static LinearGradient a(Companion companion, List list, float f2, float f3, int i2) {
            float f4 = (i2 & 2) != 0 ? 0.0f : f2;
            float f5 = (i2 & 4) != 0 ? Float.POSITIVE_INFINITY : f3;
            TileMode.f8938a.getClass();
            companion.getClass();
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f4)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            return new LinearGradient(list, null, jFloatToRawIntBits, (((long) Float.floatToRawIntBits(f5)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax), 0, null);
        }

        public static LinearGradient b(Companion companion, List list, float f2, float f3, int i2) {
            float f4 = (i2 & 2) != 0 ? 0.0f : f2;
            float f5 = (i2 & 4) != 0 ? Float.POSITIVE_INFINITY : f3;
            TileMode.f8938a.getClass();
            companion.getClass();
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(f4)) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            return new LinearGradient(list, null, jFloatToRawIntBits, (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(f5)) & BodyPartID.bodyIdMax), 0, null);
        }

        public static LinearGradient c(Companion companion, Pair[] pairArr) {
            TileMode.f8938a.getClass();
            companion.getClass();
            Pair[] pairArr2 = (Pair[]) Arrays.copyOf(pairArr, pairArr.length);
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(Float.POSITIVE_INFINITY)) & BodyPartID.bodyIdMax);
            ArrayList arrayList = new ArrayList(pairArr2.length);
            for (Pair pair : pairArr2) {
                arrayList.add(new Color(((Color) pair.f71706c).f8872a));
            }
            ArrayList arrayList2 = new ArrayList(pairArr2.length);
            for (Pair pair2 : pairArr2) {
                arrayList2.add(Float.valueOf(((Number) pair2.f71705b).floatValue()));
            }
            return new LinearGradient(arrayList, arrayList2, jFloatToRawIntBits, jFloatToRawIntBits2, 0, null);
        }
    }

    public Brush(DefaultConstructorMarker defaultConstructorMarker) {
        Size.f8820b.getClass();
    }

    public abstract void a(float f2, long j2, Paint paint);
}
