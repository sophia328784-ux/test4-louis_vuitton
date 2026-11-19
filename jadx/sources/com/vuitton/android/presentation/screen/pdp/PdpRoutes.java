package com.vuitton.android.presentation.screen.pdp;

import androidx.navigation3.runtime.NavKey;
import defpackage.ul0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes;", "Landroidx/navigation3/runtime/NavKey;", "Pdp", "ContextualSize", "Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;", "Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PdpRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;", "Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ContextualSize extends PdpRoutes {
        public static final ContextualSize INSTANCE = new ContextualSize(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61134a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(4));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContextualSize);
        }

        public final int hashCode() {
            return 1876512427;
        }

        public final KSerializer<ContextualSize> serializer() {
            return (KSerializer) f61134a.getF71699b();
        }

        public final String toString() {
            return "ContextualSize";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;", "Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Pdp extends PdpRoutes {
        public static final Pdp INSTANCE = new Pdp(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f61135a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(5));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Pdp);
        }

        public final int hashCode() {
            return -588367133;
        }

        public final KSerializer<Pdp> serializer() {
            return (KSerializer) f61135a.getF71699b();
        }

        public final String toString() {
            return "Pdp";
        }
    }

    public PdpRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
