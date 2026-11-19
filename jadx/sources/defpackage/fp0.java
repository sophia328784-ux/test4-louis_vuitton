package defpackage;

import com.vuitton.android.presentation.screen.permissions.PermissionContext;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fp0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModelImpl f69191c;

    public /* synthetic */ fp0(PermissionsViewModelImpl permissionsViewModelImpl, int i2) {
        this.f69190b = i2;
        this.f69191c = permissionsViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69190b;
        PermissionsViewModelImpl permissionsViewModelImpl = this.f69191c;
        switch (i2) {
            case 0:
                permissionsViewModelImpl.Gb();
                break;
            default:
                permissionsViewModelImpl.v5(PermissionContext.PORTAL);
                break;
        }
        return Unit.f71739a;
    }
}
