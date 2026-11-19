package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.R;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.orders.models.ShortcutDisplayUiModel[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.orders.models.ShortcutDisplayUiModel[]) from 0x003a: INVOKE (r0v1 com.vuitton.android.presentation.screen.orders.models.ShortcutDisplayUiModel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ShortcutDisplayUiModel;", "", "", "label", "I", "a", "()I", "TRACK_ORDER", "DOWNLOAD_INVOICE", "REQUEST_RETURN", "REQUEST_RETURN_OR_EXCHANGE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ShortcutDisplayUiModel {
    TRACK_ORDER(R.string.my_orders_actions_track),
    DOWNLOAD_INVOICE(R.string.my_orders_actions_invoice),
    REQUEST_RETURN(R.string.request_for_return_button),
    REQUEST_RETURN_OR_EXCHANGE(R.string.my_orders_actions_exchange);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final int label;

    static {
        $ENTRIES = EnumEntriesKt.a(shortcutDisplayUiModelArr);
    }

    public ShortcutDisplayUiModel(int i2) {
        super(str, i);
        this.label = i2;
    }

    public static ShortcutDisplayUiModel valueOf(String str) {
        return (ShortcutDisplayUiModel) Enum.valueOf(ShortcutDisplayUiModel.class, str);
    }

    public static ShortcutDisplayUiModel[] values() {
        return (ShortcutDisplayUiModel[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getLabel() {
        return this.label;
    }
}
