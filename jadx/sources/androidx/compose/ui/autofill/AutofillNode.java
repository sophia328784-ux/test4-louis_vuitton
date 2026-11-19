package androidx.compose.ui.autofill;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B9\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/autofill/AutofillNode;", "", "", "Landroidx/compose/ui/autofill/AutofillType;", "autofillTypes", "Landroidx/compose/ui/geometry/Rect;", "boundingBox", "Lkotlin/Function1;", "", "", "onFill", "<init>", "(Ljava/util/List;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AutofillNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f8643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rect f8644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f8645c;
    public final int d;

    public AutofillNode(List<? extends AutofillType> list, Rect rect, Function1<? super String, Unit> function1) {
        this.f8643a = list;
        this.f8644b = rect;
        this.f8645c = function1;
        this.d = SemanticsModifierKt.f10317a.addAndGet(1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutofillNode)) {
            return false;
        }
        AutofillNode autofillNode = (AutofillNode) obj;
        return Intrinsics.c(this.f8643a, autofillNode.f8643a) && Intrinsics.c(this.f8644b, autofillNode.f8644b) && this.f8645c == autofillNode.f8645c;
    }

    public final int hashCode() {
        int iHashCode = this.f8643a.hashCode() * 31;
        Rect rect = this.f8644b;
        int iHashCode2 = (iHashCode + (rect != null ? rect.hashCode() : 0)) * 31;
        Function1 function1 = this.f8645c;
        return iHashCode2 + (function1 != null ? function1.hashCode() : 0);
    }

    public AutofillNode(List list, Rect rect, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? null : rect, function1);
    }
}
