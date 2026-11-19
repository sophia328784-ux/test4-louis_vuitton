package com.vuitton.android.presentation.screen.thankyou.models;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000bB1\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;", "", "", "rate", "", "message", "charactersLeft", "", "isSubmitEnabled", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;IZ)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThankYouFeedbackUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f65285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65287c;
    public final boolean d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel$Companion;", "", "", "MAX_FEEDBACK_CHARACTERS", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ ThankYouFeedbackUiModel(Integer num, String str, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : num, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? 200 : i2, (i3 & 8) != 0 ? false : z);
    }

    public static ThankYouFeedbackUiModel a(ThankYouFeedbackUiModel thankYouFeedbackUiModel, Integer num, String str, int i2, boolean z, int i3) {
        if ((i3 & 1) != 0) {
            num = thankYouFeedbackUiModel.f65285a;
        }
        if ((i3 & 2) != 0) {
            str = thankYouFeedbackUiModel.f65286b;
        }
        if ((i3 & 4) != 0) {
            i2 = thankYouFeedbackUiModel.f65287c;
        }
        if ((i3 & 8) != 0) {
            z = thankYouFeedbackUiModel.d;
        }
        thankYouFeedbackUiModel.getClass();
        str.getClass();
        return new ThankYouFeedbackUiModel(num, str, i2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThankYouFeedbackUiModel)) {
            return false;
        }
        ThankYouFeedbackUiModel thankYouFeedbackUiModel = (ThankYouFeedbackUiModel) obj;
        return Intrinsics.c(this.f65285a, thankYouFeedbackUiModel.f65285a) && Intrinsics.c(this.f65286b, thankYouFeedbackUiModel.f65286b) && this.f65287c == thankYouFeedbackUiModel.f65287c && this.d == thankYouFeedbackUiModel.d;
    }

    public final int hashCode() {
        Integer num = this.f65285a;
        return Boolean.hashCode(this.d) + tr.b(this.f65287c, fc.b((num == null ? 0 : num.hashCode()) * 31, 31, this.f65286b), 31);
    }

    public final String toString() {
        return "ThankYouFeedbackUiModel(rate=" + this.f65285a + ", message=" + this.f65286b + ", charactersLeft=" + this.f65287c + ", isSubmitEnabled=" + this.d + ")";
    }

    public ThankYouFeedbackUiModel(Integer num, String str, int i2, boolean z) {
        str.getClass();
        this.f65285a = num;
        this.f65286b = str;
        this.f65287c = i2;
        this.d = z;
    }

    public ThankYouFeedbackUiModel() {
        this(null, null, 0, false, 15, null);
    }
}
