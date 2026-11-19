package com.vuitton.android.presentation.screen.webview;

import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;", "", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "", "isEuropeanLocale", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;", "dispatchRegionCode", "", "legalPrivacyUrl", "confirmationPageUrl", "googleCheckoutRedirectUrl", "lineCheckoutRedirectUrl", "kakaoCheckoutRedirectUrl", "accessToken", "userId", "deviceId", "<init>", "(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WebViewUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContactUsUiModel f65535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65537c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f65538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f65539f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f65540h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f65541i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f65542j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f65543k;

    public /* synthetic */ WebViewUiModel(ContactUsUiModel contactUsUiModel, boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6, (i2 & 256) != 0 ? null : str7, (i2 & 512) != 0 ? null : str8, (i2 & 1024) == 0 ? str9 : null, null);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0028  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WebViewUiModel)) {
            return false;
        }
        WebViewUiModel webViewUiModel = (WebViewUiModel) obj;
        if (!Intrinsics.c(this.f65535a, webViewUiModel.f65535a) || this.f65536b != webViewUiModel.f65536b) {
            return false;
        }
        String str = webViewUiModel.f65537c;
        String str2 = this.f65537c;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            DispatchRegionCode.Companion companion = DispatchRegionCode.f67495b;
            RegionCode.Companion companion2 = RegionCode.f67513b;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.d, webViewUiModel.d) && Intrinsics.c(this.f65538e, webViewUiModel.f65538e) && Intrinsics.c(this.f65539f, webViewUiModel.f65539f) && Intrinsics.c(this.g, webViewUiModel.g) && Intrinsics.c(this.f65540h, webViewUiModel.f65540h) && Intrinsics.c(this.f65541i, webViewUiModel.f65541i) && Intrinsics.c(this.f65542j, webViewUiModel.f65542j) && Intrinsics.c(this.f65543k, webViewUiModel.f65543k);
    }

    public final int hashCode() {
        int iHashCode;
        int iB = o60.b(this.f65535a.hashCode() * 31, 31, this.f65536b);
        String str = this.f65537c;
        if (str == null) {
            iHashCode = 0;
        } else {
            DispatchRegionCode.Companion companion = DispatchRegionCode.f67495b;
            RegionCode.Companion companion2 = RegionCode.f67513b;
            iHashCode = str.hashCode();
        }
        int i2 = (iB + iHashCode) * 31;
        String str2 = this.d;
        int iHashCode2 = (i2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f65538e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f65539f;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.g;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f65540h;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f65541i;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f65542j;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f65543k;
        return iHashCode8 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f65537c;
        String strA = str == null ? "null" : DispatchRegionCode.a(str);
        StringBuilder sb = new StringBuilder("WebViewUiModel(contactUsUiModel=");
        sb.append(this.f65535a);
        sb.append(", isEuropeanLocale=");
        sb.append(this.f65536b);
        sb.append(", dispatchRegionCode=");
        cj.C(sb, strA, ", legalPrivacyUrl=", this.d, ", confirmationPageUrl=");
        cj.C(sb, this.f65538e, ", googleCheckoutRedirectUrl=", this.f65539f, ", lineCheckoutRedirectUrl=");
        cj.C(sb, this.g, ", kakaoCheckoutRedirectUrl=", this.f65540h, ", accessToken=");
        cj.C(sb, this.f65541i, ", userId=", this.f65542j, ", deviceId=");
        return n00.r(this.f65543k, ")", sb);
    }

    public WebViewUiModel(ContactUsUiModel contactUsUiModel, boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, DefaultConstructorMarker defaultConstructorMarker) {
        contactUsUiModel.getClass();
        this.f65535a = contactUsUiModel;
        this.f65536b = z;
        this.f65537c = str;
        this.d = str2;
        this.f65538e = str3;
        this.f65539f = str4;
        this.g = str5;
        this.f65540h = str6;
        this.f65541i = str7;
        this.f65542j = str8;
        this.f65543k = str9;
    }
}
