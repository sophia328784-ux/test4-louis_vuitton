package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;", "", "Loading", "Result", "Error", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExchangeSetupResponseUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;", "Generic", "OutOfStock", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$Generic;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$OutOfStock;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends ExchangeSetupResponseUiModel {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$Generic;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Generic implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Generic f60251a = new Generic();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Generic);
            }

            public final int hashCode() {
                return -378630441;
            }

            public final String toString() {
                return "Generic";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$OutOfStock;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OutOfStock implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OutOfStock f60252a = new OutOfStock();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OutOfStock);
            }

            public final int hashCode() {
                return 1831475025;
            }

            public final String toString() {
                return "OutOfStock";
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements ExchangeSetupResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f60253a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 2117447874;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;", "setup", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Result implements ExchangeSetupResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ExchangeSetupUiModel f60254a;

        public Result(ExchangeSetupUiModel exchangeSetupUiModel) {
            exchangeSetupUiModel.getClass();
            this.f60254a = exchangeSetupUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Result) && Intrinsics.c(this.f60254a, ((Result) obj).f60254a);
        }

        public final int hashCode() {
            return this.f60254a.hashCode();
        }

        public final String toString() {
            return "Result(setup=" + this.f60254a + ")";
        }
    }
}
