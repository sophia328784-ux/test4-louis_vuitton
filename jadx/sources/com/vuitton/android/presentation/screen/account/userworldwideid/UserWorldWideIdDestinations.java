package com.vuitton.android.presentation.screen.account.userworldwideid;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldWideIdDestinations;", "", "ToCatalogStoreModePage", "Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldWideIdDestinations$ToCatalogStoreModePage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface UserWorldWideIdDestinations {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldWideIdDestinations$ToCatalogStoreModePage;", "Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldWideIdDestinations;", "", "rmsCode", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToCatalogStoreModePage implements UserWorldWideIdDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f52688a;

        public ToCatalogStoreModePage(String str) {
            str.getClass();
            this.f52688a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToCatalogStoreModePage) && Intrinsics.c(this.f52688a, ((ToCatalogStoreModePage) obj).f52688a);
        }

        public final int hashCode() {
            return this.f52688a.hashCode();
        }

        public final String toString() {
            return fc.h("ToCatalogStoreModePage(rmsCode=", this.f52688a, ")");
        }
    }
}
