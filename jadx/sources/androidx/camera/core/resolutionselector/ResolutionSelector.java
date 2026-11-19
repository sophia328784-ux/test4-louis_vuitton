package androidx.camera.core.resolutionselector;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ResolutionSelector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AspectRatioStrategy f2633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResolutionStrategy f2634b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AllowedResolutionMode {
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AspectRatioStrategy f2635a = AspectRatioStrategy.f2630c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ResolutionStrategy f2636b = null;
    }

    public ResolutionSelector(AspectRatioStrategy aspectRatioStrategy, ResolutionStrategy resolutionStrategy) {
        this.f2633a = aspectRatioStrategy;
        this.f2634b = resolutionStrategy;
    }
}
