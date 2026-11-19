package com.vuitton.android.presentation.screen.orders.models;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;", "", "Standard", "ClickAndCollect", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$ClickAndCollect;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExchangeSetupShippingMethodUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$ClickAndCollect;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;", "", "title", Payload.TYPE_STORE, "infos", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ClickAndCollect implements ExchangeSetupShippingMethodUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60256b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f60257c;

        public ClickAndCollect(String str, String str2, String str3) {
            str.getClass();
            str2.getClass();
            this.f60255a = str;
            this.f60256b = str2;
            this.f60257c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickAndCollect)) {
                return false;
            }
            ClickAndCollect clickAndCollect = (ClickAndCollect) obj;
            return Intrinsics.c(this.f60255a, clickAndCollect.f60255a) && Intrinsics.c(this.f60256b, clickAndCollect.f60256b) && Intrinsics.c(this.f60257c, clickAndCollect.f60257c);
        }

        public final int hashCode() {
            int iB = fc.b(this.f60255a.hashCode() * 31, 31, this.f60256b);
            String str = this.f60257c;
            return iB + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n00.r(this.f60257c, ")", fc.s("ClickAndCollect(title=", this.f60255a, ", store=", this.f60256b, ", infos="));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;", "", "title", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Standard implements ExchangeSetupShippingMethodUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60258a;

        public Standard(String str) {
            str.getClass();
            this.f60258a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Standard) && Intrinsics.c(this.f60258a, ((Standard) obj).f60258a);
        }

        public final int hashCode() {
            return this.f60258a.hashCode();
        }

        public final String toString() {
            return fc.h("Standard(title=", this.f60258a, ")");
        }
    }
}
