package androidx.compose.ui.graphics;

import android.graphics.RectF;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import defpackage.mt;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/AndroidPath;", "Landroidx/compose/ui/graphics/Path;", "Landroid/graphics/Path;", "internalPath", "<init>", "(Landroid/graphics/Path;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidPath implements Path {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.graphics.Path f8841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RectF f8842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float[] f8843c;
    public android.graphics.Matrix d;

    public /* synthetic */ AndroidPath(android.graphics.Path path, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new android.graphics.Path() : path);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void a(float f2, float f3) {
        this.f8841a.moveTo(f2, f3);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void b(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f8841a.cubicTo(f2, f3, f4, f5, f6, f7);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void c(float f2, float f3) {
        this.f8841a.lineTo(f2, f3);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void close() {
        this.f8841a.close();
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void d(float f2, float f3) {
        this.f8841a.rMoveTo(f2, f3);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void e(float f2, float f3, float f4, float f5, float f6, float f7) {
        this.f8841a.rCubicTo(f2, f3, f4, f5, f6, f7);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void f(float f2, float f3, float f4, float f5) {
        this.f8841a.quadTo(f2, f3, f4, f5);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void g(float f2, float f3, float f4, float f5) {
        this.f8841a.rQuadTo(f2, f3, f4, f5);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final Rect getBounds() {
        if (this.f8842b == null) {
            this.f8842b = new RectF();
        }
        RectF rectF = this.f8842b;
        rectF.getClass();
        this.f8841a.computeBounds(rectF, true);
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void h(int i2) {
        PathFillType.f8908a.getClass();
        this.f8841a.setFillType(i2 == PathFillType.f8909b ? android.graphics.Path.FillType.EVEN_ODD : android.graphics.Path.FillType.WINDING);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void i(float f2, float f3, float f4, float f5) {
        this.f8841a.quadTo(f2, f3, f4, f5);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void j(Rect rect, Path.Direction direction) {
        android.graphics.Path.Direction direction2;
        float f2 = rect.f8811a;
        float f3 = rect.d;
        float f4 = rect.f8813c;
        float f5 = rect.f8812b;
        if (Float.isNaN(f2) || Float.isNaN(f5) || Float.isNaN(f4) || Float.isNaN(f3)) {
            AndroidPath_androidKt.b("Invalid rectangle, make sure no value is NaN");
        }
        if (this.f8842b == null) {
            this.f8842b = new RectF();
        }
        RectF rectF = this.f8842b;
        rectF.getClass();
        rectF.set(rect.f8811a, f5, f4, f3);
        RectF rectF2 = this.f8842b;
        rectF2.getClass();
        int i2 = AndroidPath_androidKt.WhenMappings.f8846a[direction.ordinal()];
        if (i2 == 1) {
            direction2 = android.graphics.Path.Direction.CCW;
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            direction2 = android.graphics.Path.Direction.CW;
        }
        this.f8841a.addRect(rectF2, direction2);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void k() {
        this.f8841a.rewind();
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void l(float f2, float f3, float f4, float f5) {
        this.f8841a.rQuadTo(f2, f3, f4, f5);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final int m() {
        if (this.f8841a.getFillType() == android.graphics.Path.FillType.EVEN_ODD) {
            PathFillType.f8908a.getClass();
            return PathFillType.f8909b;
        }
        PathFillType.f8908a.getClass();
        return 0;
    }

    @Override // androidx.compose.ui.graphics.Path
    public final boolean p(Path path, Path path2, int i2) {
        android.graphics.Path.Op op;
        PathOperation.f8910a.getClass();
        if (i2 == 0) {
            op = android.graphics.Path.Op.DIFFERENCE;
        } else if (i2 == PathOperation.f8911b) {
            op = android.graphics.Path.Op.INTERSECT;
        } else if (i2 == PathOperation.d) {
            op = android.graphics.Path.Op.REVERSE_DIFFERENCE;
        } else {
            op = i2 == PathOperation.f8912c ? android.graphics.Path.Op.UNION : android.graphics.Path.Op.XOR;
        }
        if (!(path instanceof AndroidPath)) {
            mt.i("Unable to obtain android.graphics.Path");
            return false;
        }
        android.graphics.Path path3 = ((AndroidPath) path).f8841a;
        if (path2 instanceof AndroidPath) {
            return this.f8841a.op(path3, ((AndroidPath) path2).f8841a, op);
        }
        mt.i("Unable to obtain android.graphics.Path");
        return false;
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void q(float f2, float f3) {
        this.f8841a.rLineTo(f2, f3);
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void reset() {
        this.f8841a.reset();
    }

    @Override // androidx.compose.ui.graphics.Path
    public final void s(RoundRect roundRect, Path.Direction direction) {
        android.graphics.Path.Direction direction2;
        if (this.f8842b == null) {
            this.f8842b = new RectF();
        }
        RectF rectF = this.f8842b;
        rectF.getClass();
        float f2 = roundRect.f8814a;
        long j2 = roundRect.f8819h;
        long j3 = roundRect.g;
        long j4 = roundRect.f8818f;
        long j5 = roundRect.f8817e;
        rectF.set(f2, roundRect.f8815b, roundRect.f8816c, roundRect.d);
        if (this.f8843c == null) {
            this.f8843c = new float[8];
        }
        float[] fArr = this.f8843c;
        fArr.getClass();
        fArr[0] = Float.intBitsToFloat((int) (j5 >> 32));
        fArr[1] = Float.intBitsToFloat((int) (j5 & BodyPartID.bodyIdMax));
        fArr[2] = Float.intBitsToFloat((int) (j4 >> 32));
        fArr[3] = Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax));
        fArr[4] = Float.intBitsToFloat((int) (j3 >> 32));
        fArr[5] = Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax));
        fArr[6] = Float.intBitsToFloat((int) (j2 >> 32));
        fArr[7] = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        RectF rectF2 = this.f8842b;
        rectF2.getClass();
        float[] fArr2 = this.f8843c;
        fArr2.getClass();
        int i2 = AndroidPath_androidKt.WhenMappings.f8846a[direction.ordinal()];
        if (i2 == 1) {
            direction2 = android.graphics.Path.Direction.CCW;
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            direction2 = android.graphics.Path.Direction.CW;
        }
        this.f8841a.addRoundRect(rectF2, fArr2, direction2);
    }

    public final void t(long j2) {
        android.graphics.Matrix matrix = this.d;
        if (matrix == null) {
            this.d = new android.graphics.Matrix();
        } else {
            matrix.getClass();
            matrix.reset();
        }
        android.graphics.Matrix matrix2 = this.d;
        matrix2.getClass();
        matrix2.setTranslate(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)));
        android.graphics.Matrix matrix3 = this.d;
        matrix3.getClass();
        this.f8841a.transform(matrix3);
    }

    public AndroidPath(android.graphics.Path path) {
        this.f8841a = path;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidPath() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
