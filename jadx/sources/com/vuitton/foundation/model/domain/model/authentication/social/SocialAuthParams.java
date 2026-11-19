package com.vuitton.foundation.model.domain.model.authentication.social;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;", "", "Lcom/vuitton/foundation/model/domain/model/authentication/social/GoogleAuthParams;", "Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;", "Lcom/vuitton/foundation/model/domain/model/authentication/social/LineAuthParams;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SocialAuthParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66653c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f66655f;
    public final SocialAuthMode g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66656h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66657i;

    public SocialAuthParams(String str, String str2, String str3, String str4, String str5, String str6, String str7, SocialAuthMode socialAuthMode, String str8, String str9, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66651a = str;
        this.f66652b = str2;
        this.f66653c = str4;
        this.d = str5;
        this.f66654e = str6;
        this.f66655f = str7;
        this.g = socialAuthMode;
        this.f66656h = str8;
        this.f66657i = str9;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public String getF66654e() {
        return this.f66654e;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public String getF66653c() {
        return this.f66653c;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public String getF66656h() {
        return this.f66656h;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public String getD() {
        return this.d;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public String getF66657i() {
        return this.f66657i;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public String getF66655f() {
        return this.f66655f;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public String getF66652b() {
        return this.f66652b;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public String getF66651a() {
        return this.f66651a;
    }

    public /* synthetic */ SocialAuthParams(String str, String str2, String str3, String str4, String str5, String str6, String str7, SocialAuthMode socialAuthMode, String str8, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i2 & 32) != 0 ? null : str6, str7, socialAuthMode, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9, null);
    }
}
