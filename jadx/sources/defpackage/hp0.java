package defpackage;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.tooling.ComposableInvoker;
import androidx.compose.ui.tooling.PreviewActivity;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hp0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69762b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69763c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object[] f69764e;

    public /* synthetic */ hp0(String str, String str2, Object[] objArr) {
        this.f69763c = str;
        this.d = str2;
        this.f69764e = objArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) throws Exception {
        switch (this.f69762b) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i2 = PreviewActivity.f10996h;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Object objX = composer.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = SnapshotIntStateKt.a(0);
                        composer.q(objX);
                    }
                    MutableIntState mutableIntState = (MutableIntState) objX;
                    Object[] objArr = this.f69764e;
                    ScaffoldKt.a(null, null, null, null, ComposableLambdaKt.b(-531963740, new wd0(objArr, mutableIntState, 28), composer), 0, 0L, 0L, null, ComposableLambdaKt.b(993072492, new r(this.f69763c, this.d, objArr, mutableIntState, 25), composer), composer, 805330944, 495);
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                int i3 = PreviewActivity.f10996h;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Object[] objArr2 = this.f69764e;
                    ComposableInvoker.c(this.f69763c, this.d, composer2, Arrays.copyOf(objArr2, objArr2.length));
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ hp0(Object[] objArr, String str, String str2) {
        this.f69764e = objArr;
        this.f69763c = str;
        this.d = str2;
    }
}
