package com.vuitton.android.presentation.screen.account.myinformation.models;

import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;", "", "", "notificationEnabled", "isLoading", "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;", "localeFlags", "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;", "featureFlags", "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;", "myInfo", "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;", "myInfoEditForm", "shouldShowMarketingDisclaimer", "<init>", "(ZZLcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyInformationViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f52665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f52666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MyInfoLocaleFlags f52667c;
    public final MyInfoFeatureFlags d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MyInfoUiModel f52668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormUiModel f52669f;
    public final boolean g;

    /* JADX WARN: Illegal instructions before constructor call */
    public MyInformationViewState(boolean z, boolean z2, MyInfoLocaleFlags myInfoLocaleFlags, MyInfoFeatureFlags myInfoFeatureFlags, MyInfoUiModel myInfoUiModel, FormUiModel formUiModel, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        MyInfoUiModel myInfoUiModel2;
        boolean z4 = (i2 & 1) != 0 ? false : z;
        boolean z5 = (i2 & 2) != 0 ? false : z2;
        MyInfoLocaleFlags myInfoLocaleFlags2 = (i2 & 4) != 0 ? new MyInfoLocaleFlags(false, false, false, 7, null) : myInfoLocaleFlags;
        MyInfoFeatureFlags myInfoFeatureFlags2 = (i2 & 8) != 0 ? new MyInfoFeatureFlags(false, false, false, 7, null) : myInfoFeatureFlags;
        if ((i2 & 16) != 0) {
            MyInfoUiModel.f52656j.getClass();
            myInfoUiModel2 = MyInfoUiModel.f52657k;
        } else {
            myInfoUiModel2 = myInfoUiModel;
        }
        this(z4, z5, myInfoLocaleFlags2, myInfoFeatureFlags2, myInfoUiModel2, formUiModel, (i2 & 64) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyInformationViewState)) {
            return false;
        }
        MyInformationViewState myInformationViewState = (MyInformationViewState) obj;
        return this.f52665a == myInformationViewState.f52665a && this.f52666b == myInformationViewState.f52666b && Intrinsics.c(this.f52667c, myInformationViewState.f52667c) && Intrinsics.c(this.d, myInformationViewState.d) && Intrinsics.c(this.f52668e, myInformationViewState.f52668e) && Intrinsics.c(this.f52669f, myInformationViewState.f52669f) && this.g == myInformationViewState.g;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.g) + n00.a((this.f52668e.hashCode() + ((this.d.hashCode() + ((this.f52667c.hashCode() + o60.b(Boolean.hashCode(this.f52665a) * 31, 31, this.f52666b)) * 31)) * 31)) * 31, 31, this.f52669f.f57486a);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("MyInformationViewState(notificationEnabled=", ", isLoading=", ", localeFlags=", this.f52665a, this.f52666b);
        sbM.append(this.f52667c);
        sbM.append(", featureFlags=");
        sbM.append(this.d);
        sbM.append(", myInfo=");
        sbM.append(this.f52668e);
        sbM.append(", myInfoEditForm=");
        sbM.append(this.f52669f);
        sbM.append(", shouldShowMarketingDisclaimer=");
        return a.p(sbM, this.g, ")");
    }

    public MyInformationViewState(boolean z, boolean z2, MyInfoLocaleFlags myInfoLocaleFlags, MyInfoFeatureFlags myInfoFeatureFlags, MyInfoUiModel myInfoUiModel, FormUiModel formUiModel, boolean z3) {
        myInfoLocaleFlags.getClass();
        myInfoFeatureFlags.getClass();
        myInfoUiModel.getClass();
        formUiModel.getClass();
        this.f52665a = z;
        this.f52666b = z2;
        this.f52667c = myInfoLocaleFlags;
        this.d = myInfoFeatureFlags;
        this.f52668e = myInfoUiModel;
        this.f52669f = formUiModel;
        this.g = z3;
    }
}
