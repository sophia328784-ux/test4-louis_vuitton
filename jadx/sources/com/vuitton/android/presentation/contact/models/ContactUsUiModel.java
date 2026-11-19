package com.vuitton.android.presentation.contact.models;

import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "", "", "canOpenContactUs", "", "email", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "emailSubject", "sms", "phoneNumber", "whatsappNumber", "kakaoTalkId", "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;", "chatContactUsUiModel", "hasChatNotification", "shouldAskCameraPermission", "isChatClosed", "Lcom/vuitton/android/presentation/contact/ContactUsMode;", MvelScriptManager.VAR_CONTEXT, "<init>", "(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ContactUsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f51154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringResourceUiModel f51156c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f51157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f51158f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ChatContactUsUiModel f51159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f51160i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f51161j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f51162k;
    public final ContactUsMode l;

    public /* synthetic */ ContactUsUiModel(boolean z, String str, StringResourceUiModel stringResourceUiModel, String str2, String str3, String str4, String str5, ChatContactUsUiModel chatContactUsUiModel, boolean z2, boolean z3, boolean z4, ContactUsMode contactUsMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : stringResourceUiModel, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) == 0 ? str5 : null, (i2 & 128) != 0 ? ChatContactUsUiModel.ChatDisabled.f50675a : chatContactUsUiModel, (i2 & 256) != 0 ? false : z2, (i2 & 512) != 0 ? false : z3, (i2 & 1024) == 0 ? z4 : false, (i2 & 2048) != 0 ? ContactUsMode.DEFAULT : contactUsMode);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContactUsUiModel)) {
            return false;
        }
        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj;
        return this.f51154a == contactUsUiModel.f51154a && Intrinsics.c(this.f51155b, contactUsUiModel.f51155b) && Intrinsics.c(this.f51156c, contactUsUiModel.f51156c) && Intrinsics.c(this.d, contactUsUiModel.d) && Intrinsics.c(this.f51157e, contactUsUiModel.f51157e) && Intrinsics.c(this.f51158f, contactUsUiModel.f51158f) && Intrinsics.c(this.g, contactUsUiModel.g) && Intrinsics.c(this.f51159h, contactUsUiModel.f51159h) && this.f51160i == contactUsUiModel.f51160i && this.f51161j == contactUsUiModel.f51161j && this.f51162k == contactUsUiModel.f51162k && this.l == contactUsUiModel.l;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f51154a) * 31;
        String str = this.f51155b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        StringResourceUiModel stringResourceUiModel = this.f51156c;
        int iHashCode3 = (iHashCode2 + (stringResourceUiModel == null ? 0 : stringResourceUiModel.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f51157e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f51158f;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.g;
        return this.l.hashCode() + o60.b(o60.b(o60.b((this.f51159h.hashCode() + ((iHashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31)) * 31, 31, this.f51160i), 31, this.f51161j), 31, this.f51162k);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ContactUsUiModel(canOpenContactUs=");
        sb.append(this.f51154a);
        sb.append(", email=");
        sb.append(this.f51155b);
        sb.append(", emailSubject=");
        sb.append(this.f51156c);
        sb.append(", sms=");
        sb.append(this.d);
        sb.append(", phoneNumber=");
        cj.C(sb, this.f51157e, ", whatsappNumber=", this.f51158f, ", kakaoTalkId=");
        sb.append(this.g);
        sb.append(", chatContactUsUiModel=");
        sb.append(this.f51159h);
        sb.append(", hasChatNotification=");
        fc.y(sb, this.f51160i, ", shouldAskCameraPermission=", this.f51161j, ", isChatClosed=");
        sb.append(this.f51162k);
        sb.append(", context=");
        sb.append(this.l);
        sb.append(")");
        return sb.toString();
    }

    public ContactUsUiModel(boolean z, String str, StringResourceUiModel stringResourceUiModel, String str2, String str3, String str4, String str5, ChatContactUsUiModel chatContactUsUiModel, boolean z2, boolean z3, boolean z4, ContactUsMode contactUsMode) {
        chatContactUsUiModel.getClass();
        contactUsMode.getClass();
        this.f51154a = z;
        this.f51155b = str;
        this.f51156c = stringResourceUiModel;
        this.d = str2;
        this.f51157e = str3;
        this.f51158f = str4;
        this.g = str5;
        this.f51159h = chatContactUsUiModel;
        this.f51160i = z2;
        this.f51161j = z3;
        this.f51162k = z4;
        this.l = contactUsMode;
    }

    public ContactUsUiModel() {
        this(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null);
    }
}
