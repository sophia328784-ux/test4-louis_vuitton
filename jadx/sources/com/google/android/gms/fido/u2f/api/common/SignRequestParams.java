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
public class SignRequestParams extends RequestParams {
    public static final Parcelable.Creator<SignRequestParams> CREATOR = new zzk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f29538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f29539c;
    public final Uri d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f29540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f29541f;
    public final ChannelIdValue g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f29542h;

    public SignRequestParams(Integer num, Double d, Uri uri, byte[] bArr, ArrayList arrayList, ChannelIdValue channelIdValue, String str) {
        this.f29538b = num;
        this.f29539c = d;
        this.d = uri;
        this.f29540e = bArr;
        this.f29541f = arrayList;
        this.g = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                RegisteredKey registeredKey = (RegisteredKey) it.next();
                Preconditions.b((registeredKey.f29537c == null && uri == null) ? false : true, "registered key has null appId and no request appId is provided");
                String str2 = registeredKey.f29537c;
                if (str2 != null) {
                    hashSet.add(Uri.parse(str2));
                }
            }
        }
        Preconditions.b(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.f29542h = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignRequestParams)) {
            return false;
        }
        SignRequestParams signRequestParams = (SignRequestParams) obj;
        List list = signRequestParams.f29541f;
        if (Objects.a(this.f29538b, signRequestParams.f29538b) && Objects.a(this.f29539c, signRequestParams.f29539c) && Objects.a(this.d, signRequestParams.d) && Arrays.equals(this.f29540e, signRequestParams.f29540e)) {
            List list2 = this.f29541f;
            if (list2.containsAll(list) && list.containsAll(list2) && Objects.a(this.g, signRequestParams.g) && Objects.a(this.f29542h, signRequestParams.f29542h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29538b, this.d, this.f29539c, this.f29541f, this.g, this.f29542h, Integer.valueOf(Arrays.hashCode(this.f29540e))});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.h(parcel, 2, this.f29538b);
        SafeParcelWriter.d(parcel, 3, this.f29539c);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.b(parcel, 5, this.f29540e, false);
        SafeParcelWriter.o(parcel, 6, this.f29541f, false);
        SafeParcelWriter.j(parcel, 7, this.g, i2, false);
        SafeParcelWriter.k(parcel, 8, this.f29542h, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
