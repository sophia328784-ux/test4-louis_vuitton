package com.vuitton.android.presentation.screen.storemode.filters.model;

import defpackage.a;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ResetFilterTag;", "", "", "filterName", "filterId", "", "isSort", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ResetFilterTag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f65031c;

    public ResetFilterTag(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        this.f65029a = str;
        this.f65030b = str2;
        this.f65031c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResetFilterTag)) {
            return false;
        }
        ResetFilterTag resetFilterTag = (ResetFilterTag) obj;
        return Intrinsics.c(this.f65029a, resetFilterTag.f65029a) && Intrinsics.c(this.f65030b, resetFilterTag.f65030b) && this.f65031c == resetFilterTag.f65031c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f65031c) + fc.b(this.f65029a.hashCode() * 31, 31, this.f65030b);
    }

    public final String toString() {
        return a.p(fc.s("ResetFilterTag(filterName=", this.f65029a, ", filterId=", this.f65030b, ", isSort="), this.f65031c, ")");
    }
}
