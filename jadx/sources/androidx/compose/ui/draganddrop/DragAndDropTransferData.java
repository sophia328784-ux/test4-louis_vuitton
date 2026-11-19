package androidx.compose.ui.draganddrop;

import android.content.ClipData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/draganddrop/DragAndDropTransferData;", "", "Landroid/content/ClipData;", "clipData", "localState", "", "flags", "<init>", "(Landroid/content/ClipData;Ljava/lang/Object;I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DragAndDropTransferData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClipData f8696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f8697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8698c;

    public /* synthetic */ DragAndDropTransferData(ClipData clipData, Object obj, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(clipData, (i3 & 2) != 0 ? null : obj, (i3 & 4) != 0 ? 0 : i2);
    }

    public DragAndDropTransferData(ClipData clipData, Object obj, int i2) {
        this.f8696a = clipData;
        this.f8697b = obj;
        this.f8698c = i2;
    }
}
