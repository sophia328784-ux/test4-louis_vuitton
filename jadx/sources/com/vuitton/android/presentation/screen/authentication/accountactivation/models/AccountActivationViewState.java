package com.vuitton.android.presentation.screen.authentication.accountactivation.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;", "", "", "isLoading", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;", "password", "", "otpCode", "otpErrorMessage", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "passwordForm", "isPasswordStepValid", "<init>", "(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AccountActivationViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PasswordUiModel f53394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f53395c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FormUiModel f53396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f53397f;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ AccountActivationViewState(boolean z, PasswordUiModel passwordUiModel, String str, String str2, FormUiModel formUiModel, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        z = (i2 & 1) != 0 ? false : z;
        passwordUiModel = (i2 & 2) != 0 ? new PasswordUiModel() : passwordUiModel;
        str = (i2 & 4) != 0 ? "" : str;
        str2 = (i2 & 8) != 0 ? null : str2;
        if ((i2 & 16) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModel = FormUiModel.Companion.a();
        }
        this(z, passwordUiModel, str, str2, formUiModel, (i2 & 32) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountActivationViewState)) {
            return false;
        }
        AccountActivationViewState accountActivationViewState = (AccountActivationViewState) obj;
        return this.f53393a == accountActivationViewState.f53393a && Intrinsics.c(this.f53394b, accountActivationViewState.f53394b) && Intrinsics.c(this.f53395c, accountActivationViewState.f53395c) && Intrinsics.c(this.d, accountActivationViewState.d) && Intrinsics.c(this.f53396e, accountActivationViewState.f53396e) && this.f53397f == accountActivationViewState.f53397f;
    }

    public final int hashCode() {
        int iB = fc.b((this.f53394b.hashCode() + (Boolean.hashCode(this.f53393a) * 31)) * 31, 31, this.f53395c);
        String str = this.d;
        return Boolean.hashCode(this.f53397f) + n00.a((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f53396e.f57486a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccountActivationViewState(isLoading=");
        sb.append(this.f53393a);
        sb.append(", password=");
        sb.append(this.f53394b);
        sb.append(", otpCode=");
        cj.C(sb, this.f53395c, ", otpErrorMessage=", this.d, ", passwordForm=");
        sb.append(this.f53396e);
        sb.append(", isPasswordStepValid=");
        sb.append(this.f53397f);
        sb.append(")");
        return sb.toString();
    }

    public AccountActivationViewState(boolean z, PasswordUiModel passwordUiModel, String str, String str2, FormUiModel formUiModel, boolean z2) {
        passwordUiModel.getClass();
        str.getClass();
        formUiModel.getClass();
        this.f53393a = z;
        this.f53394b = passwordUiModel;
        this.f53395c = str;
        this.d = str2;
        this.f53396e = formUiModel;
        this.f53397f = z2;
    }

    public AccountActivationViewState() {
        this(false, null, null, null, null, false, 63, null);
    }
}
