package com.vuitton.android.presentation.screen.mylv.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001Bg\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;", "", "", "newsletterPersonalData", "storeAppointmentPersonalData", "lvTermsAndUse", "mainPersonalData", "additionalPersonalData", "thirdPartiesPersonalData", "promotionPersonalData", "requiredAge", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class KisaUserConsentsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Boolean f59400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f59401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f59402c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f59403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f59404f;
    public final Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f59405h;

    public /* synthetic */ KisaUserConsentsUiModel(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : bool, (i2 & 2) != 0 ? null : bool2, (i2 & 4) != 0 ? null : bool3, (i2 & 8) != 0 ? null : bool4, (i2 & 16) != 0 ? null : bool5, (i2 & 32) != 0 ? null : bool6, (i2 & 64) != 0 ? null : bool7, (i2 & 128) != 0 ? null : bool8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KisaUserConsentsUiModel)) {
            return false;
        }
        KisaUserConsentsUiModel kisaUserConsentsUiModel = (KisaUserConsentsUiModel) obj;
        return Intrinsics.c(this.f59400a, kisaUserConsentsUiModel.f59400a) && Intrinsics.c(this.f59401b, kisaUserConsentsUiModel.f59401b) && Intrinsics.c(this.f59402c, kisaUserConsentsUiModel.f59402c) && Intrinsics.c(this.d, kisaUserConsentsUiModel.d) && Intrinsics.c(this.f59403e, kisaUserConsentsUiModel.f59403e) && Intrinsics.c(this.f59404f, kisaUserConsentsUiModel.f59404f) && Intrinsics.c(this.g, kisaUserConsentsUiModel.g) && Intrinsics.c(this.f59405h, kisaUserConsentsUiModel.f59405h);
    }

    public final int hashCode() {
        Boolean bool = this.f59400a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.f59401b;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.f59402c;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        Boolean bool4 = this.d;
        int iHashCode4 = (iHashCode3 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.f59403e;
        int iHashCode5 = (iHashCode4 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        Boolean bool6 = this.f59404f;
        int iHashCode6 = (iHashCode5 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.g;
        int iHashCode7 = (iHashCode6 + (bool7 == null ? 0 : bool7.hashCode())) * 31;
        Boolean bool8 = this.f59405h;
        return iHashCode7 + (bool8 != null ? bool8.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KisaUserConsentsUiModel(newsletterPersonalData=");
        sb.append(this.f59400a);
        sb.append(", storeAppointmentPersonalData=");
        sb.append(this.f59401b);
        sb.append(", lvTermsAndUse=");
        d21.B(sb, this.f59402c, ", mainPersonalData=", this.d, ", additionalPersonalData=");
        d21.B(sb, this.f59403e, ", thirdPartiesPersonalData=", this.f59404f, ", promotionPersonalData=");
        sb.append(this.g);
        sb.append(", requiredAge=");
        sb.append(this.f59405h);
        sb.append(")");
        return sb.toString();
    }

    public KisaUserConsentsUiModel(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, Boolean bool8) {
        this.f59400a = bool;
        this.f59401b = bool2;
        this.f59402c = bool3;
        this.d = bool4;
        this.f59403e = bool5;
        this.f59404f = bool6;
        this.g = bool7;
        this.f59405h = bool8;
    }

    public KisaUserConsentsUiModel() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }
}
