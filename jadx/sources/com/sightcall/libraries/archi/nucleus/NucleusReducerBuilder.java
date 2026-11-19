package com.sightcall.libraries.archi.nucleus;

import defpackage.kw;
import defpackage.xe0;
import defpackage.z4;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.full.KClasses;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001 B\u0007¢\u0006\u0004\b\u0003\u0010\u0004JK\u0010\u000e\u001aG\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0011¢\u0006\u0002\b\fJC\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\b\b\u0001\u0010\u0013*\u00020\t2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\b\fJC\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\b\b\u0001\u0010\u0013*\u00020\t2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\u0002\b\fJO\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\b\b\u0001\u0010\u0013*\u00020\t2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00072)\u0010\u0015\u001a%\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\b¢\u0006\u0002\b\fJ<\u0010\u0018\u001a\u00020\u0019\"\b\b\u0001\u0010\u0013*\u00020\t*\b\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\b\fH\u0086\u0004J<\u0010\u001a\u001a\u00020\u0019\"\b\b\u0001\u0010\u0013*\u00020\t*\b\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\u0002\b\fH\u0086\u0004J+\u0010\u001b\u001a\u00020\u0019\"\b\b\u0001\u0010\u0013*\u00020\t*\b\u0012\u0004\u0012\u0002H\u00130\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u001dH\u0086\u0004JH\u0010\u001e\u001a\u00020\u0019\"\b\b\u0001\u0010\u0013*\u00020\t*\b\u0012\u0004\u0012\u0002H\u00130\u00072)\u0010\u0015\u001a%\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\b¢\u0006\u0002\b\fH\u0086\u0004JG\u0010\u001f\u001a\u00020\u0019\"\b\b\u0001\u0010\u0013*\u00020\t*\b\u0012\u0004\u0012\u0002H\u00130\u00072)\u0010\u0015\u001a%\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\b¢\u0006\u0002\b\fH\u0002RQ\u0010\u0005\u001aE\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u00127\u00125\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\bj\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t`\r¢\u0006\u0002\b\f0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;", "S", "", "<init>", "()V", "predicates", "", "Lkotlin/reflect/KClass;", "Lkotlin/Function2;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "Lkotlin/Pair;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReduceFun;", "build", "Lkotlin/Function3;", "Lcom/sightcall/libraries/archi/nucleus/Nucleus;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;", "registerStateChange", "A", "kClass", "reduce", "registerCommandChange", "registerBothChange", "changesState", "", "changesCommand", "executesSimpleCommand", "function", "Lkotlin/Function0;", "changesBoth", "addReducer", "DuplicatedActionException", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NucleusReducerBuilder<S> {
    private final Map<KClass<?>, Function2<S, Action, Pair<S, Command>>> predicates = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder$DuplicatedActionException;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "action", "Lkotlin/reflect/KClass;", "<init>", "(Lkotlin/reflect/KClass;)V", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class DuplicatedActionException extends IllegalStateException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DuplicatedActionException(KClass<?> kClass) {
            super("Action " + kClass + " already present in the reducer");
            kClass.getClass();
        }
    }

    private final <A extends Action> void addReducer(KClass<A> kClass, Function2<? super S, ? super A, ? extends Pair<? extends S, ? extends Command>> function2) {
        if (this.predicates.get(kClass) != null) {
            throw new DuplicatedActionException(kClass);
        }
        Map<KClass<?>, Function2<S, Action, Pair<S, Command>>> map = this.predicates;
        function2.getClass();
        TypeIntrinsics.e(2, function2);
        map.put(kClass, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair build$lambda$0(NucleusReducerBuilder nucleusReducerBuilder, Nucleus nucleus, Pair pair, Action action) {
        Pair pair2;
        nucleus.getClass();
        pair.getClass();
        action.getClass();
        Object obj = pair.f71705b;
        KClass kClassB = Reflection.f71922a.b(action.getClass());
        Function2<S, Action, Pair<S, Command>> function2 = nucleusReducerBuilder.predicates.get(kClassB);
        if (function2 == null) {
            Map<KClass<?>, Function2<S, Action, Pair<S, Command>>> map = nucleusReducerBuilder.predicates;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<KClass<?>, Function2<S, Action, Pair<S, Command>>> entry : map.entrySet()) {
                if (KClasses.a(kClassB, entry.getKey())) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            function2 = (Function2) CollectionsKt.C(linkedHashMap.values());
        }
        return (function2 == null || (pair2 = (Pair) function2.invoke(obj, action)) == null) ? new Pair(obj, NoCommand.INSTANCE) : pair2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair changesCommand$lambda$0(Function2 function2, Object obj, Action action) {
        obj.getClass();
        action.getClass();
        return new Pair(obj, function2.invoke(obj, action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair changesState$lambda$0(Function2 function2, Object obj, Action action) {
        obj.getClass();
        action.getClass();
        return new Pair(function2.invoke(obj, action), NoCommand.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair executesSimpleCommand$lambda$0(Function0 function0, Object obj, Action action) {
        obj.getClass();
        action.getClass();
        return new Pair(obj, CommandsKt.simpleCommand$default(null, function0, 1, null));
    }

    public final Function3<Nucleus<S>, Pair<? extends S, ? extends Command>, Action, Pair<S, Command>> build() {
        return new xe0(this, 2);
    }

    public final <A extends Action> void changesBoth(KClass<A> kClass, Function2<? super S, ? super A, ? extends Pair<? extends S, ? extends Command>> function2) {
        kClass.getClass();
        function2.getClass();
        addReducer(kClass, function2);
    }

    public final <A extends Action> void changesCommand(KClass<A> kClass, Function2<? super S, ? super A, ? extends Command> function2) {
        kClass.getClass();
        function2.getClass();
        z4 z4Var = new z4(7, function2);
        TypeIntrinsics.e(2, z4Var);
        addReducer(kClass, z4Var);
    }

    public final <A extends Action> void changesState(KClass<A> kClass, Function2<? super S, ? super A, ? extends S> function2) {
        kClass.getClass();
        function2.getClass();
        z4 z4Var = new z4(6, function2);
        TypeIntrinsics.e(2, z4Var);
        addReducer(kClass, z4Var);
    }

    public final <A extends Action> void executesSimpleCommand(KClass<A> kClass, Function0<Unit> function0) {
        kClass.getClass();
        function0.getClass();
        kw kwVar = new kw(function0, 12);
        TypeIntrinsics.e(2, kwVar);
        addReducer(kClass, kwVar);
    }

    public final <A extends Action> NucleusReducerBuilder<S> registerBothChange(KClass<A> kClass, Function2<? super S, ? super A, ? extends Pair<? extends S, ? extends Command>> reduce) {
        kClass.getClass();
        reduce.getClass();
        changesBoth(kClass, reduce);
        return this;
    }

    public final <A extends Action> NucleusReducerBuilder<S> registerCommandChange(KClass<A> kClass, Function2<? super S, ? super A, ? extends Command> reduce) {
        kClass.getClass();
        reduce.getClass();
        changesCommand(kClass, reduce);
        return this;
    }

    public final <A extends Action> NucleusReducerBuilder<S> registerStateChange(KClass<A> kClass, Function2<? super S, ? super A, ? extends S> reduce) {
        kClass.getClass();
        reduce.getClass();
        changesState(kClass, reduce);
        return this;
    }
}
