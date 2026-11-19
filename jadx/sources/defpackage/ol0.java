package defpackage;

import android.content.Context;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.mylv.MyLvActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ol0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77496b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f77497c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ ol0(Context context, Function0 function0) {
        this.f77497c = context;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f77496b;
        Function0 function0 = this.d;
        switch (i2) {
            case 0:
                function0.mo47invoke();
                MainActivity.Companion companion = MainActivity.L;
                MainTopLevelDestination mainTopLevelDestination = MainTopLevelDestination.CATALOG;
                Context context = this.f77497c;
                context.startActivity(MainActivity.Companion.a(companion, context, mainTopLevelDestination, null, null, null, 28));
                break;
            default:
                MyLvActivity.Companion companion2 = MyLvActivity.s;
                Context context2 = this.f77497c;
                context2.startActivity(MyLvActivity.Companion.b(companion2, context2));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ol0(Function0 function0, Context context) {
        this.d = function0;
        this.f77497c = context;
    }
}
