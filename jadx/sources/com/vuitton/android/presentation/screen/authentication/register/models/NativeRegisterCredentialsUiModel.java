package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;", "", "", "email", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;", "password", "", "credentialsCompleted", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterCredentialsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PasswordUiModel f53952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53953c;

    public /* synthetic */ NativeRegisterCredentialsUiModel(String str, PasswordUiModel passwordUiModel, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new String() : str, (i2 & 2) != 0 ? new PasswordUiModel() : passwordUiModel, (i2 & 4) != 0 ? false : z);
    }

    public static NativeRegisterCredentialsUiModel a(NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel, String str, boolean z, int i2) {
        if ((i2 & 1) != 0) {
            str = nativeRegisterCredentialsUiModel.f53951a;
        }
        PasswordUiModel passwordUiModel = nativeRegisterCredentialsUiModel.f53952b;
        if ((i2 & 4) != 0) {
            z = nativeRegisterCredentialsUiModel.f53953c;
        }
        nativeRegisterCredentialsUiModel.getClass();
        str.getClass();
        passwordUiModel.getClass();
        return new NativeRegisterCredentialsUiModel(str, passwordUiModel, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterCredentialsUiModel)) {
            return false;
        }
        NativeRegisterCredentialsUiModel nativeRegisterCredentialsUiModel = (NativeRegisterCredentialsUiModel) obj;
        return Intrinsics.c(this.f53951a, nativeRegisterCredentialsUiModel.f53951a) && Intrinsics.c(this.f53952b, nativeRegisterCredentialsUiModel.f53952b) && this.f53953c == nativeRegisterCredentialsUiModel.f53953c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f53953c) + ((this.f53952b.hashCode() + (this.f53951a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NativeRegisterCredentialsUiModel(email=");
        sb.append(this.f53951a);
        sb.append(", password=");
        sb.append(this.f53952b);
        sb.append(", credentialsCompleted=");
        return a.p(sb, this.f53953c, ")");
    }

    public NativeRegisterCredentialsUiModel(String str, PasswordUiModel passwordUiModel, boolean z) {
        str.getClass();
        passwordUiModel.getClass();
        this.f53951a = str;
        this.f53952b = passwordUiModel;
        this.f53953c = z;
    }

    public NativeRegisterCredentialsUiModel() {
        this(null, null, false, 7, null);
    }
}
