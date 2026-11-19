package com.vuitton.android.presentation.screen.osa.form.storeselection.models;

import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.StoreSlotsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.time.LocalDate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0004\u0012\b\b\u0002\u0010!\u001a\u00020 \u0012\b\b\u0002\u0010\"\u001a\u00020\u0004\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010$\u001a\u00020\u0004¢\u0006\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isError", "", "Ljava/time/LocalDate;", "availableDateList", "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;", "userGeocodedLocation", "Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;", "locatedStoreList", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;", "storeTimeSlotList", "Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;", "appointmentList", "selectedDate", "", "selectedDateFormatted", "selectedStoreId", "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;", "selectedAppointmentType", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "selectedTimeSlot", "selectedStoreAppointment", "canPrebook", "isGuestUser", "isReasonsEnabled", "isAppointmentModification", "isAcceptKisaLoading", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "loginAsset", "displayFallbackLoginImage", "prefilledStoreName", "isReasonEditable", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/time/LocalDate;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;ZZZZZLcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZLjava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaLocationFormViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f60836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f60837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f60838c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PlaceGeocodingUiModel f60839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f60840f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f60841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LocalDate f60842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f60843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f60844k;
    public final AppointmentTypeUiModel l;
    public final TimeSlotUiModel m;
    public final OsaFormItemUiModel n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final AssetVideoUiModel t;
    public final boolean u;
    public final String v;
    public final boolean w;

    public OsaLocationFormViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List list, PlaceGeocodingUiModel placeGeocodingUiModel, List list2, List list3, List list4, LocalDate localDate, String str, String str2, AppointmentTypeUiModel appointmentTypeUiModel, TimeSlotUiModel timeSlotUiModel, OsaFormItemUiModel osaFormItemUiModel, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, AssetVideoUiModel assetVideoUiModel, boolean z8, String str3, boolean z9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? null : placeGeocodingUiModel, (i2 & 32) != 0 ? EmptyList.f71768b : list2, (i2 & 64) != 0 ? EmptyList.f71768b : list3, (i2 & 128) != 0 ? EmptyList.f71768b : list4, (i2 & 256) != 0 ? null : localDate, (i2 & 512) != 0 ? null : str, (i2 & 1024) != 0 ? null : str2, (i2 & 2048) != 0 ? null : appointmentTypeUiModel, (i2 & 4096) != 0 ? null : timeSlotUiModel, (i2 & 8192) != 0 ? null : osaFormItemUiModel, (i2 & 16384) != 0 ? false : z3, (i2 & 32768) != 0 ? false : z4, (i2 & 65536) != 0 ? false : z5, (i2 & 131072) != 0 ? false : z6, (i2 & 262144) != 0 ? false : z7, (i2 & 524288) != 0 ? new AssetVideoUiModel(null, null, null, null, null, null, null, CertificateBody.profileType, null) : assetVideoUiModel, (i2 & 1048576) != 0 ? false : z8, (i2 & PKIFailureInfo.badSenderNonce) == 0 ? str3 : null, (i2 & 4194304) != 0 ? false : z9);
    }

    public static OsaLocationFormViewState a(OsaLocationFormViewState osaLocationFormViewState) {
        InAppDispatch inAppDispatch = osaLocationFormViewState.f60836a;
        boolean z = osaLocationFormViewState.f60837b;
        boolean z2 = osaLocationFormViewState.f60838c;
        List list = osaLocationFormViewState.d;
        PlaceGeocodingUiModel placeGeocodingUiModel = osaLocationFormViewState.f60839e;
        List list2 = osaLocationFormViewState.f60840f;
        List list3 = osaLocationFormViewState.g;
        List list4 = osaLocationFormViewState.f60841h;
        LocalDate localDate = osaLocationFormViewState.f60842i;
        String str = osaLocationFormViewState.f60843j;
        String str2 = osaLocationFormViewState.f60844k;
        AppointmentTypeUiModel appointmentTypeUiModel = osaLocationFormViewState.l;
        TimeSlotUiModel timeSlotUiModel = osaLocationFormViewState.m;
        OsaFormItemUiModel osaFormItemUiModel = osaLocationFormViewState.n;
        boolean z3 = osaLocationFormViewState.o;
        boolean z4 = osaLocationFormViewState.p;
        boolean z5 = osaLocationFormViewState.r;
        boolean z6 = osaLocationFormViewState.s;
        AssetVideoUiModel assetVideoUiModel = osaLocationFormViewState.t;
        boolean z7 = osaLocationFormViewState.u;
        String str3 = osaLocationFormViewState.v;
        boolean z8 = osaLocationFormViewState.w;
        osaLocationFormViewState.getClass();
        inAppDispatch.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        assetVideoUiModel.getClass();
        return new OsaLocationFormViewState(inAppDispatch, z, z2, list, placeGeocodingUiModel, list2, list3, list4, localDate, str, str2, appointmentTypeUiModel, timeSlotUiModel, osaFormItemUiModel, z3, z4, true, z5, z6, assetVideoUiModel, z7, str3, z8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaLocationFormViewState)) {
            return false;
        }
        OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) obj;
        return Intrinsics.c(this.f60836a, osaLocationFormViewState.f60836a) && this.f60837b == osaLocationFormViewState.f60837b && this.f60838c == osaLocationFormViewState.f60838c && Intrinsics.c(this.d, osaLocationFormViewState.d) && Intrinsics.c(this.f60839e, osaLocationFormViewState.f60839e) && Intrinsics.c(this.f60840f, osaLocationFormViewState.f60840f) && Intrinsics.c(this.g, osaLocationFormViewState.g) && Intrinsics.c(this.f60841h, osaLocationFormViewState.f60841h) && Intrinsics.c(this.f60842i, osaLocationFormViewState.f60842i) && Intrinsics.c(this.f60843j, osaLocationFormViewState.f60843j) && Intrinsics.c(this.f60844k, osaLocationFormViewState.f60844k) && this.l == osaLocationFormViewState.l && Intrinsics.c(this.m, osaLocationFormViewState.m) && Intrinsics.c(this.n, osaLocationFormViewState.n) && this.o == osaLocationFormViewState.o && this.p == osaLocationFormViewState.p && this.q == osaLocationFormViewState.q && this.r == osaLocationFormViewState.r && this.s == osaLocationFormViewState.s && Intrinsics.c(this.t, osaLocationFormViewState.t) && this.u == osaLocationFormViewState.u && Intrinsics.c(this.v, osaLocationFormViewState.v) && this.w == osaLocationFormViewState.w;
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(o60.b(this.f60836a.hashCode() * 31, 31, this.f60837b), 31, this.f60838c), 31, this.d);
        PlaceGeocodingUiModel placeGeocodingUiModel = this.f60839e;
        int iA2 = n00.a(n00.a(n00.a((iA + (placeGeocodingUiModel == null ? 0 : placeGeocodingUiModel.hashCode())) * 31, 31, this.f60840f), 31, this.g), 31, this.f60841h);
        LocalDate localDate = this.f60842i;
        int iHashCode = (iA2 + (localDate == null ? 0 : localDate.hashCode())) * 31;
        String str = this.f60843j;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f60844k;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        AppointmentTypeUiModel appointmentTypeUiModel = this.l;
        int iHashCode4 = (iHashCode3 + (appointmentTypeUiModel == null ? 0 : appointmentTypeUiModel.hashCode())) * 31;
        TimeSlotUiModel timeSlotUiModel = this.m;
        int iHashCode5 = (iHashCode4 + (timeSlotUiModel == null ? 0 : timeSlotUiModel.hashCode())) * 31;
        OsaFormItemUiModel osaFormItemUiModel = this.n;
        int iB = o60.b((this.t.hashCode() + o60.b(o60.b(o60.b(o60.b(o60.b((iHashCode5 + (osaFormItemUiModel == null ? 0 : osaFormItemUiModel.hashCode())) * 31, 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s)) * 31, 31, this.u);
        String str3 = this.v;
        return Boolean.hashCode(this.w) + ((iB + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OsaLocationFormViewState(inAppDispatch=");
        sb.append(this.f60836a);
        sb.append(", isLoading=");
        sb.append(this.f60837b);
        sb.append(", isError=");
        sb.append(this.f60838c);
        sb.append(", availableDateList=");
        sb.append(this.d);
        sb.append(", userGeocodedLocation=");
        sb.append(this.f60839e);
        sb.append(", locatedStoreList=");
        sb.append(this.f60840f);
        sb.append(", storeTimeSlotList=");
        a.C(sb, this.g, ", appointmentList=", this.f60841h, ", selectedDate=");
        sb.append(this.f60842i);
        sb.append(", selectedDateFormatted=");
        sb.append(this.f60843j);
        sb.append(", selectedStoreId=");
        sb.append(this.f60844k);
        sb.append(", selectedAppointmentType=");
        sb.append(this.l);
        sb.append(", selectedTimeSlot=");
        sb.append(this.m);
        sb.append(", selectedStoreAppointment=");
        sb.append(this.n);
        sb.append(", canPrebook=");
        fc.y(sb, this.o, ", isGuestUser=", this.p, ", isReasonsEnabled=");
        fc.y(sb, this.q, ", isAppointmentModification=", this.r, ", isAcceptKisaLoading=");
        sb.append(this.s);
        sb.append(", loginAsset=");
        sb.append(this.t);
        sb.append(", displayFallbackLoginImage=");
        cj.A(", prefilledStoreName=", this.v, ", isReasonEditable=", sb, this.u);
        return a.p(sb, this.w, ")");
    }

    public OsaLocationFormViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List<LocalDate> list, PlaceGeocodingUiModel placeGeocodingUiModel, List<StoreUiModel> list2, List<StoreSlotsUiModel> list3, List<OsaFormItemUiModel> list4, LocalDate localDate, String str, String str2, AppointmentTypeUiModel appointmentTypeUiModel, TimeSlotUiModel timeSlotUiModel, OsaFormItemUiModel osaFormItemUiModel, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, AssetVideoUiModel assetVideoUiModel, boolean z8, String str3, boolean z9) {
        inAppDispatch.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        assetVideoUiModel.getClass();
        this.f60836a = inAppDispatch;
        this.f60837b = z;
        this.f60838c = z2;
        this.d = list;
        this.f60839e = placeGeocodingUiModel;
        this.f60840f = list2;
        this.g = list3;
        this.f60841h = list4;
        this.f60842i = localDate;
        this.f60843j = str;
        this.f60844k = str2;
        this.l = appointmentTypeUiModel;
        this.m = timeSlotUiModel;
        this.n = osaFormItemUiModel;
        this.o = z3;
        this.p = z4;
        this.q = z5;
        this.r = z6;
        this.s = z7;
        this.t = assetVideoUiModel;
        this.u = z8;
        this.v = str3;
        this.w = z9;
    }
}
