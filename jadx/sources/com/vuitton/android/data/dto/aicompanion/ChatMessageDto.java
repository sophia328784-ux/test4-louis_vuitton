package com.vuitton.android.data.dto.aicompanion;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cm;
import defpackage.fc;
import defpackage.o60;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000bBI\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;", "role", "dateTime", "", "Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto;", "sections", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ChatMessageDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f44478e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatRoleDto f44480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44481c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ChatMessageDto> serializer() {
            return ChatMessageDto$$serializer.f44482a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44478e = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new cm(8)), null, LazyKt.a(lazyThreadSafetyMode, new cm(9))};
    }

    public /* synthetic */ ChatMessageDto(int i2, String str, ChatRoleDto chatRoleDto, String str2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, ChatMessageDto$$serializer.f44482a.getF19850b());
            throw null;
        }
        this.f44479a = str;
        this.f44480b = chatRoleDto;
        this.f44481c = str2;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatMessageDto)) {
            return false;
        }
        ChatMessageDto chatMessageDto = (ChatMessageDto) obj;
        return Intrinsics.c(this.f44479a, chatMessageDto.f44479a) && this.f44480b == chatMessageDto.f44480b && Intrinsics.c(this.f44481c, chatMessageDto.f44481c) && Intrinsics.c(this.d, chatMessageDto.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b((this.f44480b.hashCode() + (this.f44479a.hashCode() * 31)) * 31, 31, this.f44481c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChatMessageDto(id=");
        sb.append(this.f44479a);
        sb.append(", role=");
        sb.append(this.f44480b);
        sb.append(", dateTime=");
        return o60.o(this.f44481c, ", sections=", ")", sb, this.d);
    }

    public ChatMessageDto(String str, ChatRoleDto chatRoleDto, String str2, List<ChatMessageSectionDto> list) {
        str.getClass();
        chatRoleDto.getClass();
        str2.getClass();
        list.getClass();
        this.f44479a = str;
        this.f44480b = chatRoleDto;
        this.f44481c = str2;
        this.d = list;
    }
}
