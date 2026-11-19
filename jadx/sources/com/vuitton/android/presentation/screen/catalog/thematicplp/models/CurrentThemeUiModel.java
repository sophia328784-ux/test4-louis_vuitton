package com.vuitton.android.presentation.screen.catalog.thematicplp.models;

import com.batch.android.s.b;
import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;", "", "", b.a.f24015b, "", "nextPage", "", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CurrentThemeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f55427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f55428c;

    public CurrentThemeUiModel(String str, Integer num, List<ThemeItemUiModel> list) {
        str.getClass();
        list.getClass();
        this.f55426a = str;
        this.f55427b = num;
        this.f55428c = list;
    }

    public static CurrentThemeUiModel a(CurrentThemeUiModel currentThemeUiModel, List list) {
        String str = currentThemeUiModel.f55426a;
        Integer num = currentThemeUiModel.f55427b;
        currentThemeUiModel.getClass();
        str.getClass();
        list.getClass();
        return new CurrentThemeUiModel(str, num, list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CurrentThemeUiModel)) {
            return false;
        }
        CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) obj;
        return Intrinsics.c(this.f55426a, currentThemeUiModel.f55426a) && Intrinsics.c(this.f55427b, currentThemeUiModel.f55427b) && Intrinsics.c(this.f55428c, currentThemeUiModel.f55428c);
    }

    public final int hashCode() {
        int iHashCode = this.f55426a.hashCode() * 31;
        Integer num = this.f55427b;
        return this.f55428c.hashCode() + ((iHashCode + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CurrentThemeUiModel(id=");
        sb.append(this.f55426a);
        sb.append(", nextPage=");
        sb.append(this.f55427b);
        sb.append(", items=");
        return a.o(sb, this.f55428c, ")");
    }
}
