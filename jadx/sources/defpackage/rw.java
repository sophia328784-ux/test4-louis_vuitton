package defpackage;

import androidx.compose.material3.ExposedDropdownMenuAnchorType;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rw implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f79631c;
    public final /* synthetic */ MutableState d;

    public /* synthetic */ rw(String str, MutableState mutableState, int i2) {
        this.f79630b = i2;
        this.f79631c = str;
        this.d = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        boolean zC;
        int i2 = this.f79630b;
        MutableState mutableState = this.d;
        String str = this.f79631c;
        switch (i2) {
            case 0:
                String str2 = ((ExposedDropdownMenuAnchorType) mutableState.getF10755b()).f6916a;
                int i3 = ExposedDropdownMenuKt.f6925a;
                ExposedDropdownMenuAnchorType.f6913b.getClass();
                if (Intrinsics.c(str, ExposedDropdownMenuAnchorType.f6914c) || Intrinsics.c(str, ExposedDropdownMenuAnchorType.d)) {
                    zC = true;
                } else {
                    String str3 = ExposedDropdownMenuAnchorType.f6915e;
                    zC = Intrinsics.c(str, str3) ? Intrinsics.c(str2, str3) : false;
                }
                if (zC) {
                    mutableState.setValue(new ExposedDropdownMenuAnchorType(str));
                }
                return Unit.f71739a;
            default:
                if (!((Boolean) mutableState.getF10755b()).booleanValue()) {
                    str = "";
                }
                return SnapshotStateKt.g(str);
        }
    }
}
