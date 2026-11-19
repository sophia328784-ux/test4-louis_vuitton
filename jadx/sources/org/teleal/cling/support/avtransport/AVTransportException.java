package org.teleal.cling.support.avtransport;

import com.sightcall.universal.media.offline.FileUtils;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes5.dex */
public class AVTransportException extends ActionException {
    public AVTransportException(AVTransportErrorCode aVTransportErrorCode, String str) {
        super(aVTransportErrorCode.a(), aVTransportErrorCode.b() + ". " + str + FileUtils.HIDDEN_PREFIX);
    }

    public AVTransportException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public AVTransportException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public AVTransportException(ErrorCode errorCode) {
        super(errorCode);
    }

    public AVTransportException(int i2, String str) {
        super(i2, str);
    }

    public AVTransportException(AVTransportErrorCode aVTransportErrorCode) {
        super(aVTransportErrorCode.a(), aVTransportErrorCode.b());
    }
}
