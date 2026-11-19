package com.networkbench.agent.impl.session;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NullSpan implements ISpan {
    @Override // com.networkbench.agent.impl.session.ISpan
    public void finish() {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void finish(SpanStatus spanStatus) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public Object getData(String str) {
        return new Object();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getDescription() {
        return null;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public Map getMetric(String str) {
        return new HashMap();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getName() {
        return "";
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getOperation() {
        return "";
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan getParentSpan() {
        return new NullSpan();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getSpanId() {
        return "";
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public SpanStatus getStatus() {
        return SpanStatus.SPAN_STATUS_UNKNOWN;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getTag(String str) {
        return "";
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public Throwable getThrowable() {
        return new Throwable();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getTraceId() {
        return "";
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan getTransaction() {
        return new NullSpan();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public boolean isFinished() {
        return true;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void removeData(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void removeMetric(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void removeTag(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setData(String str, Object obj) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setDescription(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setDuration(long j2) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setMetric(String str, Number number) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setMetric(String str, Number number, String str2) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setName(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setOperation(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setStatus(SpanStatus spanStatus) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setStatusCode(String str) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setTag(String str, String str2) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setThrowable(Throwable th) {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan startChild(String str, String str2) {
        return this;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan startChild(String str, String str2, String str3) {
        return this;
    }
}
