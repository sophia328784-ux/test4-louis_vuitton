package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ie implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f69954c;
    public final /* synthetic */ PermissionsBottomSheet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f69955e;

    public /* synthetic */ ie(PermissionsViewModel permissionsViewModel, PermissionsBottomSheet permissionsBottomSheet, Context context, int i2) {
        this.f69953b = i2;
        this.f69954c = permissionsViewModel;
        this.d = permissionsBottomSheet;
        this.f69955e = context;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        BaseActivity baseActivity;
        int i2 = this.f69953b;
        Context context = this.f69955e;
        PermissionsBottomSheet permissionsBottomSheet = this.d;
        PermissionsViewModel permissionsViewModel = this.f69954c;
        switch (i2) {
            case 0:
                permissionsViewModel.v5(PermissionContext.BACK_IN_STOCK);
                if (permissionsBottomSheet instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                    AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                    baseActivity = appCompatActivityB instanceof BaseActivity ? (BaseActivity) appCompatActivityB : null;
                    if (baseActivity != null) {
                        baseActivity.B().p(baseActivity, true);
                    }
                }
                break;
            default:
                permissionsViewModel.v5(PermissionContext.BACK_IN_STOCK);
                if (permissionsBottomSheet instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
                    AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                    baseActivity = appCompatActivityB2 instanceof BaseActivity ? (BaseActivity) appCompatActivityB2 : null;
                    if (baseActivity != null) {
                        baseActivity.B().p(baseActivity, true);
                    }
                }
                break;
        }
        return Unit.f71739a;
    }
}
