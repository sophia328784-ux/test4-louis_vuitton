package com.vuitton.android.presentation.applink;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;", "", "", "localeKey", "countryKey", "displayName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SwapDispatchUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f50549c;

    public SwapDispatchUiModel(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f50547a = str;
        this.f50548b = str2;
        this.f50549c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwapDispatchUiModel)) {
            return false;
        }
        SwapDispatchUiModel swapDispatchUiModel = (SwapDispatchUiModel) obj;
        return Intrinsics.c(this.f50547a, swapDispatchUiModel.f50547a) && Intrinsics.c(this.f50548b, swapDispatchUiModel.f50548b) && Intrinsics.c(this.f50549c, swapDispatchUiModel.f50549c);
    }

    public final int hashCode() {
        return this.f50549c.hashCode() + fc.b(this.f50547a.hashCode() * 31, 31, this.f50548b);
    }

    public final String toString() {
        return n00.r(this.f50549c, ")", fc.s("SwapDispatchUiModel(localeKey=", this.f50547a, ", countryKey=", this.f50548b, ", displayName="));
    }
}
