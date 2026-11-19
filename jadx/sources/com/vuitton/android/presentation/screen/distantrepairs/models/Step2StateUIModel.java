package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.cj;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001Be\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0018\b\u0002\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;", "", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "profile", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;", "phoneNumber", "", "zipPostalCode", "zipPostalCodeValidityRegex", "Ljava/util/ArrayList;", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;", "Lkotlin/collections/ArrayList;", "countryList", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "phoneNumberError", "zipPostalCodeError", "<init>", "(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Step2StateUIModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Profile f57404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PhoneNumber f57405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57406c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f57407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FieldErrorUiModel f57408f;
    public final FieldErrorUiModel g;

    public /* synthetic */ Step2StateUIModel(Profile profile, PhoneNumber phoneNumber, String str, String str2, ArrayList arrayList, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : profile, (i2 & 2) != 0 ? null : phoneNumber, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? new ArrayList() : arrayList, (i2 & 32) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel, (i2 & 64) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel2);
    }

    public static Step2StateUIModel a(Step2StateUIModel step2StateUIModel, Profile profile, PhoneNumber phoneNumber, String str, String str2, ArrayList arrayList, int i2) {
        if ((i2 & 1) != 0) {
            profile = step2StateUIModel.f57404a;
        }
        Profile profile2 = profile;
        if ((i2 & 2) != 0) {
            phoneNumber = step2StateUIModel.f57405b;
        }
        PhoneNumber phoneNumber2 = phoneNumber;
        if ((i2 & 4) != 0) {
            str = step2StateUIModel.f57406c;
        }
        String str3 = str;
        if ((i2 & 8) != 0) {
            str2 = step2StateUIModel.d;
        }
        String str4 = str2;
        if ((i2 & 16) != 0) {
            arrayList = step2StateUIModel.f57407e;
        }
        ArrayList arrayList2 = arrayList;
        FieldErrorUiModel fieldErrorUiModel = step2StateUIModel.f57408f;
        FieldErrorUiModel fieldErrorUiModel2 = step2StateUIModel.g;
        step2StateUIModel.getClass();
        arrayList2.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        return new Step2StateUIModel(profile2, phoneNumber2, str3, str4, arrayList2, fieldErrorUiModel, fieldErrorUiModel2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Step2StateUIModel)) {
            return false;
        }
        Step2StateUIModel step2StateUIModel = (Step2StateUIModel) obj;
        return Intrinsics.c(this.f57404a, step2StateUIModel.f57404a) && Intrinsics.c(this.f57405b, step2StateUIModel.f57405b) && Intrinsics.c(this.f57406c, step2StateUIModel.f57406c) && Intrinsics.c(this.d, step2StateUIModel.d) && Intrinsics.c(this.f57407e, step2StateUIModel.f57407e) && Intrinsics.c(this.f57408f, step2StateUIModel.f57408f) && Intrinsics.c(this.g, step2StateUIModel.g);
    }

    public final int hashCode() {
        Profile profile = this.f57404a;
        int iHashCode = (profile == null ? 0 : profile.hashCode()) * 31;
        PhoneNumber phoneNumber = this.f57405b;
        int iHashCode2 = (iHashCode + (phoneNumber == null ? 0 : phoneNumber.hashCode())) * 31;
        String str = this.f57406c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return this.g.hashCode() + ((this.f57408f.hashCode() + ((this.f57407e.hashCode() + ((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Step2StateUIModel(profile=");
        sb.append(this.f57404a);
        sb.append(", phoneNumber=");
        sb.append(this.f57405b);
        sb.append(", zipPostalCode=");
        cj.C(sb, this.f57406c, ", zipPostalCodeValidityRegex=", this.d, ", countryList=");
        sb.append(this.f57407e);
        sb.append(", phoneNumberError=");
        sb.append(this.f57408f);
        sb.append(", zipPostalCodeError=");
        sb.append(this.g);
        sb.append(")");
        return sb.toString();
    }

    public Step2StateUIModel(Profile profile, PhoneNumber phoneNumber, String str, String str2, ArrayList<CountryUiModel> arrayList, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2) {
        arrayList.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        this.f57404a = profile;
        this.f57405b = phoneNumber;
        this.f57406c = str;
        this.d = str2;
        this.f57407e = arrayList;
        this.f57408f = fieldErrorUiModel;
        this.g = fieldErrorUiModel2;
    }

    public Step2StateUIModel() {
        this(null, null, null, null, null, null, null, CertificateBody.profileType, null);
    }
}
