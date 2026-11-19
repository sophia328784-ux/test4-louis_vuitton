package androidx.camera.core.impl;

import android.util.ArrayMap;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import defpackage.az;
import defpackage.b21;
import defpackage.p3;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class OptionsBundle implements Config {
    public static final d N;
    public static final OptionsBundle O;
    public final TreeMap M;

    static {
        d dVar = new d();
        N = dVar;
        O = new OptionsBundle(new TreeMap(dVar));
    }

    public OptionsBundle(TreeMap treeMap) {
        this.M = treeMap;
    }

    public static OptionsBundle c0(Config config) {
        if (OptionsBundle.class.equals(config.getClass())) {
            return (OptionsBundle) config;
        }
        TreeMap treeMap = new TreeMap(N);
        for (Config.Option option : config.d()) {
            Set<Config.OptionPriority> setE = config.e(option);
            ArrayMap arrayMap = new ArrayMap();
            for (Config.OptionPriority optionPriority : setE) {
                arrayMap.put(optionPriority, config.c(option, optionPriority));
            }
            treeMap.put(option, arrayMap);
        }
        return new OptionsBundle(treeMap);
    }

    @Override // androidx.camera.core.impl.Config
    public final Object a(Config.Option option) {
        Map map = (Map) this.M.get(option);
        if (map != null) {
            return map.get((Config.OptionPriority) Collections.min(map.keySet()));
        }
        az.m(option, "Option does not exist: ");
        return null;
    }

    @Override // androidx.camera.core.impl.Config
    public final boolean b(Config.Option option) {
        return this.M.containsKey(option);
    }

    @Override // androidx.camera.core.impl.Config
    public final Object c(Config.Option option, Config.OptionPriority optionPriority) {
        Map map = (Map) this.M.get(option);
        if (map == null) {
            az.m(option, "Option does not exist: ");
            return null;
        }
        if (map.containsKey(optionPriority)) {
            return map.get(optionPriority);
        }
        b21.s("Option does not exist: ", option, " with priority=", optionPriority);
        return null;
    }

    @Override // androidx.camera.core.impl.Config
    public final Set d() {
        return Collections.unmodifiableSet(this.M.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    public final Set e(Config.Option option) {
        Map map = (Map) this.M.get(option);
        return map == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(map.keySet());
    }

    @Override // androidx.camera.core.impl.Config
    public final Object f(Config.Option option, Object obj) {
        Map map = (Map) this.M.get(option);
        return map == null ? obj : map.get((Config.OptionPriority) Collections.min(map.keySet()));
    }

    @Override // androidx.camera.core.impl.Config
    public final Config.OptionPriority g(Config.Option option) {
        Map map = (Map) this.M.get(option);
        if (map != null) {
            return (Config.OptionPriority) Collections.min(map.keySet());
        }
        az.m(option, "Option does not exist: ");
        return null;
    }

    @Override // androidx.camera.core.impl.Config
    public final void h(p3 p3Var) {
        for (Map.Entry entry : this.M.tailMap(new AutoValue_Config_Option(Void.class, null, "camera2.captureRequest.option.")).entrySet()) {
            if (!((AutoValue_Config_Option) ((Config.Option) entry.getKey())).f2170a.startsWith("camera2.captureRequest.option.")) {
                return;
            }
            Config.Option option = (Config.Option) entry.getKey();
            CaptureRequestOptions.Builder builder = (CaptureRequestOptions.Builder) p3Var.f78737c;
            Config config = (Config) p3Var.d;
            builder.f1857a.f0(option, config.g(option), config.a(option));
        }
    }
}
