package com.dynatrace.agent.events.enrichment;

import com.dynatrace.agent.api.EventModifier;
import com.dynatrace.agent.events.enrichment.merge.ModifiedJsonMerger;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeKt;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.dynatrace.android.agent.util.Utility;
import defpackage.fw;
import defpackage.k60;
import defpackage.ms;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$sorted$1;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class EnrichmentPipelineKt {
    public static final EnrichedJsonContainer a(EnrichedJsonContainer enrichedJsonContainer, ConcurrentLinkedQueue concurrentLinkedQueue) {
        JSONObject jSONObject = enrichedJsonContainer.f26764a;
        concurrentLinkedQueue.getClass();
        if (concurrentLinkedQueue.isEmpty()) {
            return enrichedJsonContainer;
        }
        Utility.b("apply modifications: with " + concurrentLinkedQueue.size() + " modifier(s)");
        JSONObject jSONObjectB = JsonObjectExtensionsKt.b(jSONObject);
        Iterator it = concurrentLinkedQueue.iterator();
        it.getClass();
        boolean z = false;
        while (it.hasNext()) {
            EventModifier eventModifier = (EventModifier) it.next();
            try {
                jSONObjectB = eventModifier.a();
            } catch (Exception unused) {
                Utility.b("apply modifications: event modifier caused exception. EventModifier: " + Reflection.f71922a.b(eventModifier.getClass()).B());
                z = true;
            }
            if (jSONObjectB == null) {
                Utility.b("apply modifications: event dropped by event modifier. EventModifier: " + Reflection.f71922a.b(eventModifier.getClass()).B());
                break;
            }
        }
        if (jSONObjectB == null) {
            return null;
        }
        return b(enrichedJsonContainer, jSONObjectB, z, JsonObjectExtensionsKt.c("characteristics.has_session_properties", jSONObject));
    }

    public static final EnrichedJsonContainer b(EnrichedJsonContainer enrichedJsonContainer, JSONObject jSONObject, boolean z, boolean z2) throws JSONException {
        int i2;
        AttributeRetentionRule attributeRetentionRule;
        AttributeSanitizer[] attributeSanitizerArr;
        ModifiedJsonMerger modifiedJsonMerger = new ModifiedJsonMerger(enrichedJsonContainer, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        JSONObject jSONObject2 = modifiedJsonMerger.f26781b;
        Iterator<String> itKeys = jSONObject2.keys();
        itKeys.getClass();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!jSONObject.has(next)) {
                next.getClass();
                if (modifiedJsonMerger.f26780a ? StringsKt.P(next, "session_properties.", false) : StringsKt.P(next, "event_properties.", false)) {
                    Object obj = jSONObject2.get(next);
                    obj.getClass();
                    arrayList.add(new EnrichmentAttribute(next, obj));
                    arrayList2.add(next);
                    Utility.b("merge modifications: attribute '" + next + "' has been removed by event modifier");
                } else {
                    Utility.b("merge modifications: removing of protected attribute '" + next + "' is not allowed and thus ignored");
                }
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            jSONObject2.remove((String) it.next());
        }
        ArrayList arrayList3 = modifiedJsonMerger.f26782c;
        arrayList3.addAll(arrayList);
        Iterator<String> itKeys2 = jSONObject.keys();
        itKeys2.getClass();
        Iterator f74480a = new SequencesKt___SequencesKt$sorted$1(SequencesKt.b(itKeys2)).getF74480a();
        while (true) {
            boolean zHasNext = f74480a.hasNext();
            i2 = 11;
            attributeRetentionRule = modifiedJsonMerger.f26784f;
            if (!zHasNext) {
                break;
            }
            String str = (String) f74480a.next();
            Object obj2 = jSONObject.get(str);
            obj2.getClass();
            Object objA = JsonObjectExtensionsKt.a(obj2);
            str.getClass();
            JsonAttribute jsonAttribute = new JsonAttribute(str, objA);
            boolean zHas = jSONObject2.has(str);
            String str2 = jsonAttribute.f26786a;
            if (!zHas) {
                JsonAttribute jsonAttributeA = JsonAttributeKt.a(jsonAttribute, modifiedJsonMerger.f26785h);
                if (jsonAttributeA != null) {
                    JsonObjectExtensionsKt.e(jSONObject2, jsonAttributeA);
                } else {
                    modifiedJsonMerger.a(str2);
                }
            } else if (!Intrinsics.c(jSONObject2.get(str2), jsonAttribute.f26787b)) {
                List list = JsonAttributeSanitationKt.d;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            attributeSanitizerArr = modifiedJsonMerger.g;
                            break;
                        }
                        if (Intrinsics.c((String) it2.next(), str2)) {
                            attributeSanitizerArr = new AttributeSanitizer[]{new fw(new AttributeRetentionRule[]{attributeRetentionRule, JsonAttributeSanitationKt.f26793h}, 11), JsonAttributeSanitationKt.f26794i, new ms(jSONObject2.get(str2).toString().length(), 2)};
                            break;
                        }
                    }
                } else {
                    attributeSanitizerArr = modifiedJsonMerger.g;
                    break;
                }
                JsonAttribute jsonAttributeA2 = JsonAttributeKt.a(jsonAttribute, attributeSanitizerArr);
                if (jsonAttributeA2 != null) {
                    Object obj3 = jSONObject2.get(str2);
                    obj3.getClass();
                    EnrichmentAttribute enrichmentAttribute = new EnrichmentAttribute(str2, obj3);
                    JsonObjectExtensionsKt.e(jSONObject2, jsonAttributeA2);
                    arrayList3.add(enrichmentAttribute);
                    Utility.b("merge modifications: attribute '" + str2 + "' is overwritten by " + jsonAttributeA2);
                } else {
                    modifiedJsonMerger.a(str2);
                }
            }
        }
        Iterator<String> itKeys3 = jSONObject2.keys();
        itKeys3.getClass();
        List listX = SequencesKt.x(new SequencesKt___SequencesKt$sorted$1(SequencesKt.f(SequencesKt.b(itKeys3), new k60(attributeRetentionRule, modifiedJsonMerger, i2))));
        int size = listX.size();
        ArrayList arrayList4 = modifiedJsonMerger.f26783e;
        if (size > 50) {
            ArrayList arrayList5 = new ArrayList();
            ListIterator listIterator = listX.listIterator(50);
            while (listIterator.hasNext()) {
                String str3 = (String) listIterator.next();
                jSONObject2.remove(str3);
                str3.getClass();
                arrayList5.add(str3);
            }
            arrayList4.addAll(arrayList5);
            Utility.b("merge modifications: dropped some fields after alphabetical sort; total fields: " + listX.size() + ", limit: 50; dropped keys: " + CollectionsKt.K(arrayList5, ", ", null, null, null, 62));
        }
        if (!arrayList4.isEmpty()) {
            jSONObject2.put("dt.support.api.has_dropped_custom_properties", true);
        }
        if (!modifiedJsonMerger.d.isEmpty()) {
            jSONObject2.put("dt.support.api.has_dropped_properties", true);
        }
        EnrichedJsonContainer enrichedJsonContainer2 = new EnrichedJsonContainer(jSONObject2, arrayList3);
        if (z) {
            enrichedJsonContainer2.f26764a.put("dt.support.api.has_enrich_exception", true);
        }
        return enrichedJsonContainer2;
    }
}
