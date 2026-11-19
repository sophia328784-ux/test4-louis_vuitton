package com.dynatrace.agent.events.enrichment;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.builders.ListBuilder;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AttributeSupplierKt {
    public static final void a(List list, String str, Object obj) {
        list.getClass();
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        obj.getClass();
        list.add(new EnrichmentAttribute(str, obj));
    }

    public static final void b(ListBuilder listBuilder, String str, Object obj) {
        if (obj != null) {
            a(listBuilder, str, obj);
        }
    }
}
