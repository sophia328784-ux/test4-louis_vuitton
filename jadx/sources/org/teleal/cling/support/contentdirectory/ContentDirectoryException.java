package org.teleal.cling.support.contentdirectory;

import com.sightcall.universal.media.offline.FileUtils;
import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes5.dex */
public class ContentDirectoryException extends ActionException {
    public ContentDirectoryException(ContentDirectoryErrorCode contentDirectoryErrorCode, String str) {
        super(contentDirectoryErrorCode.a(), contentDirectoryErrorCode.b() + ". " + str + FileUtils.HIDDEN_PREFIX);
    }

    public ContentDirectoryException(int i2, String str, Throwable th) {
        super(i2, str, th);
    }

    public ContentDirectoryException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public ContentDirectoryException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ContentDirectoryException(int i2, String str) {
        super(i2, str);
    }

    public ContentDirectoryException(ContentDirectoryErrorCode contentDirectoryErrorCode) {
        super(contentDirectoryErrorCode.a(), contentDirectoryErrorCode.b());
    }
}
