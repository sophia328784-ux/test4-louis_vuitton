package defpackage;

import com.dynatrace.agent.events.enrichment.AttributeSupplier;
import com.dynatrace.agent.events.enrichment.AttributeSupplierKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kh0 implements AttributeSupplier {
    @Override // com.dynatrace.agent.events.enrichment.AttributeSupplier
    public final ListBuilder a() {
        ListBuilder listBuilderV = CollectionsKt.v();
        AttributeSupplierKt.a(listBuilderV, "characteristics.is_api_reported", Boolean.TRUE);
        return CollectionsKt.r(listBuilderV);
    }
}
