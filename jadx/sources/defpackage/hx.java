package defpackage;

import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hx implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedViewModel f69800c;

    public /* synthetic */ hx(FeedViewModel feedViewModel, int i2) {
        this.f69799b = i2;
        this.f69800c = feedViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69799b;
        FeedViewModel feedViewModel = this.f69800c;
        switch (i2) {
            case 0:
                feedViewModel.D9();
                break;
            case 1:
                feedViewModel.Ia();
                break;
            default:
                feedViewModel.qa(null);
                break;
        }
        return Unit.f71739a;
    }
}
