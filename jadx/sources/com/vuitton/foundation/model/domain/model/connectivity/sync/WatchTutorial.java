package com.vuitton.foundation.model.domain.model.connectivity.sync;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorial;", "", "", b.a.f24015b, "title", "videoUrl", "videoSubtitlesUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchTutorial {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67350c;
    public final String d;

    public WatchTutorial(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        this.f67348a = str;
        this.f67349b = str2;
        this.f67350c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchTutorial)) {
            return false;
        }
        WatchTutorial watchTutorial = (WatchTutorial) obj;
        return Intrinsics.c(this.f67348a, watchTutorial.f67348a) && Intrinsics.c(this.f67349b, watchTutorial.f67349b) && Intrinsics.c(this.f67350c, watchTutorial.f67350c) && Intrinsics.c(this.d, watchTutorial.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f67348a.hashCode() * 31, 31, this.f67349b);
        String str = this.f67350c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("WatchTutorial(id=", this.f67348a, ", title=", this.f67349b, ", videoUrl="), this.f67350c, ", videoSubtitlesUrl=", this.d, ")");
    }
}
