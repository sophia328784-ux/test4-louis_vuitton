package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterPersonalInfoUiModel;", "", "", "personalInfoCompleted", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "civility", "firstname", "lastname", "firstName2", "lastName2", "<init>", "(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterPersonalInfoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FieldErrorUiModel f53988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FieldErrorUiModel f53989c;
    public final FieldErrorUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FieldErrorUiModel f53990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FieldErrorUiModel f53991f;

    public /* synthetic */ NativeRegisterPersonalInfoUiModel(boolean z, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, FieldErrorUiModel fieldErrorUiModel3, FieldErrorUiModel fieldErrorUiModel4, FieldErrorUiModel fieldErrorUiModel5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel, (i2 & 4) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel2, (i2 & 8) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel3, (i2 & 16) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel4, (i2 & 32) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel5);
    }

    public static NativeRegisterPersonalInfoUiModel a(NativeRegisterPersonalInfoUiModel nativeRegisterPersonalInfoUiModel, boolean z) {
        FieldErrorUiModel fieldErrorUiModel = nativeRegisterPersonalInfoUiModel.f53988b;
        FieldErrorUiModel fieldErrorUiModel2 = nativeRegisterPersonalInfoUiModel.f53989c;
        FieldErrorUiModel fieldErrorUiModel3 = nativeRegisterPersonalInfoUiModel.d;
        FieldErrorUiModel fieldErrorUiModel4 = nativeRegisterPersonalInfoUiModel.f53990e;
        FieldErrorUiModel fieldErrorUiModel5 = nativeRegisterPersonalInfoUiModel.f53991f;
        nativeRegisterPersonalInfoUiModel.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        fieldErrorUiModel3.getClass();
        fieldErrorUiModel4.getClass();
        fieldErrorUiModel5.getClass();
        return new NativeRegisterPersonalInfoUiModel(z, fieldErrorUiModel, fieldErrorUiModel2, fieldErrorUiModel3, fieldErrorUiModel4, fieldErrorUiModel5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterPersonalInfoUiModel)) {
            return false;
        }
        NativeRegisterPersonalInfoUiModel nativeRegisterPersonalInfoUiModel = (NativeRegisterPersonalInfoUiModel) obj;
        return this.f53987a == nativeRegisterPersonalInfoUiModel.f53987a && Intrinsics.c(this.f53988b, nativeRegisterPersonalInfoUiModel.f53988b) && Intrinsics.c(this.f53989c, nativeRegisterPersonalInfoUiModel.f53989c) && Intrinsics.c(this.d, nativeRegisterPersonalInfoUiModel.d) && Intrinsics.c(this.f53990e, nativeRegisterPersonalInfoUiModel.f53990e) && Intrinsics.c(this.f53991f, nativeRegisterPersonalInfoUiModel.f53991f);
    }

    public final int hashCode() {
        return this.f53991f.hashCode() + ((this.f53990e.hashCode() + ((this.d.hashCode() + ((this.f53989c.hashCode() + ((this.f53988b.hashCode() + (Boolean.hashCode(this.f53987a) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "NativeRegisterPersonalInfoUiModel(personalInfoCompleted=" + this.f53987a + ", civility=" + this.f53988b + ", firstname=" + this.f53989c + ", lastname=" + this.d + ", firstName2=" + this.f53990e + ", lastName2=" + this.f53991f + ")";
    }

    public NativeRegisterPersonalInfoUiModel(boolean z, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, FieldErrorUiModel fieldErrorUiModel3, FieldErrorUiModel fieldErrorUiModel4, FieldErrorUiModel fieldErrorUiModel5) {
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        fieldErrorUiModel3.getClass();
        fieldErrorUiModel4.getClass();
        fieldErrorUiModel5.getClass();
        this.f53987a = z;
        this.f53988b = fieldErrorUiModel;
        this.f53989c = fieldErrorUiModel2;
        this.d = fieldErrorUiModel3;
        this.f53990e = fieldErrorUiModel4;
        this.f53991f = fieldErrorUiModel5;
    }

    public NativeRegisterPersonalInfoUiModel() {
        this(false, null, null, null, null, null, 63, null);
    }
}
