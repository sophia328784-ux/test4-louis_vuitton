package com.google.android.play.core.integrity;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class am extends IntegrityTokenRequest.Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f33296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f33297b;

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest build() {
        String str = this.f33296a;
        if (str != null) {
            return new ao(str, this.f33297b);
        }
        md.k("Missing required properties: nonce");
        return null;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setCloudProjectNumber(long j2) {
        this.f33297b = Long.valueOf(j2);
        return this;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setNonce(String str) {
        if (str != null) {
            this.f33296a = str;
            return this;
        }
        r81.d("Null nonce");
        return null;
    }
}
