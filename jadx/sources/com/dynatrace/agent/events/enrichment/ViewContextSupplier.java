package com.dynatrace.agent.events.enrichment;

import com.dynatrace.agent.view.ViewContext;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/ViewContextSupplier;", "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;", "Lcom/dynatrace/agent/view/ViewContext;", "viewContext", "<init>", "(Lcom/dynatrace/agent/view/ViewContext;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ViewContextSupplier implements AttributeSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewContext f26777a;

    public ViewContextSupplier(ViewContext viewContext) {
        viewContext.getClass();
        this.f26777a = viewContext;
    }

    @Override // com.dynatrace.agent.events.enrichment.AttributeSupplier
    public final ListBuilder a() {
        ListBuilder listBuilderV = CollectionsKt.v();
        ViewContext viewContext = this.f26777a;
        AttributeSupplierKt.a(listBuilderV, "view.instance_id", viewContext.f27217a);
        AttributeSupplierKt.b(listBuilderV, "view.detected_name", viewContext.f27219c);
        AttributeSupplierKt.b(listBuilderV, "view.name", viewContext.f27218b);
        return CollectionsKt.r(listBuilderV);
    }
}
