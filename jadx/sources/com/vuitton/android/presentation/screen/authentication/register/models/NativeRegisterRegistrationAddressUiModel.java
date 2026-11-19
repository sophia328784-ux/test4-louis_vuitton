package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;", "", "", "addressCompleted", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "postalCode", "state", "city", "address1", "address2", "address3", "<init>", "(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterRegistrationAddressUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FieldErrorUiModel f53993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FieldErrorUiModel f53994c;
    public final FieldErrorUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FieldErrorUiModel f53995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FieldErrorUiModel f53996f;
    public final FieldErrorUiModel g;

    public /* synthetic */ NativeRegisterRegistrationAddressUiModel(boolean z, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, FieldErrorUiModel fieldErrorUiModel3, FieldErrorUiModel fieldErrorUiModel4, FieldErrorUiModel fieldErrorUiModel5, FieldErrorUiModel fieldErrorUiModel6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel, (i2 & 4) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel2, (i2 & 8) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel3, (i2 & 16) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel4, (i2 & 32) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel5, (i2 & 64) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterRegistrationAddressUiModel)) {
            return false;
        }
        NativeRegisterRegistrationAddressUiModel nativeRegisterRegistrationAddressUiModel = (NativeRegisterRegistrationAddressUiModel) obj;
        return this.f53992a == nativeRegisterRegistrationAddressUiModel.f53992a && Intrinsics.c(this.f53993b, nativeRegisterRegistrationAddressUiModel.f53993b) && Intrinsics.c(this.f53994c, nativeRegisterRegistrationAddressUiModel.f53994c) && Intrinsics.c(this.d, nativeRegisterRegistrationAddressUiModel.d) && Intrinsics.c(this.f53995e, nativeRegisterRegistrationAddressUiModel.f53995e) && Intrinsics.c(this.f53996f, nativeRegisterRegistrationAddressUiModel.f53996f) && Intrinsics.c(this.g, nativeRegisterRegistrationAddressUiModel.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + ((this.f53996f.hashCode() + ((this.f53995e.hashCode() + ((this.d.hashCode() + ((this.f53994c.hashCode() + ((this.f53993b.hashCode() + (Boolean.hashCode(this.f53992a) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "NativeRegisterRegistrationAddressUiModel(addressCompleted=" + this.f53992a + ", postalCode=" + this.f53993b + ", state=" + this.f53994c + ", city=" + this.d + ", address1=" + this.f53995e + ", address2=" + this.f53996f + ", address3=" + this.g + ")";
    }

    public NativeRegisterRegistrationAddressUiModel(boolean z, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, FieldErrorUiModel fieldErrorUiModel3, FieldErrorUiModel fieldErrorUiModel4, FieldErrorUiModel fieldErrorUiModel5, FieldErrorUiModel fieldErrorUiModel6) {
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        fieldErrorUiModel3.getClass();
        fieldErrorUiModel4.getClass();
        fieldErrorUiModel5.getClass();
        fieldErrorUiModel6.getClass();
        this.f53992a = z;
        this.f53993b = fieldErrorUiModel;
        this.f53994c = fieldErrorUiModel2;
        this.d = fieldErrorUiModel3;
        this.f53995e = fieldErrorUiModel4;
        this.f53996f = fieldErrorUiModel5;
        this.g = fieldErrorUiModel6;
    }

    public NativeRegisterRegistrationAddressUiModel() {
        this(false, null, null, null, null, null, null, CertificateBody.profileType, null);
    }
}
