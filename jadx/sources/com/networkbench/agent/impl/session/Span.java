package com.networkbench.agent.impl.session;

import android.text.TextUtils;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.HarvestableObject;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.networkbench.com.google.gson.reflect.TypeToken;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class Span extends HarvestableObject implements ISpan, SpanFormat {
    protected static e log = f.a();
    long endTimestamp;
    String name;
    String operation;
    String parentSpanId;
    private String sessionId;
    private SessionMetrics sessionMetrics;
    Map<String, Object> datas = new HashMap();
    Map<String, String> tags = new HashMap();
    Map<String, Map> metrics = new HashMap();
    int statusCode = 0;
    long startTimestamp = System.currentTimeMillis();
    SpanStatus status = SpanStatus.SPAN_STATUS_OK;
    String description = "";
    String spanId = constructSpanId();
    String traceId = "";
    boolean isFinished = false;
    protected List<String> subSpan = new CopyOnWriteArrayList();
    String type = "span";

    public Span(String str, String str2, String str3) {
        this.operation = str2;
        this.name = str;
        this.parentSpanId = str3;
        SessionMetrics sessionMetrics = SessionMetrics.sessionMetrics;
        this.sessionMetrics = sessionMetrics;
        sessionMetrics.addMetric(this);
        setTag("status_code", ContentTree.ROOT_ID);
        this.sessionId = NBSBitmapBeansControl.getInstance().getSessionIdRefresh();
    }

    private String constructSpanId() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    private String cutString(String str, int i2) {
        return str.length() > i2 ? str.substring(0, i2) : str;
    }

    private boolean isTransactionFinished() {
        ISpan transaction = getTransaction();
        log.a("isTransactionFinished return:" + transaction.isFinished());
        return transaction.isFinished();
    }

    private JsonObject mapToJsonObject(Map map) {
        return (JsonObject) new Gson().toJsonTree(map, new TypeToken<Map>() { // from class: com.networkbench.agent.impl.session.Span.1
        }.getType());
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObject = new JsonObject();
        String str = this.sessionId;
        if (str == null) {
            str = "";
        }
        jsonObject.add("session_id", new JsonPrimitive(str));
        jsonObject.add("op", new JsonPrimitive(cutString(this.operation, 128)));
        jsonObject.add("type", new JsonPrimitive(this.type));
        jsonObject.add("name", new JsonPrimitive(cutString(this.name, 1024)));
        jsonObject.add("desc", new JsonPrimitive(cutString(this.description, 1024)));
        jsonObject.add("start_timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().e(this.startTimestamp))));
        jsonObject.add("end_timestamp", new JsonPrimitive((Number) Long.valueOf(r.u().e(this.endTimestamp))));
        jsonObject.add("trace_id", new JsonPrimitive(this.traceId));
        jsonObject.add("span_id", new JsonPrimitive(this.spanId));
        jsonObject.add("parent_span_id", new JsonPrimitive(this.parentSpanId));
        jsonObject.add("status", new JsonPrimitive((Number) Integer.valueOf(this.status.getValue())));
        jsonObject.add("metrics", mapToJsonObject(this.metrics));
        jsonObject.add("tags", mapToJsonObject(this.tags));
        jsonObject.add(DbParams.KEY_DATA, mapToJsonObject(this.datas));
        return jsonObject;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public boolean checkData() {
        return false;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void finish() {
        if (isTransactionFinished()) {
            return;
        }
        this.endTimestamp = System.currentTimeMillis();
        if (!this.isFinished) {
            processFinish();
        }
        this.isFinished = true;
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public String formatInfo() {
        return "transaction" + asJsonObject().toString();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public Object getData(String str) {
        if (ab.c(str)) {
            return null;
        }
        return this.datas.get(str);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getDescription() {
        return this.description;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public Map getMetric(String str) {
        return ab.c(str) ? new HashMap() : this.metrics.get(str);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getName() {
        return this.name;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getOperation() {
        return this.operation;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan getParentSpan() {
        return ab.c(this.parentSpanId) ? new NullSpan() : this.sessionMetrics.retriveSpan(this.parentSpanId);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getSpanId() {
        return this.spanId;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public SpanStatus getStatus() {
        return this.status;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getTag(String str) {
        return ab.c(str) ? "" : this.tags.get(str);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public Throwable getThrowable() {
        return new Throwable("empty throwable");
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public String getTraceId() {
        return getTransaction().getSpanId();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan getTransaction() {
        return ab.c(this.parentSpanId) ? this : this.sessionMetrics.retriveSpan(this.traceId);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public boolean isFinished() {
        return this.isFinished;
    }

    public boolean isTransaction() {
        return ab.c(this.parentSpanId);
    }

    public void processFinish() {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void removeData(String str) {
        if (ab.c(str)) {
            return;
        }
        this.datas.remove(str);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void removeMetric(String str) {
        if (ab.c(str)) {
            return;
        }
        this.metrics.remove(str);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void removeTag(String str) {
        if (ab.c(str)) {
            return;
        }
        this.tags.remove(str);
    }

    @Override // com.networkbench.agent.impl.session.SpanFormat
    public void reset() {
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setData(String str, Object obj) {
        if (isTransactionFinished()) {
            return;
        }
        this.datas.put(str, obj);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setDescription(String str) {
        if (isTransactionFinished()) {
            return;
        }
        this.description = str;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setDuration(long j2) {
        setMetric("duration", Long.valueOf(j2), NBSSpanMetricUnit.Millisecond);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setMetric(String str, Number number, String str2) {
        HashMap map = new HashMap();
        if (TextUtils.isEmpty(str2)) {
            map.put("unit", NBSSpanMetricUnit.Millisecond);
        } else {
            map.put("unit", str2);
        }
        map.put(DbParams.KEY_DATA, number);
        this.metrics.put(str, map);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setName(String str) {
        if (isTransactionFinished()) {
            return;
        }
        this.name = str;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setOperation(String str) {
        if (isTransactionFinished()) {
            return;
        }
        this.operation = str;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setStatus(SpanStatus spanStatus) {
        if (isTransactionFinished()) {
            return;
        }
        this.status = spanStatus;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setStatusCode(String str) {
        setTag("status_code", String.valueOf(str));
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setTag(String str, String str2) {
        if (isTransactionFinished()) {
            return;
        }
        this.tags.put(str, str2);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setThrowable(Throwable th) {
        isTransactionFinished();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan startChild(String str, String str2, String str3) {
        if (ab.c(str) || ab.c(str2)) {
            log.e("startChild name or operation is empty, please check");
            return new NullSpan();
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        String str4 = this.spanId;
        if (str4 == null) {
            str4 = "";
        }
        Span span = new Span(str, str2, str4);
        if (str3 == null) {
            str3 = "";
        }
        span.description = str3;
        span.traceId = getTraceId();
        if (ab.c(this.parentSpanId)) {
            this.subSpan.add(span.getSpanId());
            return span;
        }
        ((Span) SessionMetrics.sessionMetrics.retriveSpan(this.parentSpanId)).subSpan.add(span.getSpanId());
        return span;
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void finish(SpanStatus spanStatus) {
        if (isTransactionFinished()) {
            return;
        }
        this.status = spanStatus;
        finish();
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public void setMetric(String str, Number number) {
        if (isTransactionFinished()) {
            return;
        }
        HashMap map = new HashMap();
        map.put("unit", "");
        map.put(DbParams.KEY_DATA, number);
        this.metrics.put(str, map);
    }

    @Override // com.networkbench.agent.impl.session.ISpan
    public ISpan startChild(String str, String str2) {
        return startChild(str, str2, "");
    }
}
