package com.vuitton.android.presentation.screen.authentication.forgetpassword.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;", "", "", "email", "otpCode", "", "isLoading", "isEmailOnError", "otpErrorMessage", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;", "password", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "forgetPasswordForm", "isPasswordFieldFocused", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ForgetPasswordViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f53587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53588c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f53589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PasswordUiModel f53590f;
    public final FormUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f53591h;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ForgetPasswordViewState(String str, String str2, boolean z, boolean z2, String str3, PasswordUiModel passwordUiModel, FormUiModel formUiModel, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i2 & 1) != 0 ? "" : str;
        str2 = (i2 & 2) != 0 ? "" : str2;
        z = (i2 & 4) != 0 ? false : z;
        z2 = (i2 & 8) != 0 ? false : z2;
        str3 = (i2 & 16) != 0 ? null : str3;
        passwordUiModel = (i2 & 32) != 0 ? new PasswordUiModel() : passwordUiModel;
        if ((i2 & 64) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModel = FormUiModel.Companion.a();
        }
        this(str, str2, z, z2, str3, passwordUiModel, formUiModel, (i2 & 128) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ForgetPasswordViewState)) {
            return false;
        }
        ForgetPasswordViewState forgetPasswordViewState = (ForgetPasswordViewState) obj;
        return Intrinsics.c(this.f53586a, forgetPasswordViewState.f53586a) && Intrinsics.c(this.f53587b, forgetPasswordViewState.f53587b) && this.f53588c == forgetPasswordViewState.f53588c && this.d == forgetPasswordViewState.d && Intrinsics.c(this.f53589e, forgetPasswordViewState.f53589e) && Intrinsics.c(this.f53590f, forgetPasswordViewState.f53590f) && Intrinsics.c(this.g, forgetPasswordViewState.g) && this.f53591h == forgetPasswordViewState.f53591h;
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(fc.b(this.f53586a.hashCode() * 31, 31, this.f53587b), 31, this.f53588c), 31, this.d);
        String str = this.f53589e;
        return Boolean.hashCode(this.f53591h) + n00.a((this.f53590f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.g.f57486a);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ForgetPasswordViewState(email=", this.f53586a, ", otpCode=", this.f53587b, ", isLoading=");
        fc.y(sbS, this.f53588c, ", isEmailOnError=", this.d, ", otpErrorMessage=");
        sbS.append(this.f53589e);
        sbS.append(", password=");
        sbS.append(this.f53590f);
        sbS.append(", forgetPasswordForm=");
        sbS.append(this.g);
        sbS.append(", isPasswordFieldFocused=");
        sbS.append(this.f53591h);
        sbS.append(")");
        return sbS.toString();
    }

    public ForgetPasswordViewState(String str, String str2, boolean z, boolean z2, String str3, PasswordUiModel passwordUiModel, FormUiModel formUiModel, boolean z3) {
        str.getClass();
        str2.getClass();
        passwordUiModel.getClass();
        formUiModel.getClass();
        this.f53586a = str;
        this.f53587b = str2;
        this.f53588c = z;
        this.d = z2;
        this.f53589e = str3;
        this.f53590f = passwordUiModel;
        this.g = formUiModel;
        this.f53591h = z3;
    }

    public ForgetPasswordViewState() {
        this(null, null, false, false, null, null, null, false, 255, null);
    }
}
