package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.q0.b;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class PinConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PinConfig> CREATOR = new zzr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f31467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31468c;
    public final Glyph d;

    public PinConfig(int i2, int i3, Glyph glyph) {
        this.f31467b = i2;
        this.f31468c = i3;
        this.d = glyph;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f31467b);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.f31468c);
        SafeParcelWriter.j(parcel, 4, this.d, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static class Glyph extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Glyph> CREATOR = new zzj();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f31469b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public BitmapDescriptor f31470c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f31471e;

        public Glyph(BitmapDescriptor bitmapDescriptor) {
            this.d = -5041134;
            this.f31471e = b.v;
            this.f31470c = bitmapDescriptor;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Glyph)) {
                return false;
            }
            Glyph glyph = (Glyph) obj;
            BitmapDescriptor bitmapDescriptor = glyph.f31470c;
            if (this.d != glyph.d || !Objects.equals(this.f31469b, glyph.f31469b) || this.f31471e != glyph.f31471e) {
                return false;
            }
            BitmapDescriptor bitmapDescriptor2 = this.f31470c;
            if ((bitmapDescriptor2 == null && bitmapDescriptor != null) || (bitmapDescriptor2 != null && bitmapDescriptor == null)) {
                return false;
            }
            if (bitmapDescriptor2 == null || bitmapDescriptor == null) {
                return true;
            }
            return Objects.equals(ObjectWrapper.G2(bitmapDescriptor2.f31424a), ObjectWrapper.G2(bitmapDescriptor.f31424a));
        }

        public final int hashCode() {
            return Objects.hash(this.f31469b, this.f31470c, Integer.valueOf(this.d));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f31469b, false);
            BitmapDescriptor bitmapDescriptor = this.f31470c;
            SafeParcelWriter.f(parcel, 3, bitmapDescriptor == null ? null : bitmapDescriptor.f31424a.asBinder());
            int i3 = this.d;
            SafeParcelWriter.p(parcel, 4, 4);
            parcel.writeInt(i3);
            int i4 = this.f31471e;
            SafeParcelWriter.p(parcel, 5, 4);
            parcel.writeInt(i4);
            SafeParcelWriter.r(iQ, parcel);
        }

        public Glyph(int i2) {
            this.f31471e = b.v;
            this.d = i2;
        }

        public Glyph(String str) {
            this(str, b.v);
        }

        public Glyph(String str, int i2) {
            this.d = -5041134;
            this.f31469b = str;
            this.f31471e = i2;
        }
    }
}
