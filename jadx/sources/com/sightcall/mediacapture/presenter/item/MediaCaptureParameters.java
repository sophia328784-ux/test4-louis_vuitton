package com.sightcall.mediacapture.presenter.item;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\"\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010*\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010+\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u0010,\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0094\u0001\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010.J\u0006\u0010/\u001a\u00020\tJ\u0014\u00100\u001a\u00020\u00032\b\u00101\u001a\u0004\u0018\u000102HÖ\u0083\u0004J\n\u00103\u001a\u00020\tHÖ\u0081\u0004J\n\u00104\u001a\u000205HÖ\u0081\u0004J\u0016\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001a\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0013R\u0015\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001b\u0010\u0018R\u0015\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001c\u0010\u0018R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b \u0010\u001e¨\u0006;"}, d2 = {"Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "Landroid/os/Parcelable;", "isCameraAllowed", "", "isGalleryVideoAllowed", "isGalleryImageAllowed", "isPhotoAllowed", "backupLibrary", "photoMaxSize", "", "photoTargetWeight", "isVideoAllowed", "videoMaxSize", "maxDuration", "safeArea", "", "aspectRatio", "<init>", "(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V", "()Z", "getBackupLibrary", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPhotoMaxSize", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPhotoTargetWeight", "getVideoMaxSize", "getMaxDuration", "getSafeArea", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getAspectRatio", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(ZZZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MediaCaptureParameters implements Parcelable {
    public static final Parcelable.Creator<MediaCaptureParameters> CREATOR = new Creator();
    private final Double aspectRatio;
    private final Boolean backupLibrary;
    private final boolean isCameraAllowed;
    private final boolean isGalleryImageAllowed;
    private final boolean isGalleryVideoAllowed;
    private final boolean isPhotoAllowed;
    private final boolean isVideoAllowed;
    private final Integer maxDuration;
    private final Integer photoMaxSize;
    private final Integer photoTargetWeight;
    private final Double safeArea;
    private final Integer videoMaxSize;

    public MediaCaptureParameters(boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Integer num, Integer num2, boolean z5, Integer num3, Integer num4, Double d, Double d2) {
        this.isCameraAllowed = z;
        this.isGalleryVideoAllowed = z2;
        this.isGalleryImageAllowed = z3;
        this.isPhotoAllowed = z4;
        this.backupLibrary = bool;
        this.photoMaxSize = num;
        this.photoTargetWeight = num2;
        this.isVideoAllowed = z5;
        this.videoMaxSize = num3;
        this.maxDuration = num4;
        this.safeArea = d;
        this.aspectRatio = d2;
    }

    public static /* synthetic */ MediaCaptureParameters copy$default(MediaCaptureParameters mediaCaptureParameters, boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, Integer num, Integer num2, boolean z5, Integer num3, Integer num4, Double d, Double d2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = mediaCaptureParameters.isCameraAllowed;
        }
        if ((i2 & 2) != 0) {
            z2 = mediaCaptureParameters.isGalleryVideoAllowed;
        }
        if ((i2 & 4) != 0) {
            z3 = mediaCaptureParameters.isGalleryImageAllowed;
        }
        if ((i2 & 8) != 0) {
            z4 = mediaCaptureParameters.isPhotoAllowed;
        }
        if ((i2 & 16) != 0) {
            bool = mediaCaptureParameters.backupLibrary;
        }
        if ((i2 & 32) != 0) {
            num = mediaCaptureParameters.photoMaxSize;
        }
        if ((i2 & 64) != 0) {
            num2 = mediaCaptureParameters.photoTargetWeight;
        }
        if ((i2 & 128) != 0) {
            z5 = mediaCaptureParameters.isVideoAllowed;
        }
        if ((i2 & 256) != 0) {
            num3 = mediaCaptureParameters.videoMaxSize;
        }
        if ((i2 & 512) != 0) {
            num4 = mediaCaptureParameters.maxDuration;
        }
        if ((i2 & 1024) != 0) {
            d = mediaCaptureParameters.safeArea;
        }
        if ((i2 & 2048) != 0) {
            d2 = mediaCaptureParameters.aspectRatio;
        }
        Double d3 = d;
        Double d4 = d2;
        Integer num5 = num3;
        Integer num6 = num4;
        Integer num7 = num2;
        boolean z6 = z5;
        Boolean bool2 = bool;
        Integer num8 = num;
        return mediaCaptureParameters.copy(z, z2, z3, z4, bool2, num8, num7, z6, num5, num6, d3, d4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsCameraAllowed() {
        return this.isCameraAllowed;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getMaxDuration() {
        return this.maxDuration;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Double getSafeArea() {
        return this.safeArea;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Double getAspectRatio() {
        return this.aspectRatio;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsGalleryVideoAllowed() {
        return this.isGalleryVideoAllowed;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsGalleryImageAllowed() {
        return this.isGalleryImageAllowed;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsPhotoAllowed() {
        return this.isPhotoAllowed;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Boolean getBackupLibrary() {
        return this.backupLibrary;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getPhotoMaxSize() {
        return this.photoMaxSize;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getPhotoTargetWeight() {
        return this.photoTargetWeight;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsVideoAllowed() {
        return this.isVideoAllowed;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getVideoMaxSize() {
        return this.videoMaxSize;
    }

    public final MediaCaptureParameters copy(boolean isCameraAllowed, boolean isGalleryVideoAllowed, boolean isGalleryImageAllowed, boolean isPhotoAllowed, Boolean backupLibrary, Integer photoMaxSize, Integer photoTargetWeight, boolean isVideoAllowed, Integer videoMaxSize, Integer maxDuration, Double safeArea, Double aspectRatio) {
        return new MediaCaptureParameters(isCameraAllowed, isGalleryVideoAllowed, isGalleryImageAllowed, isPhotoAllowed, backupLibrary, photoMaxSize, photoTargetWeight, isVideoAllowed, videoMaxSize, maxDuration, safeArea, aspectRatio);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediaCaptureParameters)) {
            return false;
        }
        MediaCaptureParameters mediaCaptureParameters = (MediaCaptureParameters) other;
        return this.isCameraAllowed == mediaCaptureParameters.isCameraAllowed && this.isGalleryVideoAllowed == mediaCaptureParameters.isGalleryVideoAllowed && this.isGalleryImageAllowed == mediaCaptureParameters.isGalleryImageAllowed && this.isPhotoAllowed == mediaCaptureParameters.isPhotoAllowed && Intrinsics.c(this.backupLibrary, mediaCaptureParameters.backupLibrary) && Intrinsics.c(this.photoMaxSize, mediaCaptureParameters.photoMaxSize) && Intrinsics.c(this.photoTargetWeight, mediaCaptureParameters.photoTargetWeight) && this.isVideoAllowed == mediaCaptureParameters.isVideoAllowed && Intrinsics.c(this.videoMaxSize, mediaCaptureParameters.videoMaxSize) && Intrinsics.c(this.maxDuration, mediaCaptureParameters.maxDuration) && Intrinsics.c(this.safeArea, mediaCaptureParameters.safeArea) && Intrinsics.c(this.aspectRatio, mediaCaptureParameters.aspectRatio);
    }

    public final Double getAspectRatio() {
        return this.aspectRatio;
    }

    public final Boolean getBackupLibrary() {
        return this.backupLibrary;
    }

    public final Integer getMaxDuration() {
        return this.maxDuration;
    }

    public final Integer getPhotoMaxSize() {
        return this.photoMaxSize;
    }

    public final Integer getPhotoTargetWeight() {
        return this.photoTargetWeight;
    }

    public final Double getSafeArea() {
        return this.safeArea;
    }

    public final Integer getVideoMaxSize() {
        return this.videoMaxSize;
    }

    public int hashCode() {
        int iB = o60.b(o60.b(o60.b(Boolean.hashCode(this.isCameraAllowed) * 31, 31, this.isGalleryVideoAllowed), 31, this.isGalleryImageAllowed), 31, this.isPhotoAllowed);
        Boolean bool = this.backupLibrary;
        int iHashCode = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num = this.photoMaxSize;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.photoTargetWeight;
        int iB2 = o60.b((iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31, 31, this.isVideoAllowed);
        Integer num3 = this.videoMaxSize;
        int iHashCode3 = (iB2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.maxDuration;
        int iHashCode4 = (iHashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Double d = this.safeArea;
        int iHashCode5 = (iHashCode4 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.aspectRatio;
        return iHashCode5 + (d2 != null ? d2.hashCode() : 0);
    }

    public final boolean isCameraAllowed() {
        return this.isCameraAllowed;
    }

    public final boolean isGalleryImageAllowed() {
        return this.isGalleryImageAllowed;
    }

    public final boolean isGalleryVideoAllowed() {
        return this.isGalleryVideoAllowed;
    }

    public final boolean isPhotoAllowed() {
        return this.isPhotoAllowed;
    }

    public final boolean isVideoAllowed() {
        return this.isVideoAllowed;
    }

    public String toString() {
        boolean z = this.isCameraAllowed;
        boolean z2 = this.isGalleryVideoAllowed;
        boolean z3 = this.isGalleryImageAllowed;
        boolean z4 = this.isPhotoAllowed;
        Boolean bool = this.backupLibrary;
        Integer num = this.photoMaxSize;
        Integer num2 = this.photoTargetWeight;
        boolean z5 = this.isVideoAllowed;
        Integer num3 = this.videoMaxSize;
        Integer num4 = this.maxDuration;
        Double d = this.safeArea;
        Double d2 = this.aspectRatio;
        StringBuilder sbM = cj.m("MediaCaptureParameters(isCameraAllowed=", ", isGalleryVideoAllowed=", ", isGalleryImageAllowed=", z, z2);
        fc.y(sbM, z3, ", isPhotoAllowed=", z4, ", backupLibrary=");
        sbM.append(bool);
        sbM.append(", photoMaxSize=");
        sbM.append(num);
        sbM.append(", photoTargetWeight=");
        sbM.append(num2);
        sbM.append(", isVideoAllowed=");
        sbM.append(z5);
        sbM.append(", videoMaxSize=");
        sbM.append(num3);
        sbM.append(", maxDuration=");
        sbM.append(num4);
        sbM.append(", safeArea=");
        sbM.append(d);
        sbM.append(", aspectRatio=");
        sbM.append(d2);
        sbM.append(")");
        return sbM.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        dest.getClass();
        dest.writeInt(this.isCameraAllowed ? 1 : 0);
        dest.writeInt(this.isGalleryVideoAllowed ? 1 : 0);
        dest.writeInt(this.isGalleryImageAllowed ? 1 : 0);
        dest.writeInt(this.isPhotoAllowed ? 1 : 0);
        Boolean bool = this.backupLibrary;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            a.w(dest, 1, bool);
        }
        Integer num = this.photoMaxSize;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.photoTargetWeight;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeInt(this.isVideoAllowed ? 1 : 0);
        Integer num3 = this.videoMaxSize;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        Integer num4 = this.maxDuration;
        if (num4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num4.intValue());
        }
        Double d = this.safeArea;
        if (d == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d.doubleValue());
        }
        Double d2 = this.aspectRatio;
        if (d2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d2.doubleValue());
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<MediaCaptureParameters> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final MediaCaptureParameters createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            parcel.getClass();
            boolean z = false;
            boolean z2 = true;
            if (parcel.readInt() != 0) {
                z = true;
            }
            if (parcel.readInt() == 0) {
                z2 = z;
            }
            if (parcel.readInt() == 0) {
                z2 = z;
            }
            if (parcel.readInt() == 0) {
                z2 = z;
            }
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0 ? z2 : z);
            }
            return new MediaCaptureParameters(z, z2, z2, z2, boolValueOf, parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0, parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final MediaCaptureParameters[] newArray(int i2) {
            return new MediaCaptureParameters[i2];
        }
    }
}
