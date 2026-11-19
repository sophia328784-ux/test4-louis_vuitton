package org.teleal.cling.support.model;

/* JADX INFO: loaded from: classes5.dex */
public class Person {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78590a;

    public Person(String str) {
        this.f78590a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78590a.equals(((Person) obj).f78590a);
    }

    public final int hashCode() {
        return this.f78590a.hashCode();
    }

    public final String toString() {
        return this.f78590a;
    }
}
