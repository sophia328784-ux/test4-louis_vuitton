package com.vuitton.android.presentation.screen.authentication.base;

import defpackage.fc;
import defpackage.n00;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;", "", "", "oauthCodeChallenge", "oauthCodeVerifier", "Ljava/util/UUID;", "oauthState", "oauthCallbackUrl", "oauthClientCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OauthCredentials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f53451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UUID f53452c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f53453e;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ OauthCredentials(String str, String str2, UUID uuid, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i2 & 1) != 0 ? "" : str;
        if ((i2 & 4) != 0) {
            uuid = UUID.randomUUID();
            uuid.getClass();
        }
        this(str, str2, uuid, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4);
    }

    public static OauthCredentials a(OauthCredentials oauthCredentials, String str, String str2, String str3, int i2) {
        if ((i2 & 1) != 0) {
            str = oauthCredentials.f53450a;
        }
        String str4 = str;
        String str5 = oauthCredentials.f53451b;
        UUID uuid = oauthCredentials.f53452c;
        if ((i2 & 8) != 0) {
            str2 = oauthCredentials.d;
        }
        String str6 = str2;
        if ((i2 & 16) != 0) {
            str3 = oauthCredentials.f53453e;
        }
        String str7 = str3;
        oauthCredentials.getClass();
        str4.getClass();
        str5.getClass();
        uuid.getClass();
        str6.getClass();
        str7.getClass();
        return new OauthCredentials(str4, str5, uuid, str6, str7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OauthCredentials)) {
            return false;
        }
        OauthCredentials oauthCredentials = (OauthCredentials) obj;
        return Intrinsics.c(this.f53450a, oauthCredentials.f53450a) && Intrinsics.c(this.f53451b, oauthCredentials.f53451b) && Intrinsics.c(this.f53452c, oauthCredentials.f53452c) && Intrinsics.c(this.d, oauthCredentials.d) && Intrinsics.c(this.f53453e, oauthCredentials.f53453e);
    }

    public final int hashCode() {
        return this.f53453e.hashCode() + fc.b((this.f53452c.hashCode() + fc.b(this.f53450a.hashCode() * 31, 31, this.f53451b)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("OauthCredentials(oauthCodeChallenge=", this.f53450a, ", oauthCodeVerifier=", this.f53451b, ", oauthState=");
        sbS.append(this.f53452c);
        sbS.append(", oauthCallbackUrl=");
        sbS.append(this.d);
        sbS.append(", oauthClientCode=");
        return n00.r(this.f53453e, ")", sbS);
    }

    public OauthCredentials(String str, String str2, UUID uuid, String str3, String str4) {
        str.getClass();
        str2.getClass();
        uuid.getClass();
        str3.getClass();
        str4.getClass();
        this.f53450a = str;
        this.f53451b = str2;
        this.f53452c = uuid;
        this.d = str3;
        this.f53453e = str4;
    }
}
