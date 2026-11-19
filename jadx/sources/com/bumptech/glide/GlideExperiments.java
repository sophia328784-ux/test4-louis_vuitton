package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class GlideExperiments {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f24300a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f24301a = new HashMap();
    }

    public interface Experiment {
    }

    public GlideExperiments(Builder builder) {
        this.f24300a = Collections.unmodifiableMap(new HashMap(builder.f24301a));
    }
}
