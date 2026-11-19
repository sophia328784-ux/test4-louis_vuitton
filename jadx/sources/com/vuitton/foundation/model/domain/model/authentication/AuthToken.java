package com.vuitton.foundation.model.domain.model.authentication;

import com.batch.android.v0.l;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;", "", "Twist", "Atg", "None", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AuthToken {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$None;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class None implements AuthToken {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final None f66591a = new None();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof None);
        }

        public final int hashCode() {
            return 1797521002;
        }

        public final String toString() {
            return "None";
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Atg;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;", "", "userId", "accessToken", "refreshToken", "Lkotlinx/datetime/Instant;", "sfidAccessTokenExpiration", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Atg implements AuthToken {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66590c;
        public final Instant d;

        public Atg(String str, String str2, String str3, Instant instant) {
            str.getClass();
            str3.getClass();
            this.f66588a = str;
            this.f66589b = str2;
            this.f66590c = str3;
            this.d = instant;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Atg)) {
                return false;
            }
            Atg atg = (Atg) obj;
            return Intrinsics.c(this.f66588a, atg.f66588a) && Intrinsics.c(this.f66589b, atg.f66589b) && Intrinsics.c(this.f66590c, atg.f66590c) && Intrinsics.c(this.d, atg.d);
        }

        public final int hashCode() {
            int iHashCode = this.f66588a.hashCode() * 31;
            String str = this.f66589b;
            int iB = fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f66590c);
            Instant instant = this.d;
            return iB + (instant != null ? instant.f75239b.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Atg(userId=", this.f66588a, ", accessToken=", this.f66589b, ", refreshToken=");
            sbS.append(this.f66590c);
            sbS.append(", sfidAccessTokenExpiration=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ Atg(String str, String str2, String str3, Instant instant, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, (i2 & 8) != 0 ? null : instant);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;", l.f24144f, "Guest", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Twist extends AuthToken {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;", "", "slasAccessToken", "refreshToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Guest implements Twist {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66592a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66593b;

            public Guest(String str, String str2) {
                str.getClass();
                str2.getClass();
                this.f66592a = str;
                this.f66593b = str2;
            }

            @Override // com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist
            /* JADX INFO: renamed from: a, reason: from getter */
            public final String getF66596c() {
                return this.f66593b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Guest)) {
                    return false;
                }
                Guest guest = (Guest) obj;
                return Intrinsics.c(this.f66592a, guest.f66592a) && Intrinsics.c(this.f66593b, guest.f66593b);
            }

            public final int hashCode() {
                return this.f66593b.hashCode() + (this.f66592a.hashCode() * 31);
            }

            public final String toString() {
                return d21.l("Guest(slasAccessToken=", this.f66592a, ", refreshToken=", this.f66593b, ")");
            }
        }

        /* JADX INFO: renamed from: a */
        String getF66596c();

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;", "Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;", "", "sfidUserId", "sfidAccessToken", "refreshToken", "slasAccessToken", "Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;", "sotToken", "Lkotlinx/datetime/Instant;", "sfidAccessTokenExpiration", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class User implements Twist {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66594a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66595b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66596c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final String f66597e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final Instant f66598f;

            public User(String str, String str2, String str3, String str4, String str5, Instant instant, DefaultConstructorMarker defaultConstructorMarker) {
                pq0.z(str, str2, str3, str4, str5);
                this.f66594a = str;
                this.f66595b = str2;
                this.f66596c = str3;
                this.d = str4;
                this.f66597e = str5;
                this.f66598f = instant;
            }

            @Override // com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist
            /* JADX INFO: renamed from: a, reason: from getter */
            public final String getF66596c() {
                return this.f66596c;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof User)) {
                    return false;
                }
                User user = (User) obj;
                return Intrinsics.c(this.f66594a, user.f66594a) && Intrinsics.c(this.f66595b, user.f66595b) && Intrinsics.c(this.f66596c, user.f66596c) && Intrinsics.c(this.d, user.d) && Intrinsics.c(this.f66597e, user.f66597e) && Intrinsics.c(this.f66598f, user.f66598f);
            }

            public final int hashCode() {
                int iB = fc.b(fc.b(fc.b(fc.b(this.f66594a.hashCode() * 31, 31, this.f66595b), 31, this.f66596c), 31, this.d), 31, this.f66597e);
                Instant instant = this.f66598f;
                return iB + (instant == null ? 0 : instant.f75239b.hashCode());
            }

            public final String toString() {
                String strH = fc.h("SotToken(value=", this.f66597e, ")");
                StringBuilder sbS = fc.s("User(sfidUserId=", this.f66594a, ", sfidAccessToken=", this.f66595b, ", refreshToken=");
                cj.C(sbS, this.f66596c, ", slasAccessToken=", this.d, ", sotToken=");
                sbS.append(strH);
                sbS.append(", sfidAccessTokenExpiration=");
                sbS.append(this.f66598f);
                sbS.append(")");
                return sbS.toString();
            }

            public /* synthetic */ User(String str, String str2, String str3, String str4, String str5, Instant instant, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, str3, str4, str5, (i2 & 32) != 0 ? null : instant, null);
            }
        }
    }
}
