package net.rtccloud.sdk;

import android.text.TextUtils;
import defpackage.d21;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class Participant {
    static final int UNKNOWN_ID = -1;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.PARTICIPANT);
    Call call;
    String displayName;
    boolean isAdmin;
    boolean isDeafened;
    private boolean isLocked;
    private boolean isMuteUpdateNeeded;
    boolean isMuted;
    private boolean isMyself;
    private boolean isTeardown;
    public boolean keep;
    Rtcc rtcc;
    private String uid;
    int id = -1;
    WeakReference<VideoConsumer> videoConsumerReference = new WeakReference<>(null);
    final AtomicBoolean isSendingVideo = new AtomicBoolean(false);
    private final AtomicBoolean isTalking = new AtomicBoolean(false);
    private final Native nativeInterface = Native.JNI;

    public enum Control {
        HANDUP(36),
        HANDDOWN(37),
        MUTEALL(38),
        UNMUTEALL(39),
        LOCK(40),
        UNLOCK(41),
        MUTE(42),
        UNMUTE(43),
        DEAFEN(44),
        UNDEAFEN(45),
        KICK(46),
        DEAFENALL(51),
        UNDEAFENALL(52),
        LOCK_SPEAKER(53),
        UNLOCK_SPEAKER(54);

        private final int value;

        Control(int i2) {
            this.value = i2;
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.Participant.Native.1
            @Override // net.rtccloud.sdk.Participant.Native
            public void control(final Control control, final int i2) {
                Call.Native.JNI.executor().execute(new Runnable() { // from class: net.rtccloud.sdk.Participant.Native.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nSendParticipantControl(control.value, i2);
                    }
                });
            }
        };

        void control(Control control, int i2);
    }

    private Participant() {
    }

    public static Participant createMyself(Rtcc rtcc, Call call, boolean z) {
        Participant participant = new Participant();
        participant.rtcc = rtcc;
        participant.call = call;
        participant.isMyself = true;
        participant.isAdmin = z;
        return participant;
    }

    public static Participant createRemote(Rtcc rtcc, Call call, String str) {
        Participant participant = new Participant();
        participant.rtcc = rtcc;
        participant.call = call;
        participant.displayName = str;
        return participant;
    }

    public static Participant createTemporary(int i2, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        Participant participant = new Participant();
        participant.id = i2;
        participant.uid = str;
        participant.displayName = str2;
        participant.isDeafened = z;
        participant.isMuted = z2;
        participant.isAdmin = z3;
        participant.isSendingVideo.set(z4);
        participant.isTalking.set(z5);
        participant.isLocked = z6;
        return participant;
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("Participant must not be [teardown]");
        return false;
    }

    private void teardownConsumer() {
        VideoConsumer videoConsumer = this.videoConsumerReference.get();
        if (videoConsumer != null) {
            if (videoConsumer.isStarted()) {
                videoConsumer.onStop();
            }
            videoConsumer.onUnbind();
            if (videoConsumer.participant() != null) {
                log.i("The consumer [%s] should release its participant to avoid leak", videoConsumer);
            }
            this.videoConsumerReference.clear();
        }
    }

    public Call call() {
        return this.call;
    }

    public void deafen(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("deafen(%b)", Boolean.valueOf(z));
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this.call.conference())) {
            if (this.isDeafened == z) {
                if (z) {
                    oldLogger.i("Participant is already [deafened]");
                } else {
                    oldLogger.i("Participant is not [deafened]");
                }
            }
            Native r0 = this.nativeInterface;
            if (z) {
                r0.control(Control.DEAFEN, this.id);
            } else {
                r0.control(Control.UNDEAFEN, this.id);
            }
        }
    }

    public String displayName() {
        return this.displayName;
    }

    public int id() {
        return this.id;
    }

    public boolean isAdmin() {
        return this.isAdmin;
    }

    public boolean isDeafened() {
        return this.isDeafened;
    }

    public boolean isLocked() {
        return this.isLocked;
    }

    public boolean isMuted() {
        return this.isMuted;
    }

    public boolean isSendingVideo() {
        return this.isSendingVideo.get();
    }

    public boolean isTalking() {
        return this.isTalking.get();
    }

    public void kick() {
        OldLogger oldLogger = log;
        oldLogger.d("kick()");
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this.call.conference())) {
            this.nativeInterface.control(Control.KICK, this.id);
        }
    }

    public void lock(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("lock(%b)", Boolean.valueOf(z));
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this.call.conference())) {
            if (this.isLocked == z) {
                if (z) {
                    oldLogger.i("Participant is already [locked]");
                } else {
                    oldLogger.i("Participant is not [locked]");
                }
            }
            Native r0 = this.nativeInterface;
            if (z) {
                r0.control(Control.LOCK_SPEAKER, this.id);
            } else {
                r0.control(Control.UNLOCK_SPEAKER, this.id);
            }
        }
    }

    public void mute(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("mute(%b)", Boolean.valueOf(z));
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE)) {
            if (this.isMuted == z) {
                if (z) {
                    oldLogger.i("Participant is already [muted]");
                } else {
                    oldLogger.i("Participant is not [muted]");
                }
            }
            int i2 = this.id;
            if (i2 == -1) {
                this.isMuted = z;
                this.isMuteUpdateNeeded = true;
                return;
            }
            Native r3 = this.nativeInterface;
            if (z) {
                r3.control(Control.MUTE, i2);
            } else {
                r3.control(Control.UNMUTE, i2);
            }
        }
    }

    public void releaseVideoConsumer() {
        log.d("releaseVideoConsumer()");
        teardownConsumer();
    }

    public void teardown() {
        log.d("teardown(%d)", Integer.valueOf(this.id));
        this.isTeardown = true;
        teardownConsumer();
        this.call = null;
        this.rtcc = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Participant{, id=");
        sb.append(this.id);
        sb.append(", uid='");
        sb.append(this.uid);
        sb.append("', displayName='");
        sb.append(this.displayName);
        sb.append("', isAdmin=");
        sb.append(this.isAdmin);
        sb.append(", isSendingVideo=");
        sb.append(this.isSendingVideo);
        sb.append(", isTalking=");
        sb.append(this.isTalking);
        sb.append(", isLocked=");
        sb.append(this.isLocked);
        sb.append(", isDeafened=");
        sb.append(this.isDeafened);
        sb.append(", isMuted=");
        return d21.q(sb, this.isMuted, '}');
    }

    public String uid() {
        return this.uid;
    }

    public boolean update(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        VideoConsumer videoConsumer;
        boolean z7 = (TextUtils.equals(this.displayName, str) && this.isDeafened == z && this.isMuted == z2 && this.isAdmin == z3 && this.isSendingVideo.get() == z4 && this.isTalking.get() == z5 && this.isLocked == z6) ? false : true;
        if (!TextUtils.equals(this.displayName, str)) {
            this.displayName = str;
        }
        if (this.isDeafened != z) {
            this.isDeafened = z;
        }
        if (this.isMuted != z2) {
            this.isMuted = z2;
        }
        if (this.isAdmin != z3) {
            this.isAdmin = z3;
        }
        if (this.isSendingVideo.compareAndSet(!z4, z4) && (videoConsumer = this.videoConsumerReference.get()) != null) {
            if (this.isSendingVideo.get()) {
                videoConsumer.onStart();
            } else {
                videoConsumer.onStop();
                Call call = this.call;
                call.frameFetcher.videoFrameCache.remove(Integer.valueOf(this == call.conference().activeSpeaker() ? -1 : this.id));
            }
        }
        this.isTalking.set(z5);
        if (this.isLocked != z6) {
            this.isLocked = z6;
        }
        return z7;
    }

    public synchronized void updateMyself(Participant participant) throws Throwable {
        try {
            try {
                this.uid = participant.uid;
                boolean z = this.isMuted;
                update(participant.displayName, participant.isDeafened, participant.isMuted, participant.isAdmin, participant.isSendingVideo.get(), participant.isTalking.get(), participant.isLocked);
                if (this.isMuteUpdateNeeded) {
                    Native r9 = this.nativeInterface;
                    if (z) {
                        r9.control(Control.MUTE, this.id);
                    } else {
                        r9.control(Control.UNMUTE, this.id);
                    }
                    this.isMuteUpdateNeeded = false;
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void videoConsumer(VideoConsumer videoConsumer) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("videoConsumer(consumer=%s)", String.valueOf(videoConsumer));
        }
        if (ensureNotTeardown()) {
            if (this.isMyself) {
                oldLogger.e("[Myself] can't use [VideoConsumer]");
                return;
            }
            if (this.videoConsumerReference.get() == videoConsumer) {
                return;
            }
            teardownConsumer();
            if (videoConsumer == null) {
                return;
            }
            Participant participant = videoConsumer.participant();
            if (participant != null) {
                participant.videoConsumer(null);
            }
            videoConsumer.onBind(this.call, this);
            if (videoConsumer.participant() != this) {
                oldLogger.i("The consumer [%s] should save the participant [%s]", videoConsumer, this);
            }
            if (this.isSendingVideo.get()) {
                videoConsumer.onStart();
                Call call = this.call;
                Frame frame = call.frameFetcher.videoFrameCache.get(Integer.valueOf(this == call.conference().activeSpeaker() ? -1 : this.id));
                if (frame != null) {
                    videoConsumer.onFrame(frame);
                }
            }
            this.videoConsumerReference = new WeakReference<>(videoConsumer);
        }
    }

    public VideoConsumer videoConsumer() {
        return this.videoConsumerReference.get();
    }

    public synchronized boolean update(Participant participant) throws Throwable {
        try {
            try {
                return update(participant.displayName, participant.isDeafened, participant.isMuted, participant.isAdmin, participant.isSendingVideo.get(), participant.isTalking.get(), participant.isLocked);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
