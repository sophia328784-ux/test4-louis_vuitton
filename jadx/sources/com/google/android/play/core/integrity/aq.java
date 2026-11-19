package com.google.android.play.core.integrity;

/* JADX INFO: loaded from: classes2.dex */
final class aq extends IntegrityTokenResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33300a;

    public aq(String str) {
        this.f33300a = str;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenResponse
    public final String token() {
        return this.f33300a;
    }
}
