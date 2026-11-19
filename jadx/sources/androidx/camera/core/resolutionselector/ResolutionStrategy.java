package androidx.camera.core.resolutionselector;

import android.util.Size;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ResolutionStrategy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ResolutionStrategy f2637c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Size f2638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2639b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ResolutionFallbackRule {
    }

    static {
        ResolutionStrategy resolutionStrategy = new ResolutionStrategy();
        resolutionStrategy.f2638a = null;
        resolutionStrategy.f2639b = 0;
        f2637c = resolutionStrategy;
    }

    public ResolutionStrategy(Size size, int i2) {
        this.f2638a = size;
        this.f2639b = i2;
    }
}
