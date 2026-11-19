package com.dynamicyield.sdk.wrapper.core.models.common;

import defpackage.cj;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/DYVersion;", "", "", "major", "minor", "patch", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DYVersion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26188c;

    public DYVersion(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f26186a = str;
        this.f26187b = str2;
        this.f26188c = str3;
    }

    public final String toString() {
        return "android-" + this.f26186a + JwtParser.SEPARATOR_CHAR + this.f26187b + JwtParser.SEPARATOR_CHAR + this.f26188c;
    }
}
