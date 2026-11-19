package com.vuitton.android.presentation.screen.orders.components.exchange;

import defpackage.fc;
import defpackage.wq0;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bp\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute;", "", "Reason", "Selection", "ReturnSummary", "ExchangeVariation", "ExchangeReview", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeVariation;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Reason;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Selection;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ReturnOrExchangeRoute {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeVariation;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class ExchangeVariation implements ReturnOrExchangeRoute {
        public static final ExchangeVariation INSTANCE = new ExchangeVariation();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60170a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(26));

        public final KSerializer<ExchangeVariation> serializer() {
            return (KSerializer) f60170a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Reason;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Reason implements ReturnOrExchangeRoute {
        public static final Reason INSTANCE = new Reason();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60171a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(27));

        public final KSerializer<Reason> serializer() {
            return (KSerializer) f60171a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class ReturnSummary implements ReturnOrExchangeRoute {
        public static final ReturnSummary INSTANCE = new ReturnSummary();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60172a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(28));

        public final KSerializer<ReturnSummary> serializer() {
            return (KSerializer) f60172a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Selection;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Selection implements ReturnOrExchangeRoute {
        public static final Selection INSTANCE = new Selection();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f60173a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new wq0(29));

        public final KSerializer<Selection> serializer() {
            return (KSerializer) f60173a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute;", "", "skuToRequest", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ExchangeReview implements ReturnOrExchangeRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60168a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ExchangeReview> serializer() {
                return ReturnOrExchangeRoute$ExchangeReview$$serializer.f60169a;
            }
        }

        public /* synthetic */ ExchangeReview(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 == (i2 & 1)) {
                this.f60168a = str;
            } else {
                PluginExceptionsKt.b(i2, 1, ReturnOrExchangeRoute$ExchangeReview$$serializer.f60169a.getF19838b());
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ExchangeReview) && Intrinsics.c(this.f60168a, ((ExchangeReview) obj).f60168a);
        }

        public final int hashCode() {
            return this.f60168a.hashCode();
        }

        public final String toString() {
            return fc.h("ExchangeReview(skuToRequest=", this.f60168a, ")");
        }

        public ExchangeReview(String str) {
            str.getClass();
            this.f60168a = str;
        }
    }
}
