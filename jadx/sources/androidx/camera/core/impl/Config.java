package androidx.camera.core.impl;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import defpackage.p3;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface Config {

    public static abstract class Option<T> {
        public static Option a(Class cls, String str) {
            return new AutoValue_Config_Option(cls, null, str);
        }

        public static Option b(String str, CaptureRequest.Key key) {
            return new AutoValue_Config_Option(Object.class, key, str);
        }

        public abstract String c();

        public abstract Object d();
    }

    public interface OptionMatcher {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class OptionPriority {
        private static final /* synthetic */ OptionPriority[] $VALUES;
        public static final OptionPriority ALWAYS_OVERRIDE;
        public static final OptionPriority HIGH_PRIORITY_REQUIRED;
        public static final OptionPriority OPTIONAL;
        public static final OptionPriority REQUIRED;

        static {
            OptionPriority optionPriority = new OptionPriority("ALWAYS_OVERRIDE", 0);
            ALWAYS_OVERRIDE = optionPriority;
            OptionPriority optionPriority2 = new OptionPriority("HIGH_PRIORITY_REQUIRED", 1);
            HIGH_PRIORITY_REQUIRED = optionPriority2;
            OptionPriority optionPriority3 = new OptionPriority("REQUIRED", 2);
            REQUIRED = optionPriority3;
            OptionPriority optionPriority4 = new OptionPriority("OPTIONAL", 3);
            OPTIONAL = optionPriority4;
            $VALUES = new OptionPriority[]{optionPriority, optionPriority2, optionPriority3, optionPriority4};
        }

        public static OptionPriority valueOf(String str) {
            return (OptionPriority) Enum.valueOf(OptionPriority.class, str);
        }

        public static OptionPriority[] values() {
            return (OptionPriority[]) $VALUES.clone();
        }
    }

    static void H(MutableOptionsBundle mutableOptionsBundle, Config config, Config config2, Option option) {
        if (!Objects.equals(option, ImageOutputConfig.s)) {
            mutableOptionsBundle.f0(option, config2.g(option), config2.a(option));
            return;
        }
        ResolutionSelector resolutionSelector = (ResolutionSelector) config2.f(option, null);
        ResolutionSelector resolutionSelector2 = (ResolutionSelector) config.f(option, null);
        OptionPriority optionPriorityG = config2.g(option);
        if (resolutionSelector == null) {
            resolutionSelector = resolutionSelector2;
        } else if (resolutionSelector2 != null) {
            ResolutionSelector.Builder builder = new ResolutionSelector.Builder();
            AspectRatioStrategy aspectRatioStrategy = AspectRatioStrategy.f2630c;
            builder.f2635a = resolutionSelector2.f2633a;
            builder.f2636b = resolutionSelector2.f2634b;
            AspectRatioStrategy aspectRatioStrategy2 = resolutionSelector.f2633a;
            if (aspectRatioStrategy2 != null) {
                builder.f2635a = aspectRatioStrategy2;
            }
            ResolutionStrategy resolutionStrategy = resolutionSelector.f2634b;
            if (resolutionStrategy != null) {
                builder.f2636b = resolutionStrategy;
            }
            resolutionSelector = new ResolutionSelector(builder.f2635a, builder.f2636b);
        }
        mutableOptionsBundle.f0(option, optionPriorityG, resolutionSelector);
    }

    static OptionsBundle U(Config config, Config config2) {
        if (config == null && config2 == null) {
            return OptionsBundle.O;
        }
        MutableOptionsBundle mutableOptionsBundleE0 = config2 != null ? MutableOptionsBundle.e0(config2) : MutableOptionsBundle.d0();
        if (config != null) {
            Iterator it = config.d().iterator();
            while (it.hasNext()) {
                H(mutableOptionsBundleE0, config2, config, (Option) it.next());
            }
        }
        return OptionsBundle.c0(mutableOptionsBundleE0);
    }

    Object a(Option option);

    boolean b(Option option);

    Object c(Option option, OptionPriority optionPriority);

    Set d();

    Set e(Option option);

    Object f(Option option, Object obj);

    OptionPriority g(Option option);

    void h(p3 p3Var);
}
