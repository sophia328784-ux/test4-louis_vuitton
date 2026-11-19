package com.vuitton.android.data.monitoring;

import com.dynatrace.android.agent.DTXAction;
import com.dynatrace.android.agent.Dynatrace;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB+\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;", "Lcom/vuitton/android/domain/monitoring/MonitorAction;", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "actionName", "", "deviceId", "", "isDebug", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;Ljava/lang/String;Z)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DynatraceMonitorAction implements MonitorAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DTXAction f46975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f46976b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction$Companion;", "", "", "TAG", "Ljava/lang/String;", "LABEL_LOCALE", "LABEL_DEVICE_ID", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DynatraceMonitorAction(InAppDispatch inAppDispatch, MonitorActionName monitorActionName, String str, boolean z) {
        monitorActionName.getClass();
        str.getClass();
        this.f46976b = z;
        DTXAction dTXActionA = Dynatrace.a(monitorActionName.a());
        dTXActionA.toString();
        this.f46975a = dTXActionA;
        c(str, "lvappDeviceId");
        String str2 = inAppDispatch != null ? inAppDispatch.f67478c : null;
        c(str2 == null ? "" : str2, "locale");
    }

    @Override // com.vuitton.android.domain.monitoring.MonitorAction
    public final DynatraceMonitorAction a(MonitorActionName monitorActionName) {
        DTXAction dTXActionB = Dynatrace.b(monitorActionName.a(), this.f46975a);
        dTXActionB.toString();
        return new DynatraceMonitorAction(dTXActionB, this.f46976b);
    }

    @Override // com.vuitton.android.domain.monitoring.MonitorAction
    public final Unit b() {
        DTXAction dTXAction = this.f46975a;
        if (dTXAction != null) {
            dTXAction.toString();
            dTXAction.a();
        }
        this.f46975a = null;
        Result.Companion companion = Result.INSTANCE;
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.monitoring.MonitorAction
    public final Object c(Object obj, String str) {
        obj.getClass();
        DTXAction dTXAction = this.f46975a;
        boolean z = this.f46976b;
        if (dTXAction == null) {
            IllegalStateException illegalStateException = new IllegalStateException("Action is not created, cannot report value.");
            if (z) {
                throw illegalStateException;
            }
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(illegalStateException);
        }
        if (obj instanceof Long) {
            dTXAction.f(((Number) obj).longValue(), str);
        } else if (obj instanceof Double) {
            dTXAction.b(str, ((Number) obj).doubleValue());
        } else if (obj instanceof Integer) {
            dTXAction.e(((Number) obj).intValue(), str);
        } else {
            if (!(obj instanceof String)) {
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException(obj + " type is not supported");
                if (z) {
                    throw illegalArgumentException;
                }
                Result.Companion companion2 = Result.INSTANCE;
                return new Result.Failure(illegalArgumentException);
            }
            dTXAction.d(str, (String) obj);
        }
        Objects.toString(obj);
        Result.Companion companion3 = Result.INSTANCE;
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.monitoring.MonitorAction
    public final Unit d(MonitorActionError monitorActionError) {
        monitorActionError.getF48900a().getMessage();
        DTXAction dTXAction = this.f46975a;
        if (dTXAction != null) {
            dTXAction.c(monitorActionError.getF48843c(), monitorActionError.getF48900a());
        }
        Result.Companion companion = Result.INSTANCE;
        return Unit.f71739a;
    }

    public DynatraceMonitorAction(DTXAction dTXAction, boolean z) {
        this.f46975a = dTXAction;
        this.f46976b = z;
    }
}
