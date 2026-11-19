package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "Landroid/os/Parcelable;", "Companion", "value", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class CareServiceIdUiModel implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f64059c = new Companion(null);
    public static final Parcelable.Creator<CareServiceIdUiModel> CREATOR = new Creator();
    public static final String d = "";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(String str) {
            str.getClass();
            CareServiceId.Companion companion = CareServiceId.INSTANCE;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceIdUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceIdUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            Companion companion = CareServiceIdUiModel.f64059c;
            string.getClass();
            return new CareServiceIdUiModel(string);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceIdUiModel[] newArray(int i2) {
            return new CareServiceIdUiModel[i2];
        }
    }

    public /* synthetic */ CareServiceIdUiModel(String str) {
        this.f64060b = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CareServiceIdUiModel) {
            return Intrinsics.c(this.f64060b, ((CareServiceIdUiModel) obj).f64060b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f64060b.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF64060b() {
        return this.f64060b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f64060b);
    }
}
