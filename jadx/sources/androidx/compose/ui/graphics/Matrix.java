package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/Matrix;", "", "Companion", "values", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Matrix {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f8900b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f8901a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/graphics/Matrix$Companion;", "", "", "ScaleX", "I", "SkewY", "Perspective0", "SkewX", "ScaleY", "Perspective1", "ScaleZ", "TranslateX", "TranslateY", "TranslateZ", "Perspective2", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public static float[] a() {
        return new float[]{1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
    }

    public static final long b(long j2, float[] fArr) {
        if (fArr.length < 16) {
            return j2;
        }
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[7];
        float f8 = fArr[12];
        float f9 = fArr[13];
        float f10 = fArr[15];
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        float f11 = 1.0f / (((f7 * fIntBitsToFloat2) + (f4 * fIntBitsToFloat)) + f10);
        if ((Float.floatToRawIntBits(f11) & Integer.MAX_VALUE) >= 2139095040) {
            f11 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float f12 = f6 * fIntBitsToFloat2;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits((((f5 * fIntBitsToFloat2) + (f2 * fIntBitsToFloat)) + f8) * f11)) << 32) | (((long) Float.floatToRawIntBits((f12 + (f3 * fIntBitsToFloat) + f9) * f11)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public static final void c(float[] fArr, MutableRect mutableRect) {
        if (fArr.length < 16) {
            return;
        }
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[7];
        float f8 = fArr[12];
        float f9 = fArr[13];
        float f10 = fArr[15];
        float f11 = mutableRect.f8803a;
        float f12 = mutableRect.f8804b;
        float f13 = mutableRect.f8805c;
        float f14 = mutableRect.d;
        float f15 = f4 * f11;
        float f16 = f7 * f12;
        float f17 = 1.0f / ((f15 + f16) + f10);
        int iFloatToRawIntBits = Float.floatToRawIntBits(f17) & Integer.MAX_VALUE;
        float f18 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (iFloatToRawIntBits >= 2139095040) {
            f17 = 0.0f;
        }
        float f19 = f2 * f11;
        float f20 = f5 * f12;
        float f21 = (f19 + f20 + f8) * f17;
        float f22 = f11 * f3;
        float f23 = f12 * f6;
        float f24 = (f22 + f23 + f9) * f17;
        float f25 = f7 * f14;
        float f26 = 1.0f / ((f15 + f25) + f10);
        if ((Float.floatToRawIntBits(f26) & Integer.MAX_VALUE) >= 2139095040) {
            f26 = 0.0f;
        }
        float f27 = f5 * f14;
        float f28 = (f19 + f27 + f8) * f26;
        float f29 = f6 * f14;
        float f30 = (f22 + f29 + f9) * f26;
        float f31 = f4 * f13;
        float f32 = 1.0f / ((f16 + f31) + f10);
        if ((Float.floatToRawIntBits(f32) & Integer.MAX_VALUE) >= 2139095040) {
            f32 = 0.0f;
        }
        float f33 = f2 * f13;
        float f34 = (f33 + f20 + f8) * f32;
        float f35 = f13 * f3;
        float f36 = (f23 + f35 + f9) * f32;
        float f37 = 1.0f / ((f31 + f25) + f10);
        if ((Float.floatToRawIntBits(f37) & Integer.MAX_VALUE) < 2139095040) {
            f18 = f37;
        }
        float f38 = (f33 + f27 + f8) * f18;
        float f39 = (f35 + f29 + f9) * f18;
        mutableRect.f8803a = Math.min(f21, Math.min(f28, Math.min(f34, f38)));
        mutableRect.f8804b = Math.min(f24, Math.min(f30, Math.min(f36, f39)));
        mutableRect.f8805c = Math.max(f21, Math.max(f28, Math.max(f34, f38)));
        mutableRect.d = Math.max(f24, Math.max(f30, Math.max(f36, f39)));
    }

    public static final void d(float[] fArr) {
        if (fArr.length < 16) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public static final void e(float[] fArr, float[] fArr2) {
        if (fArr.length >= 16 && fArr2.length >= 16) {
            float f2 = fArr[0];
            float f3 = fArr2[0];
            float f4 = fArr[1];
            float f5 = fArr2[4];
            float f6 = fArr[2];
            float f7 = fArr2[8];
            float f8 = f6 * f7;
            float f9 = fArr[3];
            float f10 = fArr2[12];
            float f11 = f9 * f10;
            float f12 = f11 + f8 + (f4 * f5) + (f2 * f3);
            float f13 = fArr2[1];
            float f14 = fArr2[5];
            float f15 = fArr2[9];
            float f16 = f6 * f15;
            float f17 = fArr2[13];
            float f18 = f9 * f17;
            float f19 = f18 + f16 + (f4 * f14) + (f2 * f13);
            float f20 = fArr2[2];
            float f21 = fArr2[6];
            float f22 = fArr2[10];
            float f23 = f6 * f22;
            float f24 = fArr2[14];
            float f25 = f9 * f24;
            float f26 = f25 + f23 + (f4 * f21) + (f2 * f20);
            float f27 = fArr2[3];
            float f28 = fArr2[7];
            float f29 = fArr2[11];
            float f30 = f6 * f29;
            float f31 = fArr2[15];
            float f32 = f9 * f31;
            float f33 = f32 + f30 + (f4 * f28) + (f2 * f27);
            float f34 = fArr[4];
            float f35 = fArr[5];
            float f36 = fArr[6];
            float f37 = (f36 * f7) + (f35 * f5) + (f34 * f3);
            float f38 = fArr[7];
            float f39 = (f38 * f10) + f37;
            float f40 = (f38 * f17) + (f36 * f15) + (f35 * f14) + (f34 * f13);
            float f41 = (f38 * f24) + (f36 * f22) + (f35 * f21) + (f34 * f20);
            float f42 = f36 * f29;
            float f43 = f38 * f31;
            float f44 = f43 + f42 + (f35 * f28) + (f34 * f27);
            float f45 = fArr[8];
            float f46 = fArr[9];
            float f47 = fArr[10];
            float f48 = (f47 * f7) + (f46 * f5) + (f45 * f3);
            float f49 = fArr[11];
            float f50 = (f49 * f10) + f48;
            float f51 = (f49 * f17) + (f47 * f15) + (f46 * f14) + (f45 * f13);
            float f52 = (f49 * f24) + (f47 * f22) + (f46 * f21) + (f45 * f20);
            float f53 = f47 * f29;
            float f54 = f49 * f31;
            float f55 = f54 + f53 + (f46 * f28) + (f45 * f27);
            float f56 = fArr[12];
            float f57 = fArr[13];
            float f58 = (f5 * f57) + (f3 * f56);
            float f59 = fArr[14];
            float f60 = (f7 * f59) + f58;
            float f61 = fArr[15];
            float f62 = (f10 * f61) + f60;
            float f63 = f15 * f59;
            float f64 = f17 * f61;
            float f65 = f64 + f63 + (f14 * f57) + (f13 * f56);
            float f66 = f22 * f59;
            float f67 = f24 * f61;
            float f68 = f67 + f66 + (f21 * f57) + (f20 * f56);
            float f69 = f59 * f29;
            float f70 = f61 * f31;
            fArr[0] = f12;
            fArr[1] = f19;
            fArr[2] = f26;
            fArr[3] = f33;
            fArr[4] = f39;
            fArr[5] = f40;
            fArr[6] = f41;
            fArr[7] = f44;
            fArr[8] = f50;
            fArr[9] = f51;
            fArr[10] = f52;
            fArr[11] = f55;
            fArr[12] = f62;
            fArr[13] = f65;
            fArr[14] = f68;
            fArr[15] = f70 + f69 + (f57 * f28) + (f56 * f27);
        }
    }

    public static final void f(float f2, float f3, float[] fArr) {
        if (fArr.length < 16) {
            return;
        }
        float f4 = (fArr[8] * Call.Parameters.DEFAULT_CAMERA_ZOOM) + (fArr[4] * f3) + (fArr[0] * f2) + fArr[12];
        float f5 = (fArr[9] * Call.Parameters.DEFAULT_CAMERA_ZOOM) + (fArr[5] * f3) + (fArr[1] * f2) + fArr[13];
        float f6 = (fArr[10] * Call.Parameters.DEFAULT_CAMERA_ZOOM) + (fArr[6] * f3) + (fArr[2] * f2) + fArr[14];
        float f7 = (fArr[11] * Call.Parameters.DEFAULT_CAMERA_ZOOM) + (fArr[7] * f3) + (fArr[3] * f2) + fArr[15];
        fArr[12] = f4;
        fArr[13] = f5;
        fArr[14] = f6;
        fArr[15] = f7;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Matrix) {
            return Intrinsics.c(this.f8901a, ((Matrix) obj).f8901a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f8901a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |");
        float[] fArr = this.f8901a;
        sb.append(fArr[0]);
        sb.append(' ');
        sb.append(fArr[1]);
        sb.append(' ');
        sb.append(fArr[2]);
        sb.append(' ');
        sb.append(fArr[3]);
        sb.append("|\n            |");
        sb.append(fArr[4]);
        sb.append(' ');
        sb.append(fArr[5]);
        sb.append(' ');
        sb.append(fArr[6]);
        sb.append(' ');
        sb.append(fArr[7]);
        sb.append("|\n            |");
        sb.append(fArr[8]);
        sb.append(' ');
        sb.append(fArr[9]);
        sb.append(' ');
        sb.append(fArr[10]);
        sb.append(' ');
        sb.append(fArr[11]);
        sb.append("|\n            |");
        sb.append(fArr[12]);
        sb.append(' ');
        sb.append(fArr[13]);
        sb.append(' ');
        sb.append(fArr[14]);
        sb.append(' ');
        sb.append(fArr[15]);
        sb.append("|\n        ");
        return StringsKt.b0(sb.toString());
    }
}
