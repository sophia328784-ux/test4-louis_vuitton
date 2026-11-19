package com.vuitton.foundation.model.domain.error.wishlist;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0003\u0003\u0004\u0005\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "Generic", "AlreadyInWishlist", "MaxQuantityReached", "Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;", "Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$Generic;", "Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$MaxQuantityReached;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistError extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66229b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;", "Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class AlreadyInWishlist extends WishlistError {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AlreadyInWishlist(String str) {
            super(str, null);
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$Generic;", "Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Generic extends WishlistError {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Generic(String str) {
            super(str, null);
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$MaxQuantityReached;", "Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MaxQuantityReached extends WishlistError {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MaxQuantityReached(String str) {
            super(str, null);
            str.getClass();
        }
    }

    public WishlistError(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
        this.f66229b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66229b;
    }
}
