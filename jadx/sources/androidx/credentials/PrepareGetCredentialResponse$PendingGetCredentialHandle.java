package androidx.credentials;

import android.credentials.PrepareGetCredentialResponse;
import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"androidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle", "", "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "frameworkHandle", "<init>", "(Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;)V", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PrepareGetCredentialResponse$PendingGetCredentialHandle {
    public PrepareGetCredentialResponse$PendingGetCredentialHandle(PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle) {
        if (Build.VERSION.SDK_INT >= 34) {
            pendingGetCredentialHandle.getClass();
        }
    }
}
