package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;", "Landroid/os/Parcelable;", "", "iata", "name", "city", "country", "timeZone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AirportUiModel implements Parcelable {
    public static final Parcelable.Creator<AirportUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56383c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f56384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f56385f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AirportUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AirportUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new AirportUiModel(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final AirportUiModel[] newArray(int i2) {
            return new AirportUiModel[i2];
        }
    }

    public AirportUiModel(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f56382b = str;
        this.f56383c = str2;
        this.d = str3;
        this.f56384e = str4;
        this.f56385f = str5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AirportUiModel)) {
            return false;
        }
        AirportUiModel airportUiModel = (AirportUiModel) obj;
        return Intrinsics.c(this.f56382b, airportUiModel.f56382b) && Intrinsics.c(this.f56383c, airportUiModel.f56383c) && Intrinsics.c(this.d, airportUiModel.d) && Intrinsics.c(this.f56384e, airportUiModel.f56384e) && Intrinsics.c(this.f56385f, airportUiModel.f56385f);
    }

    public final int hashCode() {
        return this.f56385f.hashCode() + fc.b(fc.b(fc.b(this.f56382b.hashCode() * 31, 31, this.f56383c), 31, this.d), 31, this.f56384e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AirportUiModel(iata=", this.f56382b, ", name=", this.f56383c, ", city=");
        cj.C(sbS, this.d, ", country=", this.f56384e, ", timeZone=");
        return n00.r(this.f56385f, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56382b);
        parcel.writeString(this.f56383c);
        parcel.writeString(this.d);
        parcel.writeString(this.f56384e);
        parcel.writeString(this.f56385f);
    }
}
