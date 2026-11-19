package com.dynatrace.agent;

import com.dynatrace.agent.events.enrichment.JsonObjectExtensionsKt;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeKt;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.dynatrace.agent.events.enrichment.sanitation.SanitationContext;
import com.dynatrace.agent.events.enrichment.sanitation.SanitationStrategiesKt;
import com.dynatrace.android.agent.util.Utility;
import defpackage.fw;
import defpackage.ms;
import defpackage.x20;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$sorted$1;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final /* synthetic */ class OneAgentEventDispatcher$dispatchEventWithRestrictions$1 extends FunctionReferenceImpl implements Function1<JSONObject, SanitationContext> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final OneAgentEventDispatcher$dispatchEventWithRestrictions$1 f26458b = new OneAgentEventDispatcher$dispatchEventWithRestrictions$1(1, SanitationStrategiesKt.class, "sanitizeRumEvent", "sanitizeRumEvent(Lorg/json/JSONObject;)Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;", 1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        JSONObject jSONObject = (JSONObject) obj;
        jSONObject.getClass();
        AttributeSanitizer[] attributeSanitizerArr = {new fw(new AttributeRetentionRule[]{JsonAttributeSanitationKt.g, JsonAttributeSanitationKt.f26792f}, 11), JsonAttributeSanitationKt.f26795j, JsonAttributeSanitationKt.f26796k, JsonAttributeSanitationKt.f26794i, new ms(5000, 2)};
        JSONObject jSONObject2 = new JSONObject();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            next.getClass();
            Object obj2 = jSONObject.get(next);
            obj2.getClass();
            JsonAttribute jsonAttribute = new JsonAttribute(next, JsonObjectExtensionsKt.a(obj2));
            JsonAttribute jsonAttributeA = JsonAttributeKt.a(jsonAttribute, attributeSanitizerArr);
            if (jsonAttributeA != null) {
                JsonObjectExtensionsKt.e(jSONObject2, jsonAttributeA);
            } else if (StringsKt.P(next, "event_properties.", false) || StringsKt.P(next, "session_properties.", false)) {
                arrayList2.add(jsonAttribute);
            } else {
                arrayList.add(jsonAttribute);
            }
        }
        SanitationContext sanitationContext = new SanitationContext(jSONObject2, arrayList, arrayList2);
        JSONObject jSONObject3 = sanitationContext.f26797a;
        Iterator<String> itKeys2 = jSONObject3.keys();
        itKeys2.getClass();
        List listX = SequencesKt.x(new SequencesKt___SequencesKt$sorted$1(SequencesKt.f(SequencesKt.b(itKeys2), new x20(14))));
        int size = listX.size();
        List list = sanitationContext.f26799c;
        if (size > 50) {
            ArrayList arrayList3 = new ArrayList();
            ListIterator listIterator = listX.listIterator(50);
            while (listIterator.hasNext()) {
                String str = (String) listIterator.next();
                Object objRemove = jSONObject3.remove(str);
                objRemove.getClass();
                str.getClass();
                arrayList3.add(new JsonAttribute(str, objRemove));
            }
            Utility.b("sanitation: json contains too many attributes in event_properties. namespace : " + listX.size() + "; dropped attributes: " + arrayList3);
            list.addAll(arrayList3);
        }
        if (!sanitationContext.f26798b.isEmpty()) {
            jSONObject3.put("dt.support.api.has_dropped_properties", true);
        }
        if (!list.isEmpty()) {
            jSONObject3.put("dt.support.api.has_dropped_custom_properties", true);
        }
        return sanitationContext;
    }
}
