package com.vuitton.android.presentation.screen.search.components;

import androidx.navigation3.runtime.NavKey;
import defpackage.it0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes;", "Landroidx/navigation3/runtime/NavKey;", "Search", "PSP", "Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;", "Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$Search;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SearchRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;", "Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PSP extends SearchRoutes {
        public static final PSP INSTANCE = new PSP(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64186a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new it0(12));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PSP);
        }

        public final int hashCode() {
            return -1531160958;
        }

        public final KSerializer<PSP> serializer() {
            return (KSerializer) f64186a.getF71699b();
        }

        public final String toString() {
            return "PSP";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$Search;", "Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Search extends SearchRoutes {
        public static final Search INSTANCE = new Search(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f64187a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new it0(13));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Search);
        }

        public final int hashCode() {
            return 2134681043;
        }

        public final KSerializer<Search> serializer() {
            return (KSerializer) f64187a.getF71699b();
        }

        public final String toString() {
            return "Search";
        }
    }

    public SearchRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
