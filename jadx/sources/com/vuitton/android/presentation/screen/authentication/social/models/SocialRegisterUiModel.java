package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B§\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;", "", "", "email", "firstName", "lastName", "firstName2", "lastName2", "civility", "", "acceptMarketingEmails", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "firstNameError", "lastNameError", "identityToken", "nonce", "rawNonce", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SocialRegisterUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54228c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f54229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f54230f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FieldErrorUiModel f54231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FieldErrorUiModel f54232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f54233j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f54234k;
    public final String l;
    public final TrackingAuthOrigin m;
    public final TrackingAuthEntryPoint n;
    public final SocialAuthMode o;

    public /* synthetic */ SocialRegisterUiModel(String str, String str2, String str3, String str4, String str5, String str6, boolean z, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, String str7, String str8, String str9, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? "" : str6, (i2 & 64) != 0 ? false : z, (i2 & 128) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel, (i2 & 256) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel2, (i2 & 512) != 0 ? "" : str7, (i2 & 1024) != 0 ? "" : str8, (i2 & 2048) == 0 ? str9 : "", (i2 & 4096) != 0 ? null : trackingAuthOrigin, (i2 & 8192) != 0 ? null : trackingAuthEntryPoint, (i2 & 16384) != 0 ? null : socialAuthMode);
    }

    public static SocialRegisterUiModel a(SocialRegisterUiModel socialRegisterUiModel, String str, String str2, String str3, String str4, String str5, boolean z, int i2) {
        String str6 = socialRegisterUiModel.f54226a;
        String str7 = (i2 & 2) != 0 ? socialRegisterUiModel.f54227b : str;
        String str8 = (i2 & 4) != 0 ? socialRegisterUiModel.f54228c : str2;
        String str9 = (i2 & 8) != 0 ? socialRegisterUiModel.d : str3;
        String str10 = (i2 & 16) != 0 ? socialRegisterUiModel.f54229e : str4;
        String str11 = (i2 & 32) != 0 ? socialRegisterUiModel.f54230f : str5;
        boolean z2 = (i2 & 64) != 0 ? socialRegisterUiModel.g : z;
        FieldErrorUiModel fieldErrorUiModel = socialRegisterUiModel.f54231h;
        FieldErrorUiModel fieldErrorUiModel2 = socialRegisterUiModel.f54232i;
        String str12 = socialRegisterUiModel.f54233j;
        String str13 = socialRegisterUiModel.f54234k;
        String str14 = socialRegisterUiModel.l;
        TrackingAuthOrigin trackingAuthOrigin = socialRegisterUiModel.m;
        TrackingAuthEntryPoint trackingAuthEntryPoint = socialRegisterUiModel.n;
        SocialAuthMode socialAuthMode = socialRegisterUiModel.o;
        socialRegisterUiModel.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        str11.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        str12.getClass();
        str13.getClass();
        str14.getClass();
        return new SocialRegisterUiModel(str6, str7, str8, str9, str10, str11, z2, fieldErrorUiModel, fieldErrorUiModel2, str12, str13, str14, trackingAuthOrigin, trackingAuthEntryPoint, socialAuthMode);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SocialRegisterUiModel)) {
            return false;
        }
        SocialRegisterUiModel socialRegisterUiModel = (SocialRegisterUiModel) obj;
        return Intrinsics.c(this.f54226a, socialRegisterUiModel.f54226a) && Intrinsics.c(this.f54227b, socialRegisterUiModel.f54227b) && Intrinsics.c(this.f54228c, socialRegisterUiModel.f54228c) && Intrinsics.c(this.d, socialRegisterUiModel.d) && Intrinsics.c(this.f54229e, socialRegisterUiModel.f54229e) && Intrinsics.c(this.f54230f, socialRegisterUiModel.f54230f) && this.g == socialRegisterUiModel.g && Intrinsics.c(this.f54231h, socialRegisterUiModel.f54231h) && Intrinsics.c(this.f54232i, socialRegisterUiModel.f54232i) && Intrinsics.c(this.f54233j, socialRegisterUiModel.f54233j) && Intrinsics.c(this.f54234k, socialRegisterUiModel.f54234k) && Intrinsics.c(this.l, socialRegisterUiModel.l) && this.m == socialRegisterUiModel.m && this.n == socialRegisterUiModel.n && this.o == socialRegisterUiModel.o;
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f54226a.hashCode() * 31, 31, this.f54227b), 31, this.f54228c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f54229e;
        int iB2 = fc.b(fc.b(fc.b((this.f54232i.hashCode() + ((this.f54231h.hashCode() + o60.b(fc.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f54230f), 31, this.g)) * 31)) * 31, 31, this.f54233j), 31, this.f54234k), 31, this.l);
        TrackingAuthOrigin trackingAuthOrigin = this.m;
        int iHashCode2 = (iB2 + (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode())) * 31;
        TrackingAuthEntryPoint trackingAuthEntryPoint = this.n;
        int iHashCode3 = (iHashCode2 + (trackingAuthEntryPoint == null ? 0 : trackingAuthEntryPoint.hashCode())) * 31;
        SocialAuthMode socialAuthMode = this.o;
        return iHashCode3 + (socialAuthMode != null ? socialAuthMode.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SocialRegisterUiModel(email=", this.f54226a, ", firstName=", this.f54227b, ", lastName=");
        cj.C(sbS, this.f54228c, ", firstName2=", this.d, ", lastName2=");
        cj.C(sbS, this.f54229e, ", civility=", this.f54230f, ", acceptMarketingEmails=");
        sbS.append(this.g);
        sbS.append(", firstNameError=");
        sbS.append(this.f54231h);
        sbS.append(", lastNameError=");
        sbS.append(this.f54232i);
        sbS.append(", identityToken=");
        sbS.append(this.f54233j);
        sbS.append(", nonce=");
        cj.C(sbS, this.f54234k, ", rawNonce=", this.l, ", origin=");
        sbS.append(this.m);
        sbS.append(", entryPoint=");
        sbS.append(this.n);
        sbS.append(", provider=");
        sbS.append(this.o);
        sbS.append(")");
        return sbS.toString();
    }

    public SocialRegisterUiModel(String str, String str2, String str3, String str4, String str5, String str6, boolean z, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, String str7, String str8, String str9, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, SocialAuthMode socialAuthMode) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str6.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        str7.getClass();
        str8.getClass();
        str9.getClass();
        this.f54226a = str;
        this.f54227b = str2;
        this.f54228c = str3;
        this.d = str4;
        this.f54229e = str5;
        this.f54230f = str6;
        this.g = z;
        this.f54231h = fieldErrorUiModel;
        this.f54232i = fieldErrorUiModel2;
        this.f54233j = str7;
        this.f54234k = str8;
        this.l = str9;
        this.m = trackingAuthOrigin;
        this.n = trackingAuthEntryPoint;
        this.o = socialAuthMode;
    }

    public SocialRegisterUiModel() {
        this(null, null, null, null, null, null, false, null, null, null, null, null, null, null, null, 32767, null);
    }
}
