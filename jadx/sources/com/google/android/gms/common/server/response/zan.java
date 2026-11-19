package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zao();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f29323c;
    public final String d;

    public zan(int i2, String str, ArrayList arrayList) {
        this.f29322b = i2;
        HashMap map = new HashMap();
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            zal zalVar = (zal) arrayList.get(i3);
            String str2 = zalVar.f29319c;
            ArrayList arrayList2 = zalVar.d;
            HashMap map2 = new HashMap();
            Preconditions.h(arrayList2);
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                zam zamVar = (zam) arrayList2.get(i4);
                map2.put(zamVar.f29321c, zamVar.d);
            }
            map.put(str2, map2);
        }
        this.f29323c = map;
        Preconditions.h(str);
        this.d = str;
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            Map map3 = (Map) map.get((String) it.next());
            Iterator it2 = map3.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse.Field) map3.get((String) it2.next())).f29312k = this;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        HashMap map = this.f29323c;
        for (String str : map.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map2 = (Map) map.get(str);
            for (String str2 : map2.keySet()) {
                a.B(sb, "  ", str2, ": ");
                sb.append(map2.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29322b);
        ArrayList arrayList = new ArrayList();
        HashMap map = this.f29323c;
        for (String str : map.keySet()) {
            arrayList.add(new zal(str, (Map) map.get(str)));
        }
        SafeParcelWriter.o(parcel, 2, arrayList, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zan(Class cls) {
        this.f29322b = 1;
        this.f29323c = new HashMap();
        String canonicalName = cls.getCanonicalName();
        Preconditions.h(canonicalName);
        this.d = canonicalName;
    }
}
