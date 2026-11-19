package com.google.android.datatransport.runtime.time;

/* JADX INFO: loaded from: classes2.dex */
public class WallTimeClock implements Clock {
    @Override // com.google.android.datatransport.runtime.time.Clock
    public final long a() {
        return System.currentTimeMillis();
    }
}
