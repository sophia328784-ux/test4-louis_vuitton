package androidx.compose.ui.input.indirect;

import android.view.MotionEvent;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;", "Landroidx/compose/ui/input/indirect/PlatformIndirectPointerEvent;", "", "Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;", "changes", "Landroidx/compose/ui/input/indirect/IndirectPointerEventType;", "type", "Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;", "primaryDirectionalMotionAxis", "Landroid/view/MotionEvent;", "nativeEvent", "<init>", "(Ljava/util/List;IILandroid/view/MotionEvent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidIndirectPointerEvent implements PlatformIndirectPointerEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f9210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MotionEvent f9212c;

    public AndroidIndirectPointerEvent(List list, int i2, int i3, MotionEvent motionEvent, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9210a = list;
        this.f9211b = i3;
        this.f9212c = motionEvent;
        if (list.isEmpty()) {
            md.n("changes cannot be empty");
            throw null;
        }
    }
}
