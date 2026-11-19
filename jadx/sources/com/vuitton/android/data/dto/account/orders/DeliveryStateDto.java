package com.vuitton.android.data.dto.account.orders;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.iq;
import defpackage.o60;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBA\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;", "", "", b.a.f24015b, "title", "", "milestone", "Lcom/vuitton/android/data/dto/account/orders/StateDto;", "state", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/account/orders/StateDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/account/orders/StateDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class DeliveryStateDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f44350e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(25))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f44353c;
    public final StateDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DeliveryStateDto> serializer() {
            return DeliveryStateDto$$serializer.f44354a;
        }
    }

    public /* synthetic */ DeliveryStateDto(int i2, String str, String str2, boolean z, StateDto stateDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (13 != (i2 & 13)) {
            PluginExceptionsKt.b(i2, 13, DeliveryStateDto$$serializer.f44354a.getF19838b());
            throw null;
        }
        this.f44351a = str;
        if ((i2 & 2) == 0) {
            this.f44352b = null;
        } else {
            this.f44352b = str2;
        }
        this.f44353c = z;
        this.d = stateDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeliveryStateDto)) {
            return false;
        }
        DeliveryStateDto deliveryStateDto = (DeliveryStateDto) obj;
        return Intrinsics.c(this.f44351a, deliveryStateDto.f44351a) && Intrinsics.c(this.f44352b, deliveryStateDto.f44352b) && this.f44353c == deliveryStateDto.f44353c && this.d == deliveryStateDto.d;
    }

    public final int hashCode() {
        int iHashCode = this.f44351a.hashCode() * 31;
        String str = this.f44352b;
        return this.d.hashCode() + o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f44353c);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DeliveryStateDto(id=", this.f44351a, ", title=", this.f44352b, ", milestone=");
        sbS.append(this.f44353c);
        sbS.append(", state=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public DeliveryStateDto(String str, String str2, boolean z, StateDto stateDto) {
        str.getClass();
        stateDto.getClass();
        this.f44351a = str;
        this.f44352b = str2;
        this.f44353c = z;
        this.d = stateDto;
    }

    public /* synthetic */ DeliveryStateDto(String str, String str2, boolean z, StateDto stateDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, z, stateDto);
    }
}
