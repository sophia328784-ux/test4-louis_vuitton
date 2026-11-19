package com.vuitton.android.presentation.screen.account.addressbook.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;", "", "", "identifier", "", "isMain", "description", "civilityCode", "firstName", "lastName", "addressOne", "addressTwo", "addressThree", "postalCode", "city", "county", "state", "regionCodeIso31661Alpha2", "displayCountryName", "phoneNumber", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "displayedTitle", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccountAddressUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f52185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52186c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f52187e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f52188f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f52189h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f52190i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f52191j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f52192k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final StringResourceUiModel q;

    public AccountAddressUiModel(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, StringResourceUiModel stringResourceUiModel) {
        pq0.z(str, str2, str3, str4, str5);
        pq0.z(str6, str7, str8, str9, str10);
        pq0.z(str11, str12, str13, str14, str15);
        stringResourceUiModel.getClass();
        this.f52184a = str;
        this.f52185b = z;
        this.f52186c = str2;
        this.d = str3;
        this.f52187e = str4;
        this.f52188f = str5;
        this.g = str6;
        this.f52189h = str7;
        this.f52190i = str8;
        this.f52191j = str9;
        this.f52192k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.o = str14;
        this.p = str15;
        this.q = stringResourceUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountAddressUiModel)) {
            return false;
        }
        AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) obj;
        return Intrinsics.c(this.f52184a, accountAddressUiModel.f52184a) && this.f52185b == accountAddressUiModel.f52185b && Intrinsics.c(this.f52186c, accountAddressUiModel.f52186c) && Intrinsics.c(this.d, accountAddressUiModel.d) && Intrinsics.c(this.f52187e, accountAddressUiModel.f52187e) && Intrinsics.c(this.f52188f, accountAddressUiModel.f52188f) && Intrinsics.c(this.g, accountAddressUiModel.g) && Intrinsics.c(this.f52189h, accountAddressUiModel.f52189h) && Intrinsics.c(this.f52190i, accountAddressUiModel.f52190i) && Intrinsics.c(this.f52191j, accountAddressUiModel.f52191j) && Intrinsics.c(this.f52192k, accountAddressUiModel.f52192k) && Intrinsics.c(this.l, accountAddressUiModel.l) && Intrinsics.c(this.m, accountAddressUiModel.m) && Intrinsics.c(this.n, accountAddressUiModel.n) && Intrinsics.c(this.o, accountAddressUiModel.o) && Intrinsics.c(this.p, accountAddressUiModel.p) && Intrinsics.c(this.q, accountAddressUiModel.q);
    }

    public final int hashCode() {
        return this.q.hashCode() + fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(o60.b(this.f52184a.hashCode() * 31, 31, this.f52185b), 31, this.f52186c), 31, this.d), 31, this.f52187e), 31, this.f52188f), 31, this.g), 31, this.f52189h), 31, this.f52190i), 31, this.f52191j), 31, this.f52192k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p);
    }

    public final String toString() {
        StringBuilder sbS = d21.s("AccountAddressUiModel(identifier=", this.f52184a, ", isMain=", ", description=", this.f52185b);
        cj.C(sbS, this.f52186c, ", civilityCode=", this.d, ", firstName=");
        cj.C(sbS, this.f52187e, ", lastName=", this.f52188f, ", addressOne=");
        cj.C(sbS, this.g, ", addressTwo=", this.f52189h, ", addressThree=");
        cj.C(sbS, this.f52190i, ", postalCode=", this.f52191j, ", city=");
        cj.C(sbS, this.f52192k, ", county=", this.l, ", state=");
        cj.C(sbS, this.m, ", regionCodeIso31661Alpha2=", this.n, ", displayCountryName=");
        cj.C(sbS, this.o, ", phoneNumber=", this.p, ", displayedTitle=");
        sbS.append(this.q);
        sbS.append(")");
        return sbS.toString();
    }
}
