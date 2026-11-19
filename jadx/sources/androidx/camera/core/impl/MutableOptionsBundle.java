package androidx.camera.core.impl;

import android.util.ArrayMap;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class MutableOptionsBundle extends OptionsBundle implements MutableConfig {
    public static final Config.OptionPriority P = Config.OptionPriority.OPTIONAL;

    public static MutableOptionsBundle d0() {
        return new MutableOptionsBundle(new TreeMap(OptionsBundle.N));
    }

    public static MutableOptionsBundle e0(Config config) {
        TreeMap treeMap = new TreeMap(OptionsBundle.N);
        for (Config.Option option : config.d()) {
            Set<Config.OptionPriority> setE = config.e(option);
            ArrayMap arrayMap = new ArrayMap();
            for (Config.OptionPriority optionPriority : setE) {
                arrayMap.put(optionPriority, config.c(option, optionPriority));
            }
            treeMap.put(option, arrayMap);
        }
        return new MutableOptionsBundle(treeMap);
    }

    public final void f0(Config.Option option, Config.OptionPriority optionPriority, Object obj) {
        Config.OptionPriority optionPriority2;
        TreeMap treeMap = this.M;
        Map map = (Map) treeMap.get(option);
        if (map == null) {
            ArrayMap arrayMap = new ArrayMap();
            treeMap.put(option, arrayMap);
            arrayMap.put(optionPriority, obj);
            return;
        }
        Config.OptionPriority optionPriority3 = (Config.OptionPriority) Collections.min(map.keySet());
        if (Objects.equals(map.get(optionPriority3), obj) || optionPriority3 != (optionPriority2 = Config.OptionPriority.REQUIRED) || optionPriority != optionPriority2) {
            map.put(optionPriority, obj);
            return;
        }
        StringBuilder sb = new StringBuilder("Option values conflicts: ");
        sb.append(((AutoValue_Config_Option) option).f2170a);
        sb.append(", existing value (");
        sb.append(optionPriority3);
        Object obj2 = map.get(optionPriority3);
        sb.append(")=");
        sb.append(obj2);
        sb.append(", conflicting (");
        sb.append(optionPriority);
        sb.append(")=");
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // androidx.camera.core.impl.MutableConfig
    public final void o(Config.Option option, Object obj) {
        f0(option, P, obj);
    }
}
