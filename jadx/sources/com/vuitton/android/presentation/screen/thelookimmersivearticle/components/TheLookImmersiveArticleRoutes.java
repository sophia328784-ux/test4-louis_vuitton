package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import defpackage.l31;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes;", "", "LookList", "LookDetail", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookDetail;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookList;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleRoutes {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookDetail;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LookDetail extends TheLookImmersiveArticleRoutes {
        public static final LookDetail INSTANCE = new LookDetail(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f65363a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(3));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LookDetail);
        }

        public final int hashCode() {
            return -1965178721;
        }

        public final KSerializer<LookDetail> serializer() {
            return (KSerializer) f65363a.getF71699b();
        }

        public final String toString() {
            return "LookDetail";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes$LookList;", "Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LookList extends TheLookImmersiveArticleRoutes {
        public static final LookList INSTANCE = new LookList(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f65364a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(4));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LookList);
        }

        public final int hashCode() {
            return -193981332;
        }

        public final KSerializer<LookList> serializer() {
            return (KSerializer) f65364a.getF71699b();
        }

        public final String toString() {
            return "LookList";
        }
    }

    public TheLookImmersiveArticleRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
