package com.vuitton.android.presentation.screen.cart;

import android.content.Context;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;", "Lcom/vuitton/android/presentation/screen/cart/GenericNotification;", "", "text", "modalTitle", "modalContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CommercialNotification implements GenericNotification {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f54837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f54838c;

    public CommercialNotification(String str, String str2, String str3) {
        str.getClass();
        this.f54836a = str;
        this.f54837b = str2;
        this.f54838c = str3;
    }

    @Override // com.vuitton.android.presentation.screen.cart.GenericNotification
    public final String a(Context context) {
        context.getClass();
        return this.f54836a;
    }

    @Override // com.vuitton.android.presentation.screen.cart.GenericNotification
    public final int getPriority() {
        return 2;
    }
}
