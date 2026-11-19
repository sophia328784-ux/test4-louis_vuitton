package com.google.android.gms.auth.blockstore;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RetrieveBytesResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RetrieveBytesResponse> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f28858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f28859c;

    public static class BlockstoreData extends AbstractSafeParcelable {
        public static final Parcelable.Creator<BlockstoreData> CREATOR = new zza();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f28860b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f28861c;

        public BlockstoreData(byte[] bArr, String str) {
            this.f28860b = bArr;
            this.f28861c = str;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof BlockstoreData)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return Arrays.equals(this.f28860b, ((BlockstoreData) obj).f28860b);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(this.f28860b))});
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.b(parcel, 1, this.f28860b, false);
            SafeParcelWriter.k(parcel, 2, this.f28861c, false);
            SafeParcelWriter.r(iQ, parcel);
        }
    }

    public RetrieveBytesResponse(Bundle bundle, ArrayList arrayList) {
        this.f28858b = bundle;
        this.f28859c = arrayList;
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            BlockstoreData blockstoreData = (BlockstoreData) it.next();
            map.put(blockstoreData.f28861c, blockstoreData);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.a(parcel, 1, this.f28858b);
        SafeParcelWriter.o(parcel, 2, this.f28859c, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
