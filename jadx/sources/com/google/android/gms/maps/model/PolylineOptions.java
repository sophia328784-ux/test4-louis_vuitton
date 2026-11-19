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
public final class PolylineOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PolylineOptions> CREATOR = new zzu();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f31483c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f31484e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f31485f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f31486h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Cap f31487i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Cap f31488j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f31489k;
    public final List l;
    public final List m;

    public PolylineOptions(ArrayList arrayList, float f2, int i2, float f3, boolean z, boolean z2, boolean z3, Cap cap, Cap cap2, int i3, ArrayList arrayList2, ArrayList arrayList3) {
        this.f31483c = 10.0f;
        this.d = b.v;
        this.f31484e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f31485f = true;
        this.g = false;
        this.f31486h = false;
        this.f31487i = new ButtCap();
        this.f31488j = new ButtCap();
        this.f31489k = 0;
        this.l = null;
        this.m = new ArrayList();
        this.f31482b = arrayList;
        this.f31483c = f2;
        this.d = i2;
        this.f31484e = f3;
        this.f31485f = z;
        this.g = z2;
        this.f31486h = z3;
        if (cap != null) {
            this.f31487i = cap;
        }
        if (cap2 != null) {
            this.f31488j = cap2;
        }
        this.f31489k = i3;
        this.l = arrayList2;
        if (arrayList3 != null) {
            this.m = arrayList3;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 2, this.f31482b, false);
        SafeParcelWriter.p(parcel, 3, 4);
        float f2 = this.f31483c;
        parcel.writeFloat(f2);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeFloat(this.f31484e);
        SafeParcelWriter.p(parcel, 6, 4);
        boolean z = this.f31485f;
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeInt(this.g ? 1 : 0);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeInt(this.f31486h ? 1 : 0);
        SafeParcelWriter.j(parcel, 9, this.f31487i.W1(), i2, false);
        SafeParcelWriter.j(parcel, 10, this.f31488j.W1(), i2, false);
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeInt(this.f31489k);
        SafeParcelWriter.o(parcel, 12, this.l, false);
        List<StyleSpan> list = this.m;
        ArrayList arrayList = new ArrayList(list.size());
        for (StyleSpan styleSpan : list) {
            StrokeStyle.Builder builder = new StrokeStyle.Builder(styleSpan.f31511b);
            builder.f31507a = f2;
            builder.d = z;
            arrayList.add(new StyleSpan(new StrokeStyle(builder.f31507a, builder.f31508b, builder.f31509c, builder.d, builder.f31510e), styleSpan.f31512c));
        }
        SafeParcelWriter.o(parcel, 13, arrayList, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public PolylineOptions() {
        this.f31483c = 10.0f;
        this.d = b.v;
        this.f31484e = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f31485f = true;
        this.g = false;
        this.f31486h = false;
        this.f31487i = new ButtCap();
        this.f31488j = new ButtCap();
        this.f31489k = 0;
        this.l = null;
        this.m = new ArrayList();
        this.f31482b = new ArrayList();
    }
}
