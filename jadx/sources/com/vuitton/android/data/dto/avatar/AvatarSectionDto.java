package com.vuitton.android.data.dto.avatar;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.d21;
import defpackage.o60;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nB=\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;", "", "", "title", "", "hasInitials", "", "Lcom/vuitton/android/data/dto/avatar/AvatarItemDto;", "avatars", "<init>", "(Ljava/lang/String;ZLjava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ZLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AvatarSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d = {null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(13))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f44617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f44618c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/avatar/AvatarSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AvatarSectionDto> serializer() {
            return AvatarSectionDto$$serializer.f44619a;
        }
    }

    public /* synthetic */ AvatarSectionDto(int i2, String str, boolean z, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (5 != (i2 & 5)) {
            PluginExceptionsKt.b(i2, 5, AvatarSectionDto$$serializer.f44619a.getF19838b());
            throw null;
        }
        this.f44616a = str;
        if ((i2 & 2) == 0) {
            this.f44617b = false;
        } else {
            this.f44617b = z;
        }
        this.f44618c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarSectionDto)) {
            return false;
        }
        AvatarSectionDto avatarSectionDto = (AvatarSectionDto) obj;
        return Intrinsics.c(this.f44616a, avatarSectionDto.f44616a) && this.f44617b == avatarSectionDto.f44617b && Intrinsics.c(this.f44618c, avatarSectionDto.f44618c);
    }

    public final int hashCode() {
        return this.f44618c.hashCode() + o60.b(this.f44616a.hashCode() * 31, 31, this.f44617b);
    }

    public final String toString() {
        return a.o(d21.s("AvatarSectionDto(title=", this.f44616a, ", hasInitials=", ", avatars=", this.f44617b), this.f44618c, ")");
    }

    public AvatarSectionDto(String str, boolean z, List<AvatarItemDto> list) {
        str.getClass();
        list.getClass();
        this.f44616a = str;
        this.f44617b = z;
        this.f44618c = list;
    }

    public /* synthetic */ AvatarSectionDto(String str, boolean z, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? false : z, list);
    }
}
