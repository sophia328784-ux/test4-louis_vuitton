package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import androidx.navigation3.runtime.NavKey;
import defpackage.w9;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Landroidx/navigation3/runtime/NavKey;", "Vto", "PicturePreview", "ShadeFinderIntro", "ShadeFinderScan", "ShadeFinderResult", "ShadeFinderResultEmpty", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$PicturePreview;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResult;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResultEmpty;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyVtoRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$PicturePreview;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PicturePreview extends BeautyVtoRoutes {
        public static final PicturePreview INSTANCE = new PicturePreview(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61834a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(22));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PicturePreview);
        }

        public final int hashCode() {
            return -1831260899;
        }

        public final KSerializer<PicturePreview> serializer() {
            return (KSerializer) f61834a.getF71699b();
        }

        public final String toString() {
            return "PicturePreview";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ShadeFinderIntro extends BeautyVtoRoutes {
        public static final ShadeFinderIntro INSTANCE = new ShadeFinderIntro(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61835a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(23));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinderIntro);
        }

        public final int hashCode() {
            return 1208981740;
        }

        public final KSerializer<ShadeFinderIntro> serializer() {
            return (KSerializer) f61835a.getF71699b();
        }

        public final String toString() {
            return "ShadeFinderIntro";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResult;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ShadeFinderResult extends BeautyVtoRoutes {
        public static final ShadeFinderResult INSTANCE = new ShadeFinderResult(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61836a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(24));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinderResult);
        }

        public final int hashCode() {
            return -926947939;
        }

        public final KSerializer<ShadeFinderResult> serializer() {
            return (KSerializer) f61836a.getF71699b();
        }

        public final String toString() {
            return "ShadeFinderResult";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResultEmpty;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ShadeFinderResultEmpty extends BeautyVtoRoutes {
        public static final ShadeFinderResultEmpty INSTANCE = new ShadeFinderResultEmpty(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61837a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(25));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinderResultEmpty);
        }

        public final int hashCode() {
            return -1404065360;
        }

        public final KSerializer<ShadeFinderResultEmpty> serializer() {
            return (KSerializer) f61837a.getF71699b();
        }

        public final String toString() {
            return "ShadeFinderResultEmpty";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ShadeFinderScan extends BeautyVtoRoutes {
        public static final ShadeFinderScan INSTANCE = new ShadeFinderScan(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61838a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(26));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShadeFinderScan);
        }

        public final int hashCode() {
            return -376355843;
        }

        public final KSerializer<ShadeFinderScan> serializer() {
            return (KSerializer) f61838a.getF71699b();
        }

        public final String toString() {
            return "ShadeFinderScan";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Vto extends BeautyVtoRoutes {
        public static final Vto INSTANCE = new Vto(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61839a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new w9(27));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Vto);
        }

        public final int hashCode() {
            return 634905374;
        }

        public final KSerializer<Vto> serializer() {
            return (KSerializer) f61839a.getF71699b();
        }

        public final String toString() {
            return "Vto";
        }
    }

    public BeautyVtoRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
