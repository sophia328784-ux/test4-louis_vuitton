package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.work.ForegroundInfo;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WorkForegroundUpdater;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b41 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20747c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f20748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f20749f;

    public /* synthetic */ b41(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f20746b = i2;
        this.f20747c = obj;
        this.d = obj2;
        this.f20748e = obj3;
        this.f20749f = obj4;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f20746b;
        Object obj = this.f20749f;
        Object obj2 = this.f20748e;
        Object obj3 = this.d;
        Object obj4 = this.f20747c;
        switch (i2) {
            case 0:
                HapticFeedbackType.f9193b.getClass();
                int i3 = PlatformHapticFeedbackType.f9196a;
                ((HapticFeedback) obj4).a(0);
                ThematicPlpThemesOverlayKt.c((CoroutineScope) obj3, (MutableState) obj2, (Function1) obj);
                return Unit.f71739a;
            default:
                WorkForegroundUpdater workForegroundUpdater = (WorkForegroundUpdater) obj4;
                ForegroundInfo foregroundInfo = (ForegroundInfo) obj2;
                Context context = (Context) obj;
                int i4 = WorkForegroundUpdater.d;
                String string = ((UUID) obj3).toString();
                WorkSpec workSpecK = workForegroundUpdater.f20564c.k(string);
                if (workSpecK == null || workSpecK.f20511b.a()) {
                    md.k("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    return null;
                }
                workForegroundUpdater.f20563b.a(string, foregroundInfo);
                WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpecK);
                int i5 = SystemForegroundDispatcher.f20472k;
                Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                intent.setAction("ACTION_NOTIFY");
                intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.f20249a);
                intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.f20250b);
                intent.putExtra("KEY_NOTIFICATION", foregroundInfo.f20251c);
                intent.putExtra("KEY_WORKSPEC_ID", workGenerationalIdA.f20499a);
                intent.putExtra("KEY_GENERATION", workGenerationalIdA.f20500b);
                context.startService(intent);
                return null;
        }
    }
}
