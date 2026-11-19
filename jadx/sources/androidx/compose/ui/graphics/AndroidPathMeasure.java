package androidx.compose.ui.graphics;

import defpackage.mt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/AndroidPathMeasure;", "Landroidx/compose/ui/graphics/PathMeasure;", "Landroid/graphics/PathMeasure;", "internalPathMeasure", "<init>", "(Landroid/graphics/PathMeasure;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidPathMeasure implements PathMeasure {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.graphics.PathMeasure f8845a;

    public AndroidPathMeasure(android.graphics.PathMeasure pathMeasure) {
        this.f8845a = pathMeasure;
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public final boolean a(float f2, float f3, AndroidPath androidPath) {
        if (androidPath != null) {
            return this.f8845a.getSegment(f2, f3, androidPath.f8841a, true);
        }
        mt.i("Unable to obtain android.graphics.Path");
        return false;
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public final void b(AndroidPath androidPath) {
        this.f8845a.setPath(androidPath != null ? androidPath.f8841a : null, false);
    }

    @Override // androidx.compose.ui.graphics.PathMeasure
    public final float getLength() {
        return this.f8845a.getLength();
    }
}
