package androidx.media3.exoplayer;

import com.google.common.collect.ImmutableSet;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ScrubbingModeParameters {
    public static final ScrubbingModeParameters g = new ScrubbingModeParameters(new Builder());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableSet f14785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f14786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f14787c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f14789f;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableSet f14790a = ImmutableSet.r(2, 1, 5);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14791b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14792c = true;
        public final boolean d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f14793e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f14794f = true;
    }

    public ScrubbingModeParameters(Builder builder) {
        this.f14785a = builder.f14790a;
        this.f14786b = builder.f14791b;
        this.f14787c = builder.f14792c;
        this.f14789f = builder.d;
        this.d = builder.f14793e;
        this.f14788e = builder.f14794f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ScrubbingModeParameters)) {
            return false;
        }
        ScrubbingModeParameters scrubbingModeParameters = (ScrubbingModeParameters) obj;
        return this.f14785a.equals(scrubbingModeParameters.f14785a) && this.f14787c == scrubbingModeParameters.f14787c && this.f14789f == scrubbingModeParameters.f14789f && this.f14786b == scrubbingModeParameters.f14786b && this.d == scrubbingModeParameters.d && this.f14788e == scrubbingModeParameters.f14788e;
    }

    public final int hashCode() {
        return Objects.hash(this.f14785a, null, null, Boolean.valueOf(this.f14786b), Boolean.valueOf(this.f14787c), Boolean.valueOf(this.f14789f), Boolean.valueOf(this.d), Boolean.valueOf(this.f14788e));
    }
}
