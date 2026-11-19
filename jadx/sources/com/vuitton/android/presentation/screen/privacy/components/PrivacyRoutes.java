package com.vuitton.android.presentation.screen.privacy.components;

import defpackage.gp0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0004\t\n\u000b\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;", "", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "Privacy", "PrivacyPreCompliance", "PrivacyPiplCbdt", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class PrivacyRoutes {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f63383a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(7));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PrivacyRoutes> serializer() {
            return (KSerializer) PrivacyRoutes.f63383a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Privacy extends PrivacyRoutes {
        public static final Privacy INSTANCE = new Privacy(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f63384b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(8));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Privacy);
        }

        public final int hashCode() {
            return 587874265;
        }

        public final KSerializer<Privacy> serializer() {
            return (KSerializer) f63384b.getF71699b();
        }

        public final String toString() {
            return "Privacy";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PrivacyPiplCbdt extends PrivacyRoutes {
        public static final PrivacyPiplCbdt INSTANCE = new PrivacyPiplCbdt(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f63385b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(9));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PrivacyPiplCbdt);
        }

        public final int hashCode() {
            return -329626755;
        }

        public final KSerializer<PrivacyPiplCbdt> serializer() {
            return (KSerializer) f63385b.getF71699b();
        }

        public final String toString() {
            return "PrivacyPiplCbdt";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;", "Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PrivacyPreCompliance extends PrivacyRoutes {
        public static final PrivacyPreCompliance INSTANCE = new PrivacyPreCompliance(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f63386b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(10));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PrivacyPreCompliance);
        }

        public final int hashCode() {
            return -1310996539;
        }

        public final KSerializer<PrivacyPreCompliance> serializer() {
            return (KSerializer) f63386b.getF71699b();
        }

        public final String toString() {
            return "PrivacyPreCompliance";
        }
    }

    public /* synthetic */ PrivacyRoutes(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public PrivacyRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
