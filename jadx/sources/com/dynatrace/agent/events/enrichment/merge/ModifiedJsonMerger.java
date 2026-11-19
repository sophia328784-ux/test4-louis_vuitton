package com.dynatrace.agent.events.enrichment.merge;

import com.dynatrace.agent.events.enrichment.EnrichedJsonContainer;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeRetentionRule;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import defpackage.d20;
import defpackage.fw;
import defpackage.ms;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/merge/ModifiedJsonMerger;", "", "Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;", "baseJsonContainer", "", "isSessionPropertiesEvent", "<init>", "(Lcom/dynatrace/agent/events/enrichment/EnrichedJsonContainer;Z)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ModifiedJsonMerger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f26780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f26781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f26782c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f26783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AttributeRetentionRule f26784f;
    public final AttributeSanitizer[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AttributeSanitizer[] f26785h;

    public ModifiedJsonMerger(EnrichedJsonContainer enrichedJsonContainer, boolean z) {
        enrichedJsonContainer.getClass();
        this.f26780a = z;
        this.f26781b = enrichedJsonContainer.f26764a;
        this.f26782c = CollectionsKt.z0(enrichedJsonContainer.f26765b);
        this.d = new ArrayList();
        this.f26783e = new ArrayList();
        d20 d20Var = z ? JsonAttributeSanitationKt.f26791e : JsonAttributeSanitationKt.f26792f;
        this.f26784f = d20Var;
        fw fwVar = new fw(new AttributeRetentionRule[]{d20Var, JsonAttributeSanitationKt.f26793h}, 11);
        d20 d20Var2 = JsonAttributeSanitationKt.f26794i;
        this.g = new AttributeSanitizer[]{fwVar, d20Var2, new ms(5000, 2)};
        this.f26785h = new AttributeSanitizer[]{new fw(new AttributeRetentionRule[]{d20Var}, 11), JsonAttributeSanitationKt.f26795j, JsonAttributeSanitationKt.f26796k, d20Var2, new ms(5000, 2)};
    }

    public final void a(String str) {
        if (StringsKt.P(str, "event_properties.", false) || StringsKt.P(str, "session_properties.", false)) {
            this.f26783e.add(str);
        } else {
            this.d.add(str);
        }
    }
}
