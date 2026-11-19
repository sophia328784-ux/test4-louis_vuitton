package com.vuitton.android.presentation.screen.cart.models;

import android.os.Parcelable;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bå\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u0018\b\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0013j\b\u0012\u0004\u0012\u00020\u0014`\u0015\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0004\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\t\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001b\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u0004¢\u0006\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;", "", "Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;", "cart", "", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "bundleChildItems", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;", "revealedItem", "", "isCartLoading", "isContributionLoading", "isError", "isEmpty", "Lkotlin/Pair;", "", "outOfStockError", "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;", "featureFlags", "Ljava/util/ArrayList;", "Lcom/vuitton/android/presentation/screen/cart/GenericNotification;", "Lkotlin/collections/ArrayList;", "cartNotifications", "Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;", "perfumeSampleList", "perfumeSampleTemporaryList", "swipeItemEnabled", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;", "cartContribution", "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;", "giftCardItems", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeCartViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartUiModel f55204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f55205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55206c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f55207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f55208f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Pair f55209h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NativeCartFeatureFlags f55210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f55211j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f55212k;
    public final List l;
    public final boolean m;
    public final ContactUsUiModel n;
    public final CartContributionUiModel o;
    public final List p;

    public NativeCartViewState(CartUiModel cartUiModel, List list, String str, boolean z, boolean z2, boolean z3, boolean z4, Pair pair, NativeCartFeatureFlags nativeCartFeatureFlags, ArrayList arrayList, List list2, List list3, boolean z5, ContactUsUiModel contactUsUiModel, CartContributionUiModel cartContributionUiModel, List list4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : cartUiModel, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? false : z3, (i2 & 64) != 0 ? false : z4, (i2 & 128) != 0 ? null : pair, (i2 & 256) != 0 ? new NativeCartFeatureFlags(false, false, false, 7, null) : nativeCartFeatureFlags, (i2 & 512) != 0 ? new ArrayList() : arrayList, (i2 & 1024) != 0 ? EmptyList.f71768b : list2, (i2 & 2048) != 0 ? EmptyList.f71768b : list3, (i2 & 4096) == 0 ? z5 : false, (i2 & 8192) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, (i2 & 16384) == 0 ? cartContributionUiModel : null, (i2 & 32768) != 0 ? EmptyList.f71768b : list4, null);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002c  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeCartViewState)) {
            return false;
        }
        NativeCartViewState nativeCartViewState = (NativeCartViewState) obj;
        if (!Intrinsics.c(this.f55204a, nativeCartViewState.f55204a) || !Intrinsics.c(this.f55205b, nativeCartViewState.f55205b)) {
            return false;
        }
        String str = nativeCartViewState.f55206c;
        String str2 = this.f55206c;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
            zC = Intrinsics.c(str2, str);
        }
        return zC && this.d == nativeCartViewState.d && this.f55207e == nativeCartViewState.f55207e && this.f55208f == nativeCartViewState.f55208f && this.g == nativeCartViewState.g && Intrinsics.c(this.f55209h, nativeCartViewState.f55209h) && Intrinsics.c(this.f55210i, nativeCartViewState.f55210i) && Intrinsics.c(this.f55211j, nativeCartViewState.f55211j) && Intrinsics.c(this.f55212k, nativeCartViewState.f55212k) && Intrinsics.c(this.l, nativeCartViewState.l) && this.m == nativeCartViewState.m && Intrinsics.c(this.n, nativeCartViewState.n) && Intrinsics.c(this.o, nativeCartViewState.o) && Intrinsics.c(this.p, nativeCartViewState.p);
    }

    public final int hashCode() {
        int iHashCode;
        CartUiModel cartUiModel = this.f55204a;
        int iHashCode2 = (cartUiModel == null ? 0 : cartUiModel.hashCode()) * 31;
        List list = this.f55205b;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.f55206c;
        if (str == null) {
            iHashCode = 0;
        } else {
            Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
            iHashCode = str.hashCode();
        }
        int iB = o60.b(o60.b(o60.b(o60.b((iHashCode3 + iHashCode) * 31, 31, this.d), 31, this.f55207e), 31, this.f55208f), 31, this.g);
        Pair pair = this.f55209h;
        int iHashCode4 = (this.n.hashCode() + o60.b(n00.a(n00.a((this.f55211j.hashCode() + ((this.f55210i.hashCode() + ((iB + (pair == null ? 0 : pair.hashCode())) * 31)) * 31)) * 31, 31, this.f55212k), 31, this.l), 31, this.m)) * 31;
        CartContributionUiModel cartContributionUiModel = this.o;
        return this.p.hashCode() + ((iHashCode4 + (cartContributionUiModel != null ? cartContributionUiModel.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String strH;
        String str = this.f55206c;
        if (str == null) {
            strH = "null";
        } else {
            Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
            strH = fc.h("CartItemIdUiModel(id=", str, ")");
        }
        StringBuilder sb = new StringBuilder("NativeCartViewState(cart=");
        sb.append(this.f55204a);
        sb.append(", bundleChildItems=");
        sb.append(this.f55205b);
        sb.append(", revealedItem=");
        pq0.A(strH, ", isCartLoading=", ", isContributionLoading=", sb, this.d);
        fc.y(sb, this.f55207e, ", isError=", this.f55208f, ", isEmpty=");
        sb.append(this.g);
        sb.append(", outOfStockError=");
        sb.append(this.f55209h);
        sb.append(", featureFlags=");
        sb.append(this.f55210i);
        sb.append(", cartNotifications=");
        sb.append(this.f55211j);
        sb.append(", perfumeSampleList=");
        a.C(sb, this.f55212k, ", perfumeSampleTemporaryList=", this.l, ", swipeItemEnabled=");
        sb.append(this.m);
        sb.append(", contactUsUiModel=");
        sb.append(this.n);
        sb.append(", cartContribution=");
        sb.append(this.o);
        sb.append(", giftCardItems=");
        sb.append(this.p);
        sb.append(")");
        return sb.toString();
    }

    public NativeCartViewState(CartUiModel cartUiModel, List list, String str, boolean z, boolean z2, boolean z3, boolean z4, Pair pair, NativeCartFeatureFlags nativeCartFeatureFlags, ArrayList arrayList, List list2, List list3, boolean z5, ContactUsUiModel contactUsUiModel, CartContributionUiModel cartContributionUiModel, List list4, DefaultConstructorMarker defaultConstructorMarker) {
        nativeCartFeatureFlags.getClass();
        arrayList.getClass();
        list2.getClass();
        list3.getClass();
        contactUsUiModel.getClass();
        list4.getClass();
        this.f55204a = cartUiModel;
        this.f55205b = list;
        this.f55206c = str;
        this.d = z;
        this.f55207e = z2;
        this.f55208f = z3;
        this.g = z4;
        this.f55209h = pair;
        this.f55210i = nativeCartFeatureFlags;
        this.f55211j = arrayList;
        this.f55212k = list2;
        this.l = list3;
        this.m = z5;
        this.n = contactUsUiModel;
        this.o = cartContributionUiModel;
        this.p = list4;
    }
}
