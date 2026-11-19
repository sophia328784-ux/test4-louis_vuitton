package com.vuitton.android.presentation.screen.aicompanion.models;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRole;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;", "role", "Lkotlinx/datetime/Instant;", "dateTime", "", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;", "sections", "formattedDateTime", "", "isFromHistory", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRole;Lkotlinx/datetime/Instant;Ljava/util/List;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatMessageUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChatRole f52904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f52905c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f52906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f52907f;

    public ChatMessageUiModel(String str, ChatRole chatRole, Instant instant, List<? extends ChatMessageSectionUiModel> list, String str2, boolean z) {
        str.getClass();
        chatRole.getClass();
        instant.getClass();
        list.getClass();
        str2.getClass();
        this.f52903a = str;
        this.f52904b = chatRole;
        this.f52905c = instant;
        this.d = list;
        this.f52906e = str2;
        this.f52907f = z;
    }

    public static ChatMessageUiModel a(ChatMessageUiModel chatMessageUiModel, ArrayList arrayList, int i2) {
        String str = chatMessageUiModel.f52903a;
        ChatRole chatRole = chatMessageUiModel.f52904b;
        Instant instant = chatMessageUiModel.f52905c;
        List list = arrayList;
        if ((i2 & 8) != 0) {
            list = chatMessageUiModel.d;
        }
        List list2 = list;
        String str2 = chatMessageUiModel.f52906e;
        boolean z = (i2 & 32) != 0 ? chatMessageUiModel.f52907f : true;
        str.getClass();
        chatRole.getClass();
        instant.getClass();
        list2.getClass();
        str2.getClass();
        return new ChatMessageUiModel(str, chatRole, instant, list2, str2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatMessageUiModel)) {
            return false;
        }
        ChatMessageUiModel chatMessageUiModel = (ChatMessageUiModel) obj;
        return Intrinsics.c(this.f52903a, chatMessageUiModel.f52903a) && this.f52904b == chatMessageUiModel.f52904b && Intrinsics.c(this.f52905c, chatMessageUiModel.f52905c) && Intrinsics.c(this.d, chatMessageUiModel.d) && Intrinsics.c(this.f52906e, chatMessageUiModel.f52906e) && this.f52907f == chatMessageUiModel.f52907f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f52907f) + fc.b(n00.a((this.f52905c.f75239b.hashCode() + ((this.f52904b.hashCode() + (this.f52903a.hashCode() * 31)) * 31)) * 31, 31, this.d), 31, this.f52906e);
    }

    public final String toString() {
        return "ChatMessageUiModel(id=" + this.f52903a + ", role=" + this.f52904b + ", dateTime=" + this.f52905c + ", sections=" + this.d + ", formattedDateTime=" + this.f52906e + ", isFromHistory=" + this.f52907f + ")";
    }

    public /* synthetic */ ChatMessageUiModel(String str, ChatRole chatRole, Instant instant, List list, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, chatRole, instant, list, str2, (i2 & 32) != 0 ? false : z);
    }
}
