package com.networkbench.agent.impl.session;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface ISpan {
    void finish();

    void finish(SpanStatus spanStatus);

    Object getData(String str);

    String getDescription();

    Map getMetric(String str);

    String getName();

    String getOperation();

    ISpan getParentSpan();

    String getSpanId();

    SpanStatus getStatus();

    String getTag(String str);

    Throwable getThrowable();

    String getTraceId();

    ISpan getTransaction();

    boolean isFinished();

    void removeData(String str);

    void removeMetric(String str);

    void removeTag(String str);

    void setData(String str, Object obj);

    void setDescription(String str);

    void setDuration(long j2);

    void setMetric(String str, Number number);

    void setMetric(String str, Number number, String str2);

    void setName(String str);

    void setOperation(String str);

    void setStatus(SpanStatus spanStatus);

    void setStatusCode(String str);

    void setTag(String str, String str2);

    void setThrowable(Throwable th);

    ISpan startChild(String str, String str2);

    ISpan startChild(String str, String str2, String str3);
}
