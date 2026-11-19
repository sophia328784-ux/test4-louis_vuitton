package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00060\u0005\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;", "Landroid/os/Parcelable;", "", "title", "exportNote", "", "Lkotlin/Pair;", "items", "totalPrice", "disclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssessmentUiModel implements Parcelable {
    public static final Parcelable.Creator<AssessmentUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f64026c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f64027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f64028f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AssessmentUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AssessmentUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            for (int i3 = 0; i3 != i2; i3++) {
                arrayList.add(parcel.readSerializable());
            }
            return new AssessmentUiModel(string, string2, arrayList, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AssessmentUiModel[] newArray(int i2) {
            return new AssessmentUiModel[i2];
        }
    }

    public AssessmentUiModel(String str, String str2, List<Pair<String, String>> list, String str3, String str4) {
        str.getClass();
        str2.getClass();
        list.getClass();
        str3.getClass();
        this.f64025b = str;
        this.f64026c = str2;
        this.d = list;
        this.f64027e = str3;
        this.f64028f = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssessmentUiModel)) {
            return false;
        }
        AssessmentUiModel assessmentUiModel = (AssessmentUiModel) obj;
        return Intrinsics.c(this.f64025b, assessmentUiModel.f64025b) && Intrinsics.c(this.f64026c, assessmentUiModel.f64026c) && Intrinsics.c(this.d, assessmentUiModel.d) && Intrinsics.c(this.f64027e, assessmentUiModel.f64027e) && Intrinsics.c(this.f64028f, assessmentUiModel.f64028f);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(fc.b(this.f64025b.hashCode() * 31, 31, this.f64026c), 31, this.d), 31, this.f64027e);
        String str = this.f64028f;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssessmentUiModel(title=", this.f64025b, ", exportNote=", this.f64026c, ", items=");
        o60.B(", totalPrice=", this.f64027e, ", disclaimer=", sbS, this.d);
        return n00.r(this.f64028f, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f64025b);
        parcel.writeString(this.f64026c);
        Iterator itP = cj.p(this.d, parcel);
        while (itP.hasNext()) {
            parcel.writeSerializable((Serializable) itP.next());
        }
        parcel.writeString(this.f64027e);
        parcel.writeString(this.f64028f);
    }
}
