package com.vuitton.foundation.model.domain.model.connectivity.sync;

import com.vuitton.foundation.model.domain.model.connectivity.lightup.LightUpSection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;", "sectionConnectedObject", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;", "lightUpSection", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LightUpSection;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionHome {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionConnectedObject f67342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LightUpSection f67343b;

    public /* synthetic */ SectionHome(SectionConnectedObject sectionConnectedObject, LightUpSection lightUpSection, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : sectionConnectedObject, (i2 & 2) != 0 ? null : lightUpSection);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionHome)) {
            return false;
        }
        SectionHome sectionHome = (SectionHome) obj;
        return Intrinsics.c(this.f67342a, sectionHome.f67342a) && Intrinsics.c(this.f67343b, sectionHome.f67343b);
    }

    public final int hashCode() {
        SectionConnectedObject sectionConnectedObject = this.f67342a;
        int iHashCode = (sectionConnectedObject == null ? 0 : sectionConnectedObject.hashCode()) * 31;
        LightUpSection lightUpSection = this.f67343b;
        return iHashCode + (lightUpSection != null ? lightUpSection.hashCode() : 0);
    }

    public final String toString() {
        return "SectionHome(sectionConnectedObject=" + this.f67342a + ", lightUpSection=" + this.f67343b + ")";
    }

    public SectionHome(SectionConnectedObject sectionConnectedObject, LightUpSection lightUpSection) {
        this.f67342a = sectionConnectedObject;
        this.f67343b = lightUpSection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SectionHome() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
