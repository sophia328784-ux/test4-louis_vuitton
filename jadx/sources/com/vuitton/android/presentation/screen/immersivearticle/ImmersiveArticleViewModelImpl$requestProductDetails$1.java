package com.vuitton.android.presentation.screen.immersivearticle;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$requestProductDetails$1", f = "ImmersiveArticleViewModelImpl.kt", l = {604, 626}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$requestProductDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ MonitorAction A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f58330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImmersiveArticleViewModelImpl f58331c;
    public SnapshotStateList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f58332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f58333f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Iterator f58334h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImmersiveArticleSectionUiModel f58335i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f58336j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Iterator f58337k;
    public ProductShort l;
    public String m;
    public String n;
    public String o;
    public ProductsArticleSectionUiModel.ImmersiveProductUiModel p;
    public List q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public /* synthetic */ Object y;
    public final /* synthetic */ ImmersiveArticleViewModelImpl z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$requestProductDetails$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.z = immersiveArticleViewModelImpl;
        this.A = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ImmersiveArticleViewModelImpl$requestProductDetails$1 immersiveArticleViewModelImpl$requestProductDetails$1 = new ImmersiveArticleViewModelImpl$requestProductDetails$1(this.z, this.A, continuation);
        immersiveArticleViewModelImpl$requestProductDetails$1.y = obj;
        return immersiveArticleViewModelImpl$requestProductDetails$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$requestProductDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:145:0x01fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x01da A[Catch: all -> 0x0203, TryCatch #1 {all -> 0x0203, blocks: (B:86:0x02b5, B:57:0x01bc, B:59:0x01c2, B:60:0x01d4, B:62:0x01da, B:70:0x020b, B:72:0x0211, B:74:0x0215, B:77:0x021f, B:79:0x0227, B:82:0x022e, B:88:0x02e2), top: B:136:0x02b5 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x01fb A[LOOP:0: B:60:0x01d4->B:65:0x01fb, LOOP_END] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x01b1 -> B:57:0x01bc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x029c -> B:136:0x02b5). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x02ea -> B:87:0x02df). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x030e -> B:95:0x0310). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0323 -> B:99:0x0328). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r33) {
        /*
            Method dump skipped, instruction units count: 949
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$requestProductDetails$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
