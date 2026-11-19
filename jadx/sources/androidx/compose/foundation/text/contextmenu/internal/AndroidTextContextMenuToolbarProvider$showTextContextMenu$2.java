package androidx.compose.foundation.text.contextmenu.internal;

import android.os.Handler;
import android.os.Looper;
import android.view.ActionMode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import defpackage.h6;
import defpackage.md;
import defpackage.z1;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider$showTextContextMenu$2", f = "AndroidTextContextMenuToolbarProvider.android.kt", l = {182}, m = "invokeSuspend", v = 1)
final class AndroidTextContextMenuToolbarProvider$showTextContextMenu$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AndroidTextContextMenuToolbarProvider f6095c;
    public final /* synthetic */ TextContextMenuDataProvider d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidTextContextMenuToolbarProvider$showTextContextMenu$2(AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider, TextContextMenuDataProvider textContextMenuDataProvider, Continuation continuation) {
        super(1, continuation);
        this.f6095c = androidTextContextMenuToolbarProvider;
        this.d = textContextMenuDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AndroidTextContextMenuToolbarProvider$showTextContextMenu$2(this.f6095c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AndroidTextContextMenuToolbarProvider$showTextContextMenu$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Runnable] */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.foundation.text.contextmenu.internal.b] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? r8;
        TextActionModeCallback textActionModeCallback;
        final AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = this.f6095c;
        SnapshotStateObserver snapshotStateObserver = androidTextContextMenuToolbarProvider.f6085e;
        ?? r2 = androidTextContextMenuToolbarProvider.f6082a;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6094b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                final AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl textContextMenuSessionImpl = new AndroidTextContextMenuToolbarProvider.TextContextMenuSessionImpl();
                TextContextMenuDataProvider textContextMenuDataProvider = this.d;
                final TextActionModeCallback textActionModeCallbackImpl = new AndroidTextContextMenuToolbarProvider.TextActionModeCallbackImpl(textContextMenuSessionImpl, new h6(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 0), new h6(androidTextContextMenuToolbarProvider, textContextMenuDataProvider, 1), r2);
                Function1 function1 = androidTextContextMenuToolbarProvider.f6083b;
                if (function1 != null && (textActionModeCallback = (TextActionModeCallback) function1.invoke(textActionModeCallbackImpl)) != null) {
                    textActionModeCallbackImpl = textActionModeCallback;
                }
                Looper looperMyLooper = Looper.myLooper();
                Handler handler = r2.getHandler();
                if (looperMyLooper != (handler != null ? handler.getLooper() : null)) {
                    b bVar = androidTextContextMenuToolbarProvider.f6088i;
                    if (bVar == null) {
                        r8 = bVar;
                        ?? r9 = new Runnable() { // from class: androidx.compose.foundation.text.contextmenu.internal.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider2 = androidTextContextMenuToolbarProvider;
                                ActionMode actionModeStartActionMode = androidTextContextMenuToolbarProvider2.f6082a.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl), 1);
                                Intrinsics.c(androidTextContextMenuToolbarProvider2.f6087h, actionModeStartActionMode);
                                if (actionModeStartActionMode == null) {
                                    textContextMenuSessionImpl.close();
                                }
                            }
                        };
                        androidTextContextMenuToolbarProvider.f6088i = r9;
                        r8 = r9;
                    }
                    r8 = bVar;
                    r2.post(r8);
                } else {
                    ActionMode actionModeStartActionMode = r2.startActionMode(new FloatingTextActionModeCallback(textActionModeCallbackImpl), 1);
                    if (actionModeStartActionMode == null) {
                        return Unit.f71739a;
                    }
                    androidTextContextMenuToolbarProvider.f6087h = actionModeStartActionMode;
                }
                this.f6094b = 1;
                BufferedChannel bufferedChannel = textContextMenuSessionImpl.f6093a;
                bufferedChannel.getClass();
                Object objL = BufferedChannel.L(bufferedChannel, this);
                if (objL != obj2) {
                    objL = Unit.f71739a;
                }
                if (objL == obj2) {
                    return obj2;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            snapshotStateObserver.a();
            Looper looperMyLooper2 = Looper.myLooper();
            Handler handler2 = r2.getHandler();
            if (looperMyLooper2 != (handler2 != null ? handler2.getLooper() : null)) {
                Runnable z1Var = androidTextContextMenuToolbarProvider.f6089j;
                if (z1Var == null) {
                    z1Var = new z1(androidTextContextMenuToolbarProvider, 4);
                    androidTextContextMenuToolbarProvider.f6089j = z1Var;
                }
                r2.post(z1Var);
            } else {
                ActionMode actionMode = androidTextContextMenuToolbarProvider.f6087h;
                if (actionMode != null) {
                    actionMode.finish();
                }
            }
            b bVar2 = androidTextContextMenuToolbarProvider.f6088i;
            if (bVar2 != null) {
                r2.removeCallbacks(bVar2);
            }
            androidTextContextMenuToolbarProvider.f6087h = null;
            return Unit.f71739a;
        } catch (Throwable th) {
            snapshotStateObserver.a();
            Looper looperMyLooper3 = Looper.myLooper();
            Handler handler3 = r2.getHandler();
            if (looperMyLooper3 != (handler3 != null ? handler3.getLooper() : null)) {
                Runnable z1Var2 = androidTextContextMenuToolbarProvider.f6089j;
                if (z1Var2 == null) {
                    z1Var2 = new z1(androidTextContextMenuToolbarProvider, 4);
                    androidTextContextMenuToolbarProvider.f6089j = z1Var2;
                }
                r2.post(z1Var2);
            } else {
                ActionMode actionMode2 = androidTextContextMenuToolbarProvider.f6087h;
                if (actionMode2 != null) {
                    actionMode2.finish();
                }
            }
            b bVar3 = androidTextContextMenuToolbarProvider.f6088i;
            if (bVar3 != null) {
                r2.removeCallbacks(bVar3);
            }
            androidTextContextMenuToolbarProvider.f6087h = null;
            throw th;
        }
    }
}
