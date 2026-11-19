package defpackage;

import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ew0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WishlistViewModel f68961c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ ew0(WishlistViewModel wishlistViewModel, Function0 function0, int i2) {
        this.f68960b = i2;
        this.f68961c = wishlistViewModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f68960b) {
            case 0:
                this.f68961c.c();
                this.d.mo47invoke();
                break;
            default:
                this.f68961c.c();
                this.d.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
