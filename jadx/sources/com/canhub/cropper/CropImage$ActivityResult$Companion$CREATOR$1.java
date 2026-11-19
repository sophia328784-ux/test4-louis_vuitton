package com.canhub.cropper;

import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"com/canhub/cropper/CropImage$ActivityResult$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/canhub/cropper/CropImage$ActivityResult;", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropImage$ActivityResult$Companion$CREATOR$1 implements Parcelable.Creator<CropImage$ActivityResult> {
    @Override // android.os.Parcelable.Creator
    public final CropImage$ActivityResult createFromParcel(Parcel parcel) {
        parcel.getClass();
        Uri uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        Uri uri2 = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        Exception exc = (Exception) parcel.readSerializable();
        float[] fArrCreateFloatArray = parcel.createFloatArray();
        fArrCreateFloatArray.getClass();
        return new CropImage$ActivityResult(null, uri, null, uri2, exc, fArrCreateFloatArray, (Rect) parcel.readParcelable(Rect.class.getClassLoader()), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), parcel.readInt(), parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public final CropImage$ActivityResult[] newArray(int i2) {
        return new CropImage$ActivityResult[i2];
    }
}
