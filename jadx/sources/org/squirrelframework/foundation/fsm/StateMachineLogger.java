package org.squirrelframework.foundation.fsm;

import com.google.common.base.Stopwatch;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.a;
import defpackage.n00;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.squirrelframework.foundation.exception.TransitionException;
import org.squirrelframework.foundation.fsm.annotation.OnActionExecException;
import org.squirrelframework.foundation.fsm.annotation.OnAfterActionExecuted;
import org.squirrelframework.foundation.fsm.annotation.OnBeforeActionExecuted;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineStart;
import org.squirrelframework.foundation.fsm.annotation.OnStateMachineTerminate;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionBegin;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionComplete;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionDecline;
import org.squirrelframework.foundation.fsm.annotation.OnTransitionException;

/* JADX INFO: loaded from: classes5.dex */
public class StateMachineLogger {
    private static final Logger logger = LoggerFactory.getLogger(StateMachineLogger.class);
    private Stopwatch actionWatch;
    private final StateMachine<?, ?, ?, ?> stateMachine;
    private final String stateMachineLabel;
    private Stopwatch transitionWatch;

    public StateMachineLogger(StateMachine<?, ?, ?, ?> stateMachine) {
        this.stateMachine = stateMachine;
        this.stateMachineLabel = stateMachine.getClass().getSimpleName() + "(" + stateMachine.getIdentifier() + ")";
    }

    @OnActionExecException
    public void onActionExecException(Action<?, ?, ?, ?> action, TransitionException transitionException) {
        logger.error("Error executing method call action \"" + action.name() + "\" caused by \"" + transitionException.getMessage() + "\"");
    }

    @OnAfterActionExecuted
    public void onAfterActionExecuted(Object obj, Object obj2, Object obj3, Object obj4, int[] iArr, Action<?, ?, ?, ?> action) {
        logger.info("After execute method call action \"" + action.name() + ":" + action.weight() + "\" which took " + this.actionWatch + FileUtils.HIDDEN_PREFIX);
    }

    @OnBeforeActionExecuted
    public void onBeforeActionExecuted(Object obj, Object obj2, Object obj3, Object obj4, int[] iArr, Action<?, ?, ?, ?> action) {
        Stopwatch stopwatch = new Stopwatch();
        stopwatch.a();
        this.actionWatch = stopwatch;
        Logger logger2 = logger;
        StringBuilder sb = new StringBuilder("Before execute method call action \"");
        sb.append(action.name());
        sb.append(":");
        sb.append(action.weight());
        sb.append("\" (");
        sb.append(iArr[0]);
        sb.append(" of ");
        logger2.info(a.i(iArr[1], ").", sb));
    }

    @OnStateMachineStart
    public void onStateMachineStart() {
        logger.info(n00.r(this.stateMachineLabel, ": Started.", new StringBuilder()));
    }

    @OnStateMachineTerminate
    public void onStateMachineTerminate() {
        logger.info(n00.r(this.stateMachineLabel, ": Terminated.", new StringBuilder()));
    }

    @OnTransitionBegin
    public void onTransitionBegin(Object obj, Object obj2, Object obj3) {
        Stopwatch stopwatch = new Stopwatch();
        stopwatch.a();
        this.transitionWatch = stopwatch;
        logger.info(this.stateMachineLabel + ": Transition from \"" + obj + "\" on \"" + obj2 + "\" with context \"" + obj3 + "\" begin.");
    }

    @OnTransitionComplete
    public void onTransitionComplete(Object obj, Object obj2, Object obj3, Object obj4) {
        logger.info(this.stateMachineLabel + ": Transition from \"" + obj + "\" to \"" + obj2 + "\" on \"" + obj3 + "\" complete which took " + this.transitionWatch + FileUtils.HIDDEN_PREFIX);
    }

    @OnTransitionDecline
    public void onTransitionDeclined(Object obj, Object obj2) {
        Logger logger2 = logger;
        StringBuilder sb = new StringBuilder();
        sb.append(this.stateMachineLabel);
        sb.append(": Transition from \"");
        sb.append(obj);
        sb.append("\" on \"");
        logger2.warn(a.n(sb, obj2, "\" declined."));
    }

    @OnTransitionException
    public void onTransitionException(Object obj, Object obj2, Object obj3, Object obj4, TransitionException transitionException) {
        Throwable targetException = transitionException.getTargetException();
        logger.error(this.stateMachineLabel + ": Transition from \"" + obj + "\" to \"" + obj2 + "\" on \"" + obj3 + "\" caused exception.", targetException);
    }

    public void startLogging() {
        this.stateMachine.addDeclarativeListener(this);
    }

    public void stopLogging() {
        this.stateMachine.removeDeclarativeListener(this);
    }
}
