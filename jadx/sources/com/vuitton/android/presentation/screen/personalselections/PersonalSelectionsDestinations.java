package com.vuitton.android.presentation.screen.personalselections;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "", "ToFullScreenVideo", "ToFullScreenImage", "ToProductDetailPage", "ToLoginPage", "ToRegisterPage", "ToWelcomePage", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToWelcomePage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsDestinations {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenImage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "", "", "imageList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToFullScreenImage implements PersonalSelectionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62381a;

        public ToFullScreenImage(List<String> list) {
            list.getClass();
            this.f62381a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToFullScreenImage) && Intrinsics.c(this.f62381a, ((ToFullScreenImage) obj).f62381a);
        }

        public final int hashCode() {
            return this.f62381a.hashCode();
        }

        public final String toString() {
            return d21.o("ToFullScreenImage(imageList=", ")", this.f62381a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToFullScreenVideo;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToFullScreenVideo implements PersonalSelectionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62382a;

        public ToFullScreenVideo(String str) {
            str.getClass();
            this.f62382a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToFullScreenVideo) && Intrinsics.c(this.f62382a, ((ToFullScreenVideo) obj).f62382a);
        }

        public final int hashCode() {
            return this.f62382a.hashCode();
        }

        public final String toString() {
            return fc.h("ToFullScreenVideo(url=", this.f62382a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLoginPage implements PersonalSelectionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToLoginPage f62383a = new ToLoginPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToLoginPage);
        }

        public final int hashCode() {
            return -806235325;
        }

        public final String toString() {
            return "ToLoginPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToProductDetailPage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToProductDetailPage implements PersonalSelectionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62384a;

        public ToProductDetailPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            this.f62384a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToProductDetailPage)) {
                return false;
            }
            String str = ((ToProductDetailPage) obj).f62384a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62384a.equals(str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f62384a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("ToProductDetailPage(sku=", this.f62384a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRegisterPage implements PersonalSelectionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToRegisterPage f62385a = new ToRegisterPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToRegisterPage);
        }

        public final int hashCode() {
            return -1696649657;
        }

        public final String toString() {
            return "ToRegisterPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations$ToWelcomePage;", "Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWelcomePage implements PersonalSelectionsDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToWelcomePage f62386a = new ToWelcomePage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToWelcomePage);
        }

        public final int hashCode() {
            return 1381964796;
        }

        public final String toString() {
            return "ToWelcomePage";
        }
    }
}
