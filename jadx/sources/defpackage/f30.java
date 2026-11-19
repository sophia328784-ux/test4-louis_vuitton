package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f30 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsUiModel f69029c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f69030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f69031f;

    public /* synthetic */ f30(PermissionsUiModel permissionsUiModel, Context context, Function0 function0, Function0 function1, int i2) {
        this.f69028b = i2;
        this.f69029c = permissionsUiModel;
        this.d = context;
        this.f69030e = function0;
        this.f69031f = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int i2 = this.f69028b;
        Context context = this.d;
        PermissionsUiModel permissionsUiModel = this.f69029c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                float f2 = ImmersiveArticleContentKt.f58386a;
                ((ColumnScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    PermissionsBottomSheet permissionsBottomSheet = permissionsUiModel.f62372a;
                    if (Intrinsics.c(permissionsBottomSheet, PermissionsBottomSheet.None.f62367f)) {
                        composer.L(1599133872);
                        composer.F();
                    } else {
                        composer.L(1598542299);
                        String strA = StringResourceUiModelKt.a(permissionsBottomSheet.f62363a, context);
                        String strA2 = StringResourceUiModelKt.a(permissionsBottomSheet.f62364b, context);
                        String strA3 = StringResourceUiModelKt.a(permissionsBottomSheet.d, context);
                        StringResourceUiModel.ResId resId = permissionsBottomSheet.f62365c;
                        LVModalBottomSheetKt.a(null, null, strA, null, null, strA2, null, strA3, null, false, null, this.f69030e, null, false, null, null, resId != null ? StringResourceUiModelKt.a(resId, context) : null, false, this.f69031f, composer, 0, 0, 391003);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                break;
            default:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PermissionsBottomSheet permissionsBottomSheet2 = permissionsUiModel.f62372a;
                    if (Intrinsics.c(permissionsBottomSheet2, PermissionsBottomSheet.None.f62367f)) {
                        composer2.L(-1468297877);
                        composer2.F();
                    } else {
                        composer2.L(-1468920450);
                        String strA4 = StringResourceUiModelKt.a(permissionsBottomSheet2.f62363a, context);
                        String strA5 = StringResourceUiModelKt.a(permissionsBottomSheet2.f62364b, context);
                        String strA6 = StringResourceUiModelKt.a(permissionsBottomSheet2.d, context);
                        StringResourceUiModel.ResId resId2 = permissionsBottomSheet2.f62365c;
                        LVModalBottomSheetKt.a(null, null, strA4, null, null, strA5, null, strA6, null, false, null, this.f69030e, null, false, null, null, resId2 != null ? StringResourceUiModelKt.a(resId2, context) : null, false, this.f69031f, composer2, 0, 0, 391003);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
