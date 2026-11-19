package com.vuitton.android.data.dto.avatar;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.w9;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;", "", "", "Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;", "sections", "Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;", "default", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AvatarResponseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f44612c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(12)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f44613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AvatarItemDto f44614b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AvatarResponseDto> serializer() {
            return AvatarResponseDto$$serializer.f44615a;
        }
    }

    public /* synthetic */ AvatarResponseDto(int i2, List list, AvatarItemDto avatarItemDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, AvatarResponseDto$$serializer.f44615a.a());
            throw null;
        }
        this.f44613a = list;
        this.f44614b = avatarItemDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarResponseDto)) {
            return false;
        }
        AvatarResponseDto avatarResponseDto = (AvatarResponseDto) obj;
        return Intrinsics.c(this.f44613a, avatarResponseDto.f44613a) && Intrinsics.c(this.f44614b, avatarResponseDto.f44614b);
    }

    public final int hashCode() {
        return this.f44614b.hashCode() + (this.f44613a.hashCode() * 31);
    }

    public final String toString() {
        return "AvatarResponseDto(sections=" + this.f44613a + ", default=" + this.f44614b + ")";
    }

    public AvatarResponseDto(List<AvatarSectionDto> list, AvatarItemDto avatarItemDto) {
        list.getClass();
        avatarItemDto.getClass();
        this.f44613a = list;
        this.f44614b = avatarItemDto;
    }
}
