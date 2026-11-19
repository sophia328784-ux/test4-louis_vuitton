package com.vuitton.android.presentation.screen.wishlist.model;

import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bw\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isError", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;", "wishlist", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;", "revealedItem", "storeModeStillValid", "Lkotlin/Result;", "shareResult", "nativeShareEnabled", "", "rmsCode", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WishlistViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f65757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f65759c;
    public final WishlistUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f65760e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f65761f;
    public final Result g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f65762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f65763i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContactUsUiModel f65764j;

    public /* synthetic */ WishlistViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, WishlistUiModel wishlistUiModel, String str, boolean z3, Result result, boolean z4, String str2, ContactUsUiModel contactUsUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? null : wishlistUiModel, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? true : z3, (i2 & 64) != 0 ? null : result, (i2 & 128) != 0 ? false : z4, (i2 & 256) != 0 ? null : str2, (i2 & 512) != 0 ? new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null) : contactUsUiModel, null);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x003a  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistViewState)) {
            return false;
        }
        WishlistViewState wishlistViewState = (WishlistViewState) obj;
        if (!Intrinsics.c(this.f65757a, wishlistViewState.f65757a) || this.f65758b != wishlistViewState.f65758b || this.f65759c != wishlistViewState.f65759c || !Intrinsics.c(this.d, wishlistViewState.d)) {
            return false;
        }
        String str = wishlistViewState.f65760e;
        String str2 = this.f65760e;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
            zC = Intrinsics.c(str2, str);
        }
        return zC && this.f65761f == wishlistViewState.f65761f && Intrinsics.c(this.g, wishlistViewState.g) && this.f65762h == wishlistViewState.f65762h && Intrinsics.c(this.f65763i, wishlistViewState.f65763i) && Intrinsics.c(this.f65764j, wishlistViewState.f65764j);
    }

    public final int hashCode() {
        int iHashCode;
        Object obj;
        int iB = o60.b(o60.b(this.f65757a.hashCode() * 31, 31, this.f65758b), 31, this.f65759c);
        WishlistUiModel wishlistUiModel = this.d;
        int iHashCode2 = (iB + (wishlistUiModel == null ? 0 : wishlistUiModel.hashCode())) * 31;
        String str = this.f65760e;
        if (str == null) {
            iHashCode = 0;
        } else {
            WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
            iHashCode = str.hashCode();
        }
        int iB2 = o60.b((iHashCode2 + iHashCode) * 31, 31, this.f65761f);
        Result result = this.g;
        int iB3 = o60.b((iB2 + ((result == null || (obj = result.f71708b) == null) ? 0 : obj.hashCode())) * 31, 31, this.f65762h);
        String str2 = this.f65763i;
        return this.f65764j.hashCode() + ((iB3 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.f65760e;
        String strA = str == null ? "null" : WishlistIdUiModel.a(str);
        StringBuilder sb = new StringBuilder("WishlistViewState(inAppDispatch=");
        sb.append(this.f65757a);
        sb.append(", isLoading=");
        sb.append(this.f65758b);
        sb.append(", isError=");
        sb.append(this.f65759c);
        sb.append(", wishlist=");
        sb.append(this.d);
        sb.append(", revealedItem=");
        pq0.A(strA, ", storeModeStillValid=", ", shareResult=", sb, this.f65761f);
        sb.append(this.g);
        sb.append(", nativeShareEnabled=");
        sb.append(this.f65762h);
        sb.append(", rmsCode=");
        sb.append(this.f65763i);
        sb.append(", contactUsUiModel=");
        sb.append(this.f65764j);
        sb.append(")");
        return sb.toString();
    }

    public WishlistViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, WishlistUiModel wishlistUiModel, String str, boolean z3, Result result, boolean z4, String str2, ContactUsUiModel contactUsUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        inAppDispatch.getClass();
        contactUsUiModel.getClass();
        this.f65757a = inAppDispatch;
        this.f65758b = z;
        this.f65759c = z2;
        this.d = wishlistUiModel;
        this.f65760e = str;
        this.f65761f = z3;
        this.g = result;
        this.f65762h = z4;
        this.f65763i = str2;
        this.f65764j = contactUsUiModel;
    }
}
