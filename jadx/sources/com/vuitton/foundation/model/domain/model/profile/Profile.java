package com.vuitton.foundation.model.domain.model.profile;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.consent.Contactability;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001:\u0003 !\"BÉ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;", "identifier", "", "login", "firstName", "firstName2", "lastName", "lastName2", "email", "civilityCode", "", "Lcom/vuitton/foundation/model/domain/model/profile/Address;", "addressList", "taxId", "branchId", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;", "contactId", "batchAuthKey", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;", "accountId", "", "kisaStoreAppointmentPersonalData", "Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;", "contactability", "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;", "mobilePhoneNumber", "initials", "displayName", "<init>", "(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/foundation/model/domain/model/account/consent/Contactability;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Id", "ContactId", "AccountId", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Profile {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Id f68164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68166c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68168f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f68169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f68170i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f68171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f68172k;
    public final String l;
    public final String m;
    public final String n;
    public final Boolean o;
    public final Contactability p;
    public final PhoneNumber q;
    public final String r;
    public final String s;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;", "", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @JvmInline
    public static final class AccountId {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68173a;

        public static String a(String str) {
            return fc.h("AccountId(id=", str, ")");
        }

        public final boolean equals(Object obj) {
            if (obj instanceof AccountId) {
                return this.f68173a.equals(((AccountId) obj).f68173a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f68173a.hashCode();
        }

        public final String toString() {
            return a(this.f68173a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;", "", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @JvmInline
    public static final class ContactId {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f68174a;

        public /* synthetic */ ContactId(String str) {
            this.f68174a = str;
        }

        public static String a(String str) {
            return fc.h("ContactId(id=", str, ")");
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ContactId) {
                return this.f68174a.equals(((ContactId) obj).f68174a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f68174a.hashCode();
        }

        public final String toString() {
            return a(this.f68174a);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;", "", "AtgId", "SalesforceId", "Empty", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$Empty;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Id {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$AtgId;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        @JvmInline
        public static final class AtgId implements Id {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f68175a;

            public final boolean equals(Object obj) {
                if (obj instanceof AtgId) {
                    return this.f68175a.equals(((AtgId) obj).f68175a);
                }
                return false;
            }

            @Override // com.vuitton.foundation.model.domain.model.profile.Profile.Id
            /* JADX INFO: renamed from: getId, reason: from getter */
            public final String getF68177a() {
                return this.f68175a;
            }

            public final int hashCode() {
                return this.f68175a.hashCode();
            }

            public final String toString() {
                return fc.h("AtgId(id=", this.f68175a, ")");
            }
        }

        /* JADX INFO: loaded from: classes3.dex */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$Empty;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Empty implements Id {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Empty f68176a = new Empty();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Empty);
            }

            @Override // com.vuitton.foundation.model.domain.model.profile.Profile.Id
            /* JADX INFO: renamed from: getId */
            public final String getF68177a() {
                return "";
            }

            public final int hashCode() {
                return 1724684709;
            }

            public final String toString() {
                return "Empty";
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id$SalesforceId;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        @JvmInline
        public static final class SalesforceId implements Id {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f68177a;

            public final boolean equals(Object obj) {
                if (obj instanceof SalesforceId) {
                    return this.f68177a.equals(((SalesforceId) obj).f68177a);
                }
                return false;
            }

            @Override // com.vuitton.foundation.model.domain.model.profile.Profile.Id
            /* JADX INFO: renamed from: getId, reason: from getter */
            public final String getF68177a() {
                return this.f68177a;
            }

            public final int hashCode() {
                return this.f68177a.hashCode();
            }

            public final String toString() {
                return fc.h("SalesforceId(id=", this.f68177a, ")");
            }
        }

        /* JADX INFO: renamed from: getId */
        String getF68177a();
    }

    public Profile(Id id, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list, String str8, String str9, String str10, String str11, String str12, Boolean bool, Contactability contactability, PhoneNumber phoneNumber, String str13, String str14, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(id, str, str2, (i2 & 8) != 0 ? null : str3, str4, (i2 & 32) != 0 ? null : str5, str6, str7, (i2 & 256) != 0 ? EmptyList.f71768b : list, (i2 & 512) != 0 ? null : str8, (i2 & 1024) != 0 ? null : str9, str10, str11, str12, bool, contactability, phoneNumber, (131072 & i2) != 0 ? null : str13, (i2 & 262144) != 0 ? "" : str14, null);
    }

    public static Profile a(Profile profile, List list, Boolean bool, int i2) {
        Id id = profile.f68164a;
        String str = profile.f68165b;
        String str2 = profile.f68166c;
        String str3 = profile.d;
        String str4 = profile.f68167e;
        String str5 = profile.f68168f;
        String str6 = profile.g;
        String str7 = profile.f68169h;
        List list2 = (i2 & 256) != 0 ? profile.f68170i : list;
        String str8 = profile.f68171j;
        List list3 = list2;
        String str9 = profile.f68172k;
        String str10 = profile.l;
        String str11 = profile.m;
        String str12 = profile.n;
        Boolean bool2 = (i2 & 16384) != 0 ? profile.o : bool;
        Contactability contactability = profile.p;
        PhoneNumber phoneNumber = profile.q;
        String str13 = profile.r;
        String str14 = profile.s;
        profile.getClass();
        id.getClass();
        str.getClass();
        str2.getClass();
        str4.getClass();
        str6.getClass();
        str7.getClass();
        list3.getClass();
        str14.getClass();
        return new Profile(id, str, str2, str3, str4, str5, str6, str7, list3, str8, str9, str10, str11, str12, bool2, contactability, phoneNumber, str13, str14, null);
    }

    public static String c(AppConfig appConfig) {
        Collection collectionQ0;
        appConfig.getClass();
        List listG = new Regex("_").g(appConfig.B);
        if (listG.isEmpty()) {
            collectionQ0 = EmptyList.f71768b;
        } else {
            ListIterator listIterator = listG.listIterator(listG.size());
            while (listIterator.hasPrevious()) {
                if (((String) listIterator.previous()).length() != 0) {
                    collectionQ0 = CollectionsKt.q0(listG, listIterator.nextIndex() + 1);
                }
            }
            collectionQ0 = EmptyList.f71768b;
        }
        return ((String[]) collectionQ0.toArray(new String[0]))[1];
    }

    public final Address b() {
        Object next;
        List list = this.f68170i;
        list.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((Address) next).f68152b) {
                return (Address) next;
            }
        }
        next = null;
        return (Address) next;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bb  */
    public final boolean equals(Object obj) {
        boolean zC;
        boolean zC2;
        boolean zC3;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        Profile profile = (Profile) obj;
        if (!Intrinsics.c(this.f68164a, profile.f68164a) || !Intrinsics.c(this.f68165b, profile.f68165b) || !Intrinsics.c(this.f68166c, profile.f68166c) || !Intrinsics.c(this.d, profile.d) || !Intrinsics.c(this.f68167e, profile.f68167e) || !Intrinsics.c(this.f68168f, profile.f68168f) || !Intrinsics.c(this.g, profile.g) || !Intrinsics.c(this.f68169h, profile.f68169h) || !Intrinsics.c(this.f68170i, profile.f68170i) || !Intrinsics.c(this.f68171j, profile.f68171j) || !Intrinsics.c(this.f68172k, profile.f68172k)) {
            return false;
        }
        String str = profile.l;
        String str2 = this.l;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            zC = Intrinsics.c(str2, str);
        }
        if (!zC) {
            return false;
        }
        String str3 = profile.m;
        String str4 = this.m;
        if (str4 == null) {
            if (str3 == null) {
                zC2 = true;
            } else {
                zC2 = false;
            }
        } else if (str3 == null) {
            zC2 = false;
        } else {
            zC2 = Intrinsics.c(str4, str3);
        }
        if (!zC2) {
            return false;
        }
        String str5 = profile.n;
        String str6 = this.n;
        if (str6 == null) {
            if (str5 == null) {
                zC3 = true;
            } else {
                zC3 = false;
            }
        } else if (str5 == null) {
            zC3 = false;
        } else {
            zC3 = Intrinsics.c(str6, str5);
        }
        return zC3 && Intrinsics.c(this.o, profile.o) && Intrinsics.c(this.p, profile.p) && Intrinsics.c(this.q, profile.q) && Intrinsics.c(this.r, profile.r) && Intrinsics.c(this.s, profile.s);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f68164a.hashCode() * 31, 31, this.f68165b), 31, this.f68166c);
        String str = this.d;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f68167e);
        String str2 = this.f68168f;
        int iA = n00.a(fc.b(fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.g), 31, this.f68169h), 31, this.f68170i);
        String str3 = this.f68171j;
        int iHashCode = (iA + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f68172k;
        int iHashCode2 = (iHashCode + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.l;
        int iHashCode3 = (iHashCode2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.m;
        int iHashCode4 = (iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.n;
        int iHashCode5 = (iHashCode4 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Boolean bool = this.o;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        Contactability contactability = this.p;
        int iHashCode7 = (iHashCode6 + (contactability == null ? 0 : contactability.hashCode())) * 31;
        PhoneNumber phoneNumber = this.q;
        int iHashCode8 = (iHashCode7 + (phoneNumber == null ? 0 : phoneNumber.hashCode())) * 31;
        String str8 = this.r;
        return this.s.hashCode() + ((iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.l;
        String strA = str == null ? "null" : ContactId.a(str);
        String str2 = this.m;
        String strH = str2 == null ? "null" : fc.h("BatchAuthKey(key=", str2, ")");
        String str3 = this.n;
        String strA2 = str3 != null ? AccountId.a(str3) : "null";
        StringBuilder sb = new StringBuilder("Profile(identifier=");
        sb.append(this.f68164a);
        sb.append(", login=");
        sb.append(this.f68165b);
        sb.append(", firstName=");
        cj.C(sb, this.f68166c, ", firstName2=", this.d, ", lastName=");
        cj.C(sb, this.f68167e, ", lastName2=", this.f68168f, ", email=");
        cj.C(sb, this.g, ", civilityCode=", this.f68169h, ", addressList=");
        o60.B(", taxId=", this.f68171j, ", branchId=", sb, this.f68170i);
        cj.C(sb, this.f68172k, ", contactId=", strA, ", batchAuthKey=");
        cj.C(sb, strH, ", accountId=", strA2, ", kisaStoreAppointmentPersonalData=");
        sb.append(this.o);
        sb.append(", contactability=");
        sb.append(this.p);
        sb.append(", mobilePhoneNumber=");
        sb.append(this.q);
        sb.append(", initials=");
        sb.append(this.r);
        sb.append(", displayName=");
        return n00.r(this.s, ")", sb);
    }

    public Profile(Id id, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list, String str8, String str9, String str10, String str11, String str12, Boolean bool, Contactability contactability, PhoneNumber phoneNumber, String str13, String str14, DefaultConstructorMarker defaultConstructorMarker) {
        id.getClass();
        str.getClass();
        str2.getClass();
        str4.getClass();
        str6.getClass();
        str7.getClass();
        list.getClass();
        str14.getClass();
        this.f68164a = id;
        this.f68165b = str;
        this.f68166c = str2;
        this.d = str3;
        this.f68167e = str4;
        this.f68168f = str5;
        this.g = str6;
        this.f68169h = str7;
        this.f68170i = list;
        this.f68171j = str8;
        this.f68172k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = bool;
        this.p = contactability;
        this.q = phoneNumber;
        this.r = str13;
        this.s = str14;
    }
}
