package com.google.crypto.tink.internal;

import com.google.crypto.tink.util.Bytes;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class SerializationRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f34022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f34023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f34024c;
    public final HashMap d;

    public static class ParserIndex {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f34028a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bytes f34029b;

        public ParserIndex(Class cls, Bytes bytes) {
            this.f34028a = cls;
            this.f34029b = bytes;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ParserIndex)) {
                return false;
            }
            ParserIndex parserIndex = (ParserIndex) obj;
            return parserIndex.f34028a.equals(this.f34028a) && parserIndex.f34029b.equals(this.f34029b);
        }

        public final int hashCode() {
            return Objects.hash(this.f34028a, this.f34029b);
        }

        public final String toString() {
            return this.f34028a.getSimpleName() + ", object identifier: " + this.f34029b;
        }
    }

    public static class SerializerIndex {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f34030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f34031b;

        public SerializerIndex(Class cls, Class cls2) {
            this.f34030a = cls;
            this.f34031b = cls2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SerializerIndex)) {
                return false;
            }
            SerializerIndex serializerIndex = (SerializerIndex) obj;
            return serializerIndex.f34030a.equals(this.f34030a) && serializerIndex.f34031b.equals(this.f34031b);
        }

        public final int hashCode() {
            return Objects.hash(this.f34030a, this.f34031b);
        }

        public final String toString() {
            return this.f34030a.getSimpleName() + " with serialization type: " + this.f34031b.getSimpleName();
        }
    }

    public SerializationRegistry(Builder builder) {
        this.f34022a = new HashMap(builder.f34025a);
        this.f34023b = new HashMap(builder.f34026b);
        this.f34024c = new HashMap(builder.f34027c);
        this.d = new HashMap(builder.d);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f34025a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashMap f34026b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashMap f34027c;
        public final HashMap d;

        public Builder(SerializationRegistry serializationRegistry) {
            this.f34025a = new HashMap(serializationRegistry.f34022a);
            this.f34026b = new HashMap(serializationRegistry.f34023b);
            this.f34027c = new HashMap(serializationRegistry.f34024c);
            this.d = new HashMap(serializationRegistry.d);
        }

        public Builder() {
            this.f34025a = new HashMap();
            this.f34026b = new HashMap();
            this.f34027c = new HashMap();
            this.d = new HashMap();
        }
    }
}
