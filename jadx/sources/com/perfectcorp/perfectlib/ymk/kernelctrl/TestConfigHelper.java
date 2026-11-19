package com.perfectcorp.perfectlib.ymk.kernelctrl;

import android.util.Pair;

/* JADX INFO: loaded from: classes3.dex */
public final class TestConfigHelper extends BaseConfigHelper {
    public static final Pair d = Pair.create("ALWAYS_FLUSH_COUNTLY", Boolean.toString(false));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pair f41980e = Pair.create("SHADE_FINDER_LAB", "");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pair f41981f = Pair.create("TUTORIAL_TESTING", Boolean.toString(false));

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TestConfigHelper f41982a = new TestConfigHelper();
    }

    public static TestConfigHelper c() {
        return a.f41982a;
    }

    @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.BaseConfigHelper
    public final Pair[] a() {
        return new Pair[]{d, f41980e, f41981f};
    }
}
