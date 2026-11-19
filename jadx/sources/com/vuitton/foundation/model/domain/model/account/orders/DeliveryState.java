package com.vuitton.foundation.model.domain.model.account.orders;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;", "", "", b.a.f24015b, "title", "", "milestone", "Lcom/vuitton/foundation/model/domain/model/account/orders/State;", "state", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/account/orders/State;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DeliveryState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f66311c;
    public final State d;

    public DeliveryState(String str, String str2, boolean z, State state) {
        str.getClass();
        str2.getClass();
        state.getClass();
        this.f66309a = str;
        this.f66310b = str2;
        this.f66311c = z;
        this.d = state;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeliveryState)) {
            return false;
        }
        DeliveryState deliveryState = (DeliveryState) obj;
        return Intrinsics.c(this.f66309a, deliveryState.f66309a) && Intrinsics.c(this.f66310b, deliveryState.f66310b) && this.f66311c == deliveryState.f66311c && this.d == deliveryState.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + o60.b(fc.b(this.f66309a.hashCode() * 31, 31, this.f66310b), 31, this.f66311c);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DeliveryState(id=", this.f66309a, ", title=", this.f66310b, ", milestone=");
        sbS.append(this.f66311c);
        sbS.append(", state=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
