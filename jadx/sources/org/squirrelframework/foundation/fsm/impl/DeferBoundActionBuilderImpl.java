package org.squirrelframework.foundation.fsm.impl;

import com.google.common.base.Function;
import com.google.common.collect.Lists;
import java.util.Collections;
import java.util.List;
import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.fsm.Action;
import org.squirrelframework.foundation.fsm.ActionWrapper;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.Conditions;
import org.squirrelframework.foundation.fsm.StateMachine;
import org.squirrelframework.foundation.fsm.builder.DeferBoundActionBuilder;
import org.squirrelframework.foundation.fsm.builder.DeferBoundActionFrom;
import org.squirrelframework.foundation.fsm.builder.DeferBoundActionTo;
import org.squirrelframework.foundation.fsm.builder.On;
import org.squirrelframework.foundation.fsm.builder.When;

/* JADX INFO: loaded from: classes5.dex */
public class DeferBoundActionBuilderImpl<T extends StateMachine<T, S, E, C>, S, E, C> implements DeferBoundActionBuilder<T, S, E, C>, DeferBoundActionFrom<T, S, E, C>, DeferBoundActionTo<T, S, E, C>, On<T, S, E, C>, SquirrelComponent {
    private Condition<C> condition;
    private DeferBoundActionInfo<T, S, E, C> deferBoundActionInfo;
    private final List<DeferBoundActionInfo<T, S, E, C>> deferBoundActionInfoList;
    private final ExecutionContext executionContext;
    private S from;
    private S to;

    public DeferBoundActionBuilderImpl(List<DeferBoundActionInfo<T, S, E, C>> list, ExecutionContext executionContext) {
        this.deferBoundActionInfoList = list;
        this.executionContext = executionContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Action<T, S, E, C> warpConditionalAction(Action<T, S, E, C> action) {
        return new ActionWrapper<T, S, E, C>(action) { // from class: org.squirrelframework.foundation.fsm.impl.DeferBoundActionBuilderImpl.2
            @Override // org.squirrelframework.foundation.fsm.ActionWrapper, org.squirrelframework.foundation.fsm.Action
            public void execute(S s, S s2, E e2, C c2, T t) {
                if (Conditions.isSatified(DeferBoundActionBuilderImpl.this.condition, c2)) {
                    super.execute(s, s2, e2, c2, t);
                }
            }
        };
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void callMethod(String str) {
        perform(FSM.newMethodCallActionProxy(str, this.executionContext));
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void evalMvel(String str) {
        perform(FSM.newMvelAction(str, this.executionContext));
    }

    @Override // org.squirrelframework.foundation.fsm.builder.DeferBoundActionBuilder
    public DeferBoundActionFrom<T, S, E, C> from(S s) {
        this.from = s;
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.DeferBoundActionBuilder
    public DeferBoundActionFrom<T, S, E, C> fromAny() {
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.DeferBoundActionTo
    public On<T, S, E, C> on(E e2) {
        DeferBoundActionInfo<T, S, E, C> deferBoundActionInfo = new DeferBoundActionInfo<>(this.from, this.to, e2);
        this.deferBoundActionInfo = deferBoundActionInfo;
        this.deferBoundActionInfoList.add(deferBoundActionInfo);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.DeferBoundActionTo
    public On<T, S, E, C> onAny() {
        DeferBoundActionInfo<T, S, E, C> deferBoundActionInfo = new DeferBoundActionInfo<>(this.from, this.to, null);
        this.deferBoundActionInfo = deferBoundActionInfo;
        this.deferBoundActionInfoList.add(deferBoundActionInfo);
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(Action<T, S, E, C> action) {
        Condition<C> condition = this.condition;
        DeferBoundActionInfo<T, S, E, C> deferBoundActionInfo = this.deferBoundActionInfo;
        if (condition == null) {
            deferBoundActionInfo.setActions(Collections.singletonList(action));
        } else {
            deferBoundActionInfo.setActions(Collections.singletonList(warpConditionalAction(action)));
        }
    }

    @Override // org.squirrelframework.foundation.fsm.builder.DeferBoundActionFrom
    public DeferBoundActionTo<T, S, E, C> to(S s) {
        this.to = s;
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.DeferBoundActionFrom
    public DeferBoundActionTo<T, S, E, C> toAny() {
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.On
    public When<T, S, E, C> when(Condition<C> condition) {
        this.condition = condition;
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.On
    public When<T, S, E, C> whenMvel(String str) {
        this.condition = FSM.newMvelCondition(str, this.executionContext.getScriptManager());
        return this;
    }

    @Override // org.squirrelframework.foundation.fsm.builder.When
    public void perform(List<? extends Action<T, S, E, C>> list) {
        if (this.condition == null) {
            this.deferBoundActionInfo.setActions(list);
        } else {
            this.deferBoundActionInfo.setActions(Lists.d(new Function<Action<T, S, E, C>, Action<T, S, E, C>>() { // from class: org.squirrelframework.foundation.fsm.impl.DeferBoundActionBuilderImpl.1
                @Override // com.google.common.base.Function
                public Action<T, S, E, C> apply(Action<T, S, E, C> action) {
                    return DeferBoundActionBuilderImpl.this.warpConditionalAction(action);
                }
            }, list));
        }
    }
}
