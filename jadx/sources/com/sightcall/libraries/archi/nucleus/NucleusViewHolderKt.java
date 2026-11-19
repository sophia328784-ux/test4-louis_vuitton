package com.sightcall.libraries.archi.nucleus;

import io.reactivex.rxjava3.core.Observable;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a;\u0010\b\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005j\u0002`\t2\u001e\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u000b\"\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\f*(\u0010\u0000\u001a\u0004\b\u0000\u0010\u0001\"\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002*\"\u0010\u0004\"\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00052\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005¨\u0006\r"}, d2 = {"Renderer", "S", "Lkotlin/Function1;", "", "Dispatcher", "", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "dispatch", "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;", "observables", "", "([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;", "archi_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class NucleusViewHolderKt {
    public static final List<Observable<Action>> dispatch(Observable<Action>... observableArr) {
        observableArr.getClass();
        return CollectionsKt.P(Arrays.copyOf(observableArr, observableArr.length));
    }
}
