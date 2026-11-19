package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.navigation3.runtime.NavEntry;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mc implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NavEntry f76231c;

    public /* synthetic */ mc(NavEntry navEntry, int i2) {
        this.f76230b = i2;
        this.f76231c = navEntry;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76230b;
        NavEntry navEntry = this.f76231c;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i2) {
            case 0:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    navEntry.a(composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 1:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    navEntry.a(composer, 0);
                } else {
                    composer.D();
                }
                break;
            case 2:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    navEntry.a(composer, 0);
                } else {
                    composer.D();
                }
                break;
            default:
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    navEntry.a(composer, 0);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
