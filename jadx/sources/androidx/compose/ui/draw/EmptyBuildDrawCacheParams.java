package androidx.compose.ui.draw;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;", "Landroidx/compose/ui/draw/BuildDrawCacheParams;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EmptyBuildDrawCacheParams implements BuildDrawCacheParams {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EmptyBuildDrawCacheParams f8713b = new EmptyBuildDrawCacheParams();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f8714c;
    public static final LayoutDirection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Density f8715e;

    static {
        Size.f8820b.getClass();
        f8714c = Size.f8821c;
        d = LayoutDirection.Ltr;
        f8715e = DensityKt.a(1.0f, 1.0f);
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final long b() {
        return f8714c;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final Density getDensity() {
        return f8715e;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final LayoutDirection getLayoutDirection() {
        return d;
    }
}
