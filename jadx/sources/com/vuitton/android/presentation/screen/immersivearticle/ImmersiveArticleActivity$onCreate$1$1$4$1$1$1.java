package com.vuitton.android.presentation.screen.immersivearticle;

import android.content.Intent;
import com.vuitton.android.data.audioplayer.AudioPlayerService;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel;
import defpackage.u20;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class ImmersiveArticleActivity$onCreate$1$1$4$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        ImmersiveArticleActivity immersiveArticleActivity = (ImmersiveArticleActivity) this.receiver;
        ((AudioPlayerViewModel) immersiveArticleActivity.t.getF71699b()).L3();
        immersiveArticleActivity.stopService(new Intent(immersiveArticleActivity, (Class<?>) AudioPlayerService.class));
        immersiveArticleActivity.J(new u20(immersiveArticleActivity, 2));
        return Unit.f71739a;
    }
}
