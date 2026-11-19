package defpackage;

import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class up implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f80377c;

    public /* synthetic */ up(PermissionsViewModel permissionsViewModel, int i2) {
        this.f80376b = i2;
        this.f80377c = permissionsViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80376b;
        PermissionsViewModel permissionsViewModel = this.f80377c;
        switch (i2) {
            case 0:
                permissionsViewModel.Gb();
                break;
            case 1:
                permissionsViewModel.v5(PermissionContext.CONTACTABILITY);
                break;
            case 2:
                permissionsViewModel.v5(PermissionContext.FEED);
                break;
            default:
                permissionsViewModel.v5(PermissionContext.IMMERSIVE);
                break;
        }
        return Unit.f71739a;
    }
}
