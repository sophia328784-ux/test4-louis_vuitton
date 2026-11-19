package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.Factory;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeModule_EventClockFactory implements Factory<Clock> {

    public static final class InstanceHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TimeModule_EventClockFactory f28136a = new TimeModule_EventClockFactory();
    }

    public static TimeModule_EventClockFactory a() {
        return InstanceHolder.f28136a;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new WallTimeClock();
    }
}
