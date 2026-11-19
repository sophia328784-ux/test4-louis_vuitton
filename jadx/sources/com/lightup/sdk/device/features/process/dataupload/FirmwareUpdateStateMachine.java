package com.lightup.sdk.device.features.process.dataupload;

import com.appsflyer.sdk_base.referrer.Payload;
import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import com.lightup.sdk.device.messages.MessageInfo;
import com.lightup.sdk.device.model.device.DeviceMessage;
import com.lightup.sdk.device.properties.Properties;
import com.lightup.sdk.device.utils.communication.ByteUtils;
import com.lightup.sdk.device.utils.firmware.UnsupportedDeviceException;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import defpackage.md;
import defpackage.tr;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.squirrelframework.foundation.fsm.Condition;
import org.squirrelframework.foundation.fsm.TransitionType;
import org.squirrelframework.foundation.fsm.annotation.State;
import org.squirrelframework.foundation.fsm.annotation.States;
import org.squirrelframework.foundation.fsm.annotation.Transit;
import org.squirrelframework.foundation.fsm.annotation.Transitions;
import org.squirrelframework.foundation.fsm.impl.AbstractStateMachine;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
@States({@State(exitCallMethod = "overClockBleTransmissionRate", initialState = true, name = "START"), @State(entryCallMethod = "cancelBleTransmissionRateOverclock", isFinal = true, name = "DONE"), @State(entryCallMethod = "cancelBleTransmissionRateOverclock", isFinal = true, name = "ERROR"), @State(entryCallMethod = "goToBootloaderStartTimer", exitCallMethod = "killTimer", name = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"), @State(entryCallMethod = "startTimer", exitCallMethod = "killTimer", name = "WAITING_FOR_LINK_UP"), @State(entryCallMethod = "waitForDownloadRequestStartTimer", exitCallMethod = "killTimer", name = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"), @State(entryCallMethod = "transferFirmware", exitCallMethod = "afterTransferFirmware", name = "TRANSFERRING_FIRMWARE"), @State(entryCallMethod = "startTimer", exitCallMethod = "killTimer", name = "WAITING_FOR_LINK_DOWN")})
@Transitions({@Transit(from = "START", on = "LINK_UP_IN_BOOTLOADER", to = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"), @Transit(from = "START", on = "LINK_UP_IN_FIRMWARE", to = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN", when = UpdateRequired.class), @Transit(callMethod = "unexpectedLinkDown", from = "START", on = "LINK_DOWN", to = "WAITING_FOR_LINK_UP"), @Transit(callMethod = "noUpdateRequiredError", from = "START", on = "LINK_UP_IN_FIRMWARE", to = "ERROR", when = NoUpdateRequired.class), @Transit(from = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN", on = "LINK_DOWN", to = "WAITING_FOR_LINK_UP"), @Transit(callMethod = "goToBootloaderStartTimer", from = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN", on = Payload.RESPONSE_TIMEOUT, to = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN", type = TransitionType.INTERNAL, when = GoToBootloaderTryAgain.class), @Transit(callMethod = "timeoutError", from = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN", on = Payload.RESPONSE_TIMEOUT, to = "ERROR", when = GoToBootloaderNoMoreTries.class), @Transit(callMethod = "resetGoToBootloaderAttemptCount", from = "WAITING_FOR_LINK_UP", on = "LINK_UP_IN_FIRMWARE", to = "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN", when = UpdateRequiredButNotStarted.class), @Transit(callMethod = "linkDownError", from = "WAITING_FOR_LINK_UP", on = Payload.RESPONSE_TIMEOUT, to = "ERROR"), @Transit(callMethod = "unexpectedError", from = "WAITING_FOR_LINK_UP", on = "LINK_UP_IN_FIRMWARE", to = "ERROR", when = UpdateRequiredAndStartedInconsistency.class), @Transit(from = "WAITING_FOR_LINK_UP", on = "LINK_UP_IN_FIRMWARE", to = "DONE", when = UpdateDone.class), @Transit(callMethod = "linkBackUp", from = "WAITING_FOR_LINK_UP", on = "LINK_UP_IN_BOOTLOADER", to = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"), @Transit(callMethod = "unexpectedLinkDown", from = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST", on = "LINK_DOWN", to = "WAITING_FOR_LINK_UP"), @Transit(callMethod = "timeoutError", from = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST", on = Payload.RESPONSE_TIMEOUT, to = "ERROR"), @Transit(from = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST", on = "DOWNLOAD_REQUEST", to = "TRANSFERRING_FIRMWARE"), @Transit(callMethod = "transferError", from = "TRANSFERRING_FIRMWARE", on = "TRANSFER_FAILURE", to = "ERROR", when = FirmwareUpdateNoMoreTries.class), @Transit(from = "TRANSFERRING_FIRMWARE", on = "TRANSFER_FAILURE", to = "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST", when = FirmwareUpdateTryAgain.class), @Transit(callMethod = "killFirmwareTransferUnexpectedLinkDown", from = "TRANSFERRING_FIRMWARE", on = "LINK_DOWN", to = "WAITING_FOR_LINK_UP"), @Transit(callMethod = "resetFirmwareUpdateAttemptCount", from = "TRANSFERRING_FIRMWARE", on = "TRANSFER_SUCCESS", to = "WAITING_FOR_LINK_DOWN"), @Transit(callMethod = "timeoutError", from = "WAITING_FOR_LINK_DOWN", on = Payload.RESPONSE_TIMEOUT, to = "ERROR"), @Transit(from = "WAITING_FOR_LINK_DOWN", on = "LINK_DOWN", to = "WAITING_FOR_LINK_UP"), @Transit(callMethod = "error", from = Browse.CAPS_WILDCARD, on = Browse.CAPS_WILDCARD, to = "ERROR")})
class FirmwareUpdateStateMachine extends AbstractStateMachine<FirmwareUpdateStateMachine, FsmState, FsmEvent, FsmContext> {
    protected static final boolean DEBUG = false;
    private static final String TAG = "FirmwareUpdateStateMachine";
    private boolean linkDownNotified = false;

    /* JADX INFO: renamed from: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateStateMachine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f36006a;

        static {
            int[] iArr = new int[FsmState.values().length];
            f36006a = iArr;
            try {
                iArr[FsmState.IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static class FirmwareUpdateNoMoreTries implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return fsmContext != null && fsmContext.f36008b >= 15;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return FirmwareUpdateNoMoreTries.class.getSimpleName();
        }
    }

    public static class FirmwareUpdateTryAgain implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return fsmContext != null && fsmContext.f36008b < 15;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return FirmwareUpdateTryAgain.class.getSimpleName();
        }
    }

    public static abstract class FsmContext {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f36007a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f36008b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f36009c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public FirmwareUpdateError f36010e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public AtomicBoolean f36011f;
        public Thread g;

        public final void a() {
            if (this.f36011f.getAndSet(false)) {
                ((FirmwareUpdate.AnonymousClass2) this).f35994h.requestBleTransmissionRateReinstatement();
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FsmContext{requiresUpdate=");
            sb.append(this.d);
            sb.append(", updateStarted=");
            sb.append(this.f36009c);
            sb.append(", firmwareUpdateAttempt=");
            sb.append(this.f36008b);
            sb.append(", goToBootloaderAttempt=");
            return tr.k(sb, this.f36007a, '}');
        }
    }

    public enum FsmEvent {
        LINK_DOWN,
        LINK_UP_IN_FIRMWARE,
        LINK_UP_IN_BOOTLOADER,
        DOWNLOAD_REQUEST,
        TRANSFER_FAILURE,
        TRANSFER_SUCCESS,
        TIMEOUT
    }

    public enum FsmState {
        START,
        ERROR,
        DONE,
        IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN,
        WAITING_FOR_LINK_UP,
        IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST,
        TRANSFERRING_FIRMWARE,
        WAITING_FOR_LINK_DOWN
    }

    public static class GoToBootloaderNoMoreTries implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return fsmContext != null && fsmContext.f36007a >= 8;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return GoToBootloaderNoMoreTries.class.getSimpleName();
        }
    }

    public static class GoToBootloaderTryAgain implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return fsmContext != null && fsmContext.f36007a < 8;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return GoToBootloaderTryAgain.class.getSimpleName();
        }
    }

    public static class NoUpdateRequired implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return (fsmContext == null || fsmContext.d) ? false : true;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return NoUpdateRequired.class.getSimpleName();
        }
    }

    public static class UpdateDone implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return (fsmContext == null || !fsmContext.f36009c || fsmContext.d) ? false : true;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return UpdateDone.class.getSimpleName();
        }
    }

    public static class UpdateRequired implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return fsmContext != null && fsmContext.d;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return UpdateRequired.class.getSimpleName();
        }
    }

    public static class UpdateRequiredAndStartedInconsistency implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            if (fsmContext == null) {
                return false;
            }
            boolean z = fsmContext.f36009c;
            if (z && fsmContext.d) {
                return true;
            }
            return (z || fsmContext.d) ? false : true;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return UpdateRequiredAndStartedInconsistency.class.getSimpleName();
        }
    }

    public static class UpdateRequiredButNotStarted implements Condition<FsmContext> {
        @Override // org.squirrelframework.foundation.fsm.Condition
        public boolean isSatisfied(FsmContext fsmContext) {
            return (fsmContext == null || fsmContext.f36009c || !fsmContext.d) ? false : true;
        }

        @Override // org.squirrelframework.foundation.fsm.Condition
        public String name() {
            return UpdateRequiredButNotStarted.class.getSimpleName();
        }
    }

    public void afterTransferFirmware(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        if (fsmEvent != FsmEvent.TRANSFER_SUCCESS) {
            fsmContext.a();
        }
    }

    @Override // org.squirrelframework.foundation.fsm.impl.AbstractStateMachine
    public void afterTransitionCausedException(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) throws Throwable {
        Objects.toString(fsmState);
        Objects.toString(fsmState2);
        Objects.toString(fsmEvent);
        Objects.toString(fsmContext);
        getLastException();
        terminate();
    }

    public void cancelBleTransmissionRateOverclock(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.a();
    }

    public void error(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
    }

    public void goToBootloaderStartTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) throws UnsupportedDeviceException {
        startTimer(fsmState, fsmState2, fsmEvent, fsmContext);
        fsmContext.f36007a++;
        MessageInfo messageInfo = MessageInfo.SMARTPHONE_TO_DEVICE_GO_TO_BOOTLOADER;
        ByteUtils.ByteBuilder byteBuilder = new ByteUtils.ByteBuilder(messageInfo.d());
        byteBuilder.c(messageInfo.b(), 1);
        byteBuilder.b(Properties.r);
        FirmwareUpdate.AnonymousClass2 anonymousClass2 = (FirmwareUpdate.AnonymousClass2) fsmContext;
        BLEDevicesManager bLEDevicesManager = anonymousClass2.f35994h;
        BLEDevice bLEDevice = anonymousClass2.f35995i;
        byteBuilder.a(Arrays.equals(bLEDevice.getBleDeviceFirmwareChecksums().bootloaderChecksum, bLEDevicesManager.getFirmwareManager(bLEDevice.getDeviceId()).c(bLEDevice.getDeviceId()).f36046j) ? (byte) 1 : (byte) 2);
        FirmwareUpdate.this.putMessage(new DeviceMessage(byteBuilder.f36034a));
    }

    public void killFirmwareTransferUnexpectedLinkDown(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        FirmwareUpdate firmwareUpdate = FirmwareUpdate.this;
        if (firmwareUpdate.currentDataUpdate != null && firmwareUpdate.currentDataUpdate.isAlive()) {
            firmwareUpdate.currentDataUpdate.interrupt();
        }
        unexpectedLinkDown(fsmState, fsmState2, fsmEvent, fsmContext);
    }

    public void killTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        synchronized (fsmContext) {
            Thread thread = fsmContext.g;
            if (thread != null) {
                thread.interrupt();
            }
        }
    }

    public void linkBackUp(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        if (this.linkDownNotified) {
            this.linkDownNotified = false;
            FirmwareUpdate.this.linkBackUp();
        }
    }

    public void linkDownError(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36010e = FirmwareUpdateError.CONNECTION_LOST;
    }

    public void noUpdateRequiredError(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36010e = FirmwareUpdateError.NO_UPDATE_REQUIRED;
    }

    public void overClockBleTransmissionRate(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        if (fsmContext.f36011f.getAndSet(true)) {
            return;
        }
        ((FirmwareUpdate.AnonymousClass2) fsmContext).f35994h.requestBleTransmissionRateOverclock();
    }

    public void resetFirmwareUpdateAttemptCount(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36008b = 0;
    }

    public void resetGoToBootloaderAttemptCount(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36007a = 0;
    }

    public void startTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, final FsmContext fsmContext) {
        final int i2 = AnonymousClass1.f36006a[fsmState2.ordinal()] != 1 ? NBSApplicationStateMonitor.ALTERNATEPERIOD : 5000;
        synchronized (fsmContext) {
            Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateStateMachine.FsmContext.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(i2);
                        final FsmContext fsmContext2 = FsmContext.this;
                        final FirmwareUpdateStateMachine firmwareUpdateStateMachine = this;
                        fsmContext2.getClass();
                        new Thread(new Runnable() { // from class: com.lightup.sdk.device.features.process.dataupload.FirmwareUpdateStateMachine.FsmContext.2
                            @Override // java.lang.Runnable
                            public void run() {
                                FsmEvent fsmEvent2 = FsmEvent.TIMEOUT;
                                if (firmwareUpdateStateMachine.isTerminated() || firmwareUpdateStateMachine.isError()) {
                                    boolean z = FirmwareUpdateStateMachine.DEBUG;
                                    Objects.toString(fsmEvent2);
                                    Objects.toString(firmwareUpdateStateMachine.getCurrentState());
                                    toString();
                                    return;
                                }
                                if (!firmwareUpdateStateMachine.canAccept(fsmEvent2)) {
                                    boolean z2 = FirmwareUpdateStateMachine.DEBUG;
                                    Objects.toString(firmwareUpdateStateMachine.getCurrentState());
                                    toString();
                                } else {
                                    try {
                                        firmwareUpdateStateMachine.fire(fsmEvent2, FsmContext.this);
                                    } catch (IllegalStateException unused) {
                                        boolean z3 = FirmwareUpdateStateMachine.DEBUG;
                                        Objects.toString(firmwareUpdateStateMachine.getCurrentState());
                                        toString();
                                    }
                                }
                            }
                        }).start();
                    } catch (InterruptedException e2) {
                        boolean z = FirmwareUpdateStateMachine.DEBUG;
                        e2.getMessage();
                        Thread.currentThread().interrupt();
                    }
                }
            });
            fsmContext.g = thread;
            thread.start();
        }
    }

    public void timeoutError(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36010e = FirmwareUpdateError.TIMEOUT;
    }

    public void transferError(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36010e = FirmwareUpdateError.TRANSFER_ERROR;
    }

    public void transferFirmware(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        byte[] bArr;
        fsmContext.f36008b++;
        FirmwareUpdate.AnonymousClass2 anonymousClass2 = (FirmwareUpdate.AnonymousClass2) fsmContext;
        int[] iArr = FirmwareUpdate.AnonymousClass9.f35999a;
        FirmwareUpdate firmwareUpdate = FirmwareUpdate.this;
        int i2 = iArr[firmwareUpdate.transferType.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                bArr = firmwareUpdate.bleDeviceFirmwareBundle.f36047k;
                firmwareUpdate.totalNumberOfSteps = firmwareUpdate.totalNumberOfSteps != 0 ? firmwareUpdate.totalNumberOfSteps : 3;
                firmwareUpdate.currentStep = 1;
            } else if (i2 != 3) {
                md.k("dis should not happen");
                return;
            } else {
                bArr = firmwareUpdate.bleDeviceFirmwareBundle.f36044h;
                firmwareUpdate.totalNumberOfSteps = firmwareUpdate.totalNumberOfSteps != 0 ? firmwareUpdate.totalNumberOfSteps : 2;
                firmwareUpdate.currentStep = firmwareUpdate.totalNumberOfSteps - 1;
            }
        } else {
            bArr = firmwareUpdate.bleDeviceFirmwareBundle.f36040b;
            firmwareUpdate.totalNumberOfSteps = firmwareUpdate.totalNumberOfSteps != 0 ? firmwareUpdate.totalNumberOfSteps : 1;
            firmwareUpdate.currentStep = firmwareUpdate.totalNumberOfSteps;
        }
        firmwareUpdate.currentDataUpdate = new DataUpdate(MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_DATA, MessageInfo.DEVICE_TO_SMARTPHONE_PROGRAM_DOWNLOAD_ACK, MessageInfo.SMARTPHONE_TO_DEVICE_PROGRAM_DOWNLOAD_STATUS, bArr, anonymousClass2.f35996j, firmwareUpdate.dataUpdateProcessListener, anonymousClass2.f35997k);
        firmwareUpdate.currentDataUpdate.start();
    }

    public void unexpectedError(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        fsmContext.f36010e = FirmwareUpdateError.UNEXPECTED_ERROR;
    }

    public void unexpectedLinkDown(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        if (this.linkDownNotified) {
            return;
        }
        this.linkDownNotified = true;
        FirmwareUpdate.this.linkBroken();
    }

    public void waitForDownloadRequestStartTimer(FsmState fsmState, FsmState fsmState2, FsmEvent fsmEvent, FsmContext fsmContext) {
        startTimer(fsmState, fsmState2, fsmEvent, fsmContext);
        fsmContext.f36009c = true;
    }
}
