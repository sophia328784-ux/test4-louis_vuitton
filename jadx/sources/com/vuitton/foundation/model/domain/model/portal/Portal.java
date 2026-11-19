package com.vuitton.foundation.model.domain.model.portal;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.Sound;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u000fBC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/portal/Portal;", "", "", ConfigurationName.KEY, "surtitle", "title", "Lcom/vuitton/foundation/model/domain/model/common/Asset;", "asset", "", "Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;", "slides", "Lcom/vuitton/foundation/model/domain/model/common/Sound;", "sound", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/Sound;)V", "Slide", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Portal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67862c;
    public final Asset d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f67863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Sound f67864f;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/portal/Portal$Slide;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;", "type", "Lcom/vuitton/foundation/model/domain/model/portal/PortalData;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/portal/PortalSlideType;Lcom/vuitton/foundation/model/domain/model/portal/PortalData;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Slide {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67865a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PortalSlideType f67866b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PortalData f67867c;

        public Slide(String str, PortalSlideType portalSlideType, PortalData portalData) {
            str.getClass();
            portalSlideType.getClass();
            portalData.getClass();
            this.f67865a = str;
            this.f67866b = portalSlideType;
            this.f67867c = portalData;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Slide)) {
                return false;
            }
            Slide slide = (Slide) obj;
            return Intrinsics.c(this.f67865a, slide.f67865a) && this.f67866b == slide.f67866b && Intrinsics.c(this.f67867c, slide.f67867c);
        }

        public final int hashCode() {
            return this.f67867c.hashCode() + ((this.f67866b.hashCode() + (this.f67865a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "Slide(id=" + this.f67865a + ", type=" + this.f67866b + ", data=" + this.f67867c + ")";
        }
    }

    public Portal(String str, String str2, String str3, Asset asset, List<Slide> list, Sound sound) {
        str.getClass();
        asset.getClass();
        list.getClass();
        this.f67860a = str;
        this.f67861b = str2;
        this.f67862c = str3;
        this.d = asset;
        this.f67863e = list;
        this.f67864f = sound;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Portal)) {
            return false;
        }
        Portal portal = (Portal) obj;
        return Intrinsics.c(this.f67860a, portal.f67860a) && Intrinsics.c(this.f67861b, portal.f67861b) && Intrinsics.c(this.f67862c, portal.f67862c) && Intrinsics.c(this.d, portal.d) && Intrinsics.c(this.f67863e, portal.f67863e) && Intrinsics.c(this.f67864f, portal.f67864f);
    }

    public final int hashCode() {
        int iHashCode = this.f67860a.hashCode() * 31;
        String str = this.f67861b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67862c;
        int iA = n00.a((this.d.hashCode() + ((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31, 31, this.f67863e);
        Sound sound = this.f67864f;
        return iA + (sound != null ? sound.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Portal(key=", this.f67860a, ", surtitle=", this.f67861b, ", title=");
        sbS.append(this.f67862c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", slides=");
        sbS.append(this.f67863e);
        sbS.append(", sound=");
        sbS.append(this.f67864f);
        sbS.append(")");
        return sbS.toString();
    }
}
