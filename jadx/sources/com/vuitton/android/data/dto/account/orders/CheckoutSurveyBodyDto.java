package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0007\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;", "", "", "rating", "", "comment", "deviceId", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CheckoutSurveyBodyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f44333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44335c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CheckoutSurveyBodyDto> serializer() {
            return CheckoutSurveyBodyDto$$serializer.f44336a;
        }
    }

    public /* synthetic */ CheckoutSurveyBodyDto(int i2, Integer num, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (4 != (i2 & 4)) {
            PluginExceptionsKt.b(i2, 4, CheckoutSurveyBodyDto$$serializer.f44336a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44333a = null;
        } else {
            this.f44333a = num;
        }
        if ((i2 & 2) == 0) {
            this.f44334b = null;
        } else {
            this.f44334b = str;
        }
        this.f44335c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutSurveyBodyDto)) {
            return false;
        }
        CheckoutSurveyBodyDto checkoutSurveyBodyDto = (CheckoutSurveyBodyDto) obj;
        return Intrinsics.c(this.f44333a, checkoutSurveyBodyDto.f44333a) && Intrinsics.c(this.f44334b, checkoutSurveyBodyDto.f44334b) && Intrinsics.c(this.f44335c, checkoutSurveyBodyDto.f44335c);
    }

    public final int hashCode() {
        Integer num = this.f44333a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.f44334b;
        return this.f44335c.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CheckoutSurveyBodyDto(rating=");
        sb.append(this.f44333a);
        sb.append(", comment=");
        sb.append(this.f44334b);
        sb.append(", deviceId=");
        return n00.r(this.f44335c, ")", sb);
    }

    public CheckoutSurveyBodyDto(Integer num, String str, String str2) {
        str2.getClass();
        this.f44333a = num;
        this.f44334b = str;
        this.f44335c = str2;
    }

    public /* synthetic */ CheckoutSurveyBodyDto(Integer num, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : str, str2);
    }
}
