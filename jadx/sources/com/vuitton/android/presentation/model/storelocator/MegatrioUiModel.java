package com.vuitton.android.presentation.model.storelocator;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.common.CtaUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;", "Landroid/os/Parcelable;", "", "surtitle", "description", "", "Lcom/vuitton/android/presentation/model/common/CtaUiModel;", "buttons", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MegatrioUiModel implements Parcelable {
    public static final Parcelable.Creator<MegatrioUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51810c;
    public final List d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<MegatrioUiModel> {
        @Override // android.os.Parcelable.Creator
        public final MegatrioUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            while (iD != i2) {
                iD = pq0.d(CtaUiModel.CREATOR, parcel, arrayList, iD, 1);
            }
            return new MegatrioUiModel(string, string2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        public final MegatrioUiModel[] newArray(int i2) {
            return new MegatrioUiModel[i2];
        }
    }

    public MegatrioUiModel(String str, String str2, List<CtaUiModel> list) {
        pq0.B(str, str2, list);
        this.f51809b = str;
        this.f51810c = str2;
        this.d = list;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MegatrioUiModel)) {
            return false;
        }
        MegatrioUiModel megatrioUiModel = (MegatrioUiModel) obj;
        return Intrinsics.c(this.f51809b, megatrioUiModel.f51809b) && Intrinsics.c(this.f51810c, megatrioUiModel.f51810c) && Intrinsics.c(this.d, megatrioUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(this.f51809b.hashCode() * 31, 31, this.f51810c);
    }

    public final String toString() {
        return a.o(fc.s("MegatrioUiModel(surtitle=", this.f51809b, ", description=", this.f51810c, ", buttons="), this.d, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f51809b);
        parcel.writeString(this.f51810c);
        Iterator itP = cj.p(this.d, parcel);
        while (itP.hasNext()) {
            ((CtaUiModel) itP.next()).writeToParcel(parcel, i2);
        }
    }
}
