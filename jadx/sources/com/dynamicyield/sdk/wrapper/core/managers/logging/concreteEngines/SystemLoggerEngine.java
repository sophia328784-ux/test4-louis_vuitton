package com.dynamicyield.sdk.wrapper.core.managers.logging.concreteEngines;

import android.util.Log;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LoggerEngine;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/logging/concreteEngines/SystemLoggerEngine;", "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LoggerEngine;", "Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;", "logLevel", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/logging/loggingManager/LogLevel;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemLoggerEngine implements LoggerEngine {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LogLevel f25923a;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25924a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.VERBOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.WARN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LogLevel.ASSERT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LogLevel.OFF.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f25924a = iArr;
        }
    }

    public SystemLoggerEngine(LogLevel logLevel) {
        logLevel.getClass();
        this.f25923a = logLevel;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LoggerEngine
    public final void a(String str, LogLevel logLevel) {
        Integer num;
        logLevel.getClass();
        switch (WhenMappings.f25924a[this.f25923a.ordinal()]) {
            case 1:
                num = 2;
                break;
            case 2:
                num = 3;
                break;
            case 3:
                num = 4;
                break;
            case 4:
                num = 5;
                break;
            case 5:
                num = 6;
                break;
            case 6:
                num = 7;
                break;
            case 7:
                num = null;
                break;
            default:
                v40.g();
                return;
        }
        if (num != null) {
            Log.println(num.intValue(), "[DY]", str);
        }
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LoggerEngine
    /* JADX INFO: renamed from: b, reason: from getter */
    public final LogLevel getF25923a() {
        return this.f25923a;
    }
}
