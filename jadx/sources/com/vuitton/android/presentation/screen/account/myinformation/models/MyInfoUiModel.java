package com.vuitton.android.presentation.screen.account.myinformation.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.profile.models.PhoneNumberUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0010Bc\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "civility", "", "firstName", "lastName", "taxId", "branchId", "Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;", "phoneNumberUiModel", "firstName2", "lastName2", "login", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyInfoUiModel {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f52656j = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final MyInfoUiModel f52657k = new MyInfoUiModel(StringResourceUiModel.Empty.f51825b, "", "", "", "", null, "", "", "", 32, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f52658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52660c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f52661e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PhoneNumberUiModel f52662f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f52663h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f52664i;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ MyInfoUiModel(StringResourceUiModel stringResourceUiModel, String str, String str2, String str3, String str4, PhoneNumberUiModel phoneNumberUiModel, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? StringResourceUiModel.Empty.f51825b : stringResourceUiModel, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? new PhoneNumberUiModel(null, null, null, null, 15, null) : phoneNumberUiModel, (i2 & 64) != 0 ? "" : str5, (i2 & 128) != 0 ? "" : str6, (i2 & 256) != 0 ? "" : str7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyInfoUiModel)) {
            return false;
        }
        MyInfoUiModel myInfoUiModel = (MyInfoUiModel) obj;
        return Intrinsics.c(this.f52658a, myInfoUiModel.f52658a) && Intrinsics.c(this.f52659b, myInfoUiModel.f52659b) && Intrinsics.c(this.f52660c, myInfoUiModel.f52660c) && Intrinsics.c(this.d, myInfoUiModel.d) && Intrinsics.c(this.f52661e, myInfoUiModel.f52661e) && Intrinsics.c(this.f52662f, myInfoUiModel.f52662f) && Intrinsics.c(this.g, myInfoUiModel.g) && Intrinsics.c(this.f52663h, myInfoUiModel.f52663h) && Intrinsics.c(this.f52664i, myInfoUiModel.f52664i);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(fc.b(fc.b(this.f52658a.hashCode() * 31, 31, this.f52659b), 31, this.f52660c), 31, this.d), 31, this.f52661e);
        PhoneNumberUiModel phoneNumberUiModel = this.f52662f;
        return this.f52664i.hashCode() + fc.b(fc.b((iB + (phoneNumberUiModel == null ? 0 : phoneNumberUiModel.hashCode())) * 31, 31, this.g), 31, this.f52663h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MyInfoUiModel(civility=");
        sb.append(this.f52658a);
        sb.append(", firstName=");
        sb.append(this.f52659b);
        sb.append(", lastName=");
        cj.C(sb, this.f52660c, ", taxId=", this.d, ", branchId=");
        sb.append(this.f52661e);
        sb.append(", phoneNumberUiModel=");
        sb.append(this.f52662f);
        sb.append(", firstName2=");
        cj.C(sb, this.g, ", lastName2=", this.f52663h, ", login=");
        return n00.r(this.f52664i, ")", sb);
    }

    public MyInfoUiModel(StringResourceUiModel stringResourceUiModel, String str, String str2, String str3, String str4, PhoneNumberUiModel phoneNumberUiModel, String str5, String str6, String str7) {
        stringResourceUiModel.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        cj.z(str5, str6, str7);
        this.f52658a = stringResourceUiModel;
        this.f52659b = str;
        this.f52660c = str2;
        this.d = str3;
        this.f52661e = str4;
        this.f52662f = phoneNumberUiModel;
        this.g = str5;
        this.f52663h = str6;
        this.f52664i = str7;
    }

    public MyInfoUiModel() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }
}
