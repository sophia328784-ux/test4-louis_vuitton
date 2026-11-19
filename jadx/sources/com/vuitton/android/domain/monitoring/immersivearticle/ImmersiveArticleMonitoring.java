package com.vuitton.android.domain.monitoring.immersivearticle;

import com.batch.android.v0.a;
import com.vuitton.android.domain.monitoring.MonitorActionError;
import com.vuitton.android.domain.monitoring.MonitorActionName;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring;", "", a.d, "Error", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ImmersiveArticleMonitoring {

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action;", "Lcom/vuitton/android/domain/monitoring/MonitorActionName;", "OpenImmersiveArticle", "LoadImmersive3DModels", "LoadImmersiveProducts", "OpenImmersiveArticleFull", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersive3DModels;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersiveProducts;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticle;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticleFull;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Action extends MonitorActionName {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersive3DModels;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadImmersive3DModels implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadImmersive3DModels f48911a = new LoadImmersive3DModels();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load Immersive 3DModels";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadImmersive3DModels);
            }

            public final int hashCode() {
                return -958787651;
            }

            public final String toString() {
                return "LoadImmersive3DModels";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersiveProducts;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadImmersiveProducts implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final LoadImmersiveProducts f48912a = new LoadImmersiveProducts();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Load Immersive Products";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof LoadImmersiveProducts);
            }

            public final int hashCode() {
                return 1177305350;
            }

            public final String toString() {
                return "LoadImmersiveProducts";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticle;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenImmersiveArticle implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenImmersiveArticle f48913a = new OpenImmersiveArticle();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Immersive Article";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenImmersiveArticle);
            }

            public final int hashCode() {
                return -669713800;
            }

            public final String toString() {
                return "OpenImmersiveArticle";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticleFull;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenImmersiveArticleFull implements Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final OpenImmersiveArticleFull f48914a = new OpenImmersiveArticleFull();

            @Override // com.vuitton.android.domain.monitoring.MonitorActionName
            public final String a() {
                return "Open Immersive Article Full";
            }

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof OpenImmersiveArticleFull);
            }

            public final int hashCode() {
                return 2009371943;
            }

            public final String toString() {
                return "OpenImmersiveArticleFull";
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error;", "Lcom/vuitton/android/domain/monitoring/MonitorActionError;", "OpenImmersiveArticleError", "LoadImmersive3DModelsError", "LoadImmersiveProducts", "OpenImmersiveArticleFull", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersive3DModelsError;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersiveProducts;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleError;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Error extends MonitorActionError {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersive3DModelsError;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadImmersive3DModelsError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48915a;

            public LoadImmersive3DModelsError(Throwable th) {
                th.getClass();
                this.f48915a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48915a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadImmersive3DModelsError) && Intrinsics.c(this.f48915a, ((LoadImmersive3DModelsError) obj).f48915a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "load_immersive_3dsmodels_error";
            }

            public final int hashCode() {
                return this.f48915a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadImmersive3DModelsError(error=", ")", this.f48915a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersiveProducts;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LoadImmersiveProducts implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48916a;

            public LoadImmersiveProducts(Throwable th) {
                th.getClass();
                this.f48916a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48916a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadImmersiveProducts) && Intrinsics.c(this.f48916a, ((LoadImmersiveProducts) obj).f48916a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "load_immersive_products_error";
            }

            public final int hashCode() {
                return this.f48916a.hashCode();
            }

            public final String toString() {
                return d21.n("LoadImmersiveProducts(error=", ")", this.f48916a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleError;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenImmersiveArticleError implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48917a;

            public OpenImmersiveArticleError(Throwable th) {
                th.getClass();
                this.f48917a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48917a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenImmersiveArticleError) && Intrinsics.c(this.f48917a, ((OpenImmersiveArticleError) obj).f48917a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_immersive_article_error";
            }

            public final int hashCode() {
                return this.f48917a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenImmersiveArticleError(error=", ")", this.f48917a);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;", "Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error;", "", "error", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class OpenImmersiveArticleFull implements Error {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Throwable f48918a;

            public OpenImmersiveArticleFull(Throwable th) {
                th.getClass();
                this.f48918a = th;
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: a, reason: from getter */
            public final Throwable getF48926a() {
                return this.f48918a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof OpenImmersiveArticleFull) && Intrinsics.c(this.f48918a, ((OpenImmersiveArticleFull) obj).f48918a);
            }

            @Override // com.vuitton.android.domain.monitoring.MonitorActionError
            /* JADX INFO: renamed from: getName */
            public final String getF48843c() {
                return "open_immersive_article_full_error";
            }

            public final int hashCode() {
                return this.f48918a.hashCode();
            }

            public final String toString() {
                return d21.n("OpenImmersiveArticleFull(error=", ")", this.f48918a);
            }
        }
    }
}
