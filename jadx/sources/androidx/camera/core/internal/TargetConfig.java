package androidx.camera.core.internal;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ReadableConfig;

/* JADX INFO: loaded from: classes.dex */
public interface TargetConfig<T> extends ReadableConfig {
    public static final Config.Option K = Config.Option.a(String.class, "camerax.core.target.name");
    public static final Config.Option L = Config.Option.a(Class.class, "camerax.core.target.class");

    public interface Builder<T, B> {
    }

    default String X() {
        return (String) a(K);
    }

    default String r(String str) {
        return (String) f(K, str);
    }
}
