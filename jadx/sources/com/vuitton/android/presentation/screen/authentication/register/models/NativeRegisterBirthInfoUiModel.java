package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001Bm\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterBirthInfoUiModel;", "", "", "showDatePicker", "isCcpaLocale", "birthInfoCompleted", "", "formattedBirthDate", "", "birthDateInMillis", "showMinorConsents", "showEmailTrackingConsent", "isPhoneHidden", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;", "phone", "birthdate", "<init>", "(ZZZLjava/lang/String;Ljava/lang/Long;ZZZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterBirthInfoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f53941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53942c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f53943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f53944f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f53945h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FieldErrorUiModel f53946i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FieldErrorUiModel f53947j;

    public /* synthetic */ NativeRegisterBirthInfoUiModel(boolean z, boolean z2, boolean z3, String str, Long l, boolean z4, boolean z5, boolean z6, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? new String() : str, (i2 & 16) != 0 ? null : l, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? false : z5, (i2 & 128) != 0 ? false : z6, (i2 & 256) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel, (i2 & 512) != 0 ? new FieldErrorUiModel() : fieldErrorUiModel2);
    }

    public static NativeRegisterBirthInfoUiModel a(NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel, boolean z, boolean z2, boolean z3, String str, Long l, boolean z4, boolean z5, boolean z6, int i2) {
        if ((i2 & 1) != 0) {
            z = nativeRegisterBirthInfoUiModel.f53940a;
        }
        boolean z7 = z;
        if ((i2 & 2) != 0) {
            z2 = nativeRegisterBirthInfoUiModel.f53941b;
        }
        boolean z8 = z2;
        boolean z9 = (i2 & 4) != 0 ? nativeRegisterBirthInfoUiModel.f53942c : z3;
        String str2 = (i2 & 8) != 0 ? nativeRegisterBirthInfoUiModel.d : str;
        Long l2 = (i2 & 16) != 0 ? nativeRegisterBirthInfoUiModel.f53943e : l;
        boolean z10 = (i2 & 32) != 0 ? nativeRegisterBirthInfoUiModel.f53944f : z4;
        boolean z11 = (i2 & 64) != 0 ? nativeRegisterBirthInfoUiModel.g : z5;
        boolean z12 = (i2 & 128) != 0 ? nativeRegisterBirthInfoUiModel.f53945h : z6;
        FieldErrorUiModel fieldErrorUiModel = nativeRegisterBirthInfoUiModel.f53946i;
        FieldErrorUiModel fieldErrorUiModel2 = nativeRegisterBirthInfoUiModel.f53947j;
        nativeRegisterBirthInfoUiModel.getClass();
        str2.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        return new NativeRegisterBirthInfoUiModel(z7, z8, z9, str2, l2, z10, z11, z12, fieldErrorUiModel, fieldErrorUiModel2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterBirthInfoUiModel)) {
            return false;
        }
        NativeRegisterBirthInfoUiModel nativeRegisterBirthInfoUiModel = (NativeRegisterBirthInfoUiModel) obj;
        return this.f53940a == nativeRegisterBirthInfoUiModel.f53940a && this.f53941b == nativeRegisterBirthInfoUiModel.f53941b && this.f53942c == nativeRegisterBirthInfoUiModel.f53942c && Intrinsics.c(this.d, nativeRegisterBirthInfoUiModel.d) && Intrinsics.c(this.f53943e, nativeRegisterBirthInfoUiModel.f53943e) && this.f53944f == nativeRegisterBirthInfoUiModel.f53944f && this.g == nativeRegisterBirthInfoUiModel.g && this.f53945h == nativeRegisterBirthInfoUiModel.f53945h && Intrinsics.c(this.f53946i, nativeRegisterBirthInfoUiModel.f53946i) && Intrinsics.c(this.f53947j, nativeRegisterBirthInfoUiModel.f53947j);
    }

    public final int hashCode() {
        int iB = fc.b(o60.b(o60.b(Boolean.hashCode(this.f53940a) * 31, 31, this.f53941b), 31, this.f53942c), 31, this.d);
        Long l = this.f53943e;
        return this.f53947j.hashCode() + ((this.f53946i.hashCode() + o60.b(o60.b(o60.b((iB + (l == null ? 0 : l.hashCode())) * 31, 31, this.f53944f), 31, this.g), 31, this.f53945h)) * 31);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("NativeRegisterBirthInfoUiModel(showDatePicker=", ", isCcpaLocale=", ", birthInfoCompleted=", this.f53940a, this.f53941b);
        cj.A(", formattedBirthDate=", this.d, ", birthDateInMillis=", sbM, this.f53942c);
        sbM.append(this.f53943e);
        sbM.append(", showMinorConsents=");
        sbM.append(this.f53944f);
        sbM.append(", showEmailTrackingConsent=");
        fc.y(sbM, this.g, ", isPhoneHidden=", this.f53945h, ", phone=");
        sbM.append(this.f53946i);
        sbM.append(", birthdate=");
        sbM.append(this.f53947j);
        sbM.append(")");
        return sbM.toString();
    }

    public NativeRegisterBirthInfoUiModel(boolean z, boolean z2, boolean z3, String str, Long l, boolean z4, boolean z5, boolean z6, FieldErrorUiModel fieldErrorUiModel, FieldErrorUiModel fieldErrorUiModel2) {
        str.getClass();
        fieldErrorUiModel.getClass();
        fieldErrorUiModel2.getClass();
        this.f53940a = z;
        this.f53941b = z2;
        this.f53942c = z3;
        this.d = str;
        this.f53943e = l;
        this.f53944f = z4;
        this.g = z5;
        this.f53945h = z6;
        this.f53946i = fieldErrorUiModel;
        this.f53947j = fieldErrorUiModel2;
    }

    public NativeRegisterBirthInfoUiModel() {
        this(false, false, false, null, null, false, false, false, null, null, 1023, null);
    }
}
