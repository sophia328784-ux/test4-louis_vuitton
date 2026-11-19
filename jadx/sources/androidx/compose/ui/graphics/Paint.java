package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.Metadata;
import kotlin.NotImplementedError;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/graphics/Paint;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface Paint {
    float a();

    long b();

    void c(long j2);

    void d(float f2);

    default android.graphics.Paint e() {
        throw new NotImplementedError(null, 1, null);
    }

    void f(Shader shader);

    Shader g();
}
