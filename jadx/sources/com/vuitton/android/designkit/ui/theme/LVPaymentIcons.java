package com.vuitton.android.designkit.ui.theme;

import com.vuitton.android.R;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;", "", "", "paypal", "visa", "amex", "mastercard", "<init>", "(IIII)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVPaymentIcons {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f48406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f48407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f48408c;
    public final int d;

    public /* synthetic */ LVPaymentIcons(int i2, int i3, int i4, int i5, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? R.drawable.ic_lv_payment_paypal : i2, (i6 & 2) != 0 ? R.drawable.ic_lv_payment_visa : i3, (i6 & 4) != 0 ? R.drawable.ic_lv_payment_amex : i4, (i6 & 8) != 0 ? R.drawable.ic_lv_payment_mastercard : i5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVPaymentIcons)) {
            return false;
        }
        LVPaymentIcons lVPaymentIcons = (LVPaymentIcons) obj;
        return this.f48406a == lVPaymentIcons.f48406a && this.f48407b == lVPaymentIcons.f48407b && this.f48408c == lVPaymentIcons.f48408c && this.d == lVPaymentIcons.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + tr.b(this.f48408c, tr.b(this.f48407b, Integer.hashCode(this.f48406a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = fc.p(this.f48406a, this.f48407b, "LVPaymentIcons(paypal=", ", visa=", ", amex=");
        sbP.append(this.f48408c);
        sbP.append(", mastercard=");
        sbP.append(this.d);
        sbP.append(")");
        return sbP.toString();
    }

    public LVPaymentIcons(int i2, int i3, int i4, int i5) {
        this.f48406a = i2;
        this.f48407b = i3;
        this.f48408c = i4;
        this.d = i5;
    }

    public LVPaymentIcons() {
        this(0, 0, 0, 0, 15, null);
    }
}
