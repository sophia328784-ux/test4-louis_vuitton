package com.vuitton.android.presentation.contact.compose;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "Chat", "Sms", "PhoneCall", "EmailForm", "EmailNative", "WhatsApp", "KakaoTalk", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ContactUsMethod {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Chat implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Chat f51131a = new Chat();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Chat);
        }

        public final int hashCode() {
            return 72880980;
        }

        public final String toString() {
            return "Chat";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "emailFormUrl", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EmailForm implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51132a;

        public EmailForm(String str) {
            this.f51132a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof EmailForm) && Intrinsics.c(this.f51132a, ((EmailForm) obj).f51132a);
        }

        public final int hashCode() {
            String str = this.f51132a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("EmailForm(emailFormUrl=", this.f51132a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "kakaoTalkId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class KakaoTalk implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51135a;

        public KakaoTalk(String str) {
            this.f51135a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof KakaoTalk) && Intrinsics.c(this.f51135a, ((KakaoTalk) obj).f51135a);
        }

        public final int hashCode() {
            String str = this.f51135a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("KakaoTalk(kakaoTalkId=", this.f51135a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "phoneNumber", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PhoneCall implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51136a;

        public PhoneCall(String str) {
            this.f51136a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PhoneCall) && Intrinsics.c(this.f51136a, ((PhoneCall) obj).f51136a);
        }

        public final int hashCode() {
            String str = this.f51136a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("PhoneCall(phoneNumber=", this.f51136a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "phoneNumber", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Sms implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51137a;

        public Sms(String str) {
            this.f51137a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Sms) && Intrinsics.c(this.f51137a, ((Sms) obj).f51137a);
        }

        public final int hashCode() {
            String str = this.f51137a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Sms(phoneNumber=", this.f51137a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "whatsappNumber", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WhatsApp implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51138a;

        public WhatsApp(String str) {
            this.f51138a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof WhatsApp) && Intrinsics.c(this.f51138a, ((WhatsApp) obj).f51138a);
        }

        public final int hashCode() {
            String str = this.f51138a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("WhatsApp(whatsappNumber=", this.f51138a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;", "Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;", "", "email", "subject", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class EmailNative implements ContactUsMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f51133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f51134b;

        public /* synthetic */ EmailNative(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : str2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EmailNative)) {
                return false;
            }
            EmailNative emailNative = (EmailNative) obj;
            return Intrinsics.c(this.f51133a, emailNative.f51133a) && Intrinsics.c(this.f51134b, emailNative.f51134b);
        }

        public final int hashCode() {
            String str = this.f51133a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f51134b;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return d21.l("EmailNative(email=", this.f51133a, ", subject=", this.f51134b, ")");
        }

        public EmailNative(String str, String str2) {
            this.f51133a = str;
            this.f51134b = str2;
        }
    }
}
