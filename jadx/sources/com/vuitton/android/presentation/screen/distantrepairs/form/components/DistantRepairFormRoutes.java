package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import defpackage.rt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes;", "", "Form", "Confirmation", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Confirmation;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Form;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairFormRoutes {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Confirmation;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Confirmation extends DistantRepairFormRoutes {
        public static final Confirmation INSTANCE = new Confirmation(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f57277a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(3));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Confirmation);
        }

        public final int hashCode() {
            return -1450454049;
        }

        public final KSerializer<Confirmation> serializer() {
            return (KSerializer) f57277a.getF71699b();
        }

        public final String toString() {
            return "Confirmation";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Form;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Form extends DistantRepairFormRoutes {
        public static final Form INSTANCE = new Form(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f57278a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(4));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Form);
        }

        public final int hashCode() {
            return -800285074;
        }

        public final KSerializer<Form> serializer() {
            return (KSerializer) f57278a.getF71699b();
        }

        public final String toString() {
            return "Form";
        }
    }

    public DistantRepairFormRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
