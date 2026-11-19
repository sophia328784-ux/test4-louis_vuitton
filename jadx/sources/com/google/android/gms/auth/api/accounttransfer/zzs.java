package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzs extends zzbz {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ArrayMap f28704h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f28706c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f28707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f28708f;
    public final List g;

    static {
        ArrayMap arrayMap = new ArrayMap();
        f28704h = arrayMap;
        arrayMap.put("registered", FastJsonResponse.Field.W1(2, "registered"));
        arrayMap.put("in_progress", FastJsonResponse.Field.W1(3, "in_progress"));
        arrayMap.put("success", FastJsonResponse.Field.W1(4, "success"));
        arrayMap.put("failed", FastJsonResponse.Field.W1(5, "failed"));
        arrayMap.put("escrowed", FastJsonResponse.Field.W1(6, "escrowed"));
    }

    public zzs(int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        this.f28705b = i2;
        this.f28706c = arrayList;
        this.d = arrayList2;
        this.f28707e = arrayList3;
        this.f28708f = arrayList4;
        this.g = arrayList5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map a() {
        return f28704h;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object b(FastJsonResponse.Field field) {
        int i2 = field.f29309h;
        switch (i2) {
            case 1:
                return Integer.valueOf(this.f28705b);
            case 2:
                return this.f28706c;
            case 3:
                return this.d;
            case 4:
                return this.f28707e;
            case 5:
                return this.f28708f;
            case 6:
                return this.g;
            default:
                md.k(pq0.k(i2, "Unknown SafeParcelable id="));
                return null;
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28705b);
        SafeParcelWriter.m(parcel, 2, this.f28706c);
        SafeParcelWriter.m(parcel, 3, this.d);
        SafeParcelWriter.m(parcel, 4, this.f28707e);
        SafeParcelWriter.m(parcel, 5, this.f28708f);
        SafeParcelWriter.m(parcel, 6, this.g);
        SafeParcelWriter.r(iQ, parcel);
    }

    public zzs() {
        this.f28705b = 1;
    }
}
