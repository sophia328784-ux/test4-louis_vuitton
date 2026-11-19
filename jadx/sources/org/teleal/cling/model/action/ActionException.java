package org.teleal.cling.model.action;

import com.sightcall.universal.media.offline.FileUtils;
import org.teleal.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes5.dex */
public class ActionException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78396b;

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionException(ErrorCode errorCode, String str, boolean z) {
        int iB = errorCode.b();
        if (z) {
            str = errorCode.c() + ". " + str + FileUtils.HIDDEN_PREFIX;
        }
        this(iB, str);
    }

    public ActionException(int i2, String str, Throwable th) {
        super(str, th);
        this.f78396b = i2;
    }

    public ActionException(ErrorCode errorCode) {
        this(errorCode.b(), errorCode.c());
    }

    public ActionException(ErrorCode errorCode, String str) {
        this(errorCode, str, true);
    }

    public ActionException(int i2, String str) {
        super(str);
        this.f78396b = i2;
    }

    public ActionException(ErrorCode errorCode, String str, Throwable th) {
        this(errorCode.b(), errorCode.c() + ". " + str + FileUtils.HIDDEN_PREFIX, th);
    }
}
