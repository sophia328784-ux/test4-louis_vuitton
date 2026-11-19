package defpackage;

import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class on0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f77510c;
    public final /* synthetic */ SelectionAssetUiModel d;

    public /* synthetic */ on0(int i2, SelectionAssetUiModel selectionAssetUiModel, Function1 function1) {
        this.f77509b = i2;
        this.f77510c = function1;
        this.d = selectionAssetUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f77509b) {
            case 0:
                this.f77510c.invoke(this.d);
                break;
            default:
                this.f77510c.invoke(this.d);
                break;
        }
        return Unit.f71739a;
    }
}
