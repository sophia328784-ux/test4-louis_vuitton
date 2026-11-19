package defpackage;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsProperties_androidKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.internal.NavControllerImpl;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.DependencyDao_Impl;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lt implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f76087c;

    public /* synthetic */ lt(String str, int i2) {
        this.f76086b = i2;
        this.f76087c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        int i2 = this.f76086b;
        boolean z = false;
        String str = this.f76087c;
        switch (i2) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                DependencyDao_Impl.Companion companion = DependencyDao_Impl.f20484c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
                try {
                    sQLiteStatementT1.A(1, str);
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementT1.Q1()) {
                        arrayList.add(sQLiteStatementT1.m1(0));
                    }
                    sQLiteStatementT1.close();
                    return arrayList;
                } catch (Throwable th) {
                    sQLiteStatementT1.close();
                    throw th;
                }
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                DependencyDao_Impl.Companion companion2 = DependencyDao_Impl.f20484c;
                sQLiteConnection2.getClass();
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection2.T1("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
                try {
                    sQLiteStatementT2.A(1, str);
                    if (sQLiteStatementT2.Q1()) {
                        z = ((int) sQLiteStatementT2.getLong(0)) != 0;
                    }
                    return Boolean.valueOf(z);
                } finally {
                    sQLiteStatementT2.close();
                }
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, str);
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver2, str);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver3, str);
                return Unit.f71739a;
            case 5:
                Pair pair = (Pair) obj;
                int i3 = FragmentNavigator.f18300j;
                pair.getClass();
                return Boolean.valueOf(Intrinsics.c(pair.f71705b, str));
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver4, str);
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                Modifier modifier = IconKt.f7002a;
                SemanticsPropertiesKt.i(semanticsPropertyReceiver5, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver5, Role.g);
                return Unit.f71739a;
            case 8:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                SemanticsPropertiesKt.i(semanticsPropertyReceiver6, str);
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver6, Role.g);
                return Unit.f71739a;
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver7, 0);
                SemanticsPropertiesKt.r(semanticsPropertyReceiver7, str);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                CubicBezierEasing cubicBezierEasing = LVButtonKt.f48454a;
                semanticsPropertyReceiver8.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver8, 0);
                SemanticsPropertiesKt.t(semanticsPropertyReceiver8, new AnnotatedString(str, null, 2, null));
                return Unit.f71739a;
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                float f2 = LVCalendarKt.f50961a;
                semanticsPropertyReceiver9.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver9, 0);
                SemanticsPropertiesKt.r(semanticsPropertyReceiver9, str);
                return Unit.f71739a;
            case 12:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver10.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver10, str);
                return Unit.f71739a;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver11 = (SemanticsPropertyReceiver) obj;
                CubicBezierEasing cubicBezierEasing2 = LVIconButtonKt.f48475a;
                semanticsPropertyReceiver11.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver11, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver11, str);
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver12 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver12.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver12, str);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver13 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVPushCardKt.f48653a;
                semanticsPropertyReceiver13.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver13, str);
                return Unit.f71739a;
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver14 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver14.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver14, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver14, str != null ? str : "");
                return Unit.f71739a;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver15 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver15.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver15, str != null ? str : "");
                return Unit.f71739a;
            case 18:
                SemanticsPropertyReceiver semanticsPropertyReceiver16 = (SemanticsPropertyReceiver) obj;
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                semanticsPropertyReceiver16.getClass();
                String str2 = str != null ? str : "";
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                semanticsPropertyReceiver16.a(SemanticsProperties.M, str2);
                return Unit.f71739a;
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver17 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver17.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver17, str);
                return Unit.f71739a;
            case 20:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                LightUpProductDao_Impl.Companion companion3 = LightUpProductDao_Impl.f43564e;
                sQLiteConnection3.getClass();
                SQLiteStatement sQLiteStatementT3 = sQLiteConnection3.T1("DELETE FROM LightUp WHERE DEVICE_ID = ?");
                try {
                    sQLiteStatementT3.A(1, str);
                    sQLiteStatementT3.Q1();
                    return Unit.f71739a;
                } finally {
                    sQLiteStatementT3.close();
                }
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver18 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver18.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver18, 0);
                SemanticsPropertiesKt.i(semanticsPropertyReceiver18, str);
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver19 = (SemanticsPropertyReceiver) obj;
                float f3 = ModalBottomSheetKt.f7058a;
                SemanticsPropertiesKt.n(semanticsPropertyReceiver19, str);
                SemanticsPropertiesKt.w(semanticsPropertyReceiver19, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver20 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver20.getClass();
                SemanticsPropertiesKt.s(semanticsPropertyReceiver20, str);
                SemanticsProperties_androidKt.a(semanticsPropertyReceiver20);
                return Unit.f71739a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver21 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver21.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver21, str);
                SemanticsPropertiesKt.w(semanticsPropertyReceiver21, -1.0f);
                return Unit.f71739a;
            case 25:
                int i4 = NavControllerImpl.B;
                return Boolean.valueOf(Intrinsics.c((String) obj, str));
            case 26:
                SemanticsPropertyReceiver semanticsPropertyReceiver22 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver22.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver22, str);
                return Unit.f71739a;
            case 27:
                SemanticsPropertyReceiver semanticsPropertyReceiver23 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver23.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver23, str);
                return Unit.f71739a;
            case 28:
                SemanticsPropertyReceiver semanticsPropertyReceiver24 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver24.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver24, str);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver25 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver25.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver25, str);
                return Unit.f71739a;
        }
    }
}
