package com.appsflyer;

import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f22590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LogTag f22591c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f22592e;

    public /* synthetic */ a(LogTag logTag, String str, boolean z, int i2) {
        this.f22590b = i2;
        this.f22591c = logTag;
        this.d = str;
        this.f22592e = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f22590b) {
            case 0:
                return AFLogger.AFKeystoreWrapper(this.f22591c, this.d, this.f22592e, (AFLoggerBase) obj);
            case 1:
                return AFLogger.d(this.f22591c, this.d, this.f22592e, (AFLoggerBase) obj);
            case 2:
                return AFLogger.AFLogger(this.f22591c, this.d, this.f22592e, (AFLoggerBase) obj);
            default:
                return AFLogger.registerClient(this.f22591c, this.d, this.f22592e, (AFLoggerBase) obj);
        }
    }
}
