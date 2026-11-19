package com.vuitton.android.presentation.screen.cart.components.giftmessage;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "name", "description", "Lcom/vuitton/android/presentation/imageloading/compose/ImageData;", "image", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CardItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f55068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel f55069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f55070c;

    public CardItemUiModel(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        stringResourceUiModel.getClass();
        this.f55068a = stringResourceUiModel;
        this.f55069b = stringResourceUiModel2;
        this.f55070c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002c  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof CardItemUiModel) {
                CardItemUiModel cardItemUiModel = (CardItemUiModel) obj;
                if (this.f55068a.equals(cardItemUiModel.f55068a) && Intrinsics.c(this.f55069b, cardItemUiModel.f55069b)) {
                    Object obj2 = cardItemUiModel.f55070c;
                    Object obj3 = this.f55070c;
                    if (obj3 == null) {
                        if (obj2 == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (obj2 == null) {
                        zEquals = false;
                    } else {
                        zEquals = obj3.equals(obj2);
                    }
                    if (!zEquals) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = this.f55068a.hashCode() * 31;
        StringResourceUiModel stringResourceUiModel = this.f55069b;
        int iHashCode2 = (iHashCode + (stringResourceUiModel == null ? 0 : stringResourceUiModel.hashCode())) * 31;
        Object obj = this.f55070c;
        return iHashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        Object obj = this.f55070c;
        String strN = obj == null ? "null" : o60.n("ImageData(raw=", obj, ")");
        StringBuilder sb = new StringBuilder("CardItemUiModel(name=");
        sb.append(this.f55068a);
        sb.append(", description=");
        sb.append(this.f55069b);
        sb.append(", image=");
        return n00.r(strN, ")", sb);
    }
}
