package com.sightcall.libraries.archi.nucleus;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.sightcall.libraries.rx.SubscriptionsKt;
import defpackage.ag0;
import defpackage.r81;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u001f\b\u0016\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0004\b\t\u0010\nB'\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0004\b\t\u0010\u000fB'\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0004\b\t\u0010\u0012J\f\u0010\"\u001a\u00020\u0017*\u00020#H\u0004R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00170\u0016j\b\u0012\u0004\u0012\u00028\u0001`\u0018X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR$\u0010\u001b\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u001d0\u001cj\u0002`\u001fX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;", "V", "Landroid/view/View;", "S", "", "Lcom/sightcall/libraries/archi/nucleus/ViewHolder;", "contentView", "nucleusInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "<init>", "(Landroid/view/View;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "resId", "", "(Landroid/content/Context;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", "rootView", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", "tagLog", "", "render", "Lkotlin/Function1;", "", "Lcom/sightcall/libraries/archi/nucleus/Renderer;", "getRender", "()Lkotlin/jvm/functions/Function1;", "dispatcher", "", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;", "getDispatcher", "()Ljava/util/List;", "startInteractions", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NucleusViewHolder<V extends View, S> extends ViewHolder<V> {
    private final List<Observable<Action>> dispatcher;
    private final NucleusInteractor<S> nucleusInteractor;
    private final Function1<S, Unit> render;
    private final String tagLog;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NucleusViewHolder(V v, NucleusInteractor<S> nucleusInteractor) {
        super(v);
        v.getClass();
        nucleusInteractor.getClass();
        String string = getClass().toString();
        string.getClass();
        this.tagLog = string;
        this.render = new ag0(21);
        this.dispatcher = NucleusViewHolderKt.dispatch(new Observable[0]);
        this.nucleusInteractor = nucleusInteractor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit render$lambda$0(Object obj) {
        obj.getClass();
        return Unit.f71739a;
    }

    public List<Observable<Action>> getDispatcher() {
        return this.dispatcher;
    }

    public Function1<S, Unit> getRender() {
        return this.render;
    }

    @Override // com.sightcall.libraries.archi.nucleus.ViewHolder
    public final void startInteractions(CompositeDisposable compositeDisposable) {
        compositeDisposable.getClass();
        Observable<S> state = this.nucleusInteractor.getState();
        Scheduler scheduler = AndroidSchedulers.f70017a;
        if (scheduler == null) {
            r81.d("scheduler == null");
            return;
        }
        Disposable disposableSubscribe = state.observeOn(scheduler).subscribe(new Consumer(this) { // from class: com.sightcall.libraries.archi.nucleus.NucleusViewHolder.startInteractions.1
            final /* synthetic */ NucleusViewHolder<V, S> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(S s) {
                s.getClass();
                this.this$0.getRender().invoke(s);
            }
        });
        disposableSubscribe.getClass();
        compositeDisposable.b(disposableSubscribe);
        if (getDispatcher().isEmpty()) {
            return;
        }
        Observable[] observableArr = (Observable[]) getDispatcher().toArray(new Observable[0]);
        Observable observableMergeArray = Observable.mergeArray((ObservableSource[]) Arrays.copyOf(observableArr, observableArr.length));
        observableMergeArray.getClass();
        Disposable disposableRelay = SubscriptionsKt.relay(observableMergeArray, this.nucleusInteractor.getActions());
        disposableRelay.getClass();
        compositeDisposable.b(disposableRelay);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NucleusViewHolder(Context context, int i2, NucleusInteractor<S> nucleusInteractor) {
        super(context, i2);
        context.getClass();
        nucleusInteractor.getClass();
        String string = getClass().toString();
        string.getClass();
        this.tagLog = string;
        this.render = new ag0(21);
        this.dispatcher = NucleusViewHolderKt.dispatch(new Observable[0]);
        this.nucleusInteractor = nucleusInteractor;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NucleusViewHolder(ViewGroup viewGroup, int i2, NucleusInteractor<S> nucleusInteractor) {
        super(viewGroup, i2);
        viewGroup.getClass();
        nucleusInteractor.getClass();
        String string = getClass().toString();
        string.getClass();
        this.tagLog = string;
        this.render = new ag0(21);
        this.dispatcher = NucleusViewHolderKt.dispatch(new Observable[0]);
        this.nucleusInteractor = nucleusInteractor;
    }
}
