package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RegisterRequestParams extends RequestParams {
    public static final Parcelable.Creator<RegisterRequestParams> CREATOR = new zzh();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f29529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f29530c;
    public final Uri d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f29531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f29532f;
    public final ChannelIdValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f29533h;

    public RegisterRequestParams(Integer num, Double d, Uri uri, ArrayList arrayList, ArrayList arrayList2, ChannelIdValue channelIdValue, String str) {
        this.f29529b = num;
        this.f29530c = d;
        this.d = uri;
        Preconditions.b((arrayList == null || arrayList.isEmpty()) ? false : true, "empty list of register requests is provided");
        this.f29531e = arrayList;
        this.f29532f = arrayList2;
        this.g = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RegisterRequest registerRequest = (RegisterRequest) it.next();
            Preconditions.b((uri == null && registerRequest.f29528e == null) ? false : true, "register request has null appId and no request appId is provided");
            String str2 = registerRequest.f29528e;
            if (str2 != null) {
                hashSet.add(Uri.parse(str2));
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            RegisteredKey registeredKey = (RegisteredKey) it2.next();
            Preconditions.b((uri == null && registeredKey.f29537c == null) ? false : true, "registered key has null appId and no request appId is provided");
            String str3 = registeredKey.f29537c;
            if (str3 != null) {
                hashSet.add(Uri.parse(str3));
            }
        }
        Preconditions.b(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.f29533h = str;
    }

    public final boolean equals(Object obj) {
        List list;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequestParams)) {
            return false;
        }
        RegisterRequestParams registerRequestParams = (RegisterRequestParams) obj;
        List list2 = registerRequestParams.f29532f;
        return Objects.a(this.f29529b, registerRequestParams.f29529b) && Objects.a(this.f29530c, registerRequestParams.f29530c) && Objects.a(this.d, registerRequestParams.d) && Objects.a(this.f29531e, registerRequestParams.f29531e) && (((list = this.f29532f) == null && list2 == null) || (list != null && list2 != null && list.containsAll(list2) && list2.containsAll(list))) && Objects.a(this.g, registerRequestParams.g) && Objects.a(this.f29533h, registerRequestParams.f29533h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29529b, this.d, this.f29530c, this.f29531e, this.f29532f, this.g, this.f29533h});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.h(parcel, 2, this.f29529b);
        SafeParcelWriter.d(parcel, 3, this.f29530c);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.o(parcel, 5, this.f29531e, false);
        SafeParcelWriter.o(parcel, 6, this.f29532f, false);
        SafeParcelWriter.j(parcel, 7, this.g, i2, false);
        SafeParcelWriter.k(parcel, 8, this.f29533h, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
