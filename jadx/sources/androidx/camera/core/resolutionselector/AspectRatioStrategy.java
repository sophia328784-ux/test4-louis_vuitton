package androidx.camera.core.resolutionselector;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class AspectRatioStrategy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AspectRatioStrategy f2630c = new AspectRatioStrategy(0, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2632b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AspectRatioFallbackRule {
    }

    static {
        new AspectRatioStrategy(1, 1);
    }

    public AspectRatioStrategy(int i2, int i3) {
        this.f2631a = i2;
        this.f2632b = i3;
    }
}
