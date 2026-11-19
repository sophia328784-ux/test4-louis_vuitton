package com.vuitton.android.data.dto.catalog.thematicplp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.iq;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\t\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;", "", "", b.a.f24015b, "", "nextPage", "", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeItemDto;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CurrentThemeDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new iq(13))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f45125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f45126c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CurrentThemeDto> serializer() {
            return CurrentThemeDto$$serializer.f45127a;
        }
    }

    public /* synthetic */ CurrentThemeDto(int i2, String str, Integer num, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, CurrentThemeDto$$serializer.f45127a.getF19838b());
            throw null;
        }
        this.f45124a = str;
        this.f45125b = num;
        this.f45126c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CurrentThemeDto)) {
            return false;
        }
        CurrentThemeDto currentThemeDto = (CurrentThemeDto) obj;
        return Intrinsics.c(this.f45124a, currentThemeDto.f45124a) && Intrinsics.c(this.f45125b, currentThemeDto.f45125b) && Intrinsics.c(this.f45126c, currentThemeDto.f45126c);
    }

    public final int hashCode() {
        int iHashCode = this.f45124a.hashCode() * 31;
        Integer num = this.f45125b;
        return this.f45126c.hashCode() + ((iHashCode + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CurrentThemeDto(id=");
        sb.append(this.f45124a);
        sb.append(", nextPage=");
        sb.append(this.f45125b);
        sb.append(", items=");
        return a.o(sb, this.f45126c, ")");
    }

    public CurrentThemeDto(String str, Integer num, List<ThemeItemDto> list) {
        str.getClass();
        list.getClass();
        this.f45124a = str;
        this.f45125b = num;
        this.f45126c = list;
    }
}
