package com.vuitton.android.presentation.redirectlink;

import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "", "Repair", "Certificate", "Exclusive", "OrderDetail", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Certificate;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$OrderDetail;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RedirectionArgs {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Certificate;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "", "diamondId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Certificate implements RedirectionArgs {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52039a;

        public Certificate(String str) {
            str.getClass();
            this.f52039a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Certificate) && Intrinsics.c(this.f52039a, ((Certificate) obj).f52039a);
        }

        public final int hashCode() {
            return this.f52039a.hashCode();
        }

        public final String toString() {
            return fc.h("Certificate(diamondId=", this.f52039a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Exclusive;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "", b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Exclusive implements RedirectionArgs {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52040a;

        public Exclusive(String str) {
            str.getClass();
            this.f52040a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Exclusive) && Intrinsics.c(this.f52040a, ((Exclusive) obj).f52040a);
        }

        public final int hashCode() {
            return this.f52040a.hashCode();
        }

        public final String toString() {
            return fc.h("Exclusive(id=", this.f52040a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$OrderDetail;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "", "shippingGroupId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OrderDetail implements RedirectionArgs {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52041a;

        public OrderDetail(String str) {
            str.getClass();
            this.f52041a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OrderDetail) && Intrinsics.c(this.f52041a, ((OrderDetail) obj).f52041a);
        }

        public final int hashCode() {
            return this.f52041a.hashCode();
        }

        public final String toString() {
            return fc.h("OrderDetail(shippingGroupId=", this.f52041a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;", "Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;", "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;", "repairId", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Repair implements RedirectionArgs {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52042a;

        public Repair(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f52042a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Repair)) {
                return false;
            }
            String str = ((Repair) obj).f52042a;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f52042a.equals(str);
        }

        public final int hashCode() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return this.f52042a.hashCode();
        }

        public final String toString() {
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            return fc.h("Repair(repairId=", this.f52042a, ")");
        }
    }
}
