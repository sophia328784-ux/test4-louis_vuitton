package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail.WatchTutorialUi;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoryUi;", "Landroid/os/Parcelable;", "", "title", "subtitle", "iconUrl", "", "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;", "content", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchTutorialCategoryUi implements Parcelable {
    public static final Parcelable.Creator<WatchTutorialCategoryUi> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56801c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f56802e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WatchTutorialCategoryUi> {
        @Override // android.os.Parcelable.Creator
        public final WatchTutorialCategoryUi createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(WatchTutorialUi.CREATOR, parcel, arrayList, iD, 1);
            }
            return new WatchTutorialCategoryUi(string, string2, string3, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final WatchTutorialCategoryUi[] newArray(int i2) {
            return new WatchTutorialCategoryUi[i2];
        }
    }

    public WatchTutorialCategoryUi(String str, String str2, String str3, List<WatchTutorialUi> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.f56800b = str;
        this.f56801c = str2;
        this.d = str3;
        this.f56802e = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchTutorialCategoryUi)) {
            return false;
        }
        WatchTutorialCategoryUi watchTutorialCategoryUi = (WatchTutorialCategoryUi) obj;
        return Intrinsics.c(this.f56800b, watchTutorialCategoryUi.f56800b) && Intrinsics.c(this.f56801c, watchTutorialCategoryUi.f56801c) && Intrinsics.c(this.d, watchTutorialCategoryUi.d) && Intrinsics.c(this.f56802e, watchTutorialCategoryUi.f56802e);
    }

    public final int hashCode() {
        return this.f56802e.hashCode() + fc.b(fc.b(this.f56800b.hashCode() * 31, 31, this.f56801c), 31, this.d);
    }

    public final String toString() {
        return o60.o(this.d, ", content=", ")", fc.s("WatchTutorialCategoryUi(title=", this.f56800b, ", subtitle=", this.f56801c, ", iconUrl="), this.f56802e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56800b);
        parcel.writeString(this.f56801c);
        parcel.writeString(this.d);
        Iterator itP = cj.p(this.f56802e, parcel);
        while (itP.hasNext()) {
            ((WatchTutorialUi) itP.next()).writeToParcel(parcel, i2);
        }
    }
}
