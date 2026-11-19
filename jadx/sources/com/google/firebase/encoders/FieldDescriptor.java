package com.google.firebase.encoders;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class FieldDescriptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f35090b;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f35091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public HashMap f35092b = null;

        public Builder(String str) {
            this.f35091a = str;
        }
    }

    public FieldDescriptor(String str, Map map) {
        this.f35089a = str;
        this.f35090b = map;
    }

    public static FieldDescriptor a(String str) {
        return new FieldDescriptor(str, Collections.EMPTY_MAP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldDescriptor)) {
            return false;
        }
        FieldDescriptor fieldDescriptor = (FieldDescriptor) obj;
        return this.f35089a.equals(fieldDescriptor.f35089a) && this.f35090b.equals(fieldDescriptor.f35090b);
    }

    public final int hashCode() {
        return this.f35090b.hashCode() + (this.f35089a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f35089a + ", properties=" + this.f35090b.values() + "}";
    }
}
