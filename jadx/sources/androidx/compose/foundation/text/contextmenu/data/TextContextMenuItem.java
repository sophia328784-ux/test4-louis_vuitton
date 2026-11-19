package androidx.compose.foundation.text.contextmenu.data;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B:\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0002\b\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;", "", ConfigurationName.KEY, "", "label", "", "leadingIcon", "Lkotlin/Function1;", "Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;", "", "Lkotlin/ExtensionFunctionType;", "onClick", "<init>", "(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextContextMenuItem extends TextContextMenuComponent {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6070c;
    public final Function1 d;

    public TextContextMenuItem(Object obj, String str, int i2, Function1<? super TextContextMenuSession, Unit> function1) {
        super(obj);
        this.f6069b = str;
        this.f6070c = i2;
        this.d = function1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TextContextMenuItem(key=");
        sb.append(this.f6065a);
        sb.append(", label=\"");
        sb.append(this.f6069b);
        sb.append("\", leadingIcon=");
        return tr.k(sb, this.f6070c, ')');
    }

    public /* synthetic */ TextContextMenuItem(Object obj, String str, int i2, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, str, (i3 & 4) != 0 ? 0 : i2, function1);
    }
}
