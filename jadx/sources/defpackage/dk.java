package defpackage;

import com.vuitton.android.presentation.screen.main.MainNavigationState;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.CatalogDeepLinkType;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dk implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainNavigationState f68601c;

    public /* synthetic */ dk(MainNavigationState mainNavigationState, int i2) {
        this.f68600b = i2;
        this.f68601c = mainNavigationState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68600b;
        MainNavigationState mainNavigationState = this.f68601c;
        switch (i2) {
            case 0:
                mainNavigationState.f(false);
                break;
            case 1:
                mainNavigationState.d(MainTopLevelDestination.CATALOG, new CatalogRoute((CatalogDeepLinkType) null, (String) null, (String) null, (StoreModeLaunchMode) null, (List) null, (String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, 4095, (DefaultConstructorMarker) null));
                break;
            default:
                mainNavigationState.d(MainTopLevelDestination.CATALOG, null);
                break;
        }
        return Unit.f71739a;
    }
}
