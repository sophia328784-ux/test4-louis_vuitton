package com.vuitton.foundation.model.domain.model.audioguide;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\rB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail;", "", "", b.a.f24015b, "title", "label", "", "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;", "sections", "Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;", "transcript", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "Cue", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TrackDetail {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66579c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f66580e;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/TrackDetail$Cue;", "", "", "startMs", "endMs", "", "text", "<init>", "(JJLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Cue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f66581a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f66582b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66583c;

        public Cue(long j2, long j3, String str) {
            str.getClass();
            this.f66581a = j2;
            this.f66582b = j3;
            this.f66583c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cue)) {
                return false;
            }
            Cue cue = (Cue) obj;
            return this.f66581a == cue.f66581a && this.f66582b == cue.f66582b && Intrinsics.c(this.f66583c, cue.f66583c);
        }

        public final int hashCode() {
            return this.f66583c.hashCode() + fc.a(Long.hashCode(this.f66581a) * 31, 31, this.f66582b);
        }

        public final String toString() {
            StringBuilder sbQ = pq0.q(this.f66581a, "Cue(startMs=", ", endMs=");
            sbQ.append(this.f66582b);
            sbQ.append(", text=");
            sbQ.append(this.f66583c);
            sbQ.append(")");
            return sbQ.toString();
        }
    }

    public TrackDetail(String str, String str2, String str3, List<? extends EditorialModule> list, List<Cue> list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        list2.getClass();
        this.f66577a = str;
        this.f66578b = str2;
        this.f66579c = str3;
        this.d = list;
        this.f66580e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrackDetail)) {
            return false;
        }
        TrackDetail trackDetail = (TrackDetail) obj;
        return Intrinsics.c(this.f66577a, trackDetail.f66577a) && Intrinsics.c(this.f66578b, trackDetail.f66578b) && Intrinsics.c(this.f66579c, trackDetail.f66579c) && Intrinsics.c(this.d, trackDetail.d) && Intrinsics.c(this.f66580e, trackDetail.f66580e);
    }

    public final int hashCode() {
        return this.f66580e.hashCode() + n00.a(fc.b(fc.b(this.f66577a.hashCode() * 31, 31, this.f66578b), 31, this.f66579c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TrackDetail(id=", this.f66577a, ", title=", this.f66578b, ", label=");
        d21.z(this.f66579c, ", sections=", ", transcript=", sbS, this.d);
        return a.o(sbS, this.f66580e, ")");
    }
}
