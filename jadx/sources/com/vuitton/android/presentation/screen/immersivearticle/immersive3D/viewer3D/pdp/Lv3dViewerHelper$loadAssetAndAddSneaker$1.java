package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper", f = "Lv3dViewerHelper.kt", l = {747}, m = "loadAssetAndAddSneaker", v = 2)
final class Lv3dViewerHelper$loadAssetAndAddSneaker$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f58601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lv3dViewerHelper f58602c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dViewerHelper$loadAssetAndAddSneaker$1(Lv3dViewerHelper lv3dViewerHelper, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f58602c = lv3dViewerHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f58601b = obj;
        this.d |= Integer.MIN_VALUE;
        return Lv3dViewerHelper.e(this.f58602c, null, this);
    }
}
