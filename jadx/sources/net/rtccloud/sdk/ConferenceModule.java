package net.rtccloud.sdk;

import android.util.SparseArray;
import java.util.Locale;
import net.rtccloud.sdk.event.call.FloorEvent;
import net.rtccloud.sdk.event.call.ParticipantEvent;
import net.rtccloud.sdk.event.call.ParticipantsEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class ConferenceModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.CONFERENCE);
    Participant activeSpeaker;
    private final Call call;
    private boolean isDeafened;
    private boolean isMuted;
    private boolean isPassiveStreamsOnly;
    private boolean isTeardown;
    Participant myself;
    private final Native nativeInterface;
    final SparseArray<Participant> participants = new SparseArray<>();
    private Participant[] participantsArray = new Participant[0];
    final RecordingModule recordingModule;
    private final Rtcc rtcc;

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
        DEAFENALL(51),
        UNDEAFENALL(52),
        KICK(46),
        LOCK_SPEAKER(53),
        UNLOCK_SPEAKER(54),
        KICKALL(56);

        private final int value;

        Control(int i2) {
            this.value = i2;
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.ConferenceModule.Native.1
            @Override // net.rtccloud.sdk.ConferenceModule.Native
            public void control(final Control control) {
                Call.Native.JNI.executor().execute(new Runnable() { // from class: net.rtccloud.sdk.ConferenceModule.Native.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Jni.nSendConfControl(control.value);
                    }
                });
            }

            @Override // net.rtccloud.sdk.ConferenceModule.Native
            public void passiveStreamsOnly(boolean z) {
                Jni.nPassiveStreamsOnly(z);
            }

            @Override // net.rtccloud.sdk.ConferenceModule.Native
            public void setMirrorMode(boolean z) {
                Jni.nSetMirrorMode(z);
            }
        };

        void control(Control control);

        void passiveStreamsOnly(boolean z);

        void setMirrorMode(boolean z);
    }

    public ConferenceModule(Rtcc rtcc, Call call, Native r5) {
        this.rtcc = rtcc;
        this.call = call;
        this.nativeInterface = r5;
        this.recordingModule = new RecordingModule(rtcc, call, RecordingModule.Native.JNI);
        this.myself = Participant.createMyself(rtcc, call, call.type() == Call.Type.CONFERENCE_HOST);
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("ConferenceModule must not be [teardown]");
        return false;
    }

    public Participant activeSpeaker() {
        return this.activeSpeaker;
    }

    public void deafen(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("deafen(%b)", Boolean.valueOf(z));
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this)) {
            if (this.isDeafened == z) {
                if (z) {
                    oldLogger.i("Conference is already [deafened]");
                } else {
                    oldLogger.i("Conference is not [deafened]");
                }
            }
            Native r3 = this.nativeInterface;
            if (z) {
                r3.control(Control.DEAFENALL);
            } else {
                r3.control(Control.UNDEAFENALL);
            }
        }
    }

    public synchronized void handleFloor(int[] iArr) {
        if (iArr != null) {
            if (iArr.length != 0) {
                if (this.participants.size() + 1 != iArr.length) {
                    OldLogger oldLogger = log;
                    Locale locale = Locale.US;
                    oldLogger.e("Floor length {" + iArr.length + "} mismatch with number of participants in conference {" + (this.participants.size() + 1) + "}");
                    return;
                }
                int i2 = this.myself.id;
                Participant[] participantArr = new Participant[iArr.length - 1];
                int i3 = 0;
                for (int i4 : iArr) {
                    if (i4 != i2) {
                        Participant participant = this.participants.get(i4);
                        if (participant == null) {
                            log.e("Floor contains an unknown participant id:" + i4);
                            return;
                        }
                        int i5 = i3 + 1;
                        participantArr[i3] = participant;
                        i3 = i5;
                    }
                }
                this.participantsArray = participantArr;
                this.activeSpeaker = participantArr.length == 0 ? null : participantArr[0];
                this.rtcc.bus.post(new FloorEvent(this.call, participantArr));
                this.rtcc.sendParticipantCallBack(this.participantsArray);
                return;
            }
        }
        log.e("Floor invalid");
    }

    public synchronized void handleParticipant(int i2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        try {
            Participant participant = this.myself.id() == i2 ? this.myself : this.participants.get(i2);
            if (participant == null) {
                return;
            }
            if (participant.update(participant.displayName, z, z2, z3, z4, z5, z6)) {
                Participant participant2 = this.myself;
                boolean z7 = participant2.isMuted;
                boolean z8 = participant2.isDeafened;
                boolean zIsSendingVideo = false;
                for (int i3 = 0; i3 < this.participants.size(); i3++) {
                    Participant participantValueAt = this.participants.valueAt(i3);
                    z7 = z7 && participantValueAt.isMuted;
                    z8 = z8 && participantValueAt.isDeafened;
                    zIsSendingVideo |= participantValueAt.isSendingVideo();
                }
                this.isMuted = z7;
                this.isDeafened = z8;
                this.rtcc.bus.post(new ParticipantEvent(this.call, participant));
                this.rtcc.sendParticipantCallBack(new Participant[]{participant});
                if (this.call.videoModule.isReceiving() != zIsSendingVideo) {
                    this.call.videoModule.updateReceivingStatus(zIsSendingVideo);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void handleParticipants(int i2, Participant[] participantArr) {
        try {
            Participant participant = this.myself;
            if (participant.id == -1) {
                participant.id = i2;
            }
            if (participantArr != null && participantArr.length != 0) {
                Participant[] participantArr2 = new Participant[participantArr.length - 1];
                boolean z = true;
                boolean z2 = true;
                int i3 = 0;
                boolean zIsSendingVideo = false;
                for (Participant participant2 : participantArr) {
                    Participant participant3 = this.participants.get(participant2.id);
                    if (participant3 == null) {
                        int i4 = participant2.id;
                        Participant participant4 = this.myself;
                        if (i4 == participant4.id) {
                            participant4.updateMyself(participant2);
                            Participant participant5 = this.myself;
                            participant5.keep = true;
                            z = z && participant5.isMuted;
                            z2 = z2 && participant5.isDeafened;
                        } else {
                            participant2.rtcc = this.rtcc;
                            participant2.call = this.call;
                            participant2.keep = true;
                            this.participants.append(i4, participant2);
                            int i5 = i3 + 1;
                            participantArr2[i3] = participant2;
                            boolean z3 = z && participant2.isMuted;
                            boolean z4 = z2 && participant2.isDeafened;
                            zIsSendingVideo |= participant2.isSendingVideo();
                            z2 = z4;
                            z = z3;
                            i3 = i5;
                        }
                    } else {
                        participant3.update(participant2);
                        participant3.keep = true;
                        int i6 = i3 + 1;
                        participantArr2[i3] = participant3;
                        boolean z5 = z && participant3.isMuted;
                        boolean z6 = z2 && participant3.isDeafened;
                        zIsSendingVideo |= participant3.isSendingVideo();
                        z2 = z6;
                        z = z5;
                        i3 = i6;
                    }
                }
                int i7 = 0;
                while (i7 < this.participants.size()) {
                    Participant participantValueAt = this.participants.valueAt(i7);
                    if (participantValueAt.keep) {
                        participantValueAt.keep = false;
                        i7++;
                    } else {
                        log.d("Removing participant id:%d uid:%s", Integer.valueOf(participantValueAt.id), participantValueAt.uid());
                        participantValueAt.teardown();
                        this.participants.remove(participantValueAt.id);
                        this.call.frameFetcher.videoFrameCache.remove(Integer.valueOf(participantValueAt.id));
                    }
                }
                this.participantsArray = participantArr2;
                this.activeSpeaker = participantArr2.length == 0 ? null : participantArr2[0];
                this.isMuted = z;
                this.isDeafened = z2;
                this.rtcc.bus.post(new ParticipantsEvent(this.call, participantArr2));
                this.rtcc.sendParticipantCallBack(this.participantsArray);
                if (this.call.videoModule.isReceiving() != zIsSendingVideo) {
                    this.call.videoModule.updateReceivingStatus(zIsSendingVideo);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean isDeafened() {
        return this.isDeafened;
    }

    public boolean isMuted() {
        return this.isMuted;
    }

    public boolean isPassiveStreamsOnly() {
        return this.isPassiveStreamsOnly;
    }

    public void kickAll() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("kickAll");
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this)) {
            this.nativeInterface.control(Control.KICKALL);
        }
    }

    public void mute(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("mute(%b)", Boolean.valueOf(z));
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this)) {
            if (this.isMuted == z) {
                if (z) {
                    oldLogger.i("Conference is already [muted]");
                } else {
                    oldLogger.i("Conference is not [muted]");
                }
            }
            Native r3 = this.nativeInterface;
            if (z) {
                r3.control(Control.MUTEALL);
            } else {
                r3.control(Control.UNMUTEALL);
            }
        }
    }

    public Participant myself() {
        return this.myself;
    }

    public Participant participant(int i2) {
        return this.participants.get(i2);
    }

    public Participant[] participants() {
        return this.participantsArray;
    }

    public void passiveStreamsOnly(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("passiveStreamsOnly(%b)", Boolean.valueOf(z));
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE)) {
            this.isPassiveStreamsOnly = z;
            this.nativeInterface.passiveStreamsOnly(z);
        }
    }

    public RecordingModule recording() {
        return this.recordingModule;
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void setMirrorMode(boolean z) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("setMirrorMode(%b)", Boolean.valueOf(z));
        }
        this.nativeInterface.setMirrorMode(z);
    }

    public void teardown() {
        SparseArray<Participant> sparseArray;
        this.isTeardown = true;
        this.recordingModule.teardown();
        int i2 = 0;
        while (true) {
            int size = this.participants.size();
            sparseArray = this.participants;
            if (i2 >= size) {
                break;
            }
            sparseArray.valueAt(i2).teardown();
            i2++;
        }
        sparseArray.clear();
        if (this.activeSpeaker != null) {
            this.activeSpeaker = null;
        }
    }

    public void unlockActiveSpeaker() {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("unlockActiveSpeaker");
        }
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE) && Preconditions.enforceConferenceAdmin(oldLogger, this)) {
            this.nativeInterface.control(Control.UNLOCK_SPEAKER);
        }
    }
}
