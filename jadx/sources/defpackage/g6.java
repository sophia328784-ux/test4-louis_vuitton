package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import android.view.View;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.j00;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g6 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider f69303c;

    public /* synthetic */ g6(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, int i2) {
        this.f69302b = i2;
        this.f69303c = androidTextContextMenuToolbarProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f69302b;
        final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.f69303c;
        switch (i2) {
            case 0:
                Function0 function0 = (Function0) obj;
                View view = androidTextContextMenuToolbarProvider.f6082a;
                Handler handler = view.getHandler();
                if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
                    function0.mo47invoke();
                } else {
                    Handler handler2 = view.getHandler();
                    if (handler2 != null) {
                        handler2.post(new r3(function0, 3));
                    }
                }
                return Unit.f71739a;
            case 1:
                ActionMode actionMode = androidTextContextMenuToolbarProvider.f6087h;
                if (actionMode != null) {
                    actionMode.invalidate();
                }
                return Unit.f71739a;
            case 2:
                ActionMode actionMode2 = androidTextContextMenuToolbarProvider.f6087h;
                if (actionMode2 != null) {
                    actionMode2.invalidateContentRect();
                }
                return Unit.f71739a;
            default:
                SnapshotStateObserver snapshotStateObserver = androidTextContextMenuToolbarProvider.f6085e;
                snapshotStateObserver.getClass();
                Snapshot.Companion companion = Snapshot.f8462e;
                ll0 ll0Var = snapshotStateObserver.d;
                companion.getClass();
                snapshotStateObserver.f8503h = Snapshot.Companion.d(ll0Var);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider2 = androidTextContextMenuToolbarProvider;
                        SnapshotStateObserver snapshotStateObserver2 = androidTextContextMenuToolbarProvider2.f6085e;
                        j00 j00Var = snapshotStateObserver2.f8503h;
                        if (j00Var != null) {
                            j00Var.dispose();
                        }
                        snapshotStateObserver2.a();
                        ActionMode actionMode3 = androidTextContextMenuToolbarProvider2.f6087h;
                        if (actionMode3 != null) {
                            actionMode3.finish();
                        }
                        androidTextContextMenuToolbarProvider2.f6087h = null;
                    }
                };
        }
    }
}
