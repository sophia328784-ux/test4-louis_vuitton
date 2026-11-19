package com.vuitton.android.presentation.screen.certificates.diamonds.add.model;

import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;", "infoUiModel", "Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;", "formState", "", "initialIndividualNumber", "", "isLoading", "isCreated", "isCN", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddCertificateUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f55785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AddCertificateInfoUiModel f55786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CertificateFormState f55787c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f55788e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f55789f;
    public final boolean g;

    public /* synthetic */ AddCertificateUiModel(InAppDispatch inAppDispatch, AddCertificateInfoUiModel addCertificateInfoUiModel, CertificateFormState certificateFormState, String str, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? AddCertificateInfoIndividualNumberUiModel.f55782c : addCertificateInfoUiModel, (i2 & 4) != 0 ? new CertificateFormState() : certificateFormState, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? false : z2, (i2 & 64) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddCertificateUiModel)) {
            return false;
        }
        AddCertificateUiModel addCertificateUiModel = (AddCertificateUiModel) obj;
        return Intrinsics.c(this.f55785a, addCertificateUiModel.f55785a) && Intrinsics.c(this.f55786b, addCertificateUiModel.f55786b) && Intrinsics.c(this.f55787c, addCertificateUiModel.f55787c) && Intrinsics.c(this.d, addCertificateUiModel.d) && this.f55788e == addCertificateUiModel.f55788e && this.f55789f == addCertificateUiModel.f55789f && this.g == addCertificateUiModel.g;
    }

    public final int hashCode() {
        int iHashCode = (this.f55787c.hashCode() + ((this.f55786b.hashCode() + (this.f55785a.hashCode() * 31)) * 31)) * 31;
        String str = this.d;
        return Boolean.hashCode(this.g) + o60.b(o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f55788e), 31, this.f55789f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AddCertificateUiModel(inAppDispatch=");
        sb.append(this.f55785a);
        sb.append(", infoUiModel=");
        sb.append(this.f55786b);
        sb.append(", formState=");
        sb.append(this.f55787c);
        sb.append(", initialIndividualNumber=");
        sb.append(this.d);
        sb.append(", isLoading=");
        fc.y(sb, this.f55788e, ", isCreated=", this.f55789f, ", isCN=");
        return a.p(sb, this.g, ")");
    }

    public AddCertificateUiModel(InAppDispatch inAppDispatch, AddCertificateInfoUiModel addCertificateInfoUiModel, CertificateFormState certificateFormState, String str, boolean z, boolean z2, boolean z3) {
        inAppDispatch.getClass();
        addCertificateInfoUiModel.getClass();
        certificateFormState.getClass();
        this.f55785a = inAppDispatch;
        this.f55786b = addCertificateInfoUiModel;
        this.f55787c = certificateFormState;
        this.d = str;
        this.f55788e = z;
        this.f55789f = z2;
        this.g = z3;
    }
}
