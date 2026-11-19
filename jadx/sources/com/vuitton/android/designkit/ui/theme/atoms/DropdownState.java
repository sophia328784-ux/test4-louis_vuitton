package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;", "", "", "Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;", "options", "", "selectedIndex", "", "enabled", "<init>", "(Ljava/util/List;Ljava/lang/Integer;Z)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DropdownState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f48443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f48444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f48445c;
    public final String d;

    /* JADX WARN: Code duplicated, block: B:14:0x0036  */
    public DropdownState(List<DropdownItem> list, Integer num, boolean z) {
        String str;
        list.getClass();
        this.f48443a = list;
        this.f48444b = z;
        this.f48445c = SnapshotStateKt.g(Boolean.FALSE);
        if (num != null) {
            int iIntValue = num.intValue();
            num = (iIntValue < 0 || iIntValue >= list.size()) ? null : num;
            str = (num == null || (str = list.get(num.intValue()).f48441a) == null) ? "" : str;
        }
        this.d = str;
    }

    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f48445c).getF10755b()).booleanValue();
    }

    public /* synthetic */ DropdownState(List list, Integer num, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : num, z);
    }
}
