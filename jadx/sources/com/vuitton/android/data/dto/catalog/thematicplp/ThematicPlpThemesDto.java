package com.vuitton.android.data.dto.catalog.thematicplp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.l31;
import defpackage.n00;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;", "", "", b.a.f24015b, "", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThemeDto;", "themes", "Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;", "currentTheme", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/catalog/thematicplp/CurrentThemeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ThematicPlpThemesDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(6)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CurrentThemeDto f45130c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ThematicPlpThemesDto> serializer() {
            return ThematicPlpThemesDto$$serializer.f45131a;
        }
    }

    public /* synthetic */ ThematicPlpThemesDto(int i2, String str, List list, CurrentThemeDto currentThemeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ThematicPlpThemesDto$$serializer.f45131a.getF19838b());
            throw null;
        }
        this.f45128a = str;
        this.f45129b = list;
        this.f45130c = currentThemeDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThematicPlpThemesDto)) {
            return false;
        }
        ThematicPlpThemesDto thematicPlpThemesDto = (ThematicPlpThemesDto) obj;
        return Intrinsics.c(this.f45128a, thematicPlpThemesDto.f45128a) && Intrinsics.c(this.f45129b, thematicPlpThemesDto.f45129b) && Intrinsics.c(this.f45130c, thematicPlpThemesDto.f45130c);
    }

    public final int hashCode() {
        return this.f45130c.hashCode() + n00.a(this.f45128a.hashCode() * 31, 31, this.f45129b);
    }

    public final String toString() {
        StringBuilder sbT = d21.t("ThematicPlpThemesDto(id=", this.f45128a, ", themes=", this.f45129b, ", currentTheme=");
        sbT.append(this.f45130c);
        sbT.append(")");
        return sbT.toString();
    }

    public ThematicPlpThemesDto(String str, List<ThemeDto> list, CurrentThemeDto currentThemeDto) {
        str.getClass();
        list.getClass();
        currentThemeDto.getClass();
        this.f45128a = str;
        this.f45129b = list;
        this.f45130c = currentThemeDto;
    }
}
