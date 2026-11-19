package com.networkbench.agent.impl.session;

import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Transaction extends Span {
    protected JsonArray subSpanList;

    public Transaction(String str, String str2, String str3, SpanType spanType) {
        super(str, str2, "");
        setDescription(str3);
        this.traceId = this.spanId;
        ((Span) this).type = spanType == SpanType.TYPE_TRANSACTION ? "transaction" : "span";
        this.subSpanList = new JsonArray();
    }

    @Override // com.networkbench.agent.impl.session.Span, com.networkbench.agent.impl.harvest.type.HarvestableObject, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonObject asJsonObject() {
        JsonObject jsonObjectAsJsonObject = super.asJsonObject();
        jsonObjectAsJsonObject.add("spans", this.subSpanList);
        return jsonObjectAsJsonObject;
    }

    @Override // com.networkbench.agent.impl.session.Span
    public void processFinish() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.subSpan) {
            ISpan iSpanRetriveSpan = SessionMetrics.sessionMetrics.retriveSpan(str);
            if ((iSpanRetriveSpan instanceof Span) && iSpanRetriveSpan.isFinished()) {
                this.subSpanList.add(((Span) iSpanRetriveSpan).asJsonObject());
                arrayList.add(str);
            } else {
                Span.log.e("span type is error, type:".concat(iSpanRetriveSpan.getClass().getName()));
            }
        }
        HarvestData.getSpanDatas().addTransactionSpan(this);
        arrayList.add(this.spanId);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            SessionMetrics.sessionMetrics.removeMetric((String) it.next());
        }
    }
}
