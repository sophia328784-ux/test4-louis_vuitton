package com.vuitton.android.presentation.model.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;", "videoId", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeholder", "subtitle", "Ljava/time/Instant;", "eventStartTimeInUTC", "Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;", "liveVideoStatus", "streamUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetVideoUiModel implements Parcelable {
    public static final Parcelable.Creator<AssetVideoUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51783c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f51784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Instant f51785f;
    public final LiveVideoStatus g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f51786h;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AssetVideoUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AssetVideoUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AssetVideoUiModel(VideoIdUiModel.CREATOR.createFromParcel(parcel).f51799b, parcel.readString(), parcel.readString(), parcel.readString(), (Instant) parcel.readSerializable(), LiveVideoStatus.valueOf(parcel.readString()), parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final AssetVideoUiModel[] newArray(int i2) {
            return new AssetVideoUiModel[i2];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AssetVideoUiModel(String str, String str2, String str3, String str4, Instant instant, LiveVideoStatus liveVideoStatus, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str6;
        if ((i2 & 1) != 0) {
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            str6 = b.a.f24015b;
        } else {
            str6 = str;
        }
        this(str6, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? null : instant, (i2 & 32) != 0 ? LiveVideoStatus.LIVE_REPLAY : liveVideoStatus, (i2 & 64) == 0 ? str5 : "", null);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetVideoUiModel)) {
            return false;
        }
        AssetVideoUiModel assetVideoUiModel = (AssetVideoUiModel) obj;
        String str = assetVideoUiModel.f51782b;
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        return Intrinsics.c(this.f51782b, str) && Intrinsics.c(this.f51783c, assetVideoUiModel.f51783c) && Intrinsics.c(this.d, assetVideoUiModel.d) && Intrinsics.c(this.f51784e, assetVideoUiModel.f51784e) && Intrinsics.c(this.f51785f, assetVideoUiModel.f51785f) && this.g == assetVideoUiModel.g && Intrinsics.c(this.f51786h, assetVideoUiModel.f51786h);
    }

    public final int hashCode() {
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        int iB = fc.b(fc.b(fc.b(this.f51782b.hashCode() * 31, 31, this.f51783c), 31, this.d), 31, this.f51784e);
        Instant instant = this.f51785f;
        return this.f51786h.hashCode() + ((this.g.hashCode() + ((iB + (instant == null ? 0 : instant.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        StringBuilder sbS = fc.s("AssetVideoUiModel(videoId=", this.f51782b, ", url=", this.f51783c, ", placeholder=");
        cj.C(sbS, this.d, ", subtitle=", this.f51784e, ", eventStartTimeInUTC=");
        sbS.append(this.f51785f);
        sbS.append(", liveVideoStatus=");
        sbS.append(this.g);
        sbS.append(", streamUrl=");
        return n00.r(this.f51786h, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
        parcel.writeString(this.f51782b);
        parcel.writeString(this.f51783c);
        parcel.writeString(this.d);
        parcel.writeString(this.f51784e);
        parcel.writeSerializable(this.f51785f);
        parcel.writeString(this.g.name());
        parcel.writeString(this.f51786h);
    }

    public AssetVideoUiModel(String str, String str2, String str3, String str4, Instant instant, LiveVideoStatus liveVideoStatus, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        liveVideoStatus.getClass();
        str5.getClass();
        this.f51782b = str;
        this.f51783c = str2;
        this.d = str3;
        this.f51784e = str4;
        this.f51785f = instant;
        this.g = liveVideoStatus;
        this.f51786h = str5;
    }
}
