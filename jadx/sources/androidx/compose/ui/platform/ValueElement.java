package androidx.compose.ui.platform;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/platform/ValueElement;", "", "", "name", "value", "<init>", "(Ljava/lang/String;Ljava/lang/Object;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ValueElement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f10153b;

    public ValueElement(String str, Object obj) {
        this.f10152a = str;
        this.f10153b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValueElement)) {
            return false;
        }
        ValueElement valueElement = (ValueElement) obj;
        return Intrinsics.c(this.f10152a, valueElement.f10152a) && Intrinsics.c(this.f10153b, valueElement.f10153b);
    }

    public final int hashCode() {
        int iHashCode = this.f10152a.hashCode() * 31;
        Object obj = this.f10153b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ValueElement(name=");
        sb.append(this.f10152a);
        sb.append(", value=");
        return o60.r(sb, this.f10153b, ')');
    }
}
