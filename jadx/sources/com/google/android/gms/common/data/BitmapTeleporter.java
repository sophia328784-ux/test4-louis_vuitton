package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.md;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ParcelFileDescriptor f29139c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bitmap f29140e;

    public BitmapTeleporter(Bitmap bitmap) {
        this.f29138b = 1;
        this.f29139c = null;
        this.d = 0;
        this.f29140e = bitmap;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        if (this.f29139c == null) {
            Bitmap bitmap = this.f29140e;
            Preconditions.h(bitmap);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getHeight() * bitmap.getRowBytes());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byteBufferAllocate.array();
            md.k("setTempDir() must be called before writing this object to a parcel");
            return;
        }
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f29138b);
        SafeParcelWriter.j(parcel, 2, this.f29139c, i2 | 1, false);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeInt(this.d);
        SafeParcelWriter.r(iQ, parcel);
        this.f29139c = null;
    }

    public BitmapTeleporter(int i2, ParcelFileDescriptor parcelFileDescriptor, int i3) {
        this.f29138b = i2;
        this.f29139c = parcelFileDescriptor;
        this.d = i3;
        this.f29140e = null;
    }
}
