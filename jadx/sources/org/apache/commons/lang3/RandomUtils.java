package org.apache.commons.lang3;

import defpackage.sg0;
import java.util.Random;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes3.dex */
public class RandomUtils {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final RandomUtils f77540b = new RandomUtils(new sg0(3));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final sg0 f77541c = new sg0(4);
    public static final ThreadLocal d = ThreadLocal.withInitial(new sg0(5));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Supplier f77542a;

    @Deprecated
    public RandomUtils() {
        this(f77541c);
    }

    public final String toString() {
        return "RandomUtils [random=" + ((Random) this.f77542a.get()) + "]";
    }

    public RandomUtils(Supplier supplier) {
        this.f77542a = supplier;
    }
}
