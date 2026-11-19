package com.vuitton.android.presentation.screen.authentication.login.models;

import com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;", "", "", "email", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;", "passwordUiModel", "", "isFormValid", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeLoginUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PasswordUiModel f53690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53691c;

    public /* synthetic */ NativeLoginUiModel(String str, PasswordUiModel passwordUiModel, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new String() : str, (i2 & 2) != 0 ? new PasswordUiModel() : passwordUiModel, (i2 & 4) != 0 ? false : z);
    }

    public static NativeLoginUiModel a(NativeLoginUiModel nativeLoginUiModel, String str, boolean z, int i2) {
        if ((i2 & 1) != 0) {
            str = nativeLoginUiModel.f53689a;
        }
        PasswordUiModel passwordUiModel = nativeLoginUiModel.f53690b;
        if ((i2 & 4) != 0) {
            z = nativeLoginUiModel.f53691c;
        }
        nativeLoginUiModel.getClass();
        str.getClass();
        passwordUiModel.getClass();
        return new NativeLoginUiModel(str, passwordUiModel, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeLoginUiModel)) {
            return false;
        }
        NativeLoginUiModel nativeLoginUiModel = (NativeLoginUiModel) obj;
        return Intrinsics.c(this.f53689a, nativeLoginUiModel.f53689a) && Intrinsics.c(this.f53690b, nativeLoginUiModel.f53690b) && this.f53691c == nativeLoginUiModel.f53691c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f53691c) + ((this.f53690b.hashCode() + (this.f53689a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NativeLoginUiModel(email=");
        sb.append(this.f53689a);
        sb.append(", passwordUiModel=");
        sb.append(this.f53690b);
        sb.append(", isFormValid=");
        return a.p(sb, this.f53691c, ")");
    }

    public NativeLoginUiModel(String str, PasswordUiModel passwordUiModel, boolean z) {
        str.getClass();
        passwordUiModel.getClass();
        this.f53689a = str;
        this.f53690b = passwordUiModel;
        this.f53691c = z;
    }

    public NativeLoginUiModel() {
        this(null, null, false, 7, null);
    }
}
