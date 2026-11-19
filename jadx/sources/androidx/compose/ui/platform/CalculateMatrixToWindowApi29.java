package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;", "Landroidx/compose/ui/platform/CalculateMatrixToWindow;", "<init>", "()V", "Landroid/view/View;", "view", "Landroidx/compose/ui/graphics/Matrix;", "matrix", "", "a", "(Landroid/view/View;[F)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CalculateMatrixToWindowApi29 implements CalculateMatrixToWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matrix f9982a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f9983b = new int[2];

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    public void a(View view, float[] matrix) {
        Matrix matrix2 = this.f9982a;
        matrix2.reset();
        view.transformMatrixToGlobal(matrix2);
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            view = parent;
            parent = view.getParent();
        }
        int[] iArr = this.f9983b;
        view.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        view.getLocationInWindow(iArr);
        matrix2.postTranslate(iArr[0] - i2, iArr[1] - i3);
        AndroidMatrixConversions_androidKt.b(matrix2, matrix);
    }
}
