package com.vuitton.android.presentation.screen.personalselections;

import defpackage.fc;
import defpackage.ul0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;", "", "List", "InStoreDetail", "AdvisorCurationDetail", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$List;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsRoute {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$List;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class List extends PersonalSelectionsRoute {
        public static final List INSTANCE = new List(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f62398a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ul0(19));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof List);
        }

        public final int hashCode() {
            return 1032390610;
        }

        public final KSerializer<List> serializer() {
            return (KSerializer) f62398a.getF71699b();
        }

        public final String toString() {
            return "List";
        }
    }

    public PersonalSelectionsRoute(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;", "", com.batch.android.s.b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AdvisorCurationDetail extends PersonalSelectionsRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62394a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AdvisorCurationDetail> serializer() {
                return PersonalSelectionsRoute$AdvisorCurationDetail$$serializer.f62395a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AdvisorCurationDetail(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, PersonalSelectionsRoute$AdvisorCurationDetail$$serializer.f62395a.getF19838b());
                throw null;
            }
            this.f62394a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AdvisorCurationDetail) && Intrinsics.c(this.f62394a, ((AdvisorCurationDetail) obj).f62394a);
        }

        public final int hashCode() {
            return this.f62394a.hashCode();
        }

        public final String toString() {
            return fc.h("AdvisorCurationDetail(id=", this.f62394a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdvisorCurationDetail(String str) {
            super(null);
            str.getClass();
            this.f62394a = str;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;", "", com.batch.android.s.b.a.f24015b, "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class InStoreDetail extends PersonalSelectionsRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62396a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<InStoreDetail> serializer() {
                return PersonalSelectionsRoute$InStoreDetail$$serializer.f62397a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ InStoreDetail(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, PersonalSelectionsRoute$InStoreDetail$$serializer.f62397a.getF19838b());
                throw null;
            }
            this.f62396a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InStoreDetail) && Intrinsics.c(this.f62396a, ((InStoreDetail) obj).f62396a);
        }

        public final int hashCode() {
            return this.f62396a.hashCode();
        }

        public final String toString() {
            return fc.h("InStoreDetail(id=", this.f62396a, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InStoreDetail(String str) {
            super(null);
            str.getClass();
            this.f62396a = str;
        }
    }
}
