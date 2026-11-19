package com.vuitton.android.presentation.screen.spotlight;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;", "", "ToSpotlightPage", "ToProductPage", "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;", "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SpotlightDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToSpotlightPage;", "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;", "", "collectionId", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToSpotlightPage implements SpotlightDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64534a;

        public ToSpotlightPage(String str) {
            str.getClass();
            this.f64534a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToSpotlightPage) && Intrinsics.c(this.f64534a, ((ToSpotlightPage) obj).f64534a);
        }

        public final int hashCode() {
            return this.f64534a.hashCode();
        }

        public final String toString() {
            return fc.h("ToSpotlightPage(collectionId=", this.f64534a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations$ToProductPage;", "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "isExclusiveSale", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToProductPage implements SpotlightDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f64532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f64533b;

        public ToProductPage(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f64532a = str;
            this.f64533b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToProductPage)) {
                return false;
            }
            ToProductPage toProductPage = (ToProductPage) obj;
            String str = toProductPage.f64532a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f64532a, str) && this.f64533b == toProductPage.f64533b;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Boolean.hashCode(this.f64533b) + (this.f64532a.hashCode() * 31);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return d21.m("ToProductPage(sku=", this.f64532a, ", isExclusiveSale=", ")", this.f64533b);
        }

        public /* synthetic */ ToProductPage(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z, null);
        }
    }
}
