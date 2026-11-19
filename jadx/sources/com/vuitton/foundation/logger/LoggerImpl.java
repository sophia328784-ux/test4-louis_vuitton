package com.vuitton.foundation.logger;

import com.vuitton.foundation.contracts.environment.Environment;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import timber.log.Timber;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/logger/LoggerImpl;", "Lcom/vuitton/foundation/logger/Logger;", "Lcom/vuitton/foundation/contracts/environment/Environment;", "environment", "<init>", "(Lcom/vuitton/foundation/contracts/environment/Environment;)V", "Companion", "logger"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoggerImpl implements Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Environment f66206a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/logger/LoggerImpl$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "logger"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LoggerImpl(Environment environment) {
        environment.getClass();
        this.f66206a = environment;
    }

    public static Timber.Forest e(String str) {
        Timber.Forest forest = Timber.f80066a;
        if (str != null) {
            forest.g(str);
        }
        return forest;
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void a(String str, Function0 function0) {
        this.f66206a.getClass();
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void b(String str, Function0 function0, Throwable th) {
        this.f66206a.getClass();
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void c(String str, String str2, Throwable th) {
        e(str).e(6, th, str2, new Object[0]);
    }

    @Override // com.vuitton.foundation.logger.Logger
    public final void d(String str, String str2, Throwable th) {
        e(str).e(5, th, str2, new Object[0]);
    }
}
