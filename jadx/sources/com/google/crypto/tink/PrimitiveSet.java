package com.google.crypto.tink;

import com.google.crypto.tink.internal.MutableSerializationRegistry;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.monitoring.MonitoringAnnotations;
import com.google.crypto.tink.proto.KeyStatusType;
import com.google.crypto.tink.proto.Keyset;
import com.google.crypto.tink.proto.OutputPrefixType;
import com.google.crypto.tink.subtle.Hex;
import defpackage.md;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public final class PrimitiveSet<P> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentMap f33860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Entry f33861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MonitoringAnnotations f33862c;

    public static class Builder<P> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f33863a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Entry f33865c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ConcurrentHashMap f33864b = new ConcurrentHashMap();
        public MonitoringAnnotations d = MonitoringAnnotations.f34088b;

        public Builder(Class cls) {
            this.f33863a = cls;
        }

        public final void a(Object obj, Object obj2, Keyset.Key key, boolean z) throws GeneralSecurityException {
            byte[] bArrArray;
            if (this.f33864b == null) {
                md.k("addPrimitive cannot be called after build");
                return;
            }
            if (obj == null && obj2 == null) {
                v40.j("at least one of the `fullPrimitive` or `primitive` must be set");
                return;
            }
            if (key.O() != KeyStatusType.ENABLED) {
                v40.j("only ENABLED key is allowed");
                return;
            }
            ConcurrentHashMap concurrentHashMap = this.f33864b;
            Integer numValueOf = Integer.valueOf(key.M());
            if (key.N() == OutputPrefixType.RAW) {
                numValueOf = null;
            }
            Key keyA = MutableSerializationRegistry.f34002b.a(ProtoKeySerialization.a(key.L().M(), key.L().N(), key.L().L(), key.N(), numValueOf));
            int i2 = CryptoFormat.AnonymousClass1.f33841a[key.N().ordinal()];
            if (i2 == 1 || i2 == 2) {
                bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(key.M()).array();
            } else if (i2 == 3) {
                bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(key.M()).array();
            } else {
                if (i2 != 4) {
                    v40.j("unknown output prefix type");
                    return;
                }
                bArrArray = CryptoFormat.f33840a;
            }
            Entry entry = new Entry(obj, obj2, bArrArray, key.O(), key.N(), key.M(), key.L().M(), keyA);
            ArrayList arrayList = new ArrayList();
            arrayList.add(entry);
            byte[] bArr = entry.f33868c;
            Prefix prefix = new Prefix(bArr != null ? Arrays.copyOf(bArr, bArr.length) : null);
            List list = (List) concurrentHashMap.put(prefix, Collections.unmodifiableList(arrayList));
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(list);
                arrayList2.add(entry);
                concurrentHashMap.put(prefix, Collections.unmodifiableList(arrayList2));
            }
            if (z) {
                if (this.f33865c == null) {
                    this.f33865c = entry;
                } else {
                    md.k("you cannot set two primary primitives");
                }
            }
        }
    }

    public static final class Entry<P> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f33866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f33867b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f33868c;
        public final KeyStatusType d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final OutputPrefixType f33869e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f33870f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Key f33871h;

        public Entry(Object obj, Object obj2, byte[] bArr, KeyStatusType keyStatusType, OutputPrefixType outputPrefixType, int i2, String str, Key key) {
            this.f33866a = obj;
            this.f33867b = obj2;
            this.f33868c = Arrays.copyOf(bArr, bArr.length);
            this.d = keyStatusType;
            this.f33869e = outputPrefixType;
            this.f33870f = i2;
            this.g = str;
            this.f33871h = key;
        }
    }

    public static class Prefix implements Comparable<Prefix> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f33872b;

        public Prefix(byte[] bArr) {
            this.f33872b = Arrays.copyOf(bArr, bArr.length);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Prefix prefix) {
            Prefix prefix2 = prefix;
            byte[] bArr = this.f33872b;
            int length = bArr.length;
            byte[] bArr2 = prefix2.f33872b;
            if (length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i2 = 0; i2 < bArr.length; i2++) {
                byte b2 = bArr[i2];
                byte b3 = prefix2.f33872b[i2];
                if (b2 != b3) {
                    return b2 - b3;
                }
            }
            return 0;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Prefix) {
                return Arrays.equals(this.f33872b, ((Prefix) obj).f33872b);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f33872b);
        }

        public final String toString() {
            return Hex.b(this.f33872b);
        }
    }

    public PrimitiveSet(ConcurrentMap concurrentMap, Entry entry, MonitoringAnnotations monitoringAnnotations, Class cls) {
        this.f33860a = concurrentMap;
        this.f33861b = entry;
        this.f33862c = monitoringAnnotations;
    }

    public final List a(byte[] bArr) {
        List list = (List) this.f33860a.get(new Prefix(bArr));
        return list != null ? list : Collections.EMPTY_LIST;
    }
}
