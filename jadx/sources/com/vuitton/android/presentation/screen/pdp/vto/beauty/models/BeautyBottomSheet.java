package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "", "Loading", "AddToCartMultiple", "BackInStock", "Permissions", "Tutorial", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$AddToCartMultiple;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Loading;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Permissions;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Tutorial;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BeautyBottomSheet {

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$AddToCartMultiple;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;", "items", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AddToCartMultiple implements BeautyBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f62130a;

        public AddToCartMultiple(List<BeautyAddToCartUiModel> list) {
            list.getClass();
            this.f62130a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AddToCartMultiple) && Intrinsics.c(this.f62130a, ((AddToCartMultiple) obj).f62130a);
        }

        public final int hashCode() {
            return this.f62130a.hashCode();
        }

        public final String toString() {
            return d21.o("AddToCartMultiple(items=", ")", this.f62130a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;", "item", "", "isLegalConsentRequired", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class BackInStock implements BeautyBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BeautyAddToCartUiModel f62131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f62132b;

        public BackInStock(BeautyAddToCartUiModel beautyAddToCartUiModel, boolean z) {
            beautyAddToCartUiModel.getClass();
            this.f62131a = beautyAddToCartUiModel;
            this.f62132b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BackInStock)) {
                return false;
            }
            BackInStock backInStock = (BackInStock) obj;
            return Intrinsics.c(this.f62131a, backInStock.f62131a) && this.f62132b == backInStock.f62132b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f62132b) + (this.f62131a.hashCode() * 31);
        }

        public final String toString() {
            return "BackInStock(item=" + this.f62131a + ", isLegalConsentRequired=" + this.f62132b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Loading;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Loading implements BeautyBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f62133a = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return 1674620550;
        }

        public final String toString() {
            return "Loading";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Permissions;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;", DbParams.KEY_DATA, "<init>", "(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Permissions implements BeautyBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PermissionsBottomSheet f62134a;

        public Permissions(PermissionsBottomSheet permissionsBottomSheet) {
            permissionsBottomSheet.getClass();
            this.f62134a = permissionsBottomSheet;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Permissions) && Intrinsics.c(this.f62134a, ((Permissions) obj).f62134a);
        }

        public final int hashCode() {
            return this.f62134a.hashCode();
        }

        public final String toString() {
            return "Permissions(data=" + this.f62134a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Tutorial;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Tutorial implements BeautyBottomSheet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Tutorial f62135a = new Tutorial();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Tutorial);
        }

        public final int hashCode() {
            return -1279326380;
        }

        public final String toString() {
            return "Tutorial";
        }
    }
}
