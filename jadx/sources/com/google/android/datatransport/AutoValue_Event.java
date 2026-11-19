package com.google.android.datatransport;

import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_Event<T> extends Event<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f27788a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Priority f27789b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductData f27790c;

    public AutoValue_Event(Object obj, Priority priority, ProductData productData) {
        if (obj == null) {
            r81.d("Null payload");
            throw null;
        }
        this.f27788a = obj;
        if (priority == null) {
            r81.d("Null priority");
            throw null;
        }
        this.f27789b = priority;
        this.f27790c = productData;
    }

    @Override // com.google.android.datatransport.Event
    public final Integer a() {
        return null;
    }

    @Override // com.google.android.datatransport.Event
    public final EventContext b() {
        return null;
    }

    @Override // com.google.android.datatransport.Event
    public final Object c() {
        return this.f27788a;
    }

    @Override // com.google.android.datatransport.Event
    public final Priority d() {
        return this.f27789b;
    }

    @Override // com.google.android.datatransport.Event
    public final ProductData e() {
        return this.f27790c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Event)) {
            return false;
        }
        Event event = (Event) obj;
        if (event.a() != null || !this.f27788a.equals(event.c()) || !this.f27789b.equals(event.d())) {
            return false;
        }
        ProductData productData = this.f27790c;
        if (productData == null) {
            if (event.e() != null) {
                return false;
            }
        } else if (!productData.equals(event.e())) {
            return false;
        }
        return event.b() == null;
    }

    public final int hashCode() {
        int iHashCode = ((((1000003 * 1000003) ^ this.f27788a.hashCode()) * 1000003) ^ this.f27789b.hashCode()) * 1000003;
        ProductData productData = this.f27790c;
        return ((productData == null ? 0 : productData.hashCode()) ^ iHashCode) * 1000003;
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.f27788a + ", priority=" + this.f27789b + ", productData=" + this.f27790c + ", eventContext=null}";
    }
}
