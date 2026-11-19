package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class ShadeFinderDeltaE {
    public static final float DEFAULT_BEST_MATCH_DELTA_E = 3.0f;
    public static final float DEFAULT_NEIGHBOR_DELTA_E = 3.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f39847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f39848b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f39849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f39850b;

        public final Builder bestMatch(float f2) {
            Preconditions.g(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM, "bestMatch < 0");
            this.f39849a = f2;
            return this;
        }

        public final ShadeFinderDeltaE build() {
            return new ShadeFinderDeltaE(this);
        }

        public final Builder neighbor(float f2) {
            Preconditions.g(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM, "neighbor < 0");
            this.f39850b = f2;
            return this;
        }
    }

    public ShadeFinderDeltaE(Builder builder) {
        this.f39847a = builder.f39849a;
        this.f39848b = builder.f39850b;
    }

    public static Builder builder() {
        Builder builder = new Builder();
        builder.f39849a = 3.0f;
        builder.f39850b = 3.0f;
        return builder;
    }
}
