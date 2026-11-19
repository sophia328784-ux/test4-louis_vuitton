package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new zbq();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PendingIntent f28775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28776c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f28777e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f28778f;
    public final int g;

    public SaveAccountLinkingTokenRequest(PendingIntent pendingIntent, String str, String str2, ArrayList arrayList, String str3, int i2) {
        this.f28775b = pendingIntent;
        this.f28776c = str;
        this.d = str2;
        this.f28777e = arrayList;
        this.f28778f = str3;
        this.g = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        List list = saveAccountLinkingTokenRequest.f28777e;
        List list2 = this.f28777e;
        return list2.size() == list.size() && list2.containsAll(list) && Objects.a(this.f28775b, saveAccountLinkingTokenRequest.f28775b) && Objects.a(this.f28776c, saveAccountLinkingTokenRequest.f28776c) && Objects.a(this.d, saveAccountLinkingTokenRequest.d) && Objects.a(this.f28778f, saveAccountLinkingTokenRequest.f28778f) && this.g == saveAccountLinkingTokenRequest.g;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28775b, this.f28776c, this.d, this.f28777e, this.f28778f});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.j(parcel, 1, this.f28775b, i2, false);
        SafeParcelWriter.k(parcel, 2, this.f28776c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.m(parcel, 4, this.f28777e);
        SafeParcelWriter.k(parcel, 5, this.f28778f, false);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g);
        SafeParcelWriter.r(iQ, parcel);
    }
}
