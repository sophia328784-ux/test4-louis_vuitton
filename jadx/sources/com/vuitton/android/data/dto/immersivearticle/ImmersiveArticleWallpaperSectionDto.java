package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleWallpaperSectionDto extends ImmersiveArticleSectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleWallpaperDataDto f45971c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleWallpaperSectionDto> serializer() {
            return ImmersiveArticleWallpaperSectionDto$$serializer.f45972a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImmersiveArticleWallpaperSectionDto(int i2, String str, String str2, ImmersiveArticleWallpaperDataDto immersiveArticleWallpaperDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, ImmersiveArticleWallpaperSectionDto$$serializer.f45972a.getF19850b());
            throw null;
        }
        this.f45969a = str;
        this.f45970b = str2;
        if ((i2 & 4) == 0) {
            this.f45971c = null;
        } else {
            this.f45971c = immersiveArticleWallpaperDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleWallpaperSectionDto)) {
            return false;
        }
        ImmersiveArticleWallpaperSectionDto immersiveArticleWallpaperSectionDto = (ImmersiveArticleWallpaperSectionDto) obj;
        return Intrinsics.c(this.f45969a, immersiveArticleWallpaperSectionDto.f45969a) && Intrinsics.c(this.f45970b, immersiveArticleWallpaperSectionDto.f45970b) && Intrinsics.c(this.f45971c, immersiveArticleWallpaperSectionDto.f45971c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f45969a.hashCode() * 31, 31, this.f45970b);
        ImmersiveArticleWallpaperDataDto immersiveArticleWallpaperDataDto = this.f45971c;
        return iB + (immersiveArticleWallpaperDataDto == null ? 0 : immersiveArticleWallpaperDataDto.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleWallpaperSectionDto(key=", this.f45969a, ", type=", this.f45970b, ", data=");
        sbS.append(this.f45971c);
        sbS.append(")");
        return sbS.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleWallpaperSectionDto(String str, String str2, ImmersiveArticleWallpaperDataDto immersiveArticleWallpaperDataDto) {
        super(null);
        str.getClass();
        str2.getClass();
        this.f45969a = str;
        this.f45970b = str2;
        this.f45971c = immersiveArticleWallpaperDataDto;
    }

    public /* synthetic */ ImmersiveArticleWallpaperSectionDto(String str, String str2, ImmersiveArticleWallpaperDataDto immersiveArticleWallpaperDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : immersiveArticleWallpaperDataDto);
    }
}
