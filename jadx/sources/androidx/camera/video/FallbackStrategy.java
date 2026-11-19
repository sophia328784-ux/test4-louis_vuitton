package androidx.camera.video;

/* JADX INFO: loaded from: classes.dex */
public abstract class FallbackStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FallbackStrategy f2757a = new AutoValue_FallbackStrategy_RuleStrategy(Quality.g, 0);

    public static abstract class RuleStrategy extends FallbackStrategy {
    }

    public static FallbackStrategy a(Quality quality) {
        return new AutoValue_FallbackStrategy_RuleStrategy(quality, 3);
    }
}
