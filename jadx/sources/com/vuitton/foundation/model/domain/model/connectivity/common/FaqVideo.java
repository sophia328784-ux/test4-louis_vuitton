package com.vuitton.foundation.model.domain.model.connectivity.common;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;", "", "", "subtitlesUrl", "videoUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FaqVideo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67316b;

    public /* synthetic */ FaqVideo(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FaqVideo)) {
            return false;
        }
        FaqVideo faqVideo = (FaqVideo) obj;
        return Intrinsics.c(this.f67315a, faqVideo.f67315a) && Intrinsics.c(this.f67316b, faqVideo.f67316b);
    }

    public final int hashCode() {
        String str = this.f67315a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67316b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return d21.l("FaqVideo(subtitlesUrl=", this.f67315a, ", videoUrl=", this.f67316b, ")");
    }

    public FaqVideo(String str, String str2) {
        this.f67315a = str;
        this.f67316b = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FaqVideo() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
