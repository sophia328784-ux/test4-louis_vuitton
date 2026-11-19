package com.vuitton.android.presentation.dispatch;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/dispatch/DispatchUiModel;", "", "", "localeKey", "countryKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DispatchUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51493b;

    public DispatchUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f51492a = str;
        this.f51493b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DispatchUiModel)) {
            return false;
        }
        DispatchUiModel dispatchUiModel = (DispatchUiModel) obj;
        return Intrinsics.c(this.f51492a, dispatchUiModel.f51492a) && Intrinsics.c(this.f51493b, dispatchUiModel.f51493b);
    }

    public final int hashCode() {
        return this.f51493b.hashCode() + (this.f51492a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("DispatchUiModel(localeKey=", this.f51492a, ", countryKey=", this.f51493b, ")");
    }
}
