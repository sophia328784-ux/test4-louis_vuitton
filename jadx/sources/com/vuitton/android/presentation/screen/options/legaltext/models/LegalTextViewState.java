package com.vuitton.android.presentation.screen.options.legaltext.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/legaltext/models/LegalTextViewState;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "cguContent", "privacyPolicy", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LegalTextViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f59849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel f59850b;

    public LegalTextViewState(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2) {
        stringResourceUiModel.getClass();
        stringResourceUiModel2.getClass();
        this.f59849a = stringResourceUiModel;
        this.f59850b = stringResourceUiModel2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LegalTextViewState)) {
            return false;
        }
        LegalTextViewState legalTextViewState = (LegalTextViewState) obj;
        return Intrinsics.c(this.f59849a, legalTextViewState.f59849a) && Intrinsics.c(this.f59850b, legalTextViewState.f59850b);
    }

    public final int hashCode() {
        return this.f59850b.hashCode() + (this.f59849a.hashCode() * 31);
    }

    public final String toString() {
        return "LegalTextViewState(cguContent=" + this.f59849a + ", privacyPolicy=" + this.f59850b + ")";
    }
}
