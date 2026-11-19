package com.dynamicyield.sdk.wrapper.core.models.common.payload;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.DeviceType;
import defpackage.fc;
import defpackage.iq;
import java.util.Date;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;", "", "Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;", "type", "", "ip", "Ljava/util/Date;", "dateTime", b.a.f24015b, "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/enums/DeviceType;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class Device {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f26212e = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(26)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeviceType f26213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Date f26215c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Device;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Device> serializer() {
            return Device$$serializer.f26216a;
        }
    }

    public /* synthetic */ Device(int i2, DeviceType deviceType, String str, Date date, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26213a = null;
        } else {
            this.f26213a = deviceType;
        }
        if ((i2 & 2) == 0) {
            this.f26214b = null;
        } else {
            this.f26214b = str;
        }
        if ((i2 & 4) == 0) {
            this.f26215c = null;
        } else {
            this.f26215c = date;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Device)) {
            return false;
        }
        Device device = (Device) obj;
        return this.f26213a == device.f26213a && Intrinsics.c(this.f26214b, device.f26214b) && Intrinsics.c(this.f26215c, device.f26215c) && Intrinsics.c(this.d, device.d);
    }

    public final int hashCode() {
        DeviceType deviceType = this.f26213a;
        int iHashCode = (deviceType == null ? 0 : deviceType.hashCode()) * 31;
        String str = this.f26214b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Date date = this.f26215c;
        int iHashCode3 = (iHashCode2 + (date == null ? 0 : date.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device(type=");
        sb.append(this.f26213a);
        sb.append(", ip=");
        sb.append(this.f26214b);
        sb.append(", dateTime=");
        sb.append(this.f26215c);
        sb.append(", id=");
        return fc.l(sb, this.d, ')');
    }

    public Device() {
        this((DeviceType) null, (String) null, (Date) null, (String) null, 15, (DefaultConstructorMarker) null);
    }

    public Device(DeviceType deviceType, String str, Date date, String str2) {
        this.f26213a = deviceType;
        this.f26214b = str;
        this.f26215c = date;
        this.d = str2;
    }

    public /* synthetic */ Device(DeviceType deviceType, String str, Date date, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : deviceType, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : date, (i2 & 8) != 0 ? null : str2);
    }
}
