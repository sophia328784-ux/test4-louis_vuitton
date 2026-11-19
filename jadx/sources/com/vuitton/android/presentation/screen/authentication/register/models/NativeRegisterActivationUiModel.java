package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterActivationUiModel;", "", "", "otpCode", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "otpFormUiModel", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterActivationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FieldErrorUiModel f53922b;

    public /* synthetic */ NativeRegisterActivationUiModel(String str, FieldErrorUiModel fieldErrorUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterActivationUiModel)) {
            return false;
        }
        NativeRegisterActivationUiModel nativeRegisterActivationUiModel = (NativeRegisterActivationUiModel) obj;
        return Intrinsics.c(this.f53921a, nativeRegisterActivationUiModel.f53921a) && Intrinsics.c(this.f53922b, nativeRegisterActivationUiModel.f53922b);
    }

    public final int hashCode() {
        return this.f53922b.hashCode() + (this.f53921a.hashCode() * 31);
    }

    public final String toString() {
        return "NativeRegisterActivationUiModel(otpCode=" + this.f53921a + ", otpFormUiModel=" + this.f53922b + ")";
    }

    public NativeRegisterActivationUiModel(String str, FieldErrorUiModel fieldErrorUiModel) {
        str.getClass();
        fieldErrorUiModel.getClass();
        this.f53921a = str;
        this.f53922b = fieldErrorUiModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NativeRegisterActivationUiModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
