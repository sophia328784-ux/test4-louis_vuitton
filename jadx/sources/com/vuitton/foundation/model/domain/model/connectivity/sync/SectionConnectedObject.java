package com.vuitton.foundation.model.domain.model.connectivity.sync;

import com.vuitton.foundation.model.domain.model.connectivity.earphone.EarphoneSection;
import com.vuitton.foundation.model.domain.model.connectivity.horizon.HorizonSpeakerSection;
import com.vuitton.foundation.model.domain.model.connectivity.trunkspeaker.TrunkSpeakerSection;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionPromise;
import com.vuitton.foundation.model.domain.model.connectivity.watchv3.SectionWatchV3;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;", "sectionPromise", "Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;", "earphoneSection", "Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;", "horizonSpeakerSection", "Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;", "trunkSpeakerSection", "Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;", "sectionWatchV3", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;Lcom/vuitton/foundation/model/domain/model/connectivity/earphone/EarphoneSection;Lcom/vuitton/foundation/model/domain/model/connectivity/horizon/HorizonSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/trunkspeaker/TrunkSpeakerSection;Lcom/vuitton/foundation/model/domain/model/connectivity/watchv3/SectionWatchV3;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionConnectedObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionPromise f67337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EarphoneSection f67338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HorizonSpeakerSection f67339c;
    public final TrunkSpeakerSection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SectionWatchV3 f67340e;

    public /* synthetic */ SectionConnectedObject(SectionPromise sectionPromise, EarphoneSection earphoneSection, HorizonSpeakerSection horizonSpeakerSection, TrunkSpeakerSection trunkSpeakerSection, SectionWatchV3 sectionWatchV3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : sectionPromise, (i2 & 2) != 0 ? null : earphoneSection, (i2 & 4) != 0 ? null : horizonSpeakerSection, (i2 & 8) != 0 ? null : trunkSpeakerSection, (i2 & 16) != 0 ? null : sectionWatchV3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionConnectedObject)) {
            return false;
        }
        SectionConnectedObject sectionConnectedObject = (SectionConnectedObject) obj;
        return Intrinsics.c(this.f67337a, sectionConnectedObject.f67337a) && Intrinsics.c(this.f67338b, sectionConnectedObject.f67338b) && Intrinsics.c(this.f67339c, sectionConnectedObject.f67339c) && Intrinsics.c(this.d, sectionConnectedObject.d) && Intrinsics.c(this.f67340e, sectionConnectedObject.f67340e);
    }

    public final int hashCode() {
        SectionPromise sectionPromise = this.f67337a;
        int iHashCode = (sectionPromise == null ? 0 : sectionPromise.hashCode()) * 31;
        EarphoneSection earphoneSection = this.f67338b;
        int iHashCode2 = (iHashCode + (earphoneSection == null ? 0 : earphoneSection.hashCode())) * 31;
        HorizonSpeakerSection horizonSpeakerSection = this.f67339c;
        int iHashCode3 = (iHashCode2 + (horizonSpeakerSection == null ? 0 : horizonSpeakerSection.hashCode())) * 31;
        TrunkSpeakerSection trunkSpeakerSection = this.d;
        int iHashCode4 = (iHashCode3 + (trunkSpeakerSection == null ? 0 : trunkSpeakerSection.hashCode())) * 31;
        SectionWatchV3 sectionWatchV3 = this.f67340e;
        return iHashCode4 + (sectionWatchV3 != null ? sectionWatchV3.hashCode() : 0);
    }

    public final String toString() {
        return "SectionConnectedObject(sectionPromise=" + this.f67337a + ", earphoneSection=" + this.f67338b + ", horizonSpeakerSection=" + this.f67339c + ", trunkSpeakerSection=" + this.d + ", sectionWatchV3=" + this.f67340e + ")";
    }

    public SectionConnectedObject(SectionPromise sectionPromise, EarphoneSection earphoneSection, HorizonSpeakerSection horizonSpeakerSection, TrunkSpeakerSection trunkSpeakerSection, SectionWatchV3 sectionWatchV3) {
        this.f67337a = sectionPromise;
        this.f67338b = earphoneSection;
        this.f67339c = horizonSpeakerSection;
        this.d = trunkSpeakerSection;
        this.f67340e = sectionWatchV3;
    }

    public SectionConnectedObject() {
        this(null, null, null, null, null, 31, null);
    }
}
