package com.vuitton.foundation.model.domain.model.connectivity.common;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;", "", "", "title", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;", "video", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Tutorial {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Video f67318b;

    public Tutorial(String str, Video video) {
        str.getClass();
        video.getClass();
        this.f67317a = str;
        this.f67318b = video;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tutorial)) {
            return false;
        }
        Tutorial tutorial = (Tutorial) obj;
        return Intrinsics.c(this.f67317a, tutorial.f67317a) && Intrinsics.c(this.f67318b, tutorial.f67318b);
    }

    public final int hashCode() {
        return this.f67318b.hashCode() + (this.f67317a.hashCode() * 31);
    }

    public final String toString() {
        return "Tutorial(title=" + this.f67317a + ", video=" + this.f67318b + ")";
    }
}
