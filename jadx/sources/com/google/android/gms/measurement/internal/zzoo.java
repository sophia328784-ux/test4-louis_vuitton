package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzoo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzoo> CREATOR = new zzop();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31954b;

    public zzoo(ArrayList arrayList) {
        this.f31954b = arrayList;
    }

    public static zzoo W1(zzls... zzlsVarArr) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(zzlsVarArr[0].d0()));
        return new zzoo(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        List list = this.f31954b;
        if (list != null) {
            int iQ2 = SafeParcelWriter.q(1, parcel);
            int size = list.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                parcel.writeInt(((Integer) list.get(i3)).intValue());
            }
            SafeParcelWriter.r(iQ2, parcel);
        }
        SafeParcelWriter.r(iQ, parcel);
    }
}
