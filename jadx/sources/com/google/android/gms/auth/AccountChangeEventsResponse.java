package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f28689c;

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.f28688b = 1;
        Preconditions.h(list);
        this.f28689c = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28688b);
        SafeParcelWriter.o(parcel, 2, this.f28689c, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public AccountChangeEventsResponse(int i2, ArrayList arrayList) {
        this.f28688b = i2;
        Preconditions.h(arrayList);
        this.f28689c = arrayList;
    }
}
