package com.linkplay.ota2.model;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* JADX INFO: loaded from: classes2.dex */
public class LPOTAConfiguration {
    public String firmwareType = "";
    public String mcuType = "";
    public long firmWareDownloadTime = 0;
    public long firmWareWriteTime = 0;
    public long firmWareRebootTime = 0;
    public long mcuDownloadTime = 0;
    public long mcuWriteTime = 0;
    public long mcueRebootTime = 0;

    public static LPOTAConfiguration parseConfiguraion(Context context) {
        LPOTAConfiguration lPOTAConfiguration = new LPOTAConfiguration();
        if (context == null) {
            return lPOTAConfiguration;
        }
        try {
            InputStream inputStreamOpen = context.getAssets().open("ota_configuration.properties");
            Properties properties = new Properties();
            properties.load(inputStreamOpen);
            lPOTAConfiguration.firmwareType = properties.getProperty("FW");
            lPOTAConfiguration.mcuType = properties.getProperty("MCU");
            inputStreamOpen.close();
            return lPOTAConfiguration;
        } catch (IOException e2) {
            e2.printStackTrace();
            return lPOTAConfiguration;
        }
    }
}
