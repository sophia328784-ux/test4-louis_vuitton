package com.vuitton.foundation.model.domain.model.wishlist;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;", "", "Companion", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class WishlistItemId {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f68288b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f68289c = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68290a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(String str) {
        return fc.h("WishlistItemId(id=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WishlistItemId) {
            return this.f68290a.equals(((WishlistItemId) obj).f68290a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f68290a.hashCode();
    }

    public final String toString() {
        return a(this.f68290a);
    }
}
