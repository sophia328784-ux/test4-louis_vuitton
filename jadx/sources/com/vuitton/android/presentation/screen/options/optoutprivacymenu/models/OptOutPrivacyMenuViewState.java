package com.vuitton.android.presentation.screen.options.optoutprivacymenu.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "emailObject", "", "emailUsAddress", "contactUsUrl", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OptOutPrivacyMenuViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f59982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f59983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f59984c;

    public /* synthetic */ OptOutPrivacyMenuViewState(StringResourceUiModel stringResourceUiModel, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? StringResourceUiModel.Empty.f51825b : stringResourceUiModel, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OptOutPrivacyMenuViewState)) {
            return false;
        }
        OptOutPrivacyMenuViewState optOutPrivacyMenuViewState = (OptOutPrivacyMenuViewState) obj;
        return Intrinsics.c(this.f59982a, optOutPrivacyMenuViewState.f59982a) && Intrinsics.c(this.f59983b, optOutPrivacyMenuViewState.f59983b) && Intrinsics.c(this.f59984c, optOutPrivacyMenuViewState.f59984c);
    }

    public final int hashCode() {
        return this.f59984c.hashCode() + fc.b(this.f59982a.hashCode() * 31, 31, this.f59983b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OptOutPrivacyMenuViewState(emailObject=");
        sb.append(this.f59982a);
        sb.append(", emailUsAddress=");
        sb.append(this.f59983b);
        sb.append(", contactUsUrl=");
        return n00.r(this.f59984c, ")", sb);
    }

    public OptOutPrivacyMenuViewState(StringResourceUiModel stringResourceUiModel, String str, String str2) {
        stringResourceUiModel.getClass();
        str.getClass();
        str2.getClass();
        this.f59982a = stringResourceUiModel;
        this.f59983b = str;
        this.f59984c = str2;
    }

    public OptOutPrivacyMenuViewState() {
        this(null, null, null, 7, null);
    }
}
