package androidx.compose.ui.semantics;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/semantics/ScrollAxisRange;", "", "Lkotlin/Function0;", "", "value", "maxValue", "", "reverseScrolling", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScrollAxisRange {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f10298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f10299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f10300c;

    public ScrollAxisRange(Function0<Float> function0, Function0<Float> function1, boolean z) {
        this.f10298a = function0;
        this.f10299b = function1;
        this.f10300c = z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ScrollAxisRange(value=");
        sb.append(((Number) this.f10298a.mo47invoke()).floatValue());
        sb.append(", maxValue=");
        sb.append(((Number) this.f10299b.mo47invoke()).floatValue());
        sb.append(", reverseScrolling=");
        return d21.q(sb, this.f10300c, ')');
    }

    public /* synthetic */ ScrollAxisRange(Function0 function0, Function0 function1, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, function1, (i2 & 4) != 0 ? false : z);
    }
}
