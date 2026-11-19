package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations;", "", "ToTransparentFiltersPage", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FiltersDestinations {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations$ToTransparentFiltersPage;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDestinations;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;", "type", "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToTransparentFiltersPage implements FiltersDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final QafSource f57994a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FiltersDropDownType f57995b;

        public ToTransparentFiltersPage(QafSource qafSource, FiltersDropDownType filtersDropDownType) {
            qafSource.getClass();
            filtersDropDownType.getClass();
            this.f57994a = qafSource;
            this.f57995b = filtersDropDownType;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToTransparentFiltersPage)) {
                return false;
            }
            ToTransparentFiltersPage toTransparentFiltersPage = (ToTransparentFiltersPage) obj;
            return this.f57994a == toTransparentFiltersPage.f57994a && this.f57995b == toTransparentFiltersPage.f57995b;
        }

        public final int hashCode() {
            return this.f57995b.hashCode() + (this.f57994a.hashCode() * 31);
        }

        public final String toString() {
            return "ToTransparentFiltersPage(source=" + this.f57994a + ", type=" + this.f57995b + ")";
        }
    }
}
