package androidx.camera.core;

import androidx.core.util.Pair;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class CompositionSettings {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CompositionSettings f1909c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pair f1910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Pair f1911b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Pair f1912a;

        public Builder() {
            Float fValueOf = Float.valueOf(1.0f);
            Float fValueOf2 = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f1912a = new Pair(fValueOf2, fValueOf2);
            new Pair(fValueOf, fValueOf);
        }
    }

    static {
        Builder builder = new Builder();
        Float fValueOf = Float.valueOf(1.0f);
        Float fValueOf2 = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        builder.f1912a = new Pair(fValueOf2, fValueOf2);
        f1909c = new CompositionSettings(builder.f1912a, new Pair(fValueOf, fValueOf));
    }

    public CompositionSettings(Pair pair, Pair pair2) {
        this.f1910a = pair;
        this.f1911b = pair2;
    }
}
