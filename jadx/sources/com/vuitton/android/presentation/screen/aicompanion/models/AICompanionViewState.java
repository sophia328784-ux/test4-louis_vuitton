package com.vuitton.android.presentation.screen.aicompanion.models;

import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bq\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\n¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;", "", "", "isUserConnected", "Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;", "onboarding", "", "ongoingPrompt", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;", "chatSession", "", "suggestions", "hasAICompanionVideoBeenDisplayed", "isCopySessionIdEnabled", "isLoadingAnswer", "Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;", "chatSessionHistory", "<init>", "(ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AICompanionViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f52892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AICompanionOnboardingUiModel f52893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52894c;
    public final ChatSessionUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f52895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f52896f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f52897h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f52898i;

    public AICompanionViewState(boolean z, AICompanionOnboardingUiModel aICompanionOnboardingUiModel, String str, ChatSessionUiModel chatSessionUiModel, List list, Boolean bool, boolean z2, boolean z3, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : aICompanionOnboardingUiModel, (i2 & 4) != 0 ? "" : str, (i2 & 8) != 0 ? new ChatSessionUiModel(null, null, 3, null) : chatSessionUiModel, (i2 & 16) != 0 ? EmptyList.f71768b : list, (i2 & 32) != 0 ? null : bool, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? false : z3, (i2 & 256) != 0 ? EmptyList.f71768b : list2);
    }

    public static AICompanionViewState a(AICompanionViewState aICompanionViewState, boolean z, AICompanionOnboardingUiModel aICompanionOnboardingUiModel, String str, ChatSessionUiModel chatSessionUiModel, List list, Boolean bool, boolean z2, boolean z3, List list2, int i2) {
        if ((i2 & 1) != 0) {
            z = aICompanionViewState.f52892a;
        }
        boolean z4 = z;
        if ((i2 & 2) != 0) {
            aICompanionOnboardingUiModel = aICompanionViewState.f52893b;
        }
        AICompanionOnboardingUiModel aICompanionOnboardingUiModel2 = aICompanionOnboardingUiModel;
        if ((i2 & 4) != 0) {
            str = aICompanionViewState.f52894c;
        }
        String str2 = str;
        if ((i2 & 8) != 0) {
            chatSessionUiModel = aICompanionViewState.d;
        }
        ChatSessionUiModel chatSessionUiModel2 = chatSessionUiModel;
        if ((i2 & 16) != 0) {
            list = aICompanionViewState.f52895e;
        }
        List list3 = list;
        Boolean bool2 = (i2 & 32) != 0 ? aICompanionViewState.f52896f : bool;
        boolean z5 = (i2 & 64) != 0 ? aICompanionViewState.g : z2;
        boolean z6 = (i2 & 128) != 0 ? aICompanionViewState.f52897h : z3;
        List list4 = (i2 & 256) != 0 ? aICompanionViewState.f52898i : list2;
        aICompanionViewState.getClass();
        str2.getClass();
        chatSessionUiModel2.getClass();
        list3.getClass();
        list4.getClass();
        return new AICompanionViewState(z4, aICompanionOnboardingUiModel2, str2, chatSessionUiModel2, list3, bool2, z5, z6, list4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AICompanionViewState)) {
            return false;
        }
        AICompanionViewState aICompanionViewState = (AICompanionViewState) obj;
        return this.f52892a == aICompanionViewState.f52892a && Intrinsics.c(this.f52893b, aICompanionViewState.f52893b) && Intrinsics.c(this.f52894c, aICompanionViewState.f52894c) && Intrinsics.c(this.d, aICompanionViewState.d) && Intrinsics.c(this.f52895e, aICompanionViewState.f52895e) && Intrinsics.c(this.f52896f, aICompanionViewState.f52896f) && this.g == aICompanionViewState.g && this.f52897h == aICompanionViewState.f52897h && Intrinsics.c(this.f52898i, aICompanionViewState.f52898i);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f52892a) * 31;
        AICompanionOnboardingUiModel aICompanionOnboardingUiModel = this.f52893b;
        int iA = n00.a((this.d.hashCode() + fc.b((iHashCode + (aICompanionOnboardingUiModel == null ? 0 : aICompanionOnboardingUiModel.hashCode())) * 31, 31, this.f52894c)) * 31, 31, this.f52895e);
        Boolean bool = this.f52896f;
        return this.f52898i.hashCode() + o60.b(o60.b((iA + (bool != null ? bool.hashCode() : 0)) * 31, 31, this.g), 31, this.f52897h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AICompanionViewState(isUserConnected=");
        sb.append(this.f52892a);
        sb.append(", onboarding=");
        sb.append(this.f52893b);
        sb.append(", ongoingPrompt=");
        sb.append(this.f52894c);
        sb.append(", chatSession=");
        sb.append(this.d);
        sb.append(", suggestions=");
        sb.append(this.f52895e);
        sb.append(", hasAICompanionVideoBeenDisplayed=");
        sb.append(this.f52896f);
        sb.append(", isCopySessionIdEnabled=");
        fc.y(sb, this.g, ", isLoadingAnswer=", this.f52897h, ", chatSessionHistory=");
        return a.o(sb, this.f52898i, ")");
    }

    public AICompanionViewState(boolean z, AICompanionOnboardingUiModel aICompanionOnboardingUiModel, String str, ChatSessionUiModel chatSessionUiModel, List<String> list, Boolean bool, boolean z2, boolean z3, List<ChatHistoryUiModel> list2) {
        str.getClass();
        chatSessionUiModel.getClass();
        list.getClass();
        list2.getClass();
        this.f52892a = z;
        this.f52893b = aICompanionOnboardingUiModel;
        this.f52894c = str;
        this.d = chatSessionUiModel;
        this.f52895e = list;
        this.f52896f = bool;
        this.g = z2;
        this.f52897h = z3;
        this.f52898i = list2;
    }

    public AICompanionViewState() {
        this(false, null, null, null, null, null, false, false, null, 511, null);
    }
}
