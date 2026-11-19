package com.vuitton.foundation.model.domain.model.common;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.video.VideoId;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;", "", "Lcom/vuitton/foundation/model/domain/model/video/VideoId;", "videoId", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeholder", "subtitle", "Ljava/time/Instant;", "eventStartTimeInUTC", "Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;", "liveVideoStatus", "streamUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetVideo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67113c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Instant f67114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LiveVideoStatus f67115f;
    public final String g;

    public AssetVideo(String str, String str2, String str3, String str4, Instant instant, LiveVideoStatus liveVideoStatus, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        liveVideoStatus.getClass();
        str5.getClass();
        this.f67111a = str;
        this.f67112b = str2;
        this.f67113c = str3;
        this.d = str4;
        this.f67114e = instant;
        this.f67115f = liveVideoStatus;
        this.g = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetVideo)) {
            return false;
        }
        AssetVideo assetVideo = (AssetVideo) obj;
        String str = assetVideo.f67111a;
        VideoId.Companion companion = VideoId.f68280a;
        return this.f67111a.equals(str) && this.f67112b.equals(assetVideo.f67112b) && this.f67113c.equals(assetVideo.f67113c) && this.d.equals(assetVideo.d) && Intrinsics.c(this.f67114e, assetVideo.f67114e) && this.f67115f == assetVideo.f67115f && this.g.equals(assetVideo.g);
    }

    public final int hashCode() {
        VideoId.Companion companion = VideoId.f68280a;
        int iB = fc.b(fc.b(fc.b(this.f67111a.hashCode() * 31, 31, this.f67112b), 31, this.f67113c), 31, this.d);
        Instant instant = this.f67114e;
        return this.g.hashCode() + ((this.f67115f.hashCode() + ((iB + (instant == null ? 0 : instant.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        VideoId.Companion companion = VideoId.f68280a;
        StringBuilder sbS = fc.s("AssetVideo(videoId=", this.f67111a, ", url=", this.f67112b, ", placeholder=");
        cj.C(sbS, this.f67113c, ", subtitle=", this.d, ", eventStartTimeInUTC=");
        sbS.append(this.f67114e);
        sbS.append(", liveVideoStatus=");
        sbS.append(this.f67115f);
        sbS.append(", streamUrl=");
        return n00.r(this.g, ")", sbS);
    }
}
