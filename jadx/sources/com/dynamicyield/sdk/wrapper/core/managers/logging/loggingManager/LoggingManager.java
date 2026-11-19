package com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager;

import defpackage.fc;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggingManager;", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LoggingManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayList f25927a = new ArrayList();

    public static void a(LogLevel logLevel, String str, String str2) {
        logLevel.getClass();
        str.getClass();
        str2.getClass();
        for (LoggerEngine loggerEngine : f25927a) {
            if (loggerEngine.b().compareTo(logLevel) <= 0) {
                loggerEngine.a(fc.i("[", str, "] ", str2), logLevel);
            }
        }
    }
}
