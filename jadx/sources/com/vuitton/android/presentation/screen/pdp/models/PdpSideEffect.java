package com.vuitton.android.presentation.screen.pdp.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect;", "", "Navigation", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect$Navigation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PdpSideEffect {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect$Navigation;", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect;", "NavigateToCustomization", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect$Navigation$NavigateToCustomization;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Navigation implements PdpSideEffect {

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect$Navigation$NavigateToCustomization;", "Lcom/vuitton/android/presentation/screen/pdp/models/PdpSideEffect$Navigation;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "customizationType", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NavigateToCustomization extends Navigation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f61563a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final CustomizationType f61564b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public NavigateToCustomization(String str, CustomizationType customizationType) {
                super(null);
                str.getClass();
                customizationType.getClass();
                this.f61563a = str;
                this.f61564b = customizationType;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof NavigateToCustomization)) {
                    return false;
                }
                NavigateToCustomization navigateToCustomization = (NavigateToCustomization) obj;
                return Intrinsics.c(this.f61563a, navigateToCustomization.f61563a) && this.f61564b == navigateToCustomization.f61564b;
            }

            public final int hashCode() {
                return this.f61564b.hashCode() + (this.f61563a.hashCode() * 31);
            }

            public final String toString() {
                return "NavigateToCustomization(url=" + this.f61563a + ", customizationType=" + this.f61564b + ")";
            }
        }

        public Navigation(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }
}
