package com.appsflyer;

import com.appsflyer.internal.AFc1jSDK;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.c61;
import defpackage.r61;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0017\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001.B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0004\"\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\t\u001a\u00020\u00062\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0004\"\u00020\u0001¢\u0006\u0004\b\t\u0010\bJ'\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011JG\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0019\u0010\u0011J'\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u0011J'\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001b\u0010\u0011J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\fH\u0007¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\fH\u0007¢\u0006\u0004\b\"\u0010 J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\fH\u0007¢\u0006\u0004\b$\u0010 J#\u0010'\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010\f2\b\u0010&\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0004\b'\u0010(J+\u0010'\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010\f2\b\u0010&\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u000eH\u0007¢\u0006\u0004\b'\u0010)R\u001b\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00010*8BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b+\u0010,R\u0015\u0010\u0010\u001a\u00020-8BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b\u0007\u0010,"}, d2 = {"Lcom/appsflyer/AFLogger;", "Lcom/appsflyer/sdk_base/logger/AFLoggerBase;", "<init>", "()V", "", "client", "", "registerClient", "([Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)V", "unregisterClient", "Lcom/appsflyer/sdk_base/logger/LogTag;", "tag", "", "msg", "", "shouldRemoteDebug", NBSSpanMetricUnit.Day, "(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Z)V", "", "throwable", "printMsg", "printThrowable", "shouldReportToExManager", "e", "(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V", "i", "w", "v", "force", "(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;)V", "logMessage", "afInfoLog", "(Ljava/lang/String;)V", "debugLogMessage", "afDebugLog", "warningLogMessage", "afWarnLog", "errorLogMessage", "ex", "afErrorLog", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "(Ljava/lang/String;Ljava/lang/Throwable;Z)V", "", "AFLogger", "Lkotlin/Lazy;", "Ljava/util/concurrent/ExecutorService;", "LogLevel"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFLogger extends AFLoggerBase {
    public static final AFLogger INSTANCE = new AFLogger();

    /* JADX INFO: renamed from: AFLogger, reason: from kotlin metadata */
    private static final Lazy registerClient = LazyKt.b(new r61(13));

    /* JADX INFO: renamed from: registerClient, reason: from kotlin metadata */
    private static final Lazy d = LazyKt.b(new r61(14));

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.appsflyer.AFLogger$LogLevel[], still in use, count: 1, list:
      (r0v1 com.appsflyer.AFLogger$LogLevel[]) from 0x0042: INVOKE (r0v1 com.appsflyer.AFLogger$LogLevel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f"}, d2 = {"Lcom/appsflyer/AFLogger$LogLevel;", "", "", "p0", "<init>", "(Ljava/lang/String;II)V", "level", "I", "getLevel", "()I", "NONE", "ERROR", "WARNING", "INFO", "DEBUG", "VERBOSE"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);

        private static final /* synthetic */ EnumEntries registerClient;
        private final int level;

        static {
            registerClient = EnumEntriesKt.a(logLevelArr);
        }

        private LogLevel(int i2) {
            super(str, i);
            this.level = i2;
        }

        public static EnumEntries<LogLevel> getEntries() {
            return registerClient;
        }

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) AFKeystoreWrapper.clone();
        }

        public final int getLevel() {
            return this.level;
        }
    }

    private AFLogger() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AFKeystoreWrapper(AFLoggerBase[] aFLoggerBaseArr) {
        CollectionsKt.k((Set) registerClient.getF71699b(), aFLoggerBaseArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AFLogger(AFLoggerBase[] aFLoggerBaseArr) {
        ((Set) registerClient.getF71699b()).removeAll(ArraysKt.Z(aFLoggerBaseArr));
    }

    @Deprecated
    @JvmStatic
    public static final void afDebugLog(String debugLogMessage) {
        debugLogMessage.getClass();
        INSTANCE.d(LogTag.OTHER, debugLogMessage, true);
    }

    @Deprecated
    @JvmStatic
    public static final void afErrorLog(String errorLogMessage, Throwable ex) {
        AFLogger aFLogger = INSTANCE;
        LogTag logTag = LogTag.OTHER;
        if (errorLogMessage == null || StringsKt.w(errorLogMessage)) {
            errorLogMessage = "null";
        }
        String str = errorLogMessage;
        if (ex == null) {
            ex = new NullPointerException("Invoked with null Throwable");
        }
        AFLoggerBase.e$default(aFLogger, logTag, str, ex, false, false, false, false, 120, null);
    }

    @Deprecated
    @JvmStatic
    public static final void afInfoLog(String logMessage) {
        logMessage.getClass();
        INSTANCE.i(LogTag.OTHER, logMessage, true);
    }

    @Deprecated
    @JvmStatic
    public static final void afWarnLog(String warningLogMessage) {
        warningLogMessage.getClass();
        AFLoggerBase.w$default(INSTANCE, LogTag.OTHER, warningLogMessage, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unregisterClient(Function1 function1) {
        Iterator it = ((Set) registerClient.getF71699b()).iterator();
        while (it.hasNext()) {
            function1.invoke((AFLoggerBase) it.next());
        }
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void d(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        ((ExecutorService) d.getF71699b()).execute(new b(new a(tag, msg, shouldRemoteDebug, 3), 5));
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void e(final LogTag tag, final String msg, final Throwable throwable, final boolean printMsg, final boolean printThrowable, final boolean shouldReportToExManager, final boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        throwable.getClass();
        ((ExecutorService) d.getF71699b()).execute(new b(new Function1() { // from class: com.appsflyer.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AFLogger.registerClient(tag, msg, throwable, printMsg, printThrowable, shouldReportToExManager, shouldRemoteDebug, (AFLoggerBase) obj);
            }
        }, 3));
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void force(LogTag tag, String msg) {
        tag.getClass();
        msg.getClass();
        ((ExecutorService) d.getF71699b()).execute(new b(new c61(tag, msg, 17), 4));
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void i(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        ((ExecutorService) d.getF71699b()).execute(new b(new a(tag, msg, shouldRemoteDebug, 0), 2));
    }

    public final void registerClient(AFLoggerBase... client) {
        client.getClass();
        ((ExecutorService) d.getF71699b()).execute(new d(client, 0));
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void v(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        ((ExecutorService) d.getF71699b()).execute(new b(new a(tag, msg, shouldRemoteDebug, 1), 0));
    }

    @Override // com.appsflyer.sdk_base.logger.AFLoggerBase
    public final void w(LogTag tag, String msg, boolean shouldRemoteDebug) {
        tag.getClass();
        msg.getClass();
        ((ExecutorService) d.getF71699b()).execute(new b(new a(tag, msg, shouldRemoteDebug, 2), 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AFKeystoreWrapper(LogTag logTag, String str, boolean z, AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        aFLoggerBase.i(logTag, str, z);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ExecutorService AFKeystoreWrapper() {
        return AFc1jSDK.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit AFLogger(LogTag logTag, String str, boolean z, AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        aFLoggerBase.w(logTag, str, z);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerClient(LogTag logTag, String str, boolean z, AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        aFLoggerBase.d(logTag, str, z);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerClient(LogTag logTag, String str, Throwable th, boolean z, boolean z2, boolean z3, boolean z4, AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        aFLoggerBase.e(logTag, str, th, z, z2, z3, z4);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit registerClient(LogTag logTag, String str, AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        aFLoggerBase.force(logTag, str);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set d() {
        return new LinkedHashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(LogTag logTag, String str, boolean z, AFLoggerBase aFLoggerBase) {
        aFLoggerBase.getClass();
        aFLoggerBase.v(logTag, str, z);
        return Unit.f71739a;
    }

    public final void unregisterClient(AFLoggerBase... client) {
        client.getClass();
        ((ExecutorService) d.getF71699b()).execute(new d(client, 1));
    }

    @Deprecated
    @JvmStatic
    public static final void afErrorLog(String errorLogMessage, Throwable ex, boolean printThrowable) {
        AFLogger aFLogger = INSTANCE;
        LogTag logTag = LogTag.OTHER;
        if (errorLogMessage == null || StringsKt.w(errorLogMessage)) {
            errorLogMessage = "null";
        }
        String str = errorLogMessage;
        if (ex == null) {
            ex = new NullPointerException("Invoked with null Throwable");
        }
        AFLoggerBase.e$default(aFLogger, logTag, str, ex, false, printThrowable, false, false, 104, null);
    }
}
