package com.vuitton.android.presentation.screen.authentication.login.models;

import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;", "", "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;", "nativeLoginUiModel", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "loginForm", "", "isLoading", "loggedWithCredentialManager", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeLoginViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NativeLoginUiModel f53692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormUiModel f53693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53694c;
    public final boolean d;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ NativeLoginViewState(NativeLoginUiModel nativeLoginUiModel, FormUiModel formUiModel, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        nativeLoginUiModel = (i2 & 1) != 0 ? new NativeLoginUiModel(null, null, false, 7, null) : nativeLoginUiModel;
        if ((i2 & 2) != 0) {
            FormUiModel.f57485b.getClass();
            formUiModel = FormUiModel.Companion.a();
        }
        this(nativeLoginUiModel, formUiModel, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeLoginViewState)) {
            return false;
        }
        NativeLoginViewState nativeLoginViewState = (NativeLoginViewState) obj;
        return Intrinsics.c(this.f53692a, nativeLoginViewState.f53692a) && Intrinsics.c(this.f53693b, nativeLoginViewState.f53693b) && this.f53694c == nativeLoginViewState.f53694c && this.d == nativeLoginViewState.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(n00.a(this.f53692a.hashCode() * 31, 31, this.f53693b.f57486a), 31, this.f53694c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NativeLoginViewState(nativeLoginUiModel=");
        sb.append(this.f53692a);
        sb.append(", loginForm=");
        sb.append(this.f53693b);
        sb.append(", isLoading=");
        return pq0.p(sb, this.f53694c, ", loggedWithCredentialManager=", this.d, ")");
    }

    public NativeLoginViewState(NativeLoginUiModel nativeLoginUiModel, FormUiModel formUiModel, boolean z, boolean z2) {
        nativeLoginUiModel.getClass();
        formUiModel.getClass();
        this.f53692a = nativeLoginUiModel;
        this.f53693b = formUiModel;
        this.f53694c = z;
        this.d = z2;
    }

    public NativeLoginViewState() {
        this(null, null, false, false, 15, null);
    }
}
