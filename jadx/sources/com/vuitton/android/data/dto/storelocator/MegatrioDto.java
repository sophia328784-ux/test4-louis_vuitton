package com.vuitton.android.data.dto.storelocator;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.CtaDto;
import defpackage.a;
import defpackage.fa0;
import defpackage.fc;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;", "", "", "surtitle", "description", "", "Lcom/vuitton/android/data/dto/common/CtaDto;", "buttons", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class MegatrioDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fa0(16))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f46828c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storelocator/MegatrioDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<MegatrioDto> serializer() {
            return MegatrioDto$$serializer.f46829a;
        }
    }

    public /* synthetic */ MegatrioDto(int i2, String str, String str2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (5 != (i2 & 5)) {
            PluginExceptionsKt.b(i2, 5, MegatrioDto$$serializer.f46829a.getF19838b());
            throw null;
        }
        this.f46826a = str;
        if ((i2 & 2) == 0) {
            this.f46827b = null;
        } else {
            this.f46827b = str2;
        }
        this.f46828c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MegatrioDto)) {
            return false;
        }
        MegatrioDto megatrioDto = (MegatrioDto) obj;
        return Intrinsics.c(this.f46826a, megatrioDto.f46826a) && Intrinsics.c(this.f46827b, megatrioDto.f46827b) && Intrinsics.c(this.f46828c, megatrioDto.f46828c);
    }

    public final int hashCode() {
        int iHashCode = this.f46826a.hashCode() * 31;
        String str = this.f46827b;
        return this.f46828c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return a.o(fc.s("MegatrioDto(surtitle=", this.f46826a, ", description=", this.f46827b, ", buttons="), this.f46828c, ")");
    }

    public MegatrioDto(String str, String str2, List<CtaDto> list) {
        str.getClass();
        list.getClass();
        this.f46826a = str;
        this.f46827b = str2;
        this.f46828c = list;
    }

    public /* synthetic */ MegatrioDto(String str, String str2, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, list);
    }
}
