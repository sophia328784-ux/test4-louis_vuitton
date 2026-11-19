package org.teleal.cling.model;

/* JADX INFO: loaded from: classes5.dex */
public class ValidationError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f78389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78391c;

    public ValidationError(Class cls, String str, String str2) {
        this.f78389a = cls;
        this.f78390b = str;
        this.f78391c = str2;
    }

    public final String toString() {
        return getClass().getSimpleName() + " (Class: " + this.f78389a.getSimpleName() + ", propertyName: " + this.f78390b + "): " + this.f78391c;
    }

    public ValidationError(Class cls, String str) {
        this.f78389a = cls;
        this.f78391c = str;
    }
}
