package com.vuitton.android.presentation.profile.models;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;", "", "", "nationalValue", "Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;", "type", "regionCodeIso31661Alpha2", "formattedPhoneNumber", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PhoneNumberUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PhoneNumberTypeUiModel f51848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51849c;
    public final String d;

    public /* synthetic */ PhoneNumberUiModel(String str, PhoneNumberTypeUiModel phoneNumberTypeUiModel, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? PhoneNumberTypeUiModel.MOBILE : phoneNumberTypeUiModel, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? "" : str3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneNumberUiModel)) {
            return false;
        }
        PhoneNumberUiModel phoneNumberUiModel = (PhoneNumberUiModel) obj;
        return Intrinsics.c(this.f51847a, phoneNumberUiModel.f51847a) && this.f51848b == phoneNumberUiModel.f51848b && Intrinsics.c(this.f51849c, phoneNumberUiModel.f51849c) && Intrinsics.c(this.d, phoneNumberUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b((this.f51848b.hashCode() + (this.f51847a.hashCode() * 31)) * 31, 31, this.f51849c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PhoneNumberUiModel(nationalValue=");
        sb.append(this.f51847a);
        sb.append(", type=");
        sb.append(this.f51848b);
        sb.append(", regionCodeIso31661Alpha2=");
        return tr.l(sb, this.f51849c, ", formattedPhoneNumber=", this.d, ")");
    }

    public PhoneNumberUiModel(String str, PhoneNumberTypeUiModel phoneNumberTypeUiModel, String str2, String str3) {
        str.getClass();
        phoneNumberTypeUiModel.getClass();
        str2.getClass();
        str3.getClass();
        this.f51847a = str;
        this.f51848b = phoneNumberTypeUiModel;
        this.f51849c = str2;
        this.d = str3;
    }

    public PhoneNumberUiModel() {
        this(null, null, null, null, 15, null);
    }
}
