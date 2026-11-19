package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.connectivity.VideoUiModel;
import defpackage.cj;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\b\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001`\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0007j\b\u0012\u0004\u0012\u00020\u000f`\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "title", "description", "icon", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "assetTopList", "assetBottomList", "Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;", "presentationVideo", "howToGetWatchVideo", "presentationPlaceholder", "", "versions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;Ljava/lang/String;Ljava/util/ArrayList;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchFacePresentationUiModel implements Parcelable {
    public static final Parcelable.Creator<WatchFacePresentationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56811c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f56812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f56813f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final VideoUiModel f56814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final VideoUiModel f56815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f56816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f56817k;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WatchFacePresentationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final WatchFacePresentationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            ArrayList<String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
            VideoUiModel videoUiModelCreateFromParcel = parcel.readInt() == 0 ? null : VideoUiModel.CREATOR.createFromParcel(parcel);
            VideoUiModel videoUiModelCreateFromParcel2 = parcel.readInt() != 0 ? VideoUiModel.CREATOR.createFromParcel(parcel) : null;
            String string5 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 != i2; i3++) {
                arrayList.add(Integer.valueOf(parcel.readInt()));
            }
            return new WatchFacePresentationUiModel(string, string2, string3, string4, arrayListCreateStringArrayList, arrayListCreateStringArrayList2, videoUiModelCreateFromParcel, videoUiModelCreateFromParcel2, string5, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final WatchFacePresentationUiModel[] newArray(int i2) {
            return new WatchFacePresentationUiModel[i2];
        }
    }

    public WatchFacePresentationUiModel(String str, String str2, String str3, String str4, ArrayList<String> arrayList, ArrayList<String> arrayList2, VideoUiModel videoUiModel, VideoUiModel videoUiModel2, String str5, ArrayList<Integer> arrayList3) {
        arrayList3.getClass();
        this.f56810b = str;
        this.f56811c = str2;
        this.d = str3;
        this.f56812e = str4;
        this.f56813f = arrayList;
        this.g = arrayList2;
        this.f56814h = videoUiModel;
        this.f56815i = videoUiModel2;
        this.f56816j = str5;
        this.f56817k = arrayList3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchFacePresentationUiModel)) {
            return false;
        }
        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
        return Intrinsics.c(this.f56810b, watchFacePresentationUiModel.f56810b) && Intrinsics.c(this.f56811c, watchFacePresentationUiModel.f56811c) && Intrinsics.c(this.d, watchFacePresentationUiModel.d) && Intrinsics.c(this.f56812e, watchFacePresentationUiModel.f56812e) && Intrinsics.c(this.f56813f, watchFacePresentationUiModel.f56813f) && Intrinsics.c(this.g, watchFacePresentationUiModel.g) && Intrinsics.c(this.f56814h, watchFacePresentationUiModel.f56814h) && Intrinsics.c(this.f56815i, watchFacePresentationUiModel.f56815i) && Intrinsics.c(this.f56816j, watchFacePresentationUiModel.f56816j) && Intrinsics.c(this.f56817k, watchFacePresentationUiModel.f56817k);
    }

    public final int hashCode() {
        String str = this.f56810b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f56811c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f56812e;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ArrayList arrayList = this.f56813f;
        int iHashCode5 = (iHashCode4 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList arrayList2 = this.g;
        int iHashCode6 = (iHashCode5 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        VideoUiModel videoUiModel = this.f56814h;
        int iHashCode7 = (iHashCode6 + (videoUiModel == null ? 0 : videoUiModel.hashCode())) * 31;
        VideoUiModel videoUiModel2 = this.f56815i;
        int iHashCode8 = (iHashCode7 + (videoUiModel2 == null ? 0 : videoUiModel2.hashCode())) * 31;
        String str5 = this.f56816j;
        return this.f56817k.hashCode() + ((iHashCode8 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("WatchFacePresentationUiModel(id=", this.f56810b, ", title=", this.f56811c, ", description=");
        cj.C(sbS, this.d, ", icon=", this.f56812e, ", assetTopList=");
        sbS.append(this.f56813f);
        sbS.append(", assetBottomList=");
        sbS.append(this.g);
        sbS.append(", presentationVideo=");
        sbS.append(this.f56814h);
        sbS.append(", howToGetWatchVideo=");
        sbS.append(this.f56815i);
        sbS.append(", presentationPlaceholder=");
        sbS.append(this.f56816j);
        sbS.append(", versions=");
        sbS.append(this.f56817k);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56810b);
        parcel.writeString(this.f56811c);
        parcel.writeString(this.d);
        parcel.writeString(this.f56812e);
        parcel.writeStringList(this.f56813f);
        parcel.writeStringList(this.g);
        VideoUiModel videoUiModel = this.f56814h;
        if (videoUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            videoUiModel.writeToParcel(parcel, i2);
        }
        VideoUiModel videoUiModel2 = this.f56815i;
        if (videoUiModel2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            videoUiModel2.writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f56816j);
        ArrayList arrayList = this.f56817k;
        parcel.writeInt(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            parcel.writeInt(((Number) it.next()).intValue());
        }
    }
}
