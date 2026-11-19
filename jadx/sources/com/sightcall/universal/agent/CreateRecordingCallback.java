package com.sightcall.universal.agent;

import com.sightcall.universal.agent.recording.RecordingV3Entity;

/* JADX INFO: loaded from: classes3.dex */
public interface CreateRecordingCallback {

    public static class Error {
    }

    public static class Success {
        final RecordingV3Entity recording;

        public Success(RecordingV3Entity recordingV3Entity) {
            this.recording = recordingV3Entity;
        }

        public RecordingV3Entity recording() {
            return this.recording;
        }
    }

    void onCreateRecordingError(Error error);

    void onCreateRecordingSuccess(Success success);
}
