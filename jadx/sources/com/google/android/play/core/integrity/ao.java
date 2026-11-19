package com.google.android.play.core.integrity;

/* JADX INFO: loaded from: classes2.dex */
final class ao extends IntegrityTokenRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f33299b;

    public /* synthetic */ ao(String str, Long l) {
        this.f33298a = str;
        this.f33299b = l;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final Long a() {
        return this.f33299b;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String b() {
        return this.f33298a;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0024  */
    public final boolean equals(Object obj) {
        boolean z;
        Long l;
        if (obj != this) {
            if (obj instanceof IntegrityTokenRequest) {
                IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
                if (!this.f33298a.equals(integrityTokenRequest.b()) || ((l = this.f33299b) != null ? !l.equals(integrityTokenRequest.a()) : integrityTokenRequest.a() != null)) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            if (!(obj instanceof ao)) {
                return z;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = this.f33298a.hashCode() ^ 1000003;
        Long l = this.f33299b;
        return ((l == null ? 0 : l.hashCode()) ^ (iHashCode * 1000003)) * 1000003;
    }

    public final String toString() {
        return ("IntegrityTokenRequest{nonce=" + this.f33298a + ", cloudProjectNumber=" + this.f33299b).concat(", network=null").concat("}");
    }
}
