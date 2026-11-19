package com.vuitton.android.presentation.screen.catalog;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;", "", "StoreMode", "Catalog", "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$Catalog;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CatalogRoutingState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$Catalog;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Catalog implements CatalogRoutingState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Catalog f55225a = new Catalog();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Catalog);
        }

        public final int hashCode() {
            return 436208027;
        }

        public final String toString() {
            return "Catalog";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState$StoreMode;", "Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingState;", "", "isOnGoing", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class StoreMode implements CatalogRoutingState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f55226a;

        public /* synthetic */ StoreMode(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StoreMode) && this.f55226a == ((StoreMode) obj).f55226a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f55226a);
        }

        public final String toString() {
            return tr.i("StoreMode(isOnGoing=", ")", this.f55226a);
        }

        public StoreMode(boolean z) {
            this.f55226a = z;
        }

        public StoreMode() {
            this(false, 1, null);
        }
    }
}
