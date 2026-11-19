package com.lightup.sdk.device.features.process.datadownload;

import defpackage.r81;
import java.util.Objects;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.annotation.State;
import org.squirrelframework.foundation.fsm.annotation.States;
import org.squirrelframework.foundation.fsm.annotation.Transit;
import org.squirrelframework.foundation.fsm.annotation.Transitions;
import org.squirrelframework.foundation.fsm.impl.AbstractStateMachine;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
@States({@State(entryCallMethod = "triggerStartPackerStartTriggerTimers", initialState = true, name = "TRIGGER_START_PACKET"), @State(entryCallMethod = "killTimers", isFinal = true, name = "DONE"), @State(entryCallMethod = "killTimers", isFinal = true, name = "ERROR"), @State(entryCallMethod = "sendAckStartTransferTimers", name = "REQUEST_PAGE_TRANSFER"), @State(entryCallMethod = "handleValidation", name = "TRANSFER_VALIDATING"), @State(entryCallMethod = "sendKoStartTransferTimers", name = "TRANSFER_KO"), @State(entryCallMethod = "startValidationTimer", name = "WAITING_FOR_USER_VALIDATION"), @State(entryCallMethod = "sendDoneStartTransferTimers", name = "TRANSFER_DONE")})
@Transitions({@Transit(from = "TRIGGER_START_PACKET", on = "DEAD_TIMEOUT", to = "ERROR"), @Transit(callMethod = "triggerStartPacket", from = "TRIGGER_START_PACKET", on = "REPEAT_TIMEOUT", to = "TRIGGER_START_PACKET", type = TransitionType.INTERNAL), @Transit(callMethod = "flagTransferCanceled", from = "TRIGGER_START_PACKET", on = "TRANSFER_CANCELED", to = "ERROR"), @Transit(from = "TRIGGER_START_PACKET", on = "START_PACKET_RECEIVED", to = "REQUEST_PAGE_TRANSFER", when = StartTransfer.class), @Transit(from = "TRIGGER_START_PACKET", on = "START_PACKET_RECEIVED", to = "TRANSFER_VALIDATING", when = NoTransferValidation.class), @Transit(from = "TRIGGER_START_PACKET", on = "START_PACKET_RECEIVED", to = "TRANSFER_DONE", when = NoTransferNoValidation.class), @Transit(from = "REQUEST_PAGE_TRANSFER", on = "DEAD_TIMEOUT", to = "ERROR"), @Transit(callMethod = "sendAck", from = "REQUEST_PAGE_TRANSFER", on = "REPEAT_TIMEOUT", to = "REQUEST_PAGE_TRANSFER", type = TransitionType.INTERNAL), @Transit(callMethod = "sendAckResetTransferTimers", from = "REQUEST_PAGE_TRANSFER", on = "WANTED_PAGE_RECEIVED", to = "REQUEST_PAGE_TRANSFER", type = TransitionType.INTERNAL, when = DataIncomplete.class), @Transit(callMethod = "flagTransferCanceledKillTimers", from = "REQUEST_PAGE_TRANSFER", on = "TRANSFER_CANCELED", to = "TRANSFER_KO"), @Transit(callMethod = "flagProtocolErrorKillTimers", from = "REQUEST_PAGE_TRANSFER", on = "FUTURE_PAGE_RECEIVED", to = "TRANSFER_KO"), @Transit(callMethod = "killTimers", from = "REQUEST_PAGE_TRANSFER", on = "WANTED_PAGE_RECEIVED", to = "TRANSFER_VALIDATING", when = DataCompleteValidation.class), @Transit(callMethod = "killTimers", from = "REQUEST_PAGE_TRANSFER", on = "WANTED_PAGE_RECEIVED", to = "TRANSFER_DONE", when = DataCompleteNoValidation.class), @Transit(callMethod = "flagDeviceBusy", from = "TRANSFER_VALIDATING", on = "DEAD_TIMEOUT", to = "ERROR"), @Transit(callMethod = "sendValidating", from = "TRANSFER_VALIDATING", on = "REPEAT_TIMEOUT", to = "TRANSFER_VALIDATING", type = TransitionType.INTERNAL), @Transit(callMethod = "flagTransferCanceledKillTimers", from = "TRANSFER_VALIDATING", on = "TRANSFER_CANCELED", to = "TRANSFER_KO"), @Transit(callMethod = "killTimers", from = "TRANSFER_VALIDATING", on = "STATUS_VALIDATING_RECEIVED", to = "WAITING_FOR_USER_VALIDATION"), @Transit(callMethod = "koCheckAndFlagDeviceBusy", from = "TRANSFER_KO", on = "DEAD_TIMEOUT", to = "ERROR"), @Transit(callMethod = "sendKo", from = "TRANSFER_KO", on = "REPEAT_TIMEOUT", to = "TRANSFER_KO", type = TransitionType.INTERNAL), @Transit(callMethod = "flagKoAcknowledgedKillTransferRepeatTimer", from = "TRANSFER_KO", on = "STATUS_KO_RECEIVED", to = "TRANSFER_KO", type = TransitionType.INTERNAL), @Transit(from = "WAITING_FOR_USER_VALIDATION", on = "DEAD_TIMEOUT", to = "ERROR"), @Transit(callMethod = "flagTransferCanceledKillTimers", from = "WAITING_FOR_USER_VALIDATION", on = "TRANSFER_CANCELED", to = "TRANSFER_KO"), @Transit(callMethod = "killTimers", from = "WAITING_FOR_USER_VALIDATION", on = "TRANSFER_CONFIRMED", to = "TRANSFER_DONE"), @Transit(callMethod = "doneCheckAndFlagDeviceBusy", from = "TRANSFER_DONE", on = "DEAD_TIMEOUT", to = "DONE"), @Transit(callMethod = "sendDone", from = "TRANSFER_DONE", on = "REPEAT_TIMEOUT", to = "TRANSFER_DONE", type = TransitionType.INTERNAL), @Transit(callMethod = "flagDoneAcknowledgedKillRepeatTimer", from = "TRANSFER_DONE", on = "STATUS_DONE_RECEIVED", to = "TRANSFER_DONE", type = TransitionType.INTERNAL), @Transit(callMethod = "log", from = Browse.CAPS_WILDCARD, on = Browse.CAPS_WILDCARD, to = Browse.CAPS_WILDCARD)})
class DataPullStateMachine extends AbstractStateMachine<DataPullStateMachine, FsmState, FsmEvent, FsmContext> {
    private static final boolean DEBUG = false;
    private static final String TAG = "DataPullStateMachine";

    public static abstract class FsmContext {
    }

    public enum FsmEvent {
        REPEAT_TIMEOUT,
        DEAD_TIMEOUT,
        TRANSFER_CANCELED,
        TRANSFER_CONFIRMED,
        START_PACKET_RECEIVED,
        WANTED_PAGE_RECEIVED,
        FUTURE_PAGE_RECEIVED,
        STATUS_KO_RECEIVED,
        STATUS_VALIDATING_RECEIVED,
        STATUS_DONE_RECEIVED
    }

    public enum FsmState {
        ERROR,
        DONE,
        TRIGGER_START_PACKET,
        REQUEST_PAGE_TRANSFER,
        TRANSFER_VALIDATING,
        WAITING_FOR_USER_VALIDATION,
        TRANSFER_KO,
        TRANSFER_DONE
    }

    private void killRepeatTimer(FsmContext fsmContext) {
        throw null;
    }

    private void startTransferTimers(FsmContext fsmContext) {
        throw null;
    }

    /* JADX INFO: renamed from: afterTransitionCausedException, reason: avoid collision after fix types in other method */
    public void afterTransitionCausedException2(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) throws Throwable {
        Objects.toString(fsmState);
        Objects.toString(fsmState2);
        Objects.toString(fsmEvent);
        Objects.toString(fsmContext);
        getLastException();
        terminate();
    }

    public void doneCheckAndFlagDeviceBusy(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void flagDeviceBusy(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void flagDoneAcknowledgedKillRepeatTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void flagKoAcknowledgedKillTransferRepeatTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void flagProtocolErrorKillTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void flagTransferCanceled(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void flagTransferCanceledKillTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        killTimers(fsmState, fsmState2, fsmEvent, fsmContext);
        flagTransferCanceled(fsmState, fsmState2, fsmEvent, fsmContext);
    }

    public void handleValidation(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void killTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void koCheckAndFlagDeviceBusy(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void log(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
    }

    public void sendAck(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void sendAckResetTransferTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        killTimers(fsmState, fsmState2, fsmEvent, fsmContext);
        startTransferTimers(fsmContext);
        sendAck(fsmState, fsmState2, fsmEvent, fsmContext);
    }

    public void sendAckStartTransferTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        startTransferTimers(fsmContext);
        sendAck(fsmState, fsmState2, fsmEvent, fsmContext);
    }

    public void sendDone(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void sendDoneStartTransferTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        startTransferTimers(fsmContext);
        sendDone(fsmState, fsmState2, fsmEvent, fsmContext);
    }

    public void sendKo(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void sendKoStartTransferTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        startTransferTimers(fsmContext);
        sendKo(fsmState, fsmState2, fsmEvent, fsmContext);
    }

    public void sendValidating(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void startValidationTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void triggerStartPackerStartTriggerTimers(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public void triggerStartPacket(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        throw null;
    }

    public static class DataCompleteNoValidation implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public /* synthetic */ boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return isSatisfied2((FsmContext) null);
            }
            r81.h();
            return false;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return DataCompleteNoValidation.class.getSimpleName();
        }

        /* JADX INFO: renamed from: isSatisfied, reason: avoid collision after fix types in other method */
        public boolean isSatisfied2(FsmContext fsmContext) {
            return false;
        }
    }

    public static class DataCompleteValidation implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public /* synthetic */ boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return isSatisfied2((FsmContext) null);
            }
            r81.h();
            return false;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return DataCompleteValidation.class.getSimpleName();
        }

        /* JADX INFO: renamed from: isSatisfied, reason: avoid collision after fix types in other method */
        public boolean isSatisfied2(FsmContext fsmContext) {
            return false;
        }
    }

    public static class DataIncomplete implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public /* synthetic */ boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return isSatisfied2((FsmContext) null);
            }
            r81.h();
            return false;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return DataIncomplete.class.getSimpleName();
        }

        /* JADX INFO: renamed from: isSatisfied, reason: avoid collision after fix types in other method */
        public boolean isSatisfied2(FsmContext fsmContext) {
            return false;
        }
    }

    public static class NoTransferNoValidation implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public /* synthetic */ boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return isSatisfied2((FsmContext) null);
            }
            r81.h();
            return false;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return NoTransferNoValidation.class.getSimpleName();
        }

        /* JADX INFO: renamed from: isSatisfied, reason: avoid collision after fix types in other method */
        public boolean isSatisfied2(FsmContext fsmContext) {
            return false;
        }
    }

    public static class NoTransferValidation implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public /* synthetic */ boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return isSatisfied2((FsmContext) null);
            }
            r81.h();
            return false;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return NoTransferValidation.class.getSimpleName();
        }

        /* JADX INFO: renamed from: isSatisfied, reason: avoid collision after fix types in other method */
        public boolean isSatisfied2(FsmContext fsmContext) {
            return false;
        }
    }

    public static class StartTransfer implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public /* synthetic */ boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return isSatisfied2((FsmContext) null);
            }
            r81.h();
            return false;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return StartTransfer.class.getSimpleName();
        }

        /* JADX INFO: renamed from: isSatisfied, reason: avoid collision after fix types in other method */
        public boolean isSatisfied2(FsmContext fsmContext) {
            return false;
        }
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine
    public /* synthetic */ void afterTransitionCausedException(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) throws Throwable {
        FsmState fsmState3 = fsmState;
        FsmState fsmState4 = fsmState2;
        FsmEvent fsmEvent2 = fsmEvent;
        if (fsmContext == null) {
            afterTransitionCausedException2(fsmState3, fsmState4, fsmEvent2, (FsmContext) null);
        } else {
            r81.h();
        }
    }
}
