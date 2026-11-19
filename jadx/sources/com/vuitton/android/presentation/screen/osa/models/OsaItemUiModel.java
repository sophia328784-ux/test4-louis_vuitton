package com.vuitton.android.presentation.screen.osa.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import defpackage.a;
import defpackage.fc;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;", "appointmentType", "Ljava/time/LocalDateTime;", "gmtEndDateTime", "gmtStartDateTime", "localStoreEndDateTime", "localStoreStartDateTime", "timeZone", "Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;", "storeInformation", "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;", "reason", "availabilityId", "", "isVirtualStudioAppointment", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppointmentTypeUiModel f60925b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LocalDateTime f60926c;
    public final LocalDateTime d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LocalDateTime f60927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LocalDateTime f60928f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StoreInformationItemUiModel f60929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OsaReasonUiModel f60930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f60931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f60932k;

    public OsaItemUiModel(String str, AppointmentTypeUiModel appointmentTypeUiModel, LocalDateTime localDateTime, LocalDateTime localDateTime2, LocalDateTime localDateTime3, LocalDateTime localDateTime4, String str2, StoreInformationItemUiModel storeInformationItemUiModel, OsaReasonUiModel osaReasonUiModel, String str3, boolean z) {
        str.getClass();
        localDateTime.getClass();
        localDateTime2.getClass();
        localDateTime3.getClass();
        localDateTime4.getClass();
        str2.getClass();
        this.f60924a = str;
        this.f60925b = appointmentTypeUiModel;
        this.f60926c = localDateTime;
        this.d = localDateTime2;
        this.f60927e = localDateTime3;
        this.f60928f = localDateTime4;
        this.g = str2;
        this.f60929h = storeInformationItemUiModel;
        this.f60930i = osaReasonUiModel;
        this.f60931j = str3;
        this.f60932k = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaItemUiModel)) {
            return false;
        }
        OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj;
        return Intrinsics.c(this.f60924a, osaItemUiModel.f60924a) && this.f60925b == osaItemUiModel.f60925b && Intrinsics.c(this.f60926c, osaItemUiModel.f60926c) && Intrinsics.c(this.d, osaItemUiModel.d) && Intrinsics.c(this.f60927e, osaItemUiModel.f60927e) && Intrinsics.c(this.f60928f, osaItemUiModel.f60928f) && Intrinsics.c(this.g, osaItemUiModel.g) && Intrinsics.c(this.f60929h, osaItemUiModel.f60929h) && Intrinsics.c(this.f60930i, osaItemUiModel.f60930i) && Intrinsics.c(this.f60931j, osaItemUiModel.f60931j) && this.f60932k == osaItemUiModel.f60932k;
    }

    public final int hashCode() {
        int iHashCode = this.f60924a.hashCode() * 31;
        AppointmentTypeUiModel appointmentTypeUiModel = this.f60925b;
        int iB = fc.b((this.f60928f.hashCode() + ((this.f60927e.hashCode() + ((this.d.hashCode() + ((this.f60926c.hashCode() + ((iHashCode + (appointmentTypeUiModel == null ? 0 : appointmentTypeUiModel.hashCode())) * 31)) * 31)) * 31)) * 31)) * 31, 31, this.g);
        StoreInformationItemUiModel storeInformationItemUiModel = this.f60929h;
        int iHashCode2 = (iB + (storeInformationItemUiModel == null ? 0 : storeInformationItemUiModel.hashCode())) * 31;
        OsaReasonUiModel osaReasonUiModel = this.f60930i;
        int iHashCode3 = (iHashCode2 + (osaReasonUiModel == null ? 0 : osaReasonUiModel.hashCode())) * 31;
        String str = this.f60931j;
        return Boolean.hashCode(this.f60932k) + ((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OsaItemUiModel(id=");
        sb.append(this.f60924a);
        sb.append(", appointmentType=");
        sb.append(this.f60925b);
        sb.append(", gmtEndDateTime=");
        sb.append(this.f60926c);
        sb.append(", gmtStartDateTime=");
        sb.append(this.d);
        sb.append(", localStoreEndDateTime=");
        sb.append(this.f60927e);
        sb.append(", localStoreStartDateTime=");
        sb.append(this.f60928f);
        sb.append(", timeZone=");
        sb.append(this.g);
        sb.append(", storeInformation=");
        sb.append(this.f60929h);
        sb.append(", reason=");
        sb.append(this.f60930i);
        sb.append(", availabilityId=");
        sb.append(this.f60931j);
        sb.append(", isVirtualStudioAppointment=");
        return a.p(sb, this.f60932k, ")");
    }
}
