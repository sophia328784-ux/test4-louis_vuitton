package com.dynatrace.agent.storage.db;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/storage/db/EventMetadata;", "", "", b.a.f24015b, "timestamp", "", "isPriorityData", "", "eventSizeBytes", "<init>", "(JJZI)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EventMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26921c;
    public final int d;

    public EventMetadata(long j2, long j3, boolean z, int i2) {
        this.f26919a = j2;
        this.f26920b = j3;
        this.f26921c = z;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventMetadata)) {
            return false;
        }
        EventMetadata eventMetadata = (EventMetadata) obj;
        return this.f26919a == eventMetadata.f26919a && this.f26920b == eventMetadata.f26920b && this.f26921c == eventMetadata.f26921c && this.d == eventMetadata.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + o60.b(fc.a(Long.hashCode(this.f26919a) * 31, 31, this.f26920b), 31, this.f26921c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventMetadata(id=");
        sb.append(this.f26919a);
        sb.append(", timestamp=");
        sb.append(this.f26920b);
        sb.append(", isPriorityData=");
        sb.append(this.f26921c);
        sb.append(", eventSizeBytes=");
        return tr.k(sb, this.d, ')');
    }
}
