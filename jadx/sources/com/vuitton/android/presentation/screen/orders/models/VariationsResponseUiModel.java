package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;", "", "Loading", "Result", "Error", "Skip", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface VariationsResponseUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "message", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements VariationsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringResourceUiModel f60428a;

        public Error(StringResourceUiModel stringResourceUiModel) {
            stringResourceUiModel.getClass();
            this.f60428a = stringResourceUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && Intrinsics.c(this.f60428a, ((Error) obj).f60428a);
        }

        public final int hashCode() {
            return this.f60428a.hashCode();
        }

        public final String toString() {
            return "Error(message=" + this.f60428a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements VariationsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f60429a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1581126248;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;", "Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;", "categories", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Result implements VariationsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ProductExchangeCategoryUiModel f60430a;

        public Result(ProductExchangeCategoryUiModel productExchangeCategoryUiModel) {
            productExchangeCategoryUiModel.getClass();
            this.f60430a = productExchangeCategoryUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Result) && Intrinsics.c(this.f60430a, ((Result) obj).f60430a);
        }

        public final int hashCode() {
            return this.f60430a.hashCode();
        }

        public final String toString() {
            return "Result(categories=" + this.f60430a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;", "Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Skip implements VariationsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Skip f60431a = new Skip();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Skip);
        }

        public final int hashCode() {
            return 1633559507;
        }

        public final String toString() {
            return "Skip";
        }
    }
}
