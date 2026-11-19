package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.lc0;
import defpackage.n00;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class ChannelIdValue extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ChannelIdValue> CREATOR = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChannelIdValueType f29519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29520c;
    public final String d;

    public enum ChannelIdValueType implements Parcelable {
        ABSENT(0),
        STRING(1),
        OBJECT(2);

        public static final Parcelable.Creator<ChannelIdValueType> CREATOR = new zza();
        private final int zzb;

        ChannelIdValueType(int i2) {
            this.zzb = i2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.zzb);
        }
    }

    public static class UnsupportedChannelIdValueTypeException extends Exception {
        public UnsupportedChannelIdValueTypeException(int i2) {
            super(n00.m(i2, "ChannelIdValueType ", " not supported"));
        }
    }

    static {
        new ChannelIdValue();
        new ChannelIdValue("unavailable");
        new ChannelIdValue("unused");
    }

    public ChannelIdValue(int i2, String str, String str2) {
        try {
            for (ChannelIdValueType channelIdValueType : ChannelIdValueType.values()) {
                if (i2 == channelIdValueType.zzb) {
                    this.f29519b = channelIdValueType;
                    this.f29520c = str;
                    this.d = str2;
                    return;
                }
            }
            throw new UnsupportedChannelIdValueTypeException(i2);
        } catch (UnsupportedChannelIdValueTypeException e2) {
            lc0.u(e2);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChannelIdValue)) {
            return false;
        }
        ChannelIdValue channelIdValue = (ChannelIdValue) obj;
        ChannelIdValueType channelIdValueType = channelIdValue.f29519b;
        ChannelIdValueType channelIdValueType2 = this.f29519b;
        if (!channelIdValueType2.equals(channelIdValueType)) {
            return false;
        }
        int iOrdinal = channelIdValueType2.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal == 1) {
            return this.f29520c.equals(channelIdValue.f29520c);
        }
        if (iOrdinal != 2) {
            return false;
        }
        return this.d.equals(channelIdValue.d);
    }

    public final int hashCode() {
        int i2;
        int iHashCode;
        ChannelIdValueType channelIdValueType = this.f29519b;
        int iHashCode2 = channelIdValueType.hashCode() + 31;
        int iOrdinal = channelIdValueType.ordinal();
        if (iOrdinal == 1) {
            i2 = iHashCode2 * 31;
            iHashCode = this.f29520c.hashCode();
        } else {
            if (iOrdinal != 2) {
                return iHashCode2;
            }
            i2 = iHashCode2 * 31;
            iHashCode = this.d.hashCode();
        }
        return iHashCode + i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int i3 = this.f29519b.zzb;
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(i3);
        SafeParcelWriter.k(parcel, 3, this.f29520c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public ChannelIdValue() {
        this.f29519b = ChannelIdValueType.ABSENT;
        this.d = null;
        this.f29520c = null;
    }

    public ChannelIdValue(String str) {
        this.f29520c = str;
        this.f29519b = ChannelIdValueType.STRING;
        this.d = null;
    }

    public ChannelIdValue(JSONObject jSONObject) {
        String string = jSONObject.toString();
        Preconditions.h(string);
        this.d = string;
        this.f29519b = ChannelIdValueType.OBJECT;
        this.f29520c = null;
    }
}
