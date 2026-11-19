package com.sightcall.libraries.archi.nucleus;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.operators.single.SingleNever;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0016¨\u0006\u0007"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/NoCommand;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "<init>", "()V", "execute", "Lio/reactivex/rxjava3/core/Single;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NoCommand implements Command {
    public static final NoCommand INSTANCE = new NoCommand();

    private NoCommand() {
    }

    @Override // com.sightcall.libraries.archi.nucleus.Command
    public Single<Action> execute() {
        SingleNever singleNever = SingleNever.f71067b;
        singleNever.getClass();
        return singleNever;
    }
}
