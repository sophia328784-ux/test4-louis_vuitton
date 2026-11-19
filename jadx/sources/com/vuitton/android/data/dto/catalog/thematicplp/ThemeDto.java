package com.vuitton.android.data.dto.catalog.thematicplp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nBM\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "backgroundColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ThemeDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45134c;
    public final AssetImageDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45135e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ThemeDto> serializer() {
            return ThemeDto$$serializer.f45136a;
        }
    }

    public /* synthetic */ ThemeDto(int i2, String str, String str2, String str3, AssetImageDto assetImageDto, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, ThemeDto$$serializer.f45136a.getF19838b());
            throw null;
        }
        this.f45132a = str;
        this.f45133b = str2;
        this.f45134c = str3;
        this.d = assetImageDto;
        this.f45135e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeDto)) {
            return false;
        }
        ThemeDto themeDto = (ThemeDto) obj;
        return Intrinsics.c(this.f45132a, themeDto.f45132a) && Intrinsics.c(this.f45133b, themeDto.f45133b) && Intrinsics.c(this.f45134c, themeDto.f45134c) && Intrinsics.c(this.d, themeDto.d) && Intrinsics.c(this.f45135e, themeDto.f45135e);
    }

    public final int hashCode() {
        int iHashCode = this.f45132a.hashCode() * 31;
        String str = this.f45133b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45134c;
        return this.f45135e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ThemeDto(id=", this.f45132a, ", title=", this.f45133b, ", description=");
        sbS.append(this.f45134c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", backgroundColor=");
        return n00.r(this.f45135e, ")", sbS);
    }

    public ThemeDto(String str, String str2, String str3, AssetImageDto assetImageDto, String str4) {
        str.getClass();
        assetImageDto.getClass();
        str4.getClass();
        this.f45132a = str;
        this.f45133b = str2;
        this.f45134c = str3;
        this.d = assetImageDto;
        this.f45135e = str4;
    }
}
