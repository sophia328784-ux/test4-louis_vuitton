package com.linkplay.alexa;

import android.webkit.WebView;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.linkplay.alexa.request.modle.AlexaProfileInfo;
import com.linkplay.alexa.request.presenter.AlexaListener;
import com.linkplay.alexa.request.presenter.AlexaLoginListener;
import com.linkplay.alexa.request.presenter.AlexaRequestUtil;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LPAlexaManager extends AlexaRequestUtil {
    public boolean bUsingCode(String str) {
        LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(str);
        if (lPDeviceDeviceForIP == null || lPDeviceDeviceForIP.getDeviceStatus() == null) {
            return super.bUsingCode(str);
        }
        try {
            if (Integer.parseInt(lPDeviceDeviceForIP.getDeviceStatus().getAlexaVer()) >= 20180604) {
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return super.bUsingCode(str);
    }

    public void get(String str, String str2, final AlexaListener alexaListener) {
        LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(str);
        if (lPDeviceDeviceForIP == null) {
            return;
        }
        RequestItem requestItemL = n00.l(lPDeviceDeviceForIP, n00.k(lPDeviceDeviceForIP, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), str2), new IOkHttpRequestCallback(this) { // from class: com.linkplay.alexa.LPAlexaManager.3
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                AlexaListener alexaListener2 = alexaListener;
                if (alexaListener2 != null) {
                    alexaListener2.onFail(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                String str3 = new String(okHttpResponseItem.bytes);
                int i2 = okHttpResponseItem.code;
                if (i2 >= 200 && i2 < 300 && str3.toLowerCase().equals("failed")) {
                    str3 = "Success";
                }
                AlexaListener alexaListener2 = alexaListener;
                if (alexaListener2 != null) {
                    alexaListener2.onSuccess(str3);
                }
            }
        });
    }

    public void getAlexaStatus(LPDevice lPDevice, final LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        try {
            AlexaStatus.getAlexaStatus(lPDevice.getDeviceStatus().getUpnpUUID(), new IWiimuActionCallback(this) { // from class: com.linkplay.alexa.LPAlexaManager.1
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPAlexaListener lPAlexaListener2 = lPAlexaListener;
                    if (lPAlexaListener2 != null) {
                        lPAlexaListener2.onFail(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    Object obj = map.get("Result");
                    if (obj == null) {
                        failure(new Exception("Result error"));
                        return;
                    }
                    LPAlexaListener lPAlexaListener2 = lPAlexaListener;
                    if (lPAlexaListener2 != null) {
                        lPAlexaListener2.onSuccess(obj.toString());
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String getAlexaVer(String str) {
        LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(str);
        return (lPDeviceDeviceForIP == null || lPDeviceDeviceForIP.getDeviceStatus() == null) ? super.getAlexaVer(str) : lPDeviceDeviceForIP.getDeviceStatus().getAlexaVer();
    }

    public void getLanguage(LPDevice lPDevice, LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        getLanguage(lPDevice.getDeviceStatus().getIP(), lPAlexaListener);
    }

    public void getPromptStatus(LPDevice lPDevice, LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        getPromptStatus(lPDevice.getDeviceStatus().getIP(), lPAlexaListener);
    }

    public String getUUID(String str) {
        LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(str);
        return (lPDeviceDeviceForIP == null || lPDeviceDeviceForIP.getDeviceStatus() == null) ? super.getUUID(str) : lPDeviceDeviceForIP.getDeviceStatus().getUUID();
    }

    public String getUpnpUUID(String str) {
        LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(str);
        return (lPDeviceDeviceForIP == null || lPDeviceDeviceForIP.getDeviceStatus() == null) ? super.getUpnpUUID(str) : lPDeviceDeviceForIP.getDeviceStatus().getUpnpUUID();
    }

    public void initLoginView(LPDevice lPDevice, WebView webView, AlexaProfileInfo alexaProfileInfo, LPAlexaLoginListener lPAlexaLoginListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        initLoginView(webView, lPDevice.getDeviceStatus().getIP(), alexaProfileInfo, lPAlexaLoginListener);
    }

    public void initSplashView(LPDevice lPDevice, WebView webView, boolean z, String str, LPAlexaSplashListener lPAlexaSplashListener) {
        ((AlexaRequestUtil) this).isBeta = z;
        ((AlexaRequestUtil) this).strBeta = str;
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        initSplashView(webView, lPDevice.getDeviceStatus().getIP(), lPAlexaSplashListener);
    }

    public void isAlexaLogin(LPDevice lPDevice, LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        isAlexaLogin(lPDevice.getDeviceStatus().getIP(), lPAlexaListener);
    }

    public void logout(LPDevice lPDevice, LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        logout(lPDevice.getDeviceStatus().getIP(), lPAlexaListener);
    }

    public void setAuthcode(LPDevice lPDevice, final LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        setAuthcode(lPDevice.getDeviceStatus().getIP(), new LPAlexaLoginListener(this) { // from class: com.linkplay.alexa.LPAlexaManager.2
            public void cancel() {
                LPAlexaListener lPAlexaListener2 = lPAlexaListener;
                if (lPAlexaListener2 != null) {
                    lPAlexaListener2.onFail(new Exception("Cancel Set Code"));
                }
            }

            public void loginFailed(Exception exc) {
                LPAlexaListener lPAlexaListener2 = lPAlexaListener;
                if (lPAlexaListener2 != null) {
                    lPAlexaListener2.onFail(exc);
                }
            }

            public void loginSuccess() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("Result", "Success");
                    LPAlexaListener lPAlexaListener2 = lPAlexaListener;
                    if (lPAlexaListener2 != null) {
                        lPAlexaListener2.onSuccess(jSONObject.toString());
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }

            public void startLogin() {
            }
        });
    }

    public void setLanguage(LPDevice lPDevice, String str, LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        setLanguage(lPDevice.getDeviceStatus().getIP(), str, lPAlexaListener);
    }

    public void setPromptStatus(LPDevice lPDevice, String str, LPAlexaListener lPAlexaListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        setPromptStatus(lPDevice.getDeviceStatus().getIP(), str, lPAlexaListener);
    }

    public void initLoginView(LPDevice lPDevice, WebView webView, boolean z, String str, LPAlexaLoginListener lPAlexaLoginListener) {
        ((AlexaRequestUtil) this).isBeta = z;
        ((AlexaRequestUtil) this).strBeta = str;
        initLoginView(lPDevice, webView, null, lPAlexaLoginListener);
    }

    public void initLoginView(LPDevice lPDevice, WebView webView, LPAlexaLoginListener lPAlexaLoginListener) {
        initLoginView(lPDevice, webView, null, lPAlexaLoginListener);
    }

    public void initSplashView(LPDevice lPDevice, WebView webView, LPAlexaSplashListener lPAlexaSplashListener) {
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return;
        }
        initSplashView(webView, lPDevice.getDeviceStatus().getIP(), lPAlexaSplashListener);
    }

    public void setAuthcode(String str, AlexaLoginListener alexaLoginListener) {
        super.setAuthcode(str, alexaLoginListener);
    }
}
