package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;", "", "Loading", "Success", "Error", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ExchangeSubmitResponseUiModel {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;", "Generic", "OutOfStock", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$Generic;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$OutOfStock;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends ExchangeSubmitResponseUiModel {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$Generic;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Generic implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Generic f60263a = new Generic();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Generic);
            }

            public final int hashCode() {
                return 1761494914;
            }

            public final String toString() {
                return "Generic";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$OutOfStock;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OutOfStock implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OutOfStock f60264a = new OutOfStock();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OutOfStock);
            }

            public final int hashCode() {
                return -483583290;
            }

            public final String toString() {
                return "OutOfStock";
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements ExchangeSubmitResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f60265a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1870398893;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Success;", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements ExchangeSubmitResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Success f60266a = new Success();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Success);
        }

        public final int hashCode() {
            return -333421452;
        }

        public final String toString() {
            return "Success";
        }
    }
}
