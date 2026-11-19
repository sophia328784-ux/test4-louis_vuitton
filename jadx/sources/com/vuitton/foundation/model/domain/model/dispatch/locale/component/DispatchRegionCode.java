package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;", "", "Companion", "regionCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class DispatchRegionCode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f67495b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67496a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ DispatchRegionCode(String str) {
        this.f67496a = str;
    }

    public static String a(String str) {
        return fc.h("DispatchRegionCode(regionCode=", RegionCode.a(str), ")");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DispatchRegionCode)) {
            return false;
        }
        String str = ((DispatchRegionCode) obj).f67496a;
        RegionCode.Companion companion = RegionCode.f67513b;
        return Intrinsics.c(this.f67496a, str);
    }

    public final int hashCode() {
        RegionCode.Companion companion = RegionCode.f67513b;
        return this.f67496a.hashCode();
    }

    public final String toString() {
        return a(this.f67496a);
    }
}
