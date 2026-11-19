package com.vuitton.android.presentation.screen.wishlist;

import defpackage.r61;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes;", "", "Wishlist", "Share", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Share;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Wishlist;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistRoutes {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Share;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Share extends WishlistRoutes {
        public static final Share INSTANCE = new Share(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f65615a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new r61(9));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Share);
        }

        public final int hashCode() {
            return -2060156982;
        }

        public final KSerializer<Share> serializer() {
            return (KSerializer) f65615a.getF71699b();
        }

        public final String toString() {
            return "Share";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes$Wishlist;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Wishlist extends WishlistRoutes {
        public static final Wishlist INSTANCE = new Wishlist(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f65616a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new r61(10));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Wishlist);
        }

        public final int hashCode() {
            return 721222138;
        }

        public final KSerializer<Wishlist> serializer() {
            return (KSerializer) f65616a.getF71699b();
        }

        public final String toString() {
            return "Wishlist";
        }
    }

    public WishlistRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
