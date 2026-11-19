package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Offset;
import defpackage.fc;
import defpackage.md;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BC\b\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/graphics/LinearGradient;", "Landroidx/compose/ui/graphics/ShaderBrush;", "Landroidx/compose/ui/graphics/Interpolatable;", "", "Landroidx/compose/ui/graphics/Color;", "colors", "", "stops", "Landroidx/compose/ui/geometry/Offset;", "start", "end", "Landroidx/compose/ui/graphics/TileMode;", "tileMode", "<init>", "(Ljava/util/List;Ljava/util/List;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LinearGradient extends ShaderBrush implements Interpolatable {
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f8897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f8898f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8899h;

    /* JADX WARN: Illegal instructions before constructor call */
    public LinearGradient(List list, List list2, long j2, long j3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        int i4;
        List list3 = (i3 & 2) != 0 ? null : list2;
        if ((i3 & 16) != 0) {
            TileMode.f8938a.getClass();
            i4 = 0;
        } else {
            i4 = i2;
        }
        this(list, list3, j2, j3, i4, null);
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    public final Shader b(long j2) {
        long j3 = this.f8898f;
        int i2 = (int) (j3 >> 32);
        if (Float.intBitsToFloat(i2) == Float.POSITIVE_INFINITY) {
            i2 = (int) (j2 >> 32);
        }
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        int i3 = (int) (j3 & BodyPartID.bodyIdMax);
        if (Float.intBitsToFloat(i3) == Float.POSITIVE_INFINITY) {
            i3 = (int) (j2 & BodyPartID.bodyIdMax);
        }
        float fIntBitsToFloat2 = Float.intBitsToFloat(i3);
        long j4 = this.g;
        int i4 = (int) (j4 >> 32);
        if (Float.intBitsToFloat(i4) == Float.POSITIVE_INFINITY) {
            i4 = (int) (j2 >> 32);
        }
        float fIntBitsToFloat3 = Float.intBitsToFloat(i4);
        int i5 = (int) (j4 & BodyPartID.bodyIdMax);
        if (Float.intBitsToFloat(i5) == Float.POSITIVE_INFINITY) {
            i5 = (int) (j2 & BodyPartID.bodyIdMax);
        }
        float fIntBitsToFloat4 = Float.intBitsToFloat(i5);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat4)) & BodyPartID.bodyIdMax);
        List list = this.d;
        List list2 = this.f8897e;
        if (list2 == null) {
            if (list.size() < 2) {
                md.n("colors must have length of at least 2 if colorStops is omitted.");
            }
        } else if (list.size() != list2.size()) {
            md.n("colors and colorStops arguments must have equal length.");
        }
        float fIntBitsToFloat5 = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
        float fIntBitsToFloat6 = Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax));
        float fIntBitsToFloat7 = Float.intBitsToFloat((int) (jFloatToRawIntBits2 >> 32));
        float fIntBitsToFloat8 = Float.intBitsToFloat((int) (jFloatToRawIntBits2 & BodyPartID.bodyIdMax));
        int size = list.size();
        int[] iArr = new int[size];
        for (int i6 = 0; i6 < size; i6++) {
            iArr[i6] = ColorKt.i(((Color) list.get(i6)).f8872a);
        }
        return new android.graphics.LinearGradient(fIntBitsToFloat5, fIntBitsToFloat6, fIntBitsToFloat7, fIntBitsToFloat8, iArr, list2 != null ? CollectionsKt.v0(list2) : null, AndroidTileMode_androidKt.a(this.f8899h));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinearGradient)) {
            return false;
        }
        LinearGradient linearGradient = (LinearGradient) obj;
        if (!Intrinsics.c(this.d, linearGradient.d) || !Intrinsics.c(this.f8897e, linearGradient.f8897e) || !Offset.c(this.f8898f, linearGradient.f8898f) || !Offset.c(this.g, linearGradient.g)) {
            return false;
        }
        int i2 = linearGradient.f8899h;
        TileMode.Companion companion = TileMode.f8938a;
        return this.f8899h == i2;
    }

    public final int hashCode() {
        int iHashCode = this.d.hashCode() * 31;
        List list = this.f8897e;
        int iHashCode2 = (iHashCode + (list != null ? list.hashCode() : 0)) * 31;
        Offset.Companion companion = Offset.f8806b;
        int iA = fc.a(fc.a(iHashCode2, 31, this.f8898f), 31, this.g);
        TileMode.Companion companion2 = TileMode.f8938a;
        return Integer.hashCode(this.f8899h) + iA;
    }

    public final String toString() {
        String str;
        long j2 = this.f8898f;
        String str2 = "";
        if (((((j2 & 9187343241974906880L) ^ 9187343241974906880L) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str = "start=" + ((Object) Offset.h(j2)) + ", ";
        } else {
            str = "";
        }
        long j3 = this.g;
        if (((((j3 & 9187343241974906880L) ^ 9187343241974906880L) - 4294967297L) & (-9223372034707292160L)) == 0) {
            str2 = "end=" + ((Object) Offset.h(j3)) + ", ";
        }
        StringBuilder sb = new StringBuilder("LinearGradient(colors=");
        sb.append(this.d);
        sb.append(", stops=");
        o60.B(", ", str, str2, sb, this.f8897e);
        sb.append("tileMode=");
        sb.append((Object) TileMode.a(this.f8899h));
        sb.append(')');
        return sb.toString();
    }

    public LinearGradient(List list, List list2, long j2, long j3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.d = list;
        this.f8897e = list2;
        this.f8898f = j2;
        this.g = j3;
        this.f8899h = i2;
    }
}
