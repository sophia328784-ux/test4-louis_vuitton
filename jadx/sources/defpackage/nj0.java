package defpackage;

import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import com.vuitton.android.data.datasource.avatar.SavedUserAvatarLocalDataSource;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.foundation.model.domain.model.avatar.SavedUserAvatar;
import com.vuitton.foundation.model.domain.model.product.LastViewedProduct;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nj0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f76543c;

    public /* synthetic */ nj0(String str, int i2) {
        this.f76542b = i2;
        this.f76543c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        int i2 = this.f76542b;
        int i3 = 6;
        Long lValueOf = null;
        String str = this.f76543c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.r(semanticsPropertyReceiver, str);
                return Unit.f71739a;
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str);
                return Unit.f71739a;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, str);
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver4, LiveRegionMode.f10282c);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver4, str);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver5, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver5, 0);
                return Unit.f71739a;
            case 5:
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                if (str != null) {
                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(198861484, true, new la(str, i3)), 3);
                }
                return Unit.f71739a;
            case 6:
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                if (str != null) {
                    LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(198861484, true, new la(str, i3)), 3);
                }
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver6, str);
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver7, str);
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver8, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver8, 0);
                return Unit.f71739a;
            case 10:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                PreferenceDao_Impl.Companion companion = PreferenceDao_Impl.f20489c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT long_value FROM Preference where `key`=?");
                try {
                    sQLiteStatementT1.A(1, str);
                    if (sQLiteStatementT1.Q1() && !sQLiteStatementT1.isNull(0)) {
                        lValueOf = Long.valueOf(sQLiteStatementT1.getLong(0));
                        break;
                    }
                    return lValueOf;
                } finally {
                    sQLiteStatementT1.close();
                }
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver9.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver9, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver9, str);
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver10.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver10, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver10, str);
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver11 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver11.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver11, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver11, 0);
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver12 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver12.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver12, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver12, 0);
                return Unit.f71739a;
            case 15:
                LastViewedProduct lastViewedProduct = (LastViewedProduct) obj;
                lastViewedProduct.getClass();
                String str2 = lastViewedProduct.f67896a;
                SkuId.Companion companion2 = SkuId.INSTANCE;
                return Boolean.valueOf(str2.equals(str));
            case 16:
                SavedUserAvatar savedUserAvatar = (SavedUserAvatar) obj;
                int i4 = SavedUserAvatarLocalDataSource.f43864c;
                savedUserAvatar.getClass();
                return Boolean.valueOf(Intrinsics.c(savedUserAvatar.f66671a, str));
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver13 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver13.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver13, str);
                return Unit.f71739a;
            case 18:
                SemanticsPropertyReceiver semanticsPropertyReceiver14 = (SemanticsPropertyReceiver) obj;
                float f2 = SpotlightHotspotsKt.f64588a;
                semanticsPropertyReceiver14.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver14, str);
                return Unit.f71739a;
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver15 = (SemanticsPropertyReceiver) obj;
                float f3 = StaggeredGridItemKt.f55396a;
                semanticsPropertyReceiver15.getClass();
                SemanticsPropertiesKt.t(semanticsPropertyReceiver15, new AnnotatedString(str, null, 2, null));
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver15, 0);
                return Unit.f71739a;
            case 20:
                String str3 = (String) obj;
                str3.getClass();
                if (StringsKt.w(str3)) {
                    return str3.length() < str.length() ? str : str3;
                }
                return str.concat(str3);
            case 21:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                SystemIdInfoDao_Impl.Companion companion3 = SystemIdInfoDao_Impl.f20496c;
                sQLiteConnection2.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection2.T1("DELETE FROM SystemIdInfo where work_spec_id=?");
                try {
                    sQLiteStatementT2.A(1, str);
                    sQLiteStatementT2.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT2.close();
                }
            case 22:
                float f4 = TextFieldImplKt.f7647a;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                ((SemanticsPropertyReceiver) obj).a(SemanticsProperties.M, str);
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver16 = (SemanticsPropertyReceiver) obj;
                float f5 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver16.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver16, str);
                return Unit.f71739a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver17 = (SemanticsPropertyReceiver) obj;
                float f6 = ThankYouScreenKt.f65243a;
                semanticsPropertyReceiver17.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver17);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver17, str);
                return Unit.f71739a;
            case 25:
                SemanticsPropertyReceiver semanticsPropertyReceiver18 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver18.getClass();
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver18, LiveRegionMode.f10282c);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver18, str);
                return Unit.f71739a;
            case 26:
                SemanticsPropertyReceiver semanticsPropertyReceiver19 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver19.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver19, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver19, 0);
                return Unit.f71739a;
            case 27:
                SemanticsPropertyReceiver semanticsPropertyReceiver20 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver20.getClass();
                LiveRegionMode.f10281b.getClass();
                SemanticsPropertiesKt.m(semanticsPropertyReceiver20, LiveRegionMode.f10282c);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver20, str);
                return Unit.f71739a;
            case 28:
                SemanticsPropertyReceiver semanticsPropertyReceiver21 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver21.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver21, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver21, 0);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver22 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver22.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver22, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver22, 0);
                return Unit.f71739a;
        }
    }
}
