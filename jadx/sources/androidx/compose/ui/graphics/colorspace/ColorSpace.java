package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import com.batch.android.s.b;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001:\u0001\u000bB!\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "", "", "name", "Landroidx/compose/ui/graphics/colorspace/ColorModel;", "model", "", b.a.f24015b, "<init>", "(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V", "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ColorSpace {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f8952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8954c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/ColorSpace$Companion;", "", "", "MinId", "I", "MaxId", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ColorSpace(String str, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f8952a = str;
        this.f8953b = j2;
        this.f8954c = i2;
        if (str.length() == 0) {
            md.n("The name of a color space cannot be null and must contain at least 1 character");
            throw null;
        }
        if (i2 < -1 || i2 > 63) {
            md.n("The id must be between -1 and 63");
            throw null;
        }
    }

    public abstract float[] a(float[] fArr);

    public abstract float b(int i2);

    public abstract float c(int i2);

    /* JADX INFO: renamed from: d */
    public boolean getQ() {
        return false;
    }

    public long e(float f2, float f3, float f4) {
        float[] fArrF = f(new float[]{f2, f3, f4});
        return (((long) Float.floatToRawIntBits(fArrF[0])) << 32) | (BodyPartID.bodyIdMax & ((long) Float.floatToRawIntBits(fArrF[1])));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ColorSpace colorSpace = (ColorSpace) obj;
        if (this.f8954c == colorSpace.f8954c && Intrinsics.c(this.f8952a, colorSpace.f8952a)) {
            return ColorModel.a(this.f8953b, colorSpace.f8953b);
        }
        return false;
    }

    public abstract float[] f(float[] fArr);

    public float g(float f2, float f3, float f4) {
        return f(new float[]{f2, f3, f4})[2];
    }

    public long h(float f2, float f3, float f4, float f5, ColorSpace colorSpace) {
        ColorModel.Companion companion = ColorModel.f8948a;
        float[] fArr = new float[(int) (this.f8953b >> 32)];
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        float[] fArrA = a(fArr);
        return ColorKt.a(fArrA[0], fArrA[1], fArrA[2], f5, colorSpace);
    }

    public int hashCode() {
        int iHashCode = this.f8952a.hashCode() * 31;
        ColorModel.Companion companion = ColorModel.f8948a;
        return fc.a(iHashCode, 31, this.f8953b) + this.f8954c;
    }

    public final String toString() {
        return this.f8952a + " (id=" + this.f8954c + ", model=" + ((Object) ColorModel.b(this.f8953b)) + ')';
    }

    public ColorSpace(String str, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j2, -1, null);
    }
}
