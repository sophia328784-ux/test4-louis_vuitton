package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.q0.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class PolygonOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new zzt();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f31475c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31477f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f31478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f31479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f31480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f31481k;
    public final List l;

    public PolygonOptions() {
        this.d = 10.0f;
        this.f31476e = b.v;
        this.f31477f = 0;
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f31478h = true;
        this.f31479i = false;
        this.f31480j = false;
        this.f31481k = 0;
        this.l = null;
        this.f31474b = new ArrayList();
        this.f31475c = new ArrayList();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 2, this.f31474b, false);
        ArrayList arrayList = this.f31475c;
        if (arrayList != null) {
            int iQ2 = SafeParcelWriter.q(3, parcel);
            parcel.writeList(arrayList);
            SafeParcelWriter.r(iQ2, parcel);
        }
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(this.d);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f31476e);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.f31477f);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(this.g);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f31478h ? 1 : 0);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f31479i ? 1 : 0);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeInt(this.f31480j ? 1 : 0);
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeInt(this.f31481k);
        SafeParcelWriter.o(parcel, 12, this.l, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public PolygonOptions(ArrayList arrayList, ArrayList arrayList2, float f2, int i2, int i3, float f3, boolean z, boolean z2, boolean z3, int i4, ArrayList arrayList3) {
        this.f31474b = arrayList;
        this.f31475c = arrayList2;
        this.d = f2;
        this.f31476e = i2;
        this.f31477f = i3;
        this.g = f3;
        this.f31478h = z;
        this.f31479i = z2;
        this.f31480j = z3;
        this.f31481k = i4;
        this.l = arrayList3;
    }
}
