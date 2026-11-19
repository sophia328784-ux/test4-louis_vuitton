package com.vuitton.android.data.dto.distantrepairs;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o11;
import java.util.List;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bBY\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;", "", "", "storeId", "displayTimeZone", "date", "", "Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;", "inStoreSlots", "distantSlots", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class StoreSlotInfoDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f45732f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45735c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f45736e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoreSlotInfoDto> serializer() {
            return StoreSlotInfoDto$$serializer.f45737a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45732f = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new o11(10)), LazyKt.a(lazyThreadSafetyMode, new o11(11))};
    }

    public /* synthetic */ StoreSlotInfoDto(int i2, String str, String str2, String str3, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, StoreSlotInfoDto$$serializer.f45737a.getF19838b());
            throw null;
        }
        this.f45733a = str;
        this.f45734b = str2;
        this.f45735c = str3;
        this.d = list;
        this.f45736e = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreSlotInfoDto)) {
            return false;
        }
        StoreSlotInfoDto storeSlotInfoDto = (StoreSlotInfoDto) obj;
        return Intrinsics.c(this.f45733a, storeSlotInfoDto.f45733a) && Intrinsics.c(this.f45734b, storeSlotInfoDto.f45734b) && Intrinsics.c(this.f45735c, storeSlotInfoDto.f45735c) && Intrinsics.c(this.d, storeSlotInfoDto.d) && Intrinsics.c(this.f45736e, storeSlotInfoDto.f45736e);
    }

    public final int hashCode() {
        return this.f45736e.hashCode() + n00.a(fc.b(fc.b(this.f45733a.hashCode() * 31, 31, this.f45734b), 31, this.f45735c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreSlotInfoDto(storeId=", this.f45733a, ", displayTimeZone=", this.f45734b, ", date=");
        d21.z(this.f45735c, ", inStoreSlots=", ", distantSlots=", sbS, this.d);
        return a.o(sbS, this.f45736e, ")");
    }

    public StoreSlotInfoDto(String str, String str2, String str3, List<SlotDto> list, List<SlotDto> list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        list2.getClass();
        this.f45733a = str;
        this.f45734b = str2;
        this.f45735c = str3;
        this.d = list;
        this.f45736e = list2;
    }
}
