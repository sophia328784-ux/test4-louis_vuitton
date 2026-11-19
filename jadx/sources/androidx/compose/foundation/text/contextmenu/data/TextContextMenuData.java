package androidx.compose.foundation.text.contextmenu.data;

import androidx.compose.ui.util.ListUtilsKt;
import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", "", "", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;", "components", "<init>", "(Ljava/util/List;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextContextMenuData {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f6066b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TextContextMenuData f6067c = new TextContextMenuData(EmptyList.f71768b);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f6068a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TextContextMenuData(List<? extends TextContextMenuComponent> list) {
        this.f6068a = list;
    }

    public final String toString() {
        return d21.d(')', "TextContextMenuData(components=", ListUtilsKt.a(this.f6068a, "\n\t", null, 56));
    }
}
