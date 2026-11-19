package com.sightcall.libraries.archi.nucleus;

import defpackage.o7;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.single.SingleFromCallable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u001a\u001a\u0010\u0007\u001a\u00020\u0001\"\b\b\u0000\u0010\b*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\b0\t¨\u0006\n"}, d2 = {"simpleCommand", "Lcom/sightcall/libraries/archi/nucleus/Command;", "nextAction", "Lcom/sightcall/libraries/archi/nucleus/Action;", "function", "Lkotlin/Function0;", "", "asCommand", "A", "Lio/reactivex/rxjava3/core/Single;", "archi_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class CommandsKt {

    /* JADX INFO: renamed from: com.sightcall.libraries.archi.nucleus.CommandsKt$simpleCommand$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/sightcall/libraries/archi/nucleus/CommandsKt$simpleCommand$1", "Lcom/sightcall/libraries/archi/nucleus/Command;", "execute", "Lio/reactivex/rxjava3/core/Single;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class C03751 implements Command {
        final /* synthetic */ Function0<Unit> $function;
        final /* synthetic */ Action $nextAction;

        public C03751(Function0<Unit> function0, Action action) {
            this.$function = function0;
            this.$nextAction = action;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Action execute$lambda$0(Function0 function0, Action action) {
            function0.mo47invoke();
            return action;
        }

        @Override // com.sightcall.libraries.archi.nucleus.Command
        public Single<Action> execute() {
            return new SingleFromCallable(new o7(this.$function, this.$nextAction, 1));
        }
    }

    public static final <A extends Action> Command asCommand(final Single<A> single) {
        single.getClass();
        return new Command() { // from class: com.sightcall.libraries.archi.nucleus.CommandsKt.asCommand.1
            @Override // com.sightcall.libraries.archi.nucleus.Command
            public Single<Action> execute() {
                Single<A> single2 = single;
                single2.getClass();
                return single2.d(Functions.b(Action.class));
            }
        };
    }

    public static final Command simpleCommand(Action action, Function0<Unit> function0) {
        action.getClass();
        function0.getClass();
        return new C03751(function0, action);
    }

    public static /* synthetic */ Command simpleCommand$default(Action action, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            action = DoNothing.INSTANCE;
        }
        return simpleCommand(action, function0);
    }
}
