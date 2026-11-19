package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.time.Clock;
import defpackage.md;
import defpackage.r81;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SchedulerConfig {

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Clock f28067a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public HashMap f28068b = new HashMap();
    }

    public static abstract class ConfigValue {

        public static abstract class Builder {
        }

        public abstract long a();

        public abstract Set b();

        public abstract long c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Flag {
        private static final /* synthetic */ Flag[] $VALUES;
        public static final Flag DEVICE_CHARGING;
        public static final Flag DEVICE_IDLE;
        public static final Flag NETWORK_UNMETERED;

        static {
            Flag flag = new Flag("NETWORK_UNMETERED", 0);
            NETWORK_UNMETERED = flag;
            Flag flag2 = new Flag("DEVICE_IDLE", 1);
            DEVICE_IDLE = flag2;
            Flag flag3 = new Flag("DEVICE_CHARGING", 2);
            DEVICE_CHARGING = flag3;
            $VALUES = new Flag[]{flag, flag2, flag3};
        }

        public static Flag valueOf(String str) {
            return (Flag) Enum.valueOf(Flag.class, str);
        }

        public static Flag[] values() {
            return (Flag[]) $VALUES.clone();
        }
    }

    public static SchedulerConfig b(Clock clock) {
        Builder builder = new Builder();
        Priority priority = Priority.DEFAULT;
        AutoValue_SchedulerConfig_ConfigValue.Builder builder2 = new AutoValue_SchedulerConfig_ConfigValue.Builder();
        Set set = Collections.EMPTY_SET;
        if (set == null) {
            r81.d("Null flags");
            return null;
        }
        builder2.f28062c = set;
        builder2.f28060a = 30000L;
        builder2.f28061b = 86400000L;
        builder.f28068b.put(priority, builder2.a());
        Priority priority2 = Priority.HIGHEST;
        AutoValue_SchedulerConfig_ConfigValue.Builder builder3 = new AutoValue_SchedulerConfig_ConfigValue.Builder();
        if (set == null) {
            r81.d("Null flags");
            return null;
        }
        builder3.f28062c = set;
        builder3.f28060a = 1000L;
        builder3.f28061b = 86400000L;
        builder.f28068b.put(priority2, builder3.a());
        Priority priority3 = Priority.VERY_LOW;
        AutoValue_SchedulerConfig_ConfigValue.Builder builder4 = new AutoValue_SchedulerConfig_ConfigValue.Builder();
        if (set == null) {
            r81.d("Null flags");
            return null;
        }
        builder4.f28062c = set;
        builder4.f28060a = 86400000L;
        builder4.f28061b = 86400000L;
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(Flag.DEVICE_IDLE)));
        if (setUnmodifiableSet == null) {
            r81.d("Null flags");
            return null;
        }
        builder4.f28062c = setUnmodifiableSet;
        builder.f28068b.put(priority3, builder4.a());
        builder.f28067a = clock;
        if (clock == null) {
            r81.d("missing required property: clock");
            return null;
        }
        if (builder.f28068b.keySet().size() < Priority.values().length) {
            md.k("Not all priorities have been configured");
            return null;
        }
        HashMap map = builder.f28068b;
        builder.f28068b = new HashMap();
        return new AutoValue_SchedulerConfig(builder.f28067a, map);
    }

    public abstract Clock a();

    public final long c(Priority priority, long j2, int i2) {
        long jA = j2 - a().a();
        ConfigValue configValue = (ConfigValue) d().get(priority);
        long jA2 = configValue.a();
        int i3 = i2 - 1;
        return Math.min(Math.max((long) (Math.pow(3.0d, i3) * jA2 * Math.max(1.0d, Math.log(10000.0d) / Math.log((jA2 > 1 ? jA2 : 2L) * ((long) i3)))), jA), configValue.c());
    }

    public abstract Map d();
}
