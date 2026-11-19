package com.google.firebase.crashlytics.internal.metadata;

import defpackage.fc;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B/\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/google/firebase/crashlytics/internal/metadata/EventMetadata;", "", "", "sessionId", "", "timestamp", "", "additionalCustomKeys", "<init>", "(Ljava/lang/String;JLjava/util/Map;)V", "com.google.firebase-firebase-crashlytics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EventMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34602a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f34603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f34604c;

    public EventMetadata(String str, long j2, Map<String, String> map) {
        str.getClass();
        map.getClass();
        this.f34602a = str;
        this.f34603b = j2;
        this.f34604c = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventMetadata)) {
            return false;
        }
        EventMetadata eventMetadata = (EventMetadata) obj;
        return Intrinsics.c(this.f34602a, eventMetadata.f34602a) && this.f34603b == eventMetadata.f34603b && Intrinsics.c(this.f34604c, eventMetadata.f34604c);
    }

    public final int hashCode() {
        return this.f34604c.hashCode() + fc.a(this.f34602a.hashCode() * 31, 31, this.f34603b);
    }

    public final String toString() {
        return "EventMetadata(sessionId=" + this.f34602a + ", timestamp=" + this.f34603b + ", additionalCustomKeys=" + this.f34604c + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EventMetadata(String str, long j2) {
        this(str, j2, null, 4, null);
        str.getClass();
    }

    public /* synthetic */ EventMetadata(String str, long j2, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j2, (i2 & 4) != 0 ? MapsKt.c() : map);
    }
}
