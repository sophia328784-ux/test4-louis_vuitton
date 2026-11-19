package com.vuitton.android.presentation.model.storelocator;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;", "", "", "street", "city", "state", "country", "zipcode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreAddressUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51813c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f51814e;

    public StoreAddressUiModel(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f51811a = str;
        this.f51812b = str2;
        this.f51813c = str3;
        this.d = str4;
        this.f51814e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreAddressUiModel)) {
            return false;
        }
        StoreAddressUiModel storeAddressUiModel = (StoreAddressUiModel) obj;
        return Intrinsics.c(this.f51811a, storeAddressUiModel.f51811a) && Intrinsics.c(this.f51812b, storeAddressUiModel.f51812b) && Intrinsics.c(this.f51813c, storeAddressUiModel.f51813c) && Intrinsics.c(this.d, storeAddressUiModel.d) && Intrinsics.c(this.f51814e, storeAddressUiModel.f51814e);
    }

    public final int hashCode() {
        return this.f51814e.hashCode() + fc.b(fc.b(fc.b(this.f51811a.hashCode() * 31, 31, this.f51812b), 31, this.f51813c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreAddressUiModel(street=", this.f51811a, ", city=", this.f51812b, ", state=");
        cj.C(sbS, this.f51813c, ", country=", this.d, ", zipcode=");
        return n00.r(this.f51814e, ")", sbS);
    }
}
