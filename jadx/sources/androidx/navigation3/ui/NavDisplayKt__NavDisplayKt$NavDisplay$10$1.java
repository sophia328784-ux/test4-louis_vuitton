package androidx.navigation3.ui;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.navigation3.scene.OverlayScene;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.navigation3.ui.NavDisplayKt__NavDisplayKt$NavDisplay$10$1", f = "NavDisplay.kt", l = {}, m = "invokeSuspend", v = 1)
final class NavDisplayKt__NavDisplayKt$NavDisplay$10$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f18427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnapshotStateList f18428c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavDisplayKt__NavDisplayKt$NavDisplay$10$1(List list, SnapshotStateList snapshotStateList, Continuation continuation) {
        super(2, continuation);
        this.f18427b = list;
        this.f18428c = snapshotStateList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NavDisplayKt__NavDisplayKt$NavDisplay$10$1(this.f18427b, this.f18428c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NavDisplayKt__NavDisplayKt$NavDisplay$10$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List list = this.f18427b;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            OverlayScene overlayScene = (OverlayScene) list.get(i2);
            SnapshotStateList snapshotStateList = this.f18428c;
            ArrayList arrayList = new ArrayList(snapshotStateList.size());
            int size2 = snapshotStateList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList.add(((OverlayScene) snapshotStateList.get(i3)).getF18417a());
            }
            if (!arrayList.contains(overlayScene.getF18417a())) {
                snapshotStateList.add(overlayScene);
            }
        }
        return Unit.f71739a;
    }
}
