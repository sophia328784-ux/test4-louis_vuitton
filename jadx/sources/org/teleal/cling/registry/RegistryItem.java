package org.teleal.cling.registry;

import org.teleal.cling.model.ExpirationDetails;

/* JADX INFO: loaded from: classes5.dex */
class RegistryItem<K, I> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f78553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f78554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExpirationDetails f78555c;

    public RegistryItem(Object obj, Object obj2, int i2) {
        this.f78555c = new ExpirationDetails();
        this.f78553a = obj;
        this.f78554b = obj2;
        this.f78555c = new ExpirationDetails(i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f78553a.equals(((RegistryItem) obj).f78553a);
    }

    public final int hashCode() {
        return this.f78553a.hashCode();
    }

    public final String toString() {
        return "(" + getClass().getSimpleName() + ") " + this.f78555c + " KEY: " + this.f78553a + " ITEM: " + this.f78554b;
    }

    public RegistryItem(Object obj) {
        this.f78555c = new ExpirationDetails();
        this.f78553a = obj;
    }
}
