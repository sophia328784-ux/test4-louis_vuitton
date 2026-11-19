package com.vuitton.android.presentation.screen.booking.summary.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookInformationUiModel;", "", "", "title", "value", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PreBookInformationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54813a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54814b;

    public PreBookInformationUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f54813a = str;
        this.f54814b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreBookInformationUiModel)) {
            return false;
        }
        PreBookInformationUiModel preBookInformationUiModel = (PreBookInformationUiModel) obj;
        return Intrinsics.c(this.f54813a, preBookInformationUiModel.f54813a) && Intrinsics.c(this.f54814b, preBookInformationUiModel.f54814b);
    }

    public final int hashCode() {
        return this.f54814b.hashCode() + (this.f54813a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("PreBookInformationUiModel(title=", this.f54813a, ", value=", this.f54814b, ")");
    }
}
