package com.vuitton.android.presentation.screen.orders;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.d21;
import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;", "", "ToCatalogPage", "ToImageViewerPage", "ToWebViewPage", "Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToCatalogPage;", "Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;", "Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OrderDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToCatalogPage;", "Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCatalogPage implements OrderDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToCatalogPage f60087a = new ToCatalogPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToCatalogPage);
        }

        public final int hashCode() {
            return 1439113192;
        }

        public final String toString() {
            return "ToCatalogPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToImageViewerPage;", "Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;", "", "", "images", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToImageViewerPage implements OrderDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f60088a;

        public ToImageViewerPage(List<String> list) {
            list.getClass();
            this.f60088a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToImageViewerPage) && Intrinsics.c(this.f60088a, ((ToImageViewerPage) obj).f60088a);
        }

        public final int hashCode() {
            return this.f60088a.hashCode();
        }

        public final String toString() {
            return d21.o("ToImageViewerPage(images=", ")", this.f60088a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToWebViewPage;", "Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToWebViewPage implements OrderDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f60089a;

        public ToWebViewPage(String str) {
            str.getClass();
            this.f60089a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToWebViewPage) && Intrinsics.c(this.f60089a, ((ToWebViewPage) obj).f60089a);
        }

        public final int hashCode() {
            return this.f60089a.hashCode();
        }

        public final String toString() {
            return fc.h("ToWebViewPage(url=", this.f60089a, ")");
        }
    }
}
