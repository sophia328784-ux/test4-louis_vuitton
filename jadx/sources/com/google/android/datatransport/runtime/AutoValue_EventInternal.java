package com.google.android.datatransport.runtime;

import defpackage.md;
import defpackage.r81;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_EventInternal extends EventInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f27936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EncodedPayload f27937c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f27938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f27939f;
    public final Integer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f27940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f27941i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f27942j;

    public static final class Builder extends EventInternal.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f27943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f27944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public EncodedPayload f27945c;
        public Long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Long f27946e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public HashMap f27947f;
        public Integer g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f27948h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public byte[] f27949i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte[] f27950j;

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal b() {
            String strConcat = this.f27943a == null ? " transportName" : "";
            if (this.f27945c == null) {
                strConcat = strConcat.concat(" encodedPayload");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" eventMillis");
            }
            if (this.f27946e == null) {
                strConcat = strConcat.concat(" uptimeMillis");
            }
            if (this.f27947f == null) {
                strConcat = strConcat.concat(" autoMetadata");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_EventInternal(this.f27943a, this.f27944b, this.f27945c, this.d.longValue(), this.f27946e.longValue(), this.f27947f, this.g, this.f27948h, this.f27949i, this.f27950j);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final Map c() {
            HashMap map = this.f27947f;
            if (map != null) {
                return map;
            }
            md.k("Property \"autoMetadata\" has not been set");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder d(Integer num) {
            this.f27944b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder e(EncodedPayload encodedPayload) {
            if (encodedPayload != null) {
                this.f27945c = encodedPayload;
                return this;
            }
            r81.d("Null encodedPayload");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder f(long j2) {
            this.d = Long.valueOf(j2);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder g(byte[] bArr) {
            this.f27949i = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder h(byte[] bArr) {
            this.f27950j = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder i(Integer num) {
            this.g = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder j(String str) {
            this.f27948h = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder k(String str) {
            if (str != null) {
                this.f27943a = str;
                return this;
            }
            r81.d("Null transportName");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder l(long j2) {
            this.f27946e = Long.valueOf(j2);
            return this;
        }
    }

    public AutoValue_EventInternal(String str, Integer num, EncodedPayload encodedPayload, long j2, long j3, HashMap map, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.f27935a = str;
        this.f27936b = num;
        this.f27937c = encodedPayload;
        this.d = j2;
        this.f27938e = j3;
        this.f27939f = map;
        this.g = num2;
        this.f27940h = str2;
        this.f27941i = bArr;
        this.f27942j = bArr2;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final Map c() {
        return this.f27939f;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final Integer d() {
        return this.f27936b;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final EncodedPayload e() {
        return this.f27937c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventInternal)) {
            return false;
        }
        EventInternal eventInternal = (EventInternal) obj;
        if (!this.f27935a.equals(eventInternal.l())) {
            return false;
        }
        Integer num = this.f27936b;
        if (num == null) {
            if (eventInternal.d() != null) {
                return false;
            }
        } else if (!num.equals(eventInternal.d())) {
            return false;
        }
        if (!this.f27937c.equals(eventInternal.e()) || this.d != eventInternal.f() || this.f27938e != eventInternal.m() || !this.f27939f.equals(eventInternal.c())) {
            return false;
        }
        Integer num2 = this.g;
        if (num2 == null) {
            if (eventInternal.j() != null) {
                return false;
            }
        } else if (!num2.equals(eventInternal.j())) {
            return false;
        }
        String str = this.f27940h;
        if (str == null) {
            if (eventInternal.k() != null) {
                return false;
            }
        } else if (!str.equals(eventInternal.k())) {
            return false;
        }
        boolean z = eventInternal instanceof AutoValue_EventInternal;
        if (Arrays.equals(this.f27941i, z ? ((AutoValue_EventInternal) eventInternal).f27941i : eventInternal.g())) {
            return Arrays.equals(this.f27942j, z ? ((AutoValue_EventInternal) eventInternal).f27942j : eventInternal.h());
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final long f() {
        return this.d;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final byte[] g() {
        return this.f27941i;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final byte[] h() {
        return this.f27942j;
    }

    public final int hashCode() {
        int iHashCode = (this.f27935a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f27936b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f27937c.hashCode()) * 1000003;
        long j2 = this.d;
        int i2 = (iHashCode2 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f27938e;
        int iHashCode3 = (((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ this.f27939f.hashCode()) * 1000003;
        Integer num2 = this.g;
        int iHashCode4 = (iHashCode3 ^ (num2 == null ? 0 : num2.hashCode())) * 1000003;
        String str = this.f27940h;
        return Arrays.hashCode(this.f27942j) ^ ((((iHashCode4 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ Arrays.hashCode(this.f27941i)) * 1000003);
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final Integer j() {
        return this.g;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final String k() {
        return this.f27940h;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final String l() {
        return this.f27935a;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final long m() {
        return this.f27938e;
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f27935a + ", code=" + this.f27936b + ", encodedPayload=" + this.f27937c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.f27938e + ", autoMetadata=" + this.f27939f + ", productId=" + this.g + ", pseudonymousId=" + this.f27940h + ", experimentIdsClear=" + Arrays.toString(this.f27941i) + ", experimentIdsEncrypted=" + Arrays.toString(this.f27942j) + "}";
    }
}
