package org.teleal.cling.support.contentdirectory;

import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes5.dex */
public enum ContentDirectoryErrorCode {
    NO_SUCH_OBJECT(701, "The specified ObjectID is invalid"),
    UNSUPPORTED_SORT_CRITERIA(709, "Unsupported or invalid sort criteria"),
    CANNOT_PROCESS(Sink.Video.MAX_DIMENSION_LOW, "Cannot process the request");

    private int code;
    private String description;

    ContentDirectoryErrorCode(int i2, String str) {
        this.code = i2;
        this.description = str;
    }

    public final int a() {
        return this.code;
    }

    public final String b() {
        return this.description;
    }
}
