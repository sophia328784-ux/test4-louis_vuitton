package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.account.inbox.InboxViewModel;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxComposableKt;
import com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a40 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f398b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f399c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f401f;
    public final /* synthetic */ Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function0 f402h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f403i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f404j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Function1 f405k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Function q;

    public /* synthetic */ a40(NavBackStack navBackStack, OsaLocationFormViewModel osaLocationFormViewModel, OsaContactFormViewModel osaContactFormViewModel, OsaReasonsFormViewModel osaReasonsFormViewModel, Function0 function0, Function2 function2, Function1 function1, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function1 function9, Function0 function10, int i2) {
        this.m = navBackStack;
        this.n = osaLocationFormViewModel;
        this.o = osaContactFormViewModel;
        this.p = osaReasonsFormViewModel;
        this.f399c = function0;
        this.q = function2;
        this.d = function1;
        this.f400e = function3;
        this.f401f = function4;
        this.g = function5;
        this.f402h = function6;
        this.f403i = function7;
        this.f404j = function8;
        this.f405k = function9;
        this.l = function10;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f398b) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(1);
                InboxComposableKt.a((InboxViewModel) this.m, (PermissionsViewModel) this.n, this.f399c, this.f400e, this.f401f, this.d, this.f405k, this.g, (Function1) this.o, (Function1) this.p, (Function1) this.q, this.f402h, this.f403i, this.f404j, this.l, (Composer) obj, iA);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA2 = RecomposeScopeImplKt.a(1);
                OsaNavDisplayKt.a((NavBackStack) this.m, (OsaLocationFormViewModel) this.n, (OsaContactFormViewModel) this.o, (OsaReasonsFormViewModel) this.p, this.f399c, (Function2) this.q, this.d, this.f400e, this.f401f, this.g, this.f402h, this.f403i, this.f404j, this.f405k, this.l, (Composer) obj, iA2);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ a40(InboxViewModel inboxViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function0 function5, Function1 function6, Function1 function7, Function1 function8, Function0 function9, Function0 function10, Function0 function11, Function0 function12, int i2) {
        this.m = inboxViewModel;
        this.n = permissionsViewModel;
        this.f399c = function0;
        this.f400e = function1;
        this.f401f = function2;
        this.d = function3;
        this.f405k = function4;
        this.g = function5;
        this.o = function6;
        this.p = function7;
        this.q = function8;
        this.f402h = function9;
        this.f403i = function10;
        this.f404j = function11;
        this.l = function12;
    }
}
