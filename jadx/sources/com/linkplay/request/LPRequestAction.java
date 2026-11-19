package com.linkplay.request;

import a.a;
import com.android.wiimu.utils.ByteIntConverter;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.utils.UTCTimeUtils;
import com.linkplay.medialib.ContentTree;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.LPNetworkResponseItem;
import com.linkplay.network.OkHttpDataUtil;
import com.linkplay.network.OkHttpResponseItem;
import defpackage.n00;
import io.jsonwebtoken.JwtParser;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.TimeZone;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class LPRequestAction {
    private static LPRequestAction instance;

    public interface IRequestListener {
        void onFailed(Throwable th);

        void onSuccess(String str);
    }

    private LPRequestAction() {
    }

    public static LPRequestAction getInstance() {
        if (instance == null) {
            synchronized (LPRequestAction.class) {
                try {
                    if (instance == null) {
                        instance = new LPRequestAction();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private RequestItem getRequestItem(LPDevice lPDevice) {
        return n00.l(lPDevice, new RequestItem.Builder().ip(lPDevice.getIp()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendNewHideSSID(RequestItem requestItem, final IRequestListener iRequestListener) {
        String hideSSIDURL = LPRequestUrl.getHideSSIDURL(ContentTree.AUDIO_ID, requestItem);
        int i2 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), hideSSIDURL, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.8
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void getEQ(RequestItem requestItem, final IRequestListener iRequestListener) {
        String equrl = LPRequestUrl.getEQURL(requestItem);
        int i2 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), equrl, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.4
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void getStatusEx(RequestItem requestItem, final IRequestListener iRequestListener) {
        String statusExUrl = LPRequestUrl.getStatusExUrl(requestItem);
        int i2 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(statusExUrl, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                if (exc != null) {
                    exc.getMessage();
                }
                int i3 = a.f348a;
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void hideSSID(final boolean z, final RequestItem requestItem, final IRequestListener iRequestListener) {
        String hideSSIDURL = LPRequestUrl.getHideSSIDURL(z ? "1" : ContentTree.ROOT_ID, requestItem);
        int i2 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), hideSSIDURL, new IOkHttpRequestCallback() { // from class: com.linkplay.request.LPRequestAction.7
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (z) {
                    LPRequestAction.this.sendNewHideSSID(requestItem, iRequestListener);
                    return;
                }
                try {
                    String str = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void restoreToDefault(RequestItem requestItem, final IRequestListener iRequestListener) {
        String restoreToDefaultURL = LPRequestUrl.getRestoreToDefaultURL(requestItem);
        int i2 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), restoreToDefaultURL, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.6
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void setDeviceName(String str, final String str2, final IOkHttpRequestCallback iOkHttpRequestCallback) {
        String strEncode;
        String deviceNameUrl;
        final LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
        if (lPDeviceDeviceForID == null) {
            if (iOkHttpRequestCallback != null) {
                iOkHttpRequestCallback.onFailure(new Exception("device is gone"));
                return;
            }
            return;
        }
        RequestItem requestItem = getRequestItem(lPDeviceDeviceForID);
        if (str2.contains("#")) {
            deviceNameUrl = LPRequestUrl.setHexDeviceNameUrl(requestItem, ByteIntConverter.bytesToHexString(str2.getBytes()).toUpperCase());
        } else {
            try {
                strEncode = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                strEncode = str2;
            }
            deviceNameUrl = LPRequestUrl.setDeviceNameUrl(requestItem, strEncode);
        }
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), deviceNameUrl, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.2
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IOkHttpRequestCallback iOkHttpRequestCallback2 = iOkHttpRequestCallback;
                if (iOkHttpRequestCallback2 != null) {
                    iOkHttpRequestCallback2.onFailure(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                lPDeviceDeviceForID.getDeviceStatus().setFriendlyName(str2);
                IOkHttpRequestCallback iOkHttpRequestCallback2 = iOkHttpRequestCallback;
                if (iOkHttpRequestCallback2 != null) {
                    iOkHttpRequestCallback2.onSuccess(okHttpResponseItem);
                }
            }
        });
    }

    public void setDevicePassword(boolean z, int i2, String str, RequestItem requestItem, final IRequestListener iRequestListener) {
        String devicePasswordURL = LPRequestUrl.getDevicePasswordURL(z, i2, str, requestItem);
        int i3 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), devicePasswordURL, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.9
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str2 = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str2);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void setEQ(RequestItem requestItem, String str, final IRequestListener iRequestListener) {
        String strSetEQURL = LPRequestUrl.SetEQURL(requestItem, str);
        int i2 = a.f348a;
        HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), strSetEQURL, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.5
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                IRequestListener iRequestListener2 = iRequestListener;
                if (iRequestListener2 != null) {
                    iRequestListener2.onFailed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str2 = new String(okHttpResponseItem.bytes, "UTF-8");
                    IRequestListener iRequestListener2 = iRequestListener;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onSuccess(str2);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void setTimezoneEx(LPDevice lPDevice, final LPNetworkListener lPNetworkListener) {
        RequestItem requestItemL = n00.l(lPDevice, n00.k(lPDevice, new RequestItem.Builder()));
        HttpRequestUtils requestUtils = HttpRequestUtils.getRequestUtils(requestItemL);
        DecimalFormat decimalFormat = new DecimalFormat(".#");
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
        decimalFormatSymbols.setDecimalSeparator(JwtParser.SEPARATOR_CHAR);
        decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
        requestUtils.get(LPRequestUrl.setTimezoneExUrl(requestItemL, decimalFormat.format(UTCTimeUtils.getTimeZoneOffset()), UTCTimeUtils.getDstOffset() == Call.Parameters.DEFAULT_CAMERA_ZOOM ? ContentTree.ROOT_ID : "1", TimeZone.getDefault().getID()), new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.10
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                LPNetworkListener lPNetworkListener2 = lPNetworkListener;
                if (lPNetworkListener2 != null) {
                    lPNetworkListener2.onFailure(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                try {
                    String str = new String(okHttpResponseItem.bytes, "UTF-8");
                    if (lPNetworkListener != null) {
                        LPNetworkResponseItem lPNetworkResponseItem = new LPNetworkResponseItem();
                        lPNetworkResponseItem.body = str;
                        lPNetworkListener.onSuccess(lPNetworkResponseItem);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    onFailure(e2);
                }
            }
        });
    }

    public void switchInputSource(String str, String str2, final IOkHttpRequestCallback iOkHttpRequestCallback) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str2);
        if (lPDeviceDeviceForID == null) {
            if (iOkHttpRequestCallback != null) {
                iOkHttpRequestCallback.onFailure(new Exception("device is gone"));
            }
        } else {
            RequestItem requestItem = getRequestItem(lPDeviceDeviceForID);
            String strSwitchInputSource = LPRequestUrl.switchInputSource(requestItem, str);
            HttpRequestUtils.getRequestUtils(requestItem).get(OkHttpDataUtil.getHeaders(), strSwitchInputSource, new IOkHttpRequestCallback(this) { // from class: com.linkplay.request.LPRequestAction.3
                @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onFailure(Exception exc) {
                    super.onFailure(exc);
                    IOkHttpRequestCallback iOkHttpRequestCallback2 = iOkHttpRequestCallback;
                    if (iOkHttpRequestCallback2 != null) {
                        iOkHttpRequestCallback2.onFailure(exc);
                    }
                }

                @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                    IOkHttpRequestCallback iOkHttpRequestCallback2 = iOkHttpRequestCallback;
                    if (iOkHttpRequestCallback2 != null) {
                        iOkHttpRequestCallback2.onSuccess(okHttpResponseItem);
                    }
                }
            });
        }
    }
}
