package com.appsflyer.sdk_base.logger;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J \u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J \u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J@\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/appsflyer/sdk_base/logger/LoggerDelegate;", "Lcom/appsflyer/sdk_base/logger/AFLoggerBase;", "delegate", "<init>", "(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V", "v", "", "tag", "Lcom/appsflyer/sdk_base/logger/LogTag;", "msg", "", "shouldRemoteDebug", "", NBSSpanMetricUnit.Day, "i", "w", "e", "throwable", "", "printMsg", "printThrowable", "shouldReportToExManager", "force", "sdk_base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LoggerDelegate extends AFLoggerBase {
    private final AFLoggerBase delegate;

    public LoggerDelegate(AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        this.delegate = aFLoggerBase;
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public void d(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        this.delegate.d(tag, msg, shouldRemoteDebug);
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public void e(LogTag tag, String msg, Throwable throwable, boolean printMsg, boolean printThrowable, boolean shouldReportToExManager, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        throwable.getClass();
        this.delegate.e(tag, msg, throwable, printMsg, printThrowable, shouldReportToExManager, shouldRemoteDebug);
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public void force(LogTag tag, String msg) {
        tag.getClass();
        msg.getClass();
        this.delegate.force(tag, msg);
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public void i(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        this.delegate.i(tag, msg, shouldRemoteDebug);
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public void v(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        this.delegate.v(tag, msg, shouldRemoteDebug);
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public void w(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        this.delegate.w(tag, msg, shouldRemoteDebug);
    }
}
