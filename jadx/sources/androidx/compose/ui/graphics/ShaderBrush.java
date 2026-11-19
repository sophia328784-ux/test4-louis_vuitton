package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/ShaderBrush;", "Landroidx/compose/ui/graphics/Brush;", "<init>", "()V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ShaderBrush extends Brush {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TransformShader f8923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f8924c;

    public ShaderBrush() {
        super(null);
        Size.f8820b.getClass();
        this.f8924c = Size.f8821c;
    }

    @Override // androidx.compose.ui.graphics.Brush
    public final void a(float f2, long j2, Paint paint) {
        TransformShader transformShader = this.f8923b;
        if (transformShader == null || !Size.a(this.f8924c, j2)) {
            if (Size.e(j2)) {
                this.f8923b = null;
                Size.f8820b.getClass();
                this.f8924c = Size.f8821c;
                transformShader = null;
            } else {
                transformShader = this.f8923b;
                if (transformShader == null) {
                    transformShader = new TransformShader();
                    this.f8923b = transformShader;
                }
                transformShader.f8944a = b(j2);
                this.f8923b = transformShader;
                this.f8924c = j2;
            }
        }
        long jB = paint.b();
        Color.f8866b.getClass();
        long j3 = Color.f8867c;
        if (!Color.c(jB, j3)) {
            paint.c(j3);
        }
        if (!Intrinsics.c(paint.g(), transformShader != null ? transformShader.f8944a : null)) {
            paint.f(transformShader != null ? transformShader.f8944a : null);
        }
        if (paint.a() == f2) {
            return;
        }
        paint.d(f2);
    }

    public abstract Shader b(long j2);
}
