package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.m10;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;", "", "Companion", "DEFAULT", "HANLEY_PRO", "ANGLAISE_F", "COND", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class ImmersiveArticleFontDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleFontDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    @SerialName
    public static final ImmersiveArticleFontDto ANGLAISE_F;

    @SerialName
    public static final ImmersiveArticleFontDto COND;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final ImmersiveArticleFontDto DEFAULT;

    @SerialName
    public static final ImmersiveArticleFontDto HANLEY_PRO;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleFontDto> serializer() {
            return (KSerializer) ImmersiveArticleFontDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        ImmersiveArticleFontDto immersiveArticleFontDto = new ImmersiveArticleFontDto("DEFAULT", 0);
        DEFAULT = immersiveArticleFontDto;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = new ImmersiveArticleFontDto("HANLEY_PRO", 1);
        HANLEY_PRO = immersiveArticleFontDto2;
        ImmersiveArticleFontDto immersiveArticleFontDto3 = new ImmersiveArticleFontDto("ANGLAISE_F", 2);
        ANGLAISE_F = immersiveArticleFontDto3;
        ImmersiveArticleFontDto immersiveArticleFontDto4 = new ImmersiveArticleFontDto("COND", 3);
        COND = immersiveArticleFontDto4;
        ImmersiveArticleFontDto[] immersiveArticleFontDtoArr = {immersiveArticleFontDto, immersiveArticleFontDto2, immersiveArticleFontDto3, immersiveArticleFontDto4};
        $VALUES = immersiveArticleFontDtoArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleFontDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new m10(25));
    }

    public static ImmersiveArticleFontDto valueOf(String str) {
        return (ImmersiveArticleFontDto) Enum.valueOf(ImmersiveArticleFontDto.class, str);
    }

    public static ImmersiveArticleFontDto[] values() {
        return (ImmersiveArticleFontDto[]) $VALUES.clone();
    }
}
