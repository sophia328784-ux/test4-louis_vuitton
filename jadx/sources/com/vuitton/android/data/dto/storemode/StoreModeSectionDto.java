package com.vuitton.android.data.dto.storemode;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.o11;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;", "type", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/storemode/StoreModeTypeDto;Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class StoreModeSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new o11(8)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StoreModeTypeDto f46866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StoreModeDataDto f46867c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoreModeSectionDto> serializer() {
            return StoreModeSectionDto$$serializer.f46868a;
        }
    }

    public /* synthetic */ StoreModeSectionDto(int i2, String str, StoreModeTypeDto storeModeTypeDto, StoreModeDataDto storeModeDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, StoreModeSectionDto$$serializer.f46868a.getF19838b());
            throw null;
        }
        this.f46865a = str;
        this.f46866b = storeModeTypeDto;
        this.f46867c = storeModeDataDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeSectionDto)) {
            return false;
        }
        StoreModeSectionDto storeModeSectionDto = (StoreModeSectionDto) obj;
        return Intrinsics.c(this.f46865a, storeModeSectionDto.f46865a) && this.f46866b == storeModeSectionDto.f46866b && Intrinsics.c(this.f46867c, storeModeSectionDto.f46867c);
    }

    public final int hashCode() {
        return this.f46867c.hashCode() + ((this.f46866b.hashCode() + (this.f46865a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "StoreModeSectionDto(id=" + this.f46865a + ", type=" + this.f46866b + ", data=" + this.f46867c + ")";
    }

    public StoreModeSectionDto(String str, StoreModeTypeDto storeModeTypeDto, StoreModeDataDto storeModeDataDto) {
        str.getClass();
        storeModeTypeDto.getClass();
        storeModeDataDto.getClass();
        this.f46865a = str;
        this.f46866b = storeModeTypeDto;
        this.f46867c = storeModeDataDto;
    }
}
