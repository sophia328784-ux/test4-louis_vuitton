package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.StoreModeItemsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dl implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Modifier f68605c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f68606e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f68607f;
    public final /* synthetic */ int g;

    public /* synthetic */ dl(Modifier modifier, String str, String str2, int i2, int i3, int i4) {
        this.f68604b = i4;
        this.f68605c = modifier;
        this.d = str;
        this.f68606e = str2;
        this.f68607f = i2;
        this.g = i3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f68604b) {
            case 0:
                ((Integer) obj2).getClass();
                CertificateComposableKt.b(this.f68605c, this.d, this.f68606e, (Composer) obj, RecomposeScopeImplKt.a(this.f68607f | 1), this.g);
                break;
            default:
                ((Integer) obj2).getClass();
                StoreModeItemsKt.a(this.f68605c, this.d, this.f68606e, (Composer) obj, RecomposeScopeImplKt.a(this.f68607f | 1), this.g);
                break;
        }
        return Unit.f71739a;
    }
}
