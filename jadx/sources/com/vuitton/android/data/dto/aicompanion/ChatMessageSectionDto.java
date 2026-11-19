package com.vuitton.android.data.dto.aicompanion;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto;", "", "", "simpleText", "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;", "editorialSection", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ChatMessageSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditorialSectionDto f44484b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ChatMessageSectionDto> serializer() {
            return ChatMessageSectionDto$$serializer.f44485a;
        }
    }

    public /* synthetic */ ChatMessageSectionDto(int i2, String str, EditorialSectionDto editorialSectionDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44483a = null;
        } else {
            this.f44483a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44484b = null;
        } else {
            this.f44484b = editorialSectionDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatMessageSectionDto)) {
            return false;
        }
        ChatMessageSectionDto chatMessageSectionDto = (ChatMessageSectionDto) obj;
        return Intrinsics.c(this.f44483a, chatMessageSectionDto.f44483a) && Intrinsics.c(this.f44484b, chatMessageSectionDto.f44484b);
    }

    public final int hashCode() {
        String str = this.f44483a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        EditorialSectionDto editorialSectionDto = this.f44484b;
        return iHashCode + (editorialSectionDto != null ? editorialSectionDto.hashCode() : 0);
    }

    public final String toString() {
        return "ChatMessageSectionDto(simpleText=" + this.f44483a + ", editorialSection=" + this.f44484b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChatMessageSectionDto() {
        this((String) null, (EditorialSectionDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public ChatMessageSectionDto(String str, EditorialSectionDto editorialSectionDto) {
        this.f44483a = str;
        this.f44484b = editorialSectionDto;
    }

    public /* synthetic */ ChatMessageSectionDto(String str, EditorialSectionDto editorialSectionDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : editorialSectionDto);
    }
}
