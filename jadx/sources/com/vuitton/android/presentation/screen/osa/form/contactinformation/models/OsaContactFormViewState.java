package com.vuitton.android.presentation.screen.osa.form.contactinformation.models;

import com.vuitton.android.presentation.screen.account.profile.AccountStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001:\u0001$Bõ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\b\u0002\u0010\u001c\u001a\u00020\t\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010 \u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020\u001e¢\u0006\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isGuestUser", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;", "timeSlot", "", "appointmentId", "appointmentReasonId", "Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;", "appointment", "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;", "appointmentType", "hasAlreadyAnAppointment", "hasGuestConnected", "isReasonsEnabled", "isAppointmentModification", "isOsaCidEnabled", "isNativeAccountActivationEnabled", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "profile", "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;", "currentOnGoingOsa", "Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;", "accountStatus", "formContactMode", "createdAppointment", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "guestUserEmailForm", "guestUserMainForm", "loggedUserForm", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/lang/Boolean;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ZZZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AccountStatusUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaContactFormViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f60736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f60737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f60738c;
    public final TimeSlotUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60740f;
    public final OsaFormItemUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppointmentTypeUiModel f60741h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f60742i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Boolean f60743j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f60744k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final Profile o;
    public final OsaItemUiModel p;
    public final AccountStatusUiModel q;
    public final String r;
    public final OsaItemUiModel s;
    public final FormUiModel t;
    public final FormUiModel u;
    public final FormUiModel v;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ OsaContactFormViewState(InAppDispatch inAppDispatch, boolean z, Boolean bool, TimeSlotUiModel timeSlotUiModel, String str, String str2, OsaFormItemUiModel osaFormItemUiModel, AppointmentTypeUiModel appointmentTypeUiModel, Boolean bool2, Boolean bool3, Boolean bool4, boolean z2, boolean z3, boolean z4, Profile profile, OsaItemUiModel osaItemUiModel, AccountStatusUiModel accountStatusUiModel, String str3, OsaItemUiModel osaItemUiModel2, FormUiModel formUiModel, FormUiModel formUiModel2, FormUiModel formUiModel3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : bool, (i2 & 8) != 0 ? null : timeSlotUiModel, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? null : osaFormItemUiModel, (i2 & 128) != 0 ? null : appointmentTypeUiModel, (i2 & 256) != 0 ? null : bool2, (i2 & 512) != 0 ? null : bool3, (i2 & 1024) != 0 ? null : bool4, (i2 & 2048) != 0 ? false : z2, (i2 & 4096) != 0 ? false : z3, (i2 & 8192) != 0 ? false : z4, (i2 & 16384) != 0 ? null : profile, (32768 & i2) != 0 ? null : osaItemUiModel, (65536 & i2) != 0 ? null : accountStatusUiModel, (131072 & i2) != 0 ? new String() : str3, (i2 & 262144) != 0 ? null : osaItemUiModel2, formUiModel, formUiModel2, formUiModel3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaContactFormViewState)) {
            return false;
        }
        OsaContactFormViewState osaContactFormViewState = (OsaContactFormViewState) obj;
        return Intrinsics.c(this.f60736a, osaContactFormViewState.f60736a) && this.f60737b == osaContactFormViewState.f60737b && Intrinsics.c(this.f60738c, osaContactFormViewState.f60738c) && Intrinsics.c(this.d, osaContactFormViewState.d) && Intrinsics.c(this.f60739e, osaContactFormViewState.f60739e) && Intrinsics.c(this.f60740f, osaContactFormViewState.f60740f) && Intrinsics.c(this.g, osaContactFormViewState.g) && this.f60741h == osaContactFormViewState.f60741h && Intrinsics.c(this.f60742i, osaContactFormViewState.f60742i) && Intrinsics.c(this.f60743j, osaContactFormViewState.f60743j) && Intrinsics.c(this.f60744k, osaContactFormViewState.f60744k) && this.l == osaContactFormViewState.l && this.m == osaContactFormViewState.m && this.n == osaContactFormViewState.n && Intrinsics.c(this.o, osaContactFormViewState.o) && Intrinsics.c(this.p, osaContactFormViewState.p) && Intrinsics.c(this.q, osaContactFormViewState.q) && Intrinsics.c(this.r, osaContactFormViewState.r) && Intrinsics.c(this.s, osaContactFormViewState.s) && Intrinsics.c(this.t, osaContactFormViewState.t) && Intrinsics.c(this.u, osaContactFormViewState.u) && Intrinsics.c(this.v, osaContactFormViewState.v);
    }

    public final int hashCode() {
        int iB = o60.b(this.f60736a.hashCode() * 31, 31, this.f60737b);
        Boolean bool = this.f60738c;
        int iHashCode = (iB + (bool == null ? 0 : bool.hashCode())) * 31;
        TimeSlotUiModel timeSlotUiModel = this.d;
        int iHashCode2 = (iHashCode + (timeSlotUiModel == null ? 0 : timeSlotUiModel.hashCode())) * 31;
        String str = this.f60739e;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f60740f;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        OsaFormItemUiModel osaFormItemUiModel = this.g;
        int iHashCode5 = (iHashCode4 + (osaFormItemUiModel == null ? 0 : osaFormItemUiModel.hashCode())) * 31;
        AppointmentTypeUiModel appointmentTypeUiModel = this.f60741h;
        int iHashCode6 = (iHashCode5 + (appointmentTypeUiModel == null ? 0 : appointmentTypeUiModel.hashCode())) * 31;
        Boolean bool2 = this.f60742i;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f60743j;
        int iHashCode8 = (iHashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.f60744k;
        int iB2 = o60.b(o60.b(o60.b((iHashCode8 + (bool4 == null ? 0 : bool4.hashCode())) * 31, 31, this.l), 31, this.m), 31, this.n);
        Profile profile = this.o;
        int iHashCode9 = (iB2 + (profile == null ? 0 : profile.hashCode())) * 31;
        OsaItemUiModel osaItemUiModel = this.p;
        int iHashCode10 = (iHashCode9 + (osaItemUiModel == null ? 0 : osaItemUiModel.hashCode())) * 31;
        AccountStatusUiModel accountStatusUiModel = this.q;
        int iB3 = fc.b((iHashCode10 + (accountStatusUiModel == null ? 0 : accountStatusUiModel.hashCode())) * 31, 31, this.r);
        OsaItemUiModel osaItemUiModel2 = this.s;
        return this.v.f57486a.hashCode() + n00.a(n00.a((iB3 + (osaItemUiModel2 != null ? osaItemUiModel2.hashCode() : 0)) * 31, 31, this.t.f57486a), 31, this.u.f57486a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OsaContactFormViewState(inAppDispatch=");
        sb.append(this.f60736a);
        sb.append(", isLoading=");
        sb.append(this.f60737b);
        sb.append(", isGuestUser=");
        sb.append(this.f60738c);
        sb.append(", timeSlot=");
        sb.append(this.d);
        sb.append(", appointmentId=");
        cj.C(sb, this.f60739e, ", appointmentReasonId=", this.f60740f, ", appointment=");
        sb.append(this.g);
        sb.append(", appointmentType=");
        sb.append(this.f60741h);
        sb.append(", hasAlreadyAnAppointment=");
        d21.B(sb, this.f60742i, ", hasGuestConnected=", this.f60743j, ", isReasonsEnabled=");
        sb.append(this.f60744k);
        sb.append(", isAppointmentModification=");
        sb.append(this.l);
        sb.append(", isOsaCidEnabled=");
        fc.y(sb, this.m, ", isNativeAccountActivationEnabled=", this.n, ", profile=");
        sb.append(this.o);
        sb.append(", currentOnGoingOsa=");
        sb.append(this.p);
        sb.append(", accountStatus=");
        sb.append(this.q);
        sb.append(", formContactMode=");
        sb.append(this.r);
        sb.append(", createdAppointment=");
        sb.append(this.s);
        sb.append(", guestUserEmailForm=");
        sb.append(this.t);
        sb.append(", guestUserMainForm=");
        sb.append(this.u);
        sb.append(", loggedUserForm=");
        sb.append(this.v);
        sb.append(")");
        return sb.toString();
    }

    public OsaContactFormViewState(InAppDispatch inAppDispatch, boolean z, Boolean bool, TimeSlotUiModel timeSlotUiModel, String str, String str2, OsaFormItemUiModel osaFormItemUiModel, AppointmentTypeUiModel appointmentTypeUiModel, Boolean bool2, Boolean bool3, Boolean bool4, boolean z2, boolean z3, boolean z4, Profile profile, OsaItemUiModel osaItemUiModel, AccountStatusUiModel accountStatusUiModel, String str3, OsaItemUiModel osaItemUiModel2, FormUiModel formUiModel, FormUiModel formUiModel2, FormUiModel formUiModel3) {
        inAppDispatch.getClass();
        str3.getClass();
        formUiModel.getClass();
        formUiModel2.getClass();
        formUiModel3.getClass();
        this.f60736a = inAppDispatch;
        this.f60737b = z;
        this.f60738c = bool;
        this.d = timeSlotUiModel;
        this.f60739e = str;
        this.f60740f = str2;
        this.g = osaFormItemUiModel;
        this.f60741h = appointmentTypeUiModel;
        this.f60742i = bool2;
        this.f60743j = bool3;
        this.f60744k = bool4;
        this.l = z2;
        this.m = z3;
        this.n = z4;
        this.o = profile;
        this.p = osaItemUiModel;
        this.q = accountStatusUiModel;
        this.r = str3;
        this.s = osaItemUiModel2;
        this.t = formUiModel;
        this.u = formUiModel2;
        this.v = formUiModel3;
    }
}
