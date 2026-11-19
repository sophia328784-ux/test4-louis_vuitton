package com.airbnb.lottie.compose;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/airbnb/lottie/compose/LottieCompositionSpec;", "", "Asset", "RawRes", "Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;", "Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LottieCompositionSpec {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/airbnb/lottie/compose/LottieCompositionSpec$Asset;", "Lcom/airbnb/lottie/compose/LottieCompositionSpec;", "assetName", "", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @JvmInline
    public static final class Asset implements LottieCompositionSpec {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f22017a;

        public final boolean equals(Object obj) {
            if (obj instanceof Asset) {
                return this.f22017a.equals(((Asset) obj).f22017a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f22017a.hashCode();
        }

        public final String toString() {
            return fc.h("Asset(assetName=", this.f22017a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;", "Lcom/airbnb/lottie/compose/LottieCompositionSpec;", "resId", "", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @JvmInline
    public static final class RawRes implements LottieCompositionSpec {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f22018a;

        public /* synthetic */ RawRes(int i2) {
            this.f22018a = i2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof RawRes) {
                return this.f22018a == ((RawRes) obj).f22018a;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f22018a);
        }

        public final String toString() {
            return n00.m(this.f22018a, "RawRes(resId=", ")");
        }
    }
}
