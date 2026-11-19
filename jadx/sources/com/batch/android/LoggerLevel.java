package com.batch.android;

/* JADX INFO: loaded from: classes2.dex */
public enum LoggerLevel {
    INTERNAL(0),
    VERBOSE(1),
    INFO(2),
    WARNING(3),
    ERROR(4);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f22849b;

    LoggerLevel(int i2) {
        this.f22849b = i2;
    }

    public boolean canLog(LoggerLevel loggerLevel) {
        return this.f22849b <= loggerLevel.f22849b;
    }
}
