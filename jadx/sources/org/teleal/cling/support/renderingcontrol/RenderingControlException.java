package org.teleal.cling.support.renderingcontrol;

import com.sightcall.universal.media.offline.FileUtils;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes5.dex */
public class RenderingControlException extends ActionException {
    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode, String str) {
        super(renderingControlErrorCode.a(), renderingControlErrorCode.b() + ". " + str + FileUtils.HIDDEN_PREFIX);
    }

    public RenderingControlException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public RenderingControlException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public RenderingControlException(ErrorCode errorCode) {
        super(errorCode);
    }

    public RenderingControlException(int i2, String str) {
        super(i2, str);
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode) {
        super(renderingControlErrorCode.a(), renderingControlErrorCode.b());
    }
}
