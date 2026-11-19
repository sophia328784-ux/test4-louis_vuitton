package com.google.firebase.heartbeatinfo;

/* JADX INFO: loaded from: classes2.dex */
public interface HeartBeatInfo {

    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);

        private final int code;

        HeartBeat(int i2) {
            this.code = i2;
        }

        public final int a() {
            return this.code;
        }
    }

    HeartBeat b();
}
