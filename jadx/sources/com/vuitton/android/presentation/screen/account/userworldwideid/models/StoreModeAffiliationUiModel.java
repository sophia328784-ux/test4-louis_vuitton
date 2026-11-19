package com.vuitton.android.presentation.screen.account.userworldwideid.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/userworldwideid/models/StoreModeAffiliationUiModel;", "", "", "rmsCode", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeAffiliationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52707a;

    public StoreModeAffiliationUiModel(String str) {
        str.getClass();
        this.f52707a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StoreModeAffiliationUiModel) && Intrinsics.c(this.f52707a, ((StoreModeAffiliationUiModel) obj).f52707a);
    }

    public final int hashCode() {
        return this.f52707a.hashCode();
    }

    public final String toString() {
        return fc.h("StoreModeAffiliationUiModel(rmsCode=", this.f52707a, ")");
    }
}
