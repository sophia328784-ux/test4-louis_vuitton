package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.account.inbox.components.InboxNotificationListScreenKt;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBirthInfoComposableKt;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistScreenKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f40 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69036b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f69037c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f69038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f69039f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f69040h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f69041i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f69042j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f69043k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Function2 m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Function o;

    public /* synthetic */ f40(ColumnScope columnScope, NativeRegisterViewState nativeRegisterViewState, Function1 function1, Function0 function0, Function0 function2, Function2 function3, Function1 function4, Function0 function5, Function0 function6, Function1 function7, boolean z, int i2, int i3) {
        this.f69042j = columnScope;
        this.f69043k = nativeRegisterViewState;
        this.f69037c = function1;
        this.d = function0;
        this.l = function2;
        this.m = function3;
        this.f69038e = function4;
        this.n = function5;
        this.o = function6;
        this.f69039f = function7;
        this.g = z;
        this.f69040h = i2;
        this.f69041i = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69036b;
        int i3 = this.f69041i;
        int i4 = this.f69040h;
        Function function = this.o;
        Object obj3 = this.n;
        Object obj4 = this.l;
        Object obj5 = this.f69043k;
        Object obj6 = this.f69042j;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                int iA = RecomposeScopeImplKt.a(i4 | 1);
                int iA2 = RecomposeScopeImplKt.a(i3);
                InboxNotificationListScreenKt.a((InAppDispatch) obj6, (List) obj5, (InboxNotificationUiModel) obj4, this.g, (ComposableLambdaImpl) this.m, this.f69037c, this.f69038e, this.f69039f, (Function1) obj3, (Function1) function, this.d, (Composer) obj, iA, iA2);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int iA3 = RecomposeScopeImplKt.a(i4 | 1);
                NativeRegisterBirthInfoComposableKt.a((ColumnScope) obj6, (NativeRegisterViewState) obj5, this.f69037c, this.d, (Function0) obj4, this.m, this.f69038e, (Function0) obj3, (Function0) function, this.f69039f, this.g, (Composer) obj, iA3, this.f69041i);
                break;
            default:
                ((Integer) obj2).getClass();
                int iA4 = RecomposeScopeImplKt.a(i4 | 1);
                int iA5 = RecomposeScopeImplKt.a(i3);
                WishlistScreenKt.b((Modifier) obj6, (SnackbarHostState) obj5, (WishlistViewState) obj4, this.m, this.g, (WindowInsets) obj3, this.d, (Function2) function, this.f69037c, this.f69038e, this.f69039f, (Composer) obj, iA4, iA5);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ f40(Modifier modifier, SnackbarHostState snackbarHostState, WishlistViewState wishlistViewState, Function2 function2, boolean z, WindowInsets windowInsets, Function0 function0, Function2 function3, Function1 function1, Function1 function4, Function1 function5, int i2, int i3) {
        this.f69042j = modifier;
        this.f69043k = snackbarHostState;
        this.l = wishlistViewState;
        this.m = function2;
        this.g = z;
        this.n = windowInsets;
        this.d = function0;
        this.o = function3;
        this.f69037c = function1;
        this.f69038e = function4;
        this.f69039f = function5;
        this.f69040h = i2;
        this.f69041i = i3;
    }

    public /* synthetic */ f40(InAppDispatch inAppDispatch, List list, InboxNotificationUiModel inboxNotificationUiModel, boolean z, ComposableLambdaImpl composableLambdaImpl, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, int i2, int i3) {
        this.f69042j = inAppDispatch;
        this.f69043k = list;
        this.l = inboxNotificationUiModel;
        this.g = z;
        this.m = composableLambdaImpl;
        this.f69037c = function1;
        this.f69038e = function2;
        this.f69039f = function3;
        this.n = function4;
        this.o = function5;
        this.d = function0;
        this.f69040h = i2;
        this.f69041i = i3;
    }
}
