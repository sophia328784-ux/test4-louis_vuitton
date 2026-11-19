package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u001eB«\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;", "", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;", "credentialsUiModel", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "credentialsForm", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;", "personalInfoUiModel", "personalInfoForm", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;", "birthInfoUiModel", "birthInfoForm", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;", "activationUiModel", "majorConsents", "minorConsents", "emailTrackingConsent", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;", "registrationAddressUiModel", "addressForm", "", "isLoading", "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;", "origin", "Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;", "entryPoint", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterFeatureFlags;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterViewState {
    public static final List q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NativeRegisterCredentialsUiModel f54029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormUiModel f54030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NativeRegisterPersonalInfoUiModel f54031c;
    public final FormUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NativeRegisterBirthInfoUiModel f54032e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormUiModel f54033f;
    public final NativeRegisterActivationUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FormUiModel f54034h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FormUiModel f54035i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FormUiModel f54036j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NativeRegisterRegistrationAddressUiModel f54037k;
    public final FormUiModel l;
    public final boolean m;
    public final NativeRegisterFeatureFlags n;
    public final TrackingAuthOrigin o;
    public final TrackingAuthEntryPoint p;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState$Companion;", "", "", "REGISTER_STEP_WITH_ADDRESS_NUMBER", "I", "REGISTER_STEP_WITHOUT_ADDRESS_NUMBER", "", "Lcom/vuitton/android/presentation/screen/authentication/register/Step;", "nonAddressSteps", "Ljava/util/List;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        q = CollectionsKt.P(Step.CREDENTIALS, Step.PERSONAL_INFO, Step.BIRTH_INFO, Step.ACCOUNT_ACTIVATION);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ NativeRegisterViewState(NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel, FormUiModel formUiModel, NativeRegisterPersonalInfoUiModel nativeRegisterPersonalInfoUiModel, FormUiModel formUiModel2, NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel, FormUiModel formUiModel3, NativeRegisterActivationUiModel nativeRegisterActivationUiModel, FormUiModel formUiModel4, FormUiModel formUiModel5, FormUiModel formUiModel6, NativeRegisterRegistrationAddressUiModel nativeRegisterRegistrationAddressUiModel, FormUiModel formUiModel7, boolean z, NativeRegisterFeatureFlags nativeRegisterFeatureFlags, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        FormUiModel formUiModelA;
        FormUiModel formUiModelA2;
        FormUiModel formUiModelA3;
        FormUiModel formUiModelA4;
        FormUiModel formUiModelA5;
        FormUiModel formUiModelA6;
        FormUiModel formUiModelA7;
        NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel2 = (i2 & 1) != 0 ? new NativeRegisterCredentialsUiModel(null, null, false, 7, null) : nativeRegisterCredentialsUiModel;
        if ((i2 & 2) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA = FormUiModel.Companion.a();
        } else {
            formUiModelA = formUiModel;
        }
        NativeRegisterPersonalInfoUiModel nativeRegisterPersonalInfoUiModel2 = (i2 & 4) != 0 ? new NativeRegisterPersonalInfoUiModel(false, null, null, null, null, null, 63, null) : nativeRegisterPersonalInfoUiModel;
        if ((i2 & 8) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA2 = FormUiModel.Companion.a();
        } else {
            formUiModelA2 = formUiModel2;
        }
        NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel2 = (i2 & 16) != 0 ? new NativeRegisterBirthInfoUiModel(false, false, false, null, null, false, false, false, null, null, 1023, null) : nativeRegisterBirthInfoUiModel;
        if ((i2 & 32) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA3 = FormUiModel.Companion.a();
        } else {
            formUiModelA3 = formUiModel3;
        }
        NativeRegisterActivationUiModel nativeRegisterActivationUiModel2 = (i2 & 64) != 0 ? new NativeRegisterActivationUiModel(null, null, 3, null) : nativeRegisterActivationUiModel;
        if ((i2 & 128) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA4 = FormUiModel.Companion.a();
        } else {
            formUiModelA4 = formUiModel4;
        }
        if ((i2 & 256) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA5 = FormUiModel.Companion.a();
        } else {
            formUiModelA5 = formUiModel5;
        }
        if ((i2 & 512) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA6 = FormUiModel.Companion.a();
        } else {
            formUiModelA6 = formUiModel6;
        }
        NativeRegisterRegistrationAddressUiModel nativeRegisterRegistrationAddressUiModel2 = (i2 & 1024) != 0 ? new NativeRegisterRegistrationAddressUiModel(false, null, null, null, null, null, null, CertificateBody.profileType, null) : nativeRegisterRegistrationAddressUiModel;
        if ((i2 & 2048) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModelA7 = FormUiModel.Companion.a();
        } else {
            formUiModelA7 = formUiModel7;
        }
        this(nativeRegisterCredentialsUiModel2, formUiModelA, nativeRegisterPersonalInfoUiModel2, formUiModelA2, nativeRegisterBirthInfoUiModel2, formUiModelA3, nativeRegisterActivationUiModel2, formUiModelA4, formUiModelA5, formUiModelA6, nativeRegisterRegistrationAddressUiModel2, formUiModelA7, (i2 & 4096) != 0 ? false : z, (i2 & 8192) != 0 ? new NativeRegisterFeatureFlags(false, false, 3, null) : nativeRegisterFeatureFlags, (i2 & 16384) != 0 ? null : trackingAuthOrigin, (i2 & 32768) != 0 ? null : trackingAuthEntryPoint);
    }

    public final boolean a() {
        return this.n.f53985a && !this.l.f57486a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterViewState)) {
            return false;
        }
        NativeRegisterViewState nativeRegisterViewState = (NativeRegisterViewState) obj;
        return Intrinsics.c(this.f54029a, nativeRegisterViewState.f54029a) && Intrinsics.c(this.f54030b, nativeRegisterViewState.f54030b) && Intrinsics.c(this.f54031c, nativeRegisterViewState.f54031c) && Intrinsics.c(this.d, nativeRegisterViewState.d) && Intrinsics.c(this.f54032e, nativeRegisterViewState.f54032e) && Intrinsics.c(this.f54033f, nativeRegisterViewState.f54033f) && Intrinsics.c(this.g, nativeRegisterViewState.g) && Intrinsics.c(this.f54034h, nativeRegisterViewState.f54034h) && Intrinsics.c(this.f54035i, nativeRegisterViewState.f54035i) && Intrinsics.c(this.f54036j, nativeRegisterViewState.f54036j) && Intrinsics.c(this.f54037k, nativeRegisterViewState.f54037k) && Intrinsics.c(this.l, nativeRegisterViewState.l) && this.m == nativeRegisterViewState.m && Intrinsics.c(this.n, nativeRegisterViewState.n) && this.o == nativeRegisterViewState.o && this.p == nativeRegisterViewState.p;
    }

    public final int hashCode() {
        int iHashCode = (this.n.hashCode() + o60.b(n00.a((this.f54037k.hashCode() + n00.a(n00.a(n00.a((this.g.hashCode() + n00.a((this.f54032e.hashCode() + n00.a((this.f54031c.hashCode() + n00.a(this.f54029a.hashCode() * 31, 31, this.f54030b.f57486a)) * 31, 31, this.d.f57486a)) * 31, 31, this.f54033f.f57486a)) * 31, 31, this.f54034h.f57486a), 31, this.f54035i.f57486a), 31, this.f54036j.f57486a)) * 31, 31, this.l.f57486a), 31, this.m)) * 31;
        TrackingAuthOrigin trackingAuthOrigin = this.o;
        int iHashCode2 = (iHashCode + (trackingAuthOrigin == null ? 0 : trackingAuthOrigin.hashCode())) * 31;
        TrackingAuthEntryPoint trackingAuthEntryPoint = this.p;
        return iHashCode2 + (trackingAuthEntryPoint != null ? trackingAuthEntryPoint.hashCode() : 0);
    }

    public final String toString() {
        return "NativeRegisterViewState(credentialsUiModel=" + this.f54029a + ", credentialsForm=" + this.f54030b + ", personalInfoUiModel=" + this.f54031c + ", personalInfoForm=" + this.d + ", birthInfoUiModel=" + this.f54032e + ", birthInfoForm=" + this.f54033f + ", activationUiModel=" + this.g + ", majorConsents=" + this.f54034h + ", minorConsents=" + this.f54035i + ", emailTrackingConsent=" + this.f54036j + ", registrationAddressUiModel=" + this.f54037k + ", addressForm=" + this.l + ", isLoading=" + this.m + ", featureFlags=" + this.n + ", origin=" + this.o + ", entryPoint=" + this.p + ")";
    }

    public NativeRegisterViewState(NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel, FormUiModel formUiModel, NativeRegisterPersonalInfoUiModel nativeRegisterPersonalInfoUiModel, FormUiModel formUiModel2, NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel, FormUiModel formUiModel3, NativeRegisterActivationUiModel nativeRegisterActivationUiModel, FormUiModel formUiModel4, FormUiModel formUiModel5, FormUiModel formUiModel6, NativeRegisterRegistrationAddressUiModel nativeRegisterRegistrationAddressUiModel, FormUiModel formUiModel7, boolean z, NativeRegisterFeatureFlags nativeRegisterFeatureFlags, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint) {
        nativeRegisterCredentialsUiModel.getClass();
        formUiModel.getClass();
        nativeRegisterPersonalInfoUiModel.getClass();
        formUiModel2.getClass();
        nativeRegisterBirthInfoUiModel.getClass();
        formUiModel3.getClass();
        nativeRegisterActivationUiModel.getClass();
        formUiModel4.getClass();
        formUiModel5.getClass();
        formUiModel6.getClass();
        nativeRegisterRegistrationAddressUiModel.getClass();
        formUiModel7.getClass();
        nativeRegisterFeatureFlags.getClass();
        this.f54029a = nativeRegisterCredentialsUiModel;
        this.f54030b = formUiModel;
        this.f54031c = nativeRegisterPersonalInfoUiModel;
        this.d = formUiModel2;
        this.f54032e = nativeRegisterBirthInfoUiModel;
        this.f54033f = formUiModel3;
        this.g = nativeRegisterActivationUiModel;
        this.f54034h = formUiModel4;
        this.f54035i = formUiModel5;
        this.f54036j = formUiModel6;
        this.f54037k = nativeRegisterRegistrationAddressUiModel;
        this.l = formUiModel7;
        this.m = z;
        this.n = nativeRegisterFeatureFlags;
        this.o = trackingAuthOrigin;
        this.p = trackingAuthEntryPoint;
    }

    public NativeRegisterViewState() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, 65535, null);
    }
}
