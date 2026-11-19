package com.sightcall.libraries.archi.nucleus;

import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/NucleusState;", "S", "", "state", "Lio/reactivex/rxjava3/core/Observable;", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NucleusState<S> {
    Observable<S> getState();
}
