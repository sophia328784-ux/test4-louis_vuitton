package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.MatrixKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B?\u00126\u0010\n\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0003¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/platform/LayerMatrixCache;", "T", "", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "target", "Landroid/graphics/Matrix;", "matrix", "", "getMatrix", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LayerMatrixCache<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function2 f10107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Matrix f10108b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10111f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f10109c = androidx.compose.ui.graphics.Matrix.a();
    public final float[] d = androidx.compose.ui.graphics.Matrix.a();
    public boolean g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10112h = true;

    public LayerMatrixCache(Function2<? super T, ? super Matrix, Unit> function2) {
        this.f10107a = function2;
    }

    public final float[] a(ViewLayer viewLayer) {
        boolean z = this.f10111f;
        float[] fArr = this.d;
        if (z) {
            this.g = InvertMatrixKt.a(b(viewLayer), fArr);
            this.f10111f = false;
        }
        if (this.g) {
            return fArr;
        }
        return null;
    }

    public final float[] b(ViewLayer viewLayer) {
        boolean z = this.f10110e;
        float[] fArr = this.f10109c;
        if (!z) {
            return fArr;
        }
        Matrix matrix = this.f10108b;
        if (matrix == null) {
            matrix = new Matrix();
            this.f10108b = matrix;
        }
        this.f10107a.invoke(viewLayer, matrix);
        AndroidMatrixConversions_androidKt.b(matrix, fArr);
        this.f10110e = false;
        this.f10112h = MatrixKt.a(fArr);
        return fArr;
    }
}
