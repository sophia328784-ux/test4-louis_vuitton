package com.dynatrace.agent.events.enrichment;

import com.dynatrace.android.agent.util.Utility;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.TreeMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/AttributeAggregator;", "", "", "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;", "suppliers", "<init>", "(Ljava/util/List;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AttributeAggregator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f26761a;

    public AttributeAggregator(List<? extends AttributeSupplier> list) {
        list.getClass();
        this.f26761a = list;
    }

    public final TreeMap a() {
        TreeMap treeMap = new TreeMap();
        Iterator it = this.f26761a.iterator();
        while (it.hasNext()) {
            ListIterator listIterator = ((AttributeSupplier) it.next()).a().listIterator(0);
            while (listIterator.hasNext()) {
                EnrichmentAttribute enrichmentAttribute = (EnrichmentAttribute) listIterator.next();
                String str = enrichmentAttribute.f26766a;
                if (treeMap.containsKey(str)) {
                    Utility.b("attribute aggregation: overriding existing attribute " + treeMap.get(str) + " with " + enrichmentAttribute);
                }
                treeMap.put(str, enrichmentAttribute);
            }
        }
        return treeMap;
    }
}
