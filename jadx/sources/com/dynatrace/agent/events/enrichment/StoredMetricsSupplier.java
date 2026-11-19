package com.dynatrace.agent.events.enrichment;

import com.dynatrace.agent.common.connectivity.NetworkType;
import com.dynatrace.agent.metrics.AppVersion;
import com.dynatrace.agent.storage.preference.MetricsData;
import java.math.BigDecimal;
import java.math.RoundingMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;", "Lcom/dynatrace/agent/events/enrichment/BaseMetricsSupplier;", "Lcom/dynatrace/agent/storage/preference/MetricsData;", "metricsData", "<init>", "(Lcom/dynatrace/agent/storage/preference/MetricsData;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class StoredMetricsSupplier extends BaseMetricsSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MetricsData f26773a;

    public StoredMetricsSupplier(MetricsData metricsData) {
        metricsData.getClass();
        this.f26773a = metricsData;
    }

    @Override // com.dynatrace.agent.events.enrichment.AttributeSupplier
    public final ListBuilder a() {
        String str;
        ListBuilder listBuilderV = CollectionsKt.v();
        MetricsData metricsData = this.f26773a;
        int i2 = metricsData.f26965a;
        Integer numValueOf = i2 >= 0 ? Integer.valueOf(i2) : null;
        int i3 = metricsData.f26966b;
        Integer numValueOf2 = i3 >= 0 ? Integer.valueOf(i3) : null;
        if (numValueOf2 != null && numValueOf != null) {
            AttributeSupplierKt.a(listBuilderV, "device.screen.width", numValueOf);
            AttributeSupplierKt.a(listBuilderV, "device.screen.height", numValueOf2);
        }
        String str2 = metricsData.g;
        if (str2 == null) {
            str2 = "unknown";
        }
        AttributeSupplierKt.a(listBuilderV, "device.manufacturer", str2);
        String str3 = metricsData.f26970h;
        if (str3 == null) {
            str3 = "unknown";
        }
        AttributeSupplierKt.a(listBuilderV, "device.model.identifier", str3);
        AttributeSupplierKt.a(listBuilderV, "device.is_rooted", Boolean.valueOf(metricsData.f26971i));
        int i4 = metricsData.f26967c;
        if (i4 != 1) {
            str = i4 != 2 ? null : "landscape";
        } else {
            str = "portrait";
        }
        AttributeSupplierKt.b(listBuilderV, "device.orientation", str);
        int i5 = metricsData.d;
        AttributeSupplierKt.b(listBuilderV, "device.battery.level", new IntRange(0, 100).m(i5) ? Integer.valueOf(i5) : null);
        AttributeSupplierKt.a(listBuilderV, "os.name", metricsData.f26972j);
        String str4 = metricsData.f26973k;
        AttributeSupplierKt.a(listBuilderV, "os.version", str4 != null ? str4 : "unknown");
        AppVersion appVersion = metricsData.m;
        if (appVersion != null) {
            AttributeSupplierKt.a(listBuilderV, "app.version", String.valueOf(appVersion.f26864a));
            AttributeSupplierKt.a(listBuilderV, "app.short_version", appVersion.f26865b);
        }
        AttributeSupplierKt.a(listBuilderV, "app.bundle", metricsData.l);
        Double d = metricsData.f26968e;
        Double d2 = metricsData.f26969f;
        if (d != null && d2 != null) {
            BigDecimal bigDecimal = new BigDecimal(d.doubleValue());
            RoundingMode roundingMode = RoundingMode.HALF_UP;
            AttributeSupplierKt.a(listBuilderV, "geo.location.latitude", Double.valueOf(bigDecimal.setScale(2, roundingMode).doubleValue()));
            AttributeSupplierKt.a(listBuilderV, "geo.location.longitude", Double.valueOf(new BigDecimal(d2.doubleValue()).setScale(2, roundingMode).doubleValue()));
        }
        NetworkType.Companion companion = NetworkType.INSTANCE;
        String str5 = metricsData.p;
        companion.getClass();
        AttributeSupplierKt.a(listBuilderV, "network.connection.type", NetworkType.Companion.a(str5).a());
        return CollectionsKt.r(listBuilderV);
    }
}
