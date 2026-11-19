package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import defpackage.ul0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;", "", "Detail", "Look", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Look;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionDetailRoutes {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Detail extends PersonalSelectionDetailRoutes {
        public static final Detail INSTANCE = new Detail(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f62419a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(9));

        public final KSerializer<Detail> serializer() {
            return (KSerializer) f62419a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Look;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Look extends PersonalSelectionDetailRoutes {
        public static final Look INSTANCE = new Look(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f62420a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(10));

        public final KSerializer<Look> serializer() {
            return (KSerializer) f62420a.getF71699b();
        }
    }

    public PersonalSelectionDetailRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
