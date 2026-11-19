package com.dynatrace.agent.events.enrichment.sanitation;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class JsonAttributeKt {
    public static final JsonAttribute a(JsonAttribute jsonAttribute, AttributeSanitizer[] attributeSanitizerArr) {
        attributeSanitizerArr.getClass();
        for (AttributeSanitizer attributeSanitizer : attributeSanitizerArr) {
            jsonAttribute = attributeSanitizer.e(jsonAttribute);
            if (jsonAttribute == null) {
                return null;
            }
        }
        return jsonAttribute;
    }
}
