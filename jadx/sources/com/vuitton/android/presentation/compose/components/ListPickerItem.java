package com.vuitton.android.presentation.compose.components;

import defpackage.d21;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/ListPickerItem;", "", "", "value", "", "enabled", "previewValue", "<init>", "(Ljava/lang/String;ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ListPickerItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f51013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f51014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f51015c;

    public ListPickerItem(String str, boolean z, String str2) {
        str.getClass();
        str2.getClass();
        this.f51013a = str;
        this.f51014b = z;
        this.f51015c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListPickerItem)) {
            return false;
        }
        ListPickerItem listPickerItem = (ListPickerItem) obj;
        return Intrinsics.c(this.f51013a, listPickerItem.f51013a) && this.f51014b == listPickerItem.f51014b && Intrinsics.c(this.f51015c, listPickerItem.f51015c);
    }

    public final int hashCode() {
        return this.f51015c.hashCode() + o60.b(this.f51013a.hashCode() * 31, 31, this.f51014b);
    }

    public final String toString() {
        return n00.r(this.f51015c, ")", d21.s("ListPickerItem(value=", this.f51013a, ", enabled=", ", previewValue=", this.f51014b));
    }

    public /* synthetic */ ListPickerItem(String str, boolean z, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? str : str2);
    }
}
