package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_PersistedEvent extends PersistedEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TransportContext f28098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EventInternal f28099c;

    public AutoValue_PersistedEvent(long j2, TransportContext transportContext, EventInternal eventInternal) {
        this.f28097a = j2;
        if (transportContext == null) {
            r81.d("Null transportContext");
            throw null;
        }
        this.f28098b = transportContext;
        if (eventInternal != null) {
            this.f28099c = eventInternal;
        } else {
            r81.d("Null event");
            throw null;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final EventInternal a() {
        return this.f28099c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final long b() {
        return this.f28097a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final TransportContext c() {
        return this.f28098b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersistedEvent)) {
            return false;
        }
        PersistedEvent persistedEvent = (PersistedEvent) obj;
        return this.f28097a == persistedEvent.b() && this.f28098b.equals(persistedEvent.c()) && this.f28099c.equals(persistedEvent.a());
    }

    public final int hashCode() {
        long j2 = this.f28097a;
        return this.f28099c.hashCode() ^ ((((((int) ((j2 >>> 32) ^ j2)) ^ 1000003) * 1000003) ^ this.f28098b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f28097a + ", transportContext=" + this.f28098b + ", event=" + this.f28099c + "}";
    }
}
