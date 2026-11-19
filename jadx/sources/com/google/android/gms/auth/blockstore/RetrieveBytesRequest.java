package com.google.android.gms.auth.blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class RetrieveBytesRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RetrieveBytesRequest> CREATOR = new zzc();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f28856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f28857c;

    public RetrieveBytesRequest(ArrayList arrayList, boolean z) {
        if (z) {
            boolean z2 = true;
            if (arrayList != null && !arrayList.isEmpty()) {
                z2 = false;
            }
            Preconditions.j("retrieveAll was set to true but other constraint(s) was also provided: keys", z2);
        }
        this.f28857c = z;
        this.f28856b = new ArrayList();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Preconditions.f(str, "Element in keys cannot be null or empty");
                this.f28856b.add(str);
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.m(parcel, 1, Collections.unmodifiableList(this.f28856b));
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f28857c ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }
}
