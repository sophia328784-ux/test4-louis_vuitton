package defpackage;

import android.content.res.Resources;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.foundation.lazy.grid.LazyGridSpanKt;
import androidx.compose.material3.SwipeToDismissBoxKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.core.PreferencesFactory;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import com.dynatrace.agent.storage.di.StorageModule;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridItemKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightBottomStepperKt;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l01 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75914b;

    public /* synthetic */ l01(int i2) {
        this.f75914b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Exception {
        int i2 = 3;
        switch (this.f75914b) {
            case 0:
                return Unit.f71739a;
            case 1:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                float f2 = SpotlightBottomStepperKt.f64585a;
                animatedContentTransitionScope.getClass();
                return animatedContentTransitionScope.d(AnimatedContentKt.e(EnterExitTransitionKt.r(new l01(2)).b(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3)), EnterExitTransitionKt.v(1, new l01(i2)).b(EnterExitTransitionKt.h(null, 3))), AnimatedContentKt.d(2));
            case 2:
                Integer num = (Integer) obj;
                num.intValue();
                float f3 = SpotlightBottomStepperKt.f64585a;
                return num;
            case 3:
                int iIntValue = ((Integer) obj).intValue();
                float f4 = SpotlightBottomStepperKt.f64585a;
                return Integer.valueOf(-iIntValue);
            case 4:
                float f5 = StaggeredGridItemKt.f55396a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                float f6 = StaggeredGridItemKt.f55396a;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 6:
                LazyGridItemSpanScope lazyGridItemSpanScope = (LazyGridItemSpanScope) obj;
                lazyGridItemSpanScope.getClass();
                return new GridItemSpan(LazyGridSpanKt.a(lazyGridItemSpanScope.a()));
            case 7:
                LazyGridItemSpanScope lazyGridItemSpanScope2 = (LazyGridItemSpanScope) obj;
                lazyGridItemSpanScope2.getClass();
                return new GridItemSpan(LazyGridSpanKt.a(lazyGridItemSpanScope2.a()));
            case 8:
                KProperty[] kPropertyArr = StorageModule.d;
                ((CorruptionException) obj).getClass();
                return PreferencesFactory.a();
            case 9:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope2, 0, 3);
            case 10:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope3, 0, 3);
            case 11:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope4, 0, 3);
            case 12:
                AnimatedContentTransitionScope animatedContentTransitionScope5 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope5.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope5, 0, 3);
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver2, 1.0f);
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver4, true);
                return Unit.f71739a;
            case 16:
                ((DrawScope) obj).getClass();
                return Unit.f71739a;
            case 17:
                Byte b2 = (Byte) obj;
                b2.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b2}, 1));
            case 18:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver5);
                return Unit.f71739a;
            case 19:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 20:
                SemanticsPropertiesKt.h((SemanticsPropertyReceiver) obj);
                return Unit.f71739a;
            case 21:
                return Unit.f71739a;
            case 22:
                float f7 = SwipeToDismissBoxKt.f7342a;
                return Unit.f71739a;
            case 23:
                SwipeToDismissBoxState.Companion companion = SwipeToDismissBoxState.f7345c;
                return Boolean.TRUE;
            case 24:
                ((Resources) obj).getClass();
                return Boolean.FALSE;
            case 25:
                ((Resources) obj).getClass();
                return Boolean.TRUE;
            case 26:
                Resources resources = (Resources) obj;
                resources.getClass();
                return Boolean.valueOf((resources.getConfiguration().uiMode & 48) == 32);
            case 27:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                SystemIdInfoDao_Impl.Companion companion2 = SystemIdInfoDao_Impl.f20496c;
                sQLiteConnection.getClass();
                SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT DISTINCT work_spec_id FROM SystemIdInfo");
                try {
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
            case 28:
                ((Float) obj).floatValue();
                return Unit.f71739a;
            default:
                return Unit.f71739a;
        }
    }
}
