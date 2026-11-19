package com.vuitton.android.data.analytics;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "name", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CrashlyticsAnomalyException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43541b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrashlyticsAnomalyException(String str, String str2) {
        super(str2);
        str.getClass();
        this.f43541b = str;
    }

    @Override // java.lang.Throwable
    public final StackTraceElement[] getStackTrace() {
        StackTraceElement[] stackTraceElementArr = {new StackTraceElement(fc.h("Anomaly - ", this.f43541b, " #"), getMessage(), "AnomalyException", 0)};
        StackTraceElement[] stackTrace = super.getStackTrace();
        stackTrace.getClass();
        return (StackTraceElement[]) ArraysKt.N(stackTraceElementArr, stackTrace);
    }
}
