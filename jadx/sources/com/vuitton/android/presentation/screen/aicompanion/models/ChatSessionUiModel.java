package com.vuitton.android.presentation.screen.aicompanion.models;

import defpackage.cj;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;", "", "", "sessionId", "", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;", "messages", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatSessionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f52909b;

    public ChatSessionUiModel(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? EmptyList.f71768b : list);
    }

    public static ChatSessionUiModel a(ChatSessionUiModel chatSessionUiModel, ArrayList arrayList) {
        String str = chatSessionUiModel.f52908a;
        chatSessionUiModel.getClass();
        return new ChatSessionUiModel(str, arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatSessionUiModel)) {
            return false;
        }
        ChatSessionUiModel chatSessionUiModel = (ChatSessionUiModel) obj;
        return Intrinsics.c(this.f52908a, chatSessionUiModel.f52908a) && Intrinsics.c(this.f52909b, chatSessionUiModel.f52909b);
    }

    public final int hashCode() {
        String str = this.f52908a;
        return this.f52909b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return cj.k("ChatSessionUiModel(sessionId=", this.f52908a, ", messages=", this.f52909b, ")");
    }

    public ChatSessionUiModel(String str, List<ChatMessageUiModel> list) {
        list.getClass();
        this.f52908a = str;
        this.f52909b = list;
    }

    public ChatSessionUiModel() {
        this(null, null, 3, null);
    }
}
