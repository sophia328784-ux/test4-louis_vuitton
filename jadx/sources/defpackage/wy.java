package defpackage;

import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.storelocator.StoreAddressUiModel;
import com.vuitton.android.presentation.model.storelocator.StoreTypeUIModel;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.pdp.components.findinstore.FindInStoreRowKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wy implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoreUiModel f80969c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ wy(StoreUiModel storeUiModel, boolean z, int i2) {
        this.f80968b = i2;
        this.f80969c = storeUiModel;
        this.d = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        String strB;
        int i3 = this.f80968b;
        boolean z = this.d;
        StoreUiModel storeUiModel = this.f80969c;
        RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
        switch (i3) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierB = cj.b("FindInStoreRow$lambda$3$1$0$0", rowScopeInstance, 1.0f, true);
                    String str = storeUiModel.f51818b;
                    TextOverflow.f10989a.getClass();
                    int i4 = TextOverflow.f10991c;
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48429j;
                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                    if (z) {
                        TextAlign.f10959b.getClass();
                        i2 = TextAlign.f10963h;
                    } else {
                        TextAlign.f10959b.getClass();
                        i2 = TextAlign.g;
                    }
                    TextKt.c(str, modifierB, j2, 0L, null, 0L, null, new TextAlign(i2), 0L, i4, false, 0, 0, null, textStyle, composer, 0, KyberEngine.KyberPolyBytes, 125944);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierB2 = cj.b("FindInStoreRow$lambda$3$2$0$0$0", rowScopeInstance, 1.0f, true);
                    StoreTypeUIModel storeTypeUIModel = storeUiModel.f51819c;
                    StoreAddressUiModel storeAddressUiModel = storeUiModel.f51820e;
                    int i5 = FindInStoreRowKt.WhenMappings.f61427a[storeTypeUIModel.ordinal()];
                    if (i5 == 1) {
                        composer2.L(1529690337);
                        strB = StringResources_androidKt.b(R.string.store_address, new Object[]{storeAddressUiModel.f51811a, storeAddressUiModel.f51814e, storeAddressUiModel.f51812b, storeAddressUiModel.f51813c, storeAddressUiModel.d}, composer2);
                        composer2.F();
                    } else {
                        if (i5 != 2) {
                            throw o60.v(composer2, -504846960);
                        }
                        composer2.L(1530233302);
                        composer2.F();
                        strB = storeAddressUiModel.d;
                    }
                    String str2 = strB;
                    TextStyle textStyle2 = LVAppDesignKitTheme.n(composer2).m;
                    long j3 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(str2, modifierB2, j3, 0L, null, 0L, null, new TextAlign(z ? TextAlign.f10963h : TextAlign.g), 0L, 0, false, 0, 0, null, textStyle2, composer2, 0, 0, 130040);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
        }
    }
}
