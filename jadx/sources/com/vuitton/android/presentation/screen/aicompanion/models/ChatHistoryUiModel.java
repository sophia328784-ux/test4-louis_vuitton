package com.vuitton.android.presentation.screen.aicompanion.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;", "", "", "sessionId", "firstMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatHistoryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52900b;

    public ChatHistoryUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f52899a = str;
        this.f52900b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatHistoryUiModel)) {
            return false;
        }
        ChatHistoryUiModel chatHistoryUiModel = (ChatHistoryUiModel) obj;
        return Intrinsics.c(this.f52899a, chatHistoryUiModel.f52899a) && Intrinsics.c(this.f52900b, chatHistoryUiModel.f52900b);
    }

    public final int hashCode() {
        return this.f52900b.hashCode() + (this.f52899a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("ChatHistoryUiModel(sessionId=", this.f52899a, ", firstMessage=", this.f52900b, ")");
    }
}
