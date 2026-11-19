package com.lightup.sdk.device.helpers;

import android.content.Context;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.devicemanagement.BLETrunkManager;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/lightup/sdk/device/helpers/TrunkHelper;", "Lcom/lightup/sdk/device/helpers/LightupCommonHelper;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "apiKey", "", "bleAvailabilityListener", "Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/lightup/sdk/device/ble/availability/BLEAvailabilityListener;)V", "library"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrunkHelper extends LightupCommonHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrunkHelper(Context context, String str, BLEAvailabilityListener bLEAvailabilityListener) {
        super(context, str, bLEAvailabilityListener);
        context.getClass();
        str.getClass();
        bLEAvailabilityListener.getClass();
        PermissionsManager permissionsManager = this.permissionsManager;
        permissionsManager.getClass();
        InternetTimeReader internetTimeReader = this.internetTimeReader;
        internetTimeReader.getClass();
        setLightupManager$library(new BLETrunkManager(context, permissionsManager, internetTimeReader));
    }
}
