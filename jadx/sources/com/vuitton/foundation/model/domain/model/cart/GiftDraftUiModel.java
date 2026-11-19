package com.vuitton.foundation.model.domain.model.cart;

import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\fB9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;", "", "", "isBlank", "", "draftText", "isValid", "isConfirmEnabled", "", "linesLeft", "<init>", "(ZLjava/lang/String;ZZI)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GiftDraftUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f66972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f66974c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f66975e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel$Companion;", "", "", "MAX_LINES", "I", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ GiftDraftUiModel(boolean z, String str, boolean z2, boolean z3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? "" : str, (i3 & 4) != 0 ? true : z2, (i3 & 8) != 0 ? false : z3, (i3 & 16) != 0 ? 6 : i2);
    }

    public static GiftDraftUiModel a(GiftDraftUiModel giftDraftUiModel, boolean z, String str, boolean z2, int i2, int i3) {
        if ((i3 & 1) != 0) {
            z = giftDraftUiModel.f66972a;
        }
        boolean z3 = z;
        if ((i3 & 2) != 0) {
            str = giftDraftUiModel.f66973b;
        }
        String str2 = str;
        boolean z4 = (i3 & 8) != 0 ? giftDraftUiModel.d : true;
        if ((i3 & 16) != 0) {
            i2 = giftDraftUiModel.f66975e;
        }
        giftDraftUiModel.getClass();
        str2.getClass();
        return new GiftDraftUiModel(z3, str2, z2, z4, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GiftDraftUiModel)) {
            return false;
        }
        GiftDraftUiModel giftDraftUiModel = (GiftDraftUiModel) obj;
        return this.f66972a == giftDraftUiModel.f66972a && Intrinsics.c(this.f66973b, giftDraftUiModel.f66973b) && this.f66974c == giftDraftUiModel.f66974c && this.d == giftDraftUiModel.d && this.f66975e == giftDraftUiModel.f66975e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f66975e) + o60.b(o60.b(fc.b(Boolean.hashCode(this.f66972a) * 31, 31, this.f66973b), 31, this.f66974c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GiftDraftUiModel(isBlank=");
        sb.append(this.f66972a);
        sb.append(", draftText=");
        sb.append(this.f66973b);
        sb.append(", isValid=");
        fc.y(sb, this.f66974c, ", isConfirmEnabled=", this.d, ", linesLeft=");
        return a.i(this.f66975e, ")", sb);
    }

    public GiftDraftUiModel(boolean z, String str, boolean z2, boolean z3, int i2) {
        str.getClass();
        this.f66972a = z;
        this.f66973b = str;
        this.f66974c = z2;
        this.d = z3;
        this.f66975e = i2;
    }

    public GiftDraftUiModel() {
        this(false, null, false, false, 0, 31, null);
    }
}
