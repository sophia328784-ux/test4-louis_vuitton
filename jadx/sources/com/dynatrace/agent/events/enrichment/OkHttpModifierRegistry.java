package com.dynatrace.agent.events.enrichment;

import com.dynatrace.agent.api.OkHttpEventModifier;
import com.dynatrace.android.agent.util.Utility;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/OkHttpModifierRegistry;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class OkHttpModifierRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentLinkedQueue f26768a = new ConcurrentLinkedQueue();

    public static WebContext a(Function1 function1) {
        JSONObject jSONObject = new JSONObject();
        Iterator it = f26768a.iterator();
        it.getClass();
        boolean z = false;
        while (it.hasNext()) {
            OkHttpEventModifier okHttpEventModifier = (OkHttpEventModifier) it.next();
            try {
                okHttpEventModifier.getClass();
                JSONObject jSONObject2 = (JSONObject) function1.invoke(okHttpEventModifier);
                if (jSONObject2 == null) {
                    Utility.b("Explicitly dropping the event in modifier " + okHttpEventModifier.getClass().getName());
                    return new WebContext(null, z);
                }
                JsonObjectExtensionsKt.f(jSONObject, jSONObject2, EmptyList.f71768b);
            } catch (Exception e2) {
                Utility.b("OkHttp callback listener " + okHttpEventModifier.getClass().getName() + " threw an exception " + e2.getClass().getName());
                z = true;
            }
        }
        return new WebContext(jSONObject, z);
    }
}
