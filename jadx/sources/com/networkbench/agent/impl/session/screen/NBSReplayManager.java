package com.networkbench.agent.impl.session.screen;

import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class NBSReplayManager {
    private static String TAG = "NBSReplayManager";
    private ReplayState replayState = ReplayState.REPLAY_STATE_EMPTY;

    public boolean canShotBitmap() {
        Logger.debug(TAG, "current replayState:" + this.replayState);
        ReplayState replayState = this.replayState;
        return (replayState == ReplayState.REPLAY_STATE_EMPTY || replayState == ReplayState.REPLAY_STATE_STOP || replayState == ReplayState.REPLAY_STATE_PAUSE) ? false : true;
    }

    public void pauseVideo() {
        ReplayState replayState = this.replayState;
        if (replayState == ReplayState.REPLAY_STATE_START || replayState == ReplayState.REPLAY_STATE_RESUME) {
            Logger.debug(TAG, "pauseVideo invoked");
            this.replayState = ReplayState.REPLAY_STATE_PAUSE;
        } else {
            Logger.debug(TAG, "not REPLAY_STATE_START or REPLAY_STATE_RESUME, current replayState is:" + this.replayState);
        }
    }

    public void resumeVideo() {
        if (this.replayState == ReplayState.REPLAY_STATE_PAUSE) {
            Logger.debug(TAG, "resumeVideo invoked");
            this.replayState = ReplayState.REPLAY_STATE_RESUME;
        } else {
            Logger.debug(TAG, "not REPLAY_STATE_PAUSE, current replayState is:" + this.replayState);
        }
    }

    public void startVideo() {
        if (this.replayState == ReplayState.REPLAY_STATE_STOP) {
            Logger.debug(TAG, "current replayState is REPLAY_STATE_STOP, skip set");
        } else {
            Logger.debug(TAG, "startVideo invoked");
            this.replayState = ReplayState.REPLAY_STATE_START;
        }
    }

    public void stopVideo() {
        if (this.replayState == ReplayState.REPLAY_STATE_EMPTY) {
            Logger.debug(TAG, "current replayState is REPLAY_STATE_EMPTY, skip set");
        } else {
            Logger.debug(TAG, "stopVideo invoked");
            this.replayState = ReplayState.REPLAY_STATE_STOP;
        }
    }
}
