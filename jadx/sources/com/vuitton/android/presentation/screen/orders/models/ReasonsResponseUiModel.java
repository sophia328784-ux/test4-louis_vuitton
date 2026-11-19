package com.vuitton.android.presentation.screen.orders.models;

import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;", "", "Loading", "Result", "Error", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel$Result;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ReasonsResponseUiModel {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel$Error;", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;", "", "message", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error implements ReasonsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60400a;

        public Error(String str) {
            str.getClass();
            this.f60400a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && Intrinsics.c(this.f60400a, ((Error) obj).f60400a);
        }

        public final int hashCode() {
            return this.f60400a.hashCode();
        }

        public final String toString() {
            return fc.h("Error(message=", this.f60400a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel$Loading;", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements ReasonsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f60401a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 2063955981;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel$Result;", "Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;", "", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;", "reasons", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Result implements ReasonsResponseUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60402a;

        public Result(List<OrderReturnReasonUiModel> list) {
            list.getClass();
            this.f60402a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Result) && Intrinsics.c(this.f60402a, ((Result) obj).f60402a);
        }

        public final int hashCode() {
            return this.f60402a.hashCode();
        }

        public final String toString() {
            return d21.o("Result(reasons=", ")", this.f60402a);
        }
    }
}
