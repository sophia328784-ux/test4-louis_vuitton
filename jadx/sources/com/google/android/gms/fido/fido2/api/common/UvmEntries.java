package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class UvmEntries extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UvmEntries> CREATOR = new zzbd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f29496b;

    public UvmEntries(ArrayList arrayList) {
        this.f29496b = arrayList;
    }

    public final JSONArray W1() {
        try {
            JSONArray jSONArray = new JSONArray();
            List list = this.f29496b;
            if (list != null) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    UvmEntry uvmEntry = (UvmEntry) list.get(i2);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put((int) uvmEntry.d);
                    jSONArray2.put((int) uvmEntry.f29498c);
                    jSONArray2.put((int) uvmEntry.d);
                    jSONArray.put(i2, jSONArray2);
                }
            }
            return jSONArray;
        } catch (JSONException e2) {
            r81.g("Error encoding UvmEntries to JSON object", e2);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UvmEntries)) {
            return false;
        }
        List list = ((UvmEntries) obj).f29496b;
        List list2 = this.f29496b;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public final int hashCode() {
        List list = this.f29496b;
        return Arrays.hashCode(new Object[]{list == null ? null : new HashSet(list)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.o(parcel, 1, this.f29496b, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
