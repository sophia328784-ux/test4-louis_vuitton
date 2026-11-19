package com.vuitton.foundation.model.domain.model.place;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.account.address.AddressDetails;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;", "address", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PlaceAutocomplete {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67819c;
    public final AddressDetails d;

    public PlaceAutocomplete(String str, String str2, String str3, AddressDetails addressDetails) {
        cj.z(str, str2, str3);
        this.f67817a = str;
        this.f67818b = str2;
        this.f67819c = str3;
        this.d = addressDetails;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceAutocomplete)) {
            return false;
        }
        PlaceAutocomplete placeAutocomplete = (PlaceAutocomplete) obj;
        return Intrinsics.c(this.f67817a, placeAutocomplete.f67817a) && Intrinsics.c(this.f67818b, placeAutocomplete.f67818b) && Intrinsics.c(this.f67819c, placeAutocomplete.f67819c) && Intrinsics.c(this.d, placeAutocomplete.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f67817a.hashCode() * 31, 31, this.f67818b), 31, this.f67819c);
        AddressDetails addressDetails = this.d;
        return iB + (addressDetails == null ? 0 : addressDetails.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PlaceAutocomplete(id=", this.f67817a, ", title=", this.f67818b, ", description=");
        sbS.append(this.f67819c);
        sbS.append(", address=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ PlaceAutocomplete(String str, String str2, String str3, AddressDetails addressDetails, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : addressDetails);
    }
}
