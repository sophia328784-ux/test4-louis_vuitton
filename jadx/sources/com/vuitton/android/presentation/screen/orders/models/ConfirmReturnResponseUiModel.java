package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;", "", "Loading", "Validated", "PartiallyValidated", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel$PartiallyValidated;", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel$Validated;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ConfirmReturnResponseUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements ConfirmReturnResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f60232a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -322865652;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel$PartiallyValidated;", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PartiallyValidated implements ConfirmReturnResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PartiallyValidated f60233a = new PartiallyValidated();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PartiallyValidated);
        }

        public final int hashCode() {
            return 1189036048;
        }

        public final String toString() {
            return "PartiallyValidated";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel$Validated;", "Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Validated implements ConfirmReturnResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Validated f60234a = new Validated();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Validated);
        }

        public final int hashCode() {
            return 750299870;
        }

        public final String toString() {
            return "Validated";
        }
    }
}
