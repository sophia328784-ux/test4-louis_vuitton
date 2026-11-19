package net.rtccloud.sdk;

import net.rtccloud.sdk.event.call.RecordingEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class RecordingModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.RECORDING);
    private final Call call;
    private boolean isTeardown;
    private final Native nativeInterface;
    private final Rtcc rtcc;
    private Status status = Status.UNDEFINED;

    public enum Mode {
        AUDIO_ONLY(5),
        AUDIO_AND_VIDEO(7);

        private final int value;

        Mode(int i2) {
            this.value = i2;
        }

        public static Mode getMode(int i2) {
            for (Mode mode : values()) {
                if (mode.value == i2) {
                    return mode;
                }
            }
            return null;
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.RecordingModule.Native.1
            @Override // net.rtccloud.sdk.RecordingModule.Native
            public void start(String str, Mode mode) {
                Jni.nStartRecording(str, mode.value);
            }
        };

        void start(String str, Mode mode);
    }

    public enum Status {
        UNDEFINED,
        RECORDING,
        PAUSED,
        STOPPED
    }

    public RecordingModule(Rtcc rtcc, Call call, Native r4) {
        this.rtcc = rtcc;
        this.call = call;
        this.nativeInterface = r4;
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("RecordingModule must not be [teardown]");
        return false;
    }

    private boolean ensureReady() {
        if (!ensureNotTeardown()) {
            return false;
        }
        OldLogger oldLogger = log;
        return Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this.call.conference());
    }

    private boolean ensureStatus(Status status, Status status2) {
        Status status3 = this.status;
        if (status3 == status || status3 == status2) {
            return true;
        }
        log.i("The [recording] must be [%s] or [%s] but is [%s]", status, status2, status3);
        return false;
    }

    public void bookmark() {
        log.d("bookmark()");
        if (ensureReady() && ensureStatus(Status.RECORDING)) {
            Call call = this.call;
            call.nativeInterface.control(Call.Control.BOOKMARK, call.id, -1);
        }
    }

    public Status getStatus() {
        return this.status;
    }

    public void handle(int i2) {
        if (i2 == 29088) {
            this.status = Status.RECORDING;
            this.rtcc.bus.post(new RecordingEvent(this.call, true));
        } else if (i2 == 29089) {
            this.status = Status.PAUSED;
            this.rtcc.bus.post(new RecordingEvent(this.call, false));
        } else {
            if (i2 != 29104) {
                return;
            }
            this.status = Status.STOPPED;
            this.rtcc.bus.post(new RecordingEvent(this.call, false));
        }
    }

    public boolean isPaused() {
        return this.status == Status.PAUSED;
    }

    public boolean isRecording() {
        return this.status == Status.RECORDING;
    }

    public boolean isStarted() {
        Status status = this.status;
        return status == Status.RECORDING || status == Status.PAUSED;
    }

    public boolean isStopped() {
        return this.status == Status.STOPPED;
    }

    public void pause() {
        log.d("pause()");
        if (ensureReady() && ensureStatus(Status.RECORDING)) {
            Call call = this.call;
            call.nativeInterface.control(Call.Control.PAUSERECORD, call.id, -1);
        }
    }

    public void resume() {
        log.d("resume()");
        if (ensureReady() && ensureStatus(Status.PAUSED)) {
            Call call = this.call;
            call.nativeInterface.control(Call.Control.RESUMERECORD, call.id, -1);
        }
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void start(String str, Mode mode) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("start(%s, %s)", str, mode);
        }
        if (str == null) {
            throw RtccExceptions.newNullPointerException("Recording [url] must not be null");
        }
        if (ensureReady() && ensureStatus(Status.UNDEFINED)) {
            this.nativeInterface.start(str, mode);
        }
    }

    public void stop() {
        log.d("stop()");
        if (ensureReady() && ensureStatus(Status.RECORDING, Status.PAUSED)) {
            Call call = this.call;
            call.nativeInterface.control(Call.Control.STOPRECORD, call.id, -1);
        }
    }

    public void teardown() {
        this.isTeardown = true;
        this.status = Status.UNDEFINED;
    }

    private boolean ensureStatus(Status status) {
        Status status2 = this.status;
        if (status2 == status) {
            return true;
        }
        log.i("The [recording] must be [%s] but is [%s]", status, status2);
        return false;
    }

    public void start(String str) {
        start(str, Mode.AUDIO_AND_VIDEO);
    }
}
