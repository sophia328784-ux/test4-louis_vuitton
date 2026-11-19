package com.vuitton.android.presentation.screen.options.appinfo.models;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;", "", "", "Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;", "appInfoList", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AppInfoViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f59752a;

    public AppInfoViewState(List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AppInfoViewState) && Intrinsics.c(this.f59752a, ((AppInfoViewState) obj).f59752a);
    }

    public final int hashCode() {
        return this.f59752a.hashCode();
    }

    public final String toString() {
        return d21.o("AppInfoViewState(appInfoList=", ")", this.f59752a);
    }

    public AppInfoViewState(List<AppInfo> list) {
        list.getClass();
        this.f59752a = list;
    }

    public AppInfoViewState() {
        this(null, 1, null);
    }
}
