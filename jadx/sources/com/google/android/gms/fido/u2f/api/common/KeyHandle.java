package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.fido.common.Transport;
import defpackage.lc0;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class KeyHandle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<KeyHandle> CREATOR = new zze();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f29524c;
    public final ProtocolVersion d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f29525e;

    public KeyHandle(int i2, byte[] bArr, String str, ArrayList arrayList) {
        this.f29523b = i2;
        this.f29524c = bArr;
        try {
            this.d = ProtocolVersion.a(str);
            this.f29525e = arrayList;
        } catch (ProtocolVersion.UnsupportedProtocolException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyHandle)) {
            return false;
        }
        KeyHandle keyHandle = (KeyHandle) obj;
        List list = keyHandle.f29525e;
        if (!Arrays.equals(this.f29524c, keyHandle.f29524c) || !this.d.equals(keyHandle.d)) {
            return false;
        }
        List list2 = this.f29525e;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(Arrays.hashCode(this.f29524c)), this.d, this.f29525e});
    }

    public final String toString() {
        List list = this.f29525e;
        String string = list == null ? "null" : list.toString();
        byte[] bArr = this.f29524c;
        String strEncodeToString = bArr == null ? null : Base64.encodeToString(bArr, 0);
        StringBuilder sb = new StringBuilder("{keyHandle: ");
        sb.append(strEncodeToString);
        sb.append(", version: ");
        sb.append(this.d);
        sb.append(", transports: ");
        return n00.r(string, "}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29523b);
        SafeParcelWriter.b(parcel, 2, this.f29524c, false);
        SafeParcelWriter.k(parcel, 3, this.d.toString(), false);
        SafeParcelWriter.o(parcel, 4, this.f29525e, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public KeyHandle(byte[] bArr, ProtocolVersion protocolVersion, List<Transport> list) {
        this.f29523b = 1;
        this.f29524c = bArr;
        this.d = protocolVersion;
        this.f29525e = list;
    }
}
