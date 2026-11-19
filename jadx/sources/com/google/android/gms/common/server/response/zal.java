package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29319c;
    public final ArrayList d;

    public zal(String str, Map map) {
        ArrayList arrayList;
        this.f29318b = 1;
        this.f29319c = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse.Field) map.get(str2)));
            }
        }
        this.d = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29318b);
        SafeParcelWriter.k(parcel, 2, this.f29319c, false);
        SafeParcelWriter.o(parcel, 3, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zal(int i2, String str, ArrayList arrayList) {
        this.f29318b = i2;
        this.f29319c = str;
        this.d = arrayList;
    }
}
