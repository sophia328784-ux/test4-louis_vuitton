package com.vuitton.android.presentation.screen.plp.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;", "", "Legacy", "Revamp", "Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PLPRemoveFromWishlistTrackingMode {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Legacy implements PLPRemoveFromWishlistTrackingMode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Legacy f62877a = new Legacy();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Legacy);
        }

        public final int hashCode() {
            return -540838495;
        }

        public final String toString() {
            return "Legacy";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;", "", "plpTitle", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Revamp implements PLPRemoveFromWishlistTrackingMode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f62878a;

        public Revamp(String str) {
            str.getClass();
            this.f62878a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Revamp) && Intrinsics.c(this.f62878a, ((Revamp) obj).f62878a);
        }

        public final int hashCode() {
            return this.f62878a.hashCode();
        }

        public final String toString() {
            return fc.h("Revamp(plpTitle=", this.f62878a, ")");
        }
    }
}
