package com.vuitton.foundation.model.domain.model.connectivity.lightup;

import com.vuitton.foundation.model.domain.model.connectivity.common.FaqVideo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/HomePageContent;", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;", "video", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqVideo;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HomePageContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FaqVideo f67327a;

    public /* synthetic */ HomePageContent(FaqVideo faqVideo, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : faqVideo);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HomePageContent) && Intrinsics.c(this.f67327a, ((HomePageContent) obj).f67327a);
    }

    public final int hashCode() {
        FaqVideo faqVideo = this.f67327a;
        if (faqVideo == null) {
            return 0;
        }
        return faqVideo.hashCode();
    }

    public final String toString() {
        return "HomePageContent(video=" + this.f67327a + ")";
    }

    public HomePageContent(FaqVideo faqVideo) {
        this.f67327a = faqVideo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HomePageContent() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
