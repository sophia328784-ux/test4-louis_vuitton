package org.teleal.cling.support.connectionmanager;

import com.sightcall.universal.media.offline.FileUtils;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes5.dex */
public class ConnectionManagerException extends ActionException {
    public ConnectionManagerException(ConnectionManagerErrorCode connectionManagerErrorCode, String str) {
        super(connectionManagerErrorCode.a(), connectionManagerErrorCode.b() + ". " + str + FileUtils.HIDDEN_PREFIX);
    }

    public ConnectionManagerException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public ConnectionManagerException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public ConnectionManagerException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ConnectionManagerException(int i2, String str) {
        super(i2, str);
    }

    public ConnectionManagerException(ConnectionManagerErrorCode connectionManagerErrorCode) {
        super(connectionManagerErrorCode.a(), connectionManagerErrorCode.b());
    }
}
