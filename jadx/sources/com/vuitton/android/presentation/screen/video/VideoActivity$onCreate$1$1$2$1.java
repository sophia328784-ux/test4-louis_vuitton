package com.vuitton.android.presentation.screen.video;

import androidx.media3.common.Player;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class VideoActivity$onCreate$1$1$2$1 extends FunctionReferenceImpl implements Function2<Player, Player.Events, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Player player = (Player) obj;
        Player.Events events = (Player.Events) obj2;
        player.getClass();
        events.getClass();
        ((VideoViewModel) this.receiver).d4(player, events);
        return Unit.f71739a;
    }
}
