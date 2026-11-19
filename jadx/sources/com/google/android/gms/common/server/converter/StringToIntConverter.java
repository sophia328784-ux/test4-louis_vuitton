package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.FieldConverter<String, Integer> {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new zad();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f29300c;
    public final SparseArray d;

    public StringToIntConverter(int i2, ArrayList arrayList) {
        this.f29299b = i2;
        this.f29300c = new HashMap();
        this.d = new SparseArray();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            zac zacVar = (zac) arrayList.get(i3);
            String str = zacVar.f29304c;
            int i4 = zacVar.d;
            this.f29300c.put(str, Integer.valueOf(i4));
            this.d.put(i4, str);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
    public final /* bridge */ /* synthetic */ String b1(Object obj) {
        String str = (String) this.d.get(((Integer) obj).intValue());
        return (str == null && this.f29300c.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29299b);
        ArrayList arrayList = new ArrayList();
        HashMap map = this.f29300c;
        for (String str : map.keySet()) {
            arrayList.add(new zac(str, ((Integer) map.get(str)).intValue()));
        }
        SafeParcelWriter.o(parcel, 2, arrayList, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public StringToIntConverter() {
        this.f29299b = 1;
        this.f29300c = new HashMap();
        this.d = new SparseArray();
    }
}
