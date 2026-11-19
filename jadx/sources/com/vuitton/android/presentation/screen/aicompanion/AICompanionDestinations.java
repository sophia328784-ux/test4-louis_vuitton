package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import defpackage.d21;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;", "", "ToProductPage", "ToWelcomePage", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AICompanionDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToWelcomePage;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWelcomePage implements AICompanionDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f52715a;

        public ToWelcomePage(LoginContext loginContext) {
            loginContext.getClass();
            this.f52715a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWelcomePage) && this.f52715a == ((ToWelcomePage) obj).f52715a;
        }

        public final int hashCode() {
            return this.f52715a.hashCode();
        }

        public final String toString() {
            return "ToWelcomePage(loginContext=" + this.f52715a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skuIdUiModel", "", "isExclusiveSale", "", "rmsCode", "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;", "catalogMode", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToProductPage implements AICompanionDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f52713b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f52714c;
        public final CatalogMode d;

        public /* synthetic */ ToProductPage(String str, boolean z, String str2, CatalogMode catalogMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : catalogMode, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToProductPage)) {
                return false;
            }
            ToProductPage toProductPage = (ToProductPage) obj;
            String str = toProductPage.f52712a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f52712a, str) && this.f52713b == toProductPage.f52713b && Intrinsics.c(this.f52714c, toProductPage.f52714c) && this.d == toProductPage.d;
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            int iB = o60.b(this.f52712a.hashCode() * 31, 31, this.f52713b);
            String str = this.f52714c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            CatalogMode catalogMode = this.d;
            return iHashCode + (catalogMode != null ? catalogMode.hashCode() : 0);
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            StringBuilder sbS = d21.s("ToProductPage(skuIdUiModel=", this.f52712a, ", isExclusiveSale=", ", rmsCode=", this.f52713b);
            sbS.append(this.f52714c);
            sbS.append(", catalogMode=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        public ToProductPage(String str, boolean z, String str2, CatalogMode catalogMode, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f52712a = str;
            this.f52713b = z;
            this.f52714c = str2;
            this.d = catalogMode;
        }
    }
}
