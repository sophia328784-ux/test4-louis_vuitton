package com.vuitton.android.presentation.screen.osa.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.storelocator.MegatrioUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;", "Landroid/os/Parcelable;", "", "storeId", "name", "address", "address2", "phone", "imageUrl", "", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "inStoreSlots", "distantSlots", "storeTimeZone", "Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;", "megatrio", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaFormItemUiModel implements Parcelable {
    public static final Parcelable.Creator<OsaFormItemUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60915c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60917f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f60918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f60919i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f60920j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MegatrioUiModel f60921k;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<OsaFormItemUiModel> {
        @Override // android.os.Parcelable.Creator
        public final OsaFormItemUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            int iD = 0;
            int iD2 = 0;
            while (iD2 != i2) {
                iD2 = pq0.d(TimeSlotUiModel.CREATOR, parcel, arrayList, iD2, 1);
            }
            int i3 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i3);
            while (iD != i3) {
                iD = pq0.d(TimeSlotUiModel.CREATOR, parcel, arrayList2, iD, 1);
            }
            return new OsaFormItemUiModel(string, string2, string3, string4, string5, string6, arrayList, arrayList2, parcel.readString(), parcel.readInt() == 0 ? null : MegatrioUiModel.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final OsaFormItemUiModel[] newArray(int i2) {
            return new OsaFormItemUiModel[i2];
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60922a;

        static {
            int[] iArr = new int[AppointmentTypeUiModel.values().length];
            try {
                iArr[AppointmentTypeUiModel.IN_STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppointmentTypeUiModel.DISTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f60922a = iArr;
        }
    }

    public OsaFormItemUiModel(String str, String str2, String str3, String str4, String str5, String str6, List<TimeSlotUiModel> list, List<TimeSlotUiModel> list2, String str7, MegatrioUiModel megatrioUiModel) {
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        list.getClass();
        list2.getClass();
        str7.getClass();
        this.f60914b = str;
        this.f60915c = str2;
        this.d = str3;
        this.f60916e = str4;
        this.f60917f = str5;
        this.g = str6;
        this.f60918h = list;
        this.f60919i = list2;
        this.f60920j = str7;
        this.f60921k = megatrioUiModel;
    }

    public final List a(AppointmentTypeUiModel appointmentTypeUiModel) {
        int i2 = appointmentTypeUiModel == null ? -1 : WhenMappings.f60922a[appointmentTypeUiModel.ordinal()];
        if (i2 != 1) {
            return i2 != 2 ? EmptyList.f71768b : this.f60919i;
        }
        return this.f60918h;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaFormItemUiModel)) {
            return false;
        }
        OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) obj;
        return Intrinsics.c(this.f60914b, osaFormItemUiModel.f60914b) && Intrinsics.c(this.f60915c, osaFormItemUiModel.f60915c) && Intrinsics.c(this.d, osaFormItemUiModel.d) && Intrinsics.c(this.f60916e, osaFormItemUiModel.f60916e) && Intrinsics.c(this.f60917f, osaFormItemUiModel.f60917f) && Intrinsics.c(this.g, osaFormItemUiModel.g) && Intrinsics.c(this.f60918h, osaFormItemUiModel.f60918h) && Intrinsics.c(this.f60919i, osaFormItemUiModel.f60919i) && Intrinsics.c(this.f60920j, osaFormItemUiModel.f60920j) && Intrinsics.c(this.f60921k, osaFormItemUiModel.f60921k);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(n00.a(fc.b(fc.b(fc.b(fc.b(fc.b(this.f60914b.hashCode() * 31, 31, this.f60915c), 31, this.d), 31, this.f60916e), 31, this.f60917f), 31, this.g), 31, this.f60918h), 31, this.f60919i), 31, this.f60920j);
        MegatrioUiModel megatrioUiModel = this.f60921k;
        return iB + (megatrioUiModel == null ? 0 : megatrioUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("OsaFormItemUiModel(storeId=", this.f60914b, ", name=", this.f60915c, ", address=");
        cj.C(sbS, this.d, ", address2=", this.f60916e, ", phone=");
        cj.C(sbS, this.f60917f, ", imageUrl=", this.g, ", inStoreSlots=");
        a.C(sbS, this.f60918h, ", distantSlots=", this.f60919i, ", storeTimeZone=");
        sbS.append(this.f60920j);
        sbS.append(", megatrio=");
        sbS.append(this.f60921k);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f60914b);
        parcel.writeString(this.f60915c);
        parcel.writeString(this.d);
        parcel.writeString(this.f60916e);
        parcel.writeString(this.f60917f);
        parcel.writeString(this.g);
        Iterator itP = cj.p(this.f60918h, parcel);
        while (itP.hasNext()) {
            ((TimeSlotUiModel) itP.next()).writeToParcel(parcel, i2);
        }
        Iterator itP2 = cj.p(this.f60919i, parcel);
        while (itP2.hasNext()) {
            ((TimeSlotUiModel) itP2.next()).writeToParcel(parcel, i2);
        }
        parcel.writeString(this.f60920j);
        MegatrioUiModel megatrioUiModel = this.f60921k;
        if (megatrioUiModel == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            megatrioUiModel.writeToParcel(parcel, i2);
        }
    }

    public /* synthetic */ OsaFormItemUiModel(String str, String str2, String str3, String str4, String str5, String str6, List list, List list2, String str7, MegatrioUiModel megatrioUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, list, list2, str7, (i2 & 512) != 0 ? null : megatrioUiModel);
    }
}
