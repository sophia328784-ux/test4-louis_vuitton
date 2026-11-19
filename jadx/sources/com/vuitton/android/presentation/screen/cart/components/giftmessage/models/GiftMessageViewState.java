package com.vuitton.android.presentation.screen.cart.components.giftmessage.models;

import com.vuitton.foundation.model.domain.model.cart.GiftDraftUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;", "", "Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;", "giftDraftUiModel", "<init>", "(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GiftMessageViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GiftDraftUiModel f55098a;

    public /* synthetic */ GiftMessageViewState(GiftDraftUiModel giftDraftUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new GiftDraftUiModel(false, null, false, false, 0, 31, null) : giftDraftUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GiftMessageViewState) && Intrinsics.c(this.f55098a, ((GiftMessageViewState) obj).f55098a);
    }

    public final int hashCode() {
        return this.f55098a.hashCode();
    }

    public final String toString() {
        return "GiftMessageViewState(giftDraftUiModel=" + this.f55098a + ")";
    }

    public GiftMessageViewState(GiftDraftUiModel giftDraftUiModel) {
        giftDraftUiModel.getClass();
        this.f55098a = giftDraftUiModel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GiftMessageViewState() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
