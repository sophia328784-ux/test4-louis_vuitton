package androidx.compose.ui.graphics.colorspace;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Illuminant;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Illuminant {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WhitePoint f8971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WhitePoint f8972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final WhitePoint f8973c;
    public static final WhitePoint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float[] f8974e;

    static {
        new WhitePoint(0.44757f, 0.40745f);
        new WhitePoint(0.34842f, 0.35161f);
        f8971a = new WhitePoint(0.31006f, 0.31616f);
        f8972b = new WhitePoint(0.34567f, 0.3585f);
        new WhitePoint(0.33242f, 0.34743f);
        f8973c = new WhitePoint(0.32168f, 0.33767f);
        d = new WhitePoint(0.31271f, 0.32902f);
        new WhitePoint(0.29902f, 0.31485f);
        new WhitePoint(0.33333f, 0.33333f);
        f8974e = new float[]{0.964212f, 1.0f, 0.825188f};
    }
}
