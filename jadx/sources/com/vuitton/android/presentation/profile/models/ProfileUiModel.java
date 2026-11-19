package com.vuitton.android.presentation.profile.models;

import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;", "identifier", "", "login", "firstName", "firstName2", "lastName", "lastName2", "email", "civilityCode", "", "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;", "addressList", "taxId", "branchId", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$ContactId;", "contactId", "batchAuthKey", "Lcom/vuitton/foundation/model/domain/model/profile/Profile$AccountId;", "accountId", "Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;", "mobilePhoneNumber", "initials", "displayName", "<init>", "(Lcom/vuitton/foundation/model/domain/model/profile/Profile$Id;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProfileUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Profile.Id f51850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51852c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f51853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f51854f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f51855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f51856i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f51857j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f51858k;
    public final String l;
    public final String m;
    public final String n;
    public final PhoneNumberUiModel o;
    public final String p;
    public final String q;

    public ProfileUiModel(Profile.Id id, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list, String str8, String str9, String str10, String str11, String str12, PhoneNumberUiModel phoneNumberUiModel, String str13, String str14, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(id, str, str2, (i2 & 8) != 0 ? null : str3, str4, (i2 & 32) != 0 ? null : str5, str6, str7, (i2 & 256) != 0 ? EmptyList.f71768b : list, (i2 & 512) != 0 ? null : str8, (i2 & 1024) != 0 ? null : str9, str10, str11, str12, phoneNumberUiModel, (32768 & i2) != 0 ? null : str13, (i2 & 65536) != 0 ? "" : str14, null);
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
        if (!(obj instanceof ProfileUiModel)) {
            return false;
        }
        ProfileUiModel profileUiModel = (ProfileUiModel) obj;
        if (!Intrinsics.c(this.f51850a, profileUiModel.f51850a) || !Intrinsics.c(this.f51851b, profileUiModel.f51851b) || !Intrinsics.c(this.f51852c, profileUiModel.f51852c) || !Intrinsics.c(this.d, profileUiModel.d) || !Intrinsics.c(this.f51853e, profileUiModel.f51853e) || !Intrinsics.c(this.f51854f, profileUiModel.f51854f) || !Intrinsics.c(this.g, profileUiModel.g) || !Intrinsics.c(this.f51855h, profileUiModel.f51855h) || !Intrinsics.c(this.f51856i, profileUiModel.f51856i) || !Intrinsics.c(this.f51857j, profileUiModel.f51857j) || !Intrinsics.c(this.f51858k, profileUiModel.f51858k)) {
            return false;
        }
        String str = profileUiModel.l;
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
        String str3 = profileUiModel.m;
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
        String str5 = profileUiModel.n;
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
        return zC3 && Intrinsics.c(this.o, profileUiModel.o) && Intrinsics.c(this.p, profileUiModel.p) && Intrinsics.c(this.q, profileUiModel.q);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f51850a.hashCode() * 31, 31, this.f51851b), 31, this.f51852c);
        String str = this.d;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f51853e);
        String str2 = this.f51854f;
        int iA = n00.a(fc.b(fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.g), 31, this.f51855h), 31, this.f51856i);
        String str3 = this.f51857j;
        int iHashCode = (iA + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f51858k;
        int iHashCode2 = (iHashCode + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.l;
        int iHashCode3 = (iHashCode2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.m;
        int iHashCode4 = (iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.n;
        int iHashCode5 = (iHashCode4 + (str7 == null ? 0 : str7.hashCode())) * 31;
        PhoneNumberUiModel phoneNumberUiModel = this.o;
        int iHashCode6 = (iHashCode5 + (phoneNumberUiModel == null ? 0 : phoneNumberUiModel.hashCode())) * 31;
        String str8 = this.p;
        return this.q.hashCode() + ((iHashCode6 + (str8 != null ? str8.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.l;
        String strA = str == null ? "null" : Profile.ContactId.a(str);
        String str2 = this.m;
        String strH = str2 == null ? "null" : fc.h("BatchAuthKey(key=", str2, ")");
        String str3 = this.n;
        String strA2 = str3 != null ? Profile.AccountId.a(str3) : "null";
        StringBuilder sb = new StringBuilder("ProfileUiModel(identifier=");
        sb.append(this.f51850a);
        sb.append(", login=");
        sb.append(this.f51851b);
        sb.append(", firstName=");
        cj.C(sb, this.f51852c, ", firstName2=", this.d, ", lastName=");
        cj.C(sb, this.f51853e, ", lastName2=", this.f51854f, ", email=");
        cj.C(sb, this.g, ", civilityCode=", this.f51855h, ", addressList=");
        o60.B(", taxId=", this.f51857j, ", branchId=", sb, this.f51856i);
        cj.C(sb, this.f51858k, ", contactId=", strA, ", batchAuthKey=");
        cj.C(sb, strH, ", accountId=", strA2, ", mobilePhoneNumber=");
        sb.append(this.o);
        sb.append(", initials=");
        sb.append(this.p);
        sb.append(", displayName=");
        return n00.r(this.q, ")", sb);
    }

    public ProfileUiModel(Profile.Id id, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list, String str8, String str9, String str10, String str11, String str12, PhoneNumberUiModel phoneNumberUiModel, String str13, String str14, DefaultConstructorMarker defaultConstructorMarker) {
        id.getClass();
        str.getClass();
        str2.getClass();
        str4.getClass();
        str6.getClass();
        str7.getClass();
        list.getClass();
        str14.getClass();
        this.f51850a = id;
        this.f51851b = str;
        this.f51852c = str2;
        this.d = str3;
        this.f51853e = str4;
        this.f51854f = str5;
        this.g = str6;
        this.f51855h = str7;
        this.f51856i = list;
        this.f51857j = str8;
        this.f51858k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = phoneNumberUiModel;
        this.p = str13;
        this.q = str14;
    }
}
