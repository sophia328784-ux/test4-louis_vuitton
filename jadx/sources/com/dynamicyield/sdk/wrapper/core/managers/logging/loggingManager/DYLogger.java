package com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/DYLogger;", "", "", "logCategory", "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;", "logLevel", "<init>", "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DYLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LogLevel f25926b;

    public DYLogger(String str, LogLevel logLevel) {
        str.getClass();
        logLevel.getClass();
        this.f25925a = str;
        this.f25926b = logLevel;
    }

    public final void a(String str, LogLevel logLevel) {
        str.getClass();
        ArrayList arrayList = LoggingManager.f25927a;
        if (logLevel == null) {
            logLevel = this.f25926b;
        }
        LoggingManager.a(logLevel, this.f25925a, str);
    }

    public /* synthetic */ DYLogger(String str, LogLevel logLevel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? LogLevel.VERBOSE : logLevel);
    }
}
