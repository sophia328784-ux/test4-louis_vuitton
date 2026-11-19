package defpackage;

import com.vuitton.android.designkit.ui.theme.atoms.DropdownItem;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sq implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f79863c;
    public final /* synthetic */ ArrayList d;

    public /* synthetic */ sq(Function1 function1, ArrayList arrayList, int i2) {
        this.f79862b = i2;
        this.f79863c = function1;
        this.d = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79862b;
        ArrayList arrayList = this.d;
        Function1 function1 = this.f79863c;
        int iIntValue = ((Integer) obj).intValue();
        switch (i2) {
            case 0:
                function1.invoke(((DropdownItem) arrayList.get(iIntValue)).f48441a);
                break;
            default:
                function1.invoke(arrayList.get(iIntValue));
                break;
        }
        return Unit.f71739a;
    }
}
