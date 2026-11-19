package com.vuitton.android.designkit.ui.theme.atoms;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;", "", "", "value", "", "enabled", "<init>", "(Ljava/lang/String;Z)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DropdownItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f48441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f48442b;

    public DropdownItem(String str, boolean z) {
        str.getClass();
        this.f48441a = str;
        this.f48442b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropdownItem)) {
            return false;
        }
        DropdownItem dropdownItem = (DropdownItem) obj;
        return Intrinsics.c(this.f48441a, dropdownItem.f48441a) && this.f48442b == dropdownItem.f48442b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f48442b) + (this.f48441a.hashCode() * 31);
    }

    public final String toString() {
        return d21.m("DropdownItem(value=", this.f48441a, ", enabled=", ")", this.f48442b);
    }

    public /* synthetic */ DropdownItem(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? true : z);
    }
}
