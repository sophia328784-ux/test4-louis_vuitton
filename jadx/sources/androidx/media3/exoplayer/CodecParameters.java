package androidx.media3.exoplayer;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CodecParameters {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final CodecParameters f14570b = new CodecParameters(new Builder().f14572a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f14571a;

    public CodecParameters(HashMap map) {
        this.f14571a = Collections.unmodifiableMap(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CodecParameters) {
            return this.f14571a.equals(((CodecParameters) obj).f14571a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f14571a.hashCode();
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f14572a;

        public Builder(CodecParameters codecParameters) {
            this.f14572a = new HashMap(codecParameters.f14571a);
        }

        public Builder() {
            this.f14572a = new HashMap();
        }
    }
}
