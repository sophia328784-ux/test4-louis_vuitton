package com.linkplay.request;

import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.LPNetworkResponseItem;
import com.linkplay.network.OkHttpResponseItem;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPNetwork {
    private static LPNetwork instance;

    private LPNetwork() {
    }

    public static LPNetwork getInstance() {
        if (instance == null) {
            synchronized (LPNetwork.class) {
                try {
                    if (instance == null) {
                        instance = new LPNetwork();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void get(String str, List<HttpRequestUtils.Param> list, final LPNetworkListener lPNetworkListener) {
        if (TextUtils.isEmpty(str)) {
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(new Exception("request url is null exception"));
                return;
            }
            return;
        }
        try {
            String host = new URL(str).getHost();
            if (TextUtils.isEmpty(host)) {
                if (lPNetworkListener != null) {
                    lPNetworkListener.onFailure(new Exception("request IP is null exception"));
                    return;
                }
                return;
            }
            String[] strArrSplit = host.split("\\.");
            if (strArrSplit != null && strArrSplit.length >= 3) {
                if (!TextUtils.isDigitsOnly(strArrSplit[0])) {
                    if (lPNetworkListener != null) {
                        lPNetworkListener.onFailure(new Exception("request not 4 dot IP exception"));
                        return;
                    }
                    return;
                }
                LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(host);
                if (lPDeviceDeviceForIP != null) {
                    HttpRequestUtils.getRequestUtils(new RequestItem.Builder().ip(lPDeviceDeviceForIP.getDeviceStatus().getIP()).security(lPDeviceDeviceForIP.getDeviceStatus().getSecurity()).build()).get(list, str, new HttpRequestUtils.ResultCallback(this) { // from class: com.linkplay.request.LPNetwork.1
                        @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                        public void onFailure(Exception exc) {
                            LPNetworkListener lPNetworkListener2 = lPNetworkListener;
                            if (lPNetworkListener2 != null) {
                                lPNetworkListener2.onFailure(exc);
                            }
                        }

                        @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                        public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                            if (lPNetworkListener != null) {
                                try {
                                    String str2 = new String(okHttpResponseItem.bytes);
                                    LPNetworkResponseItem lPNetworkResponseItem = new LPNetworkResponseItem();
                                    lPNetworkResponseItem.body = str2;
                                    lPNetworkListener.onSuccess(lPNetworkResponseItem);
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    lPNetworkListener.onFailure(new Exception("requese callback exception"));
                                }
                            }
                        }
                    });
                    return;
                } else {
                    if (lPNetworkListener != null) {
                        lPNetworkListener.onFailure(new Exception("device null exception"));
                        return;
                    }
                    return;
                }
            }
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(new Exception("request IP other exception"));
            }
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(new Exception(" url exception"));
            }
        }
    }

    public void post(String str, List<HttpRequestUtils.Param> list, String str2, final LPNetworkListener lPNetworkListener) {
        if (TextUtils.isEmpty(str)) {
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(new Exception("request url is null exception"));
                return;
            }
            return;
        }
        try {
            String host = new URL(str).getHost();
            if (TextUtils.isEmpty(host)) {
                if (lPNetworkListener != null) {
                    lPNetworkListener.onFailure(new Exception("request IP is null exception"));
                    return;
                }
                return;
            }
            String[] strArrSplit = host.split("\\.");
            if (strArrSplit != null && strArrSplit.length >= 3) {
                if (!TextUtils.isDigitsOnly(strArrSplit[0])) {
                    if (lPNetworkListener != null) {
                        lPNetworkListener.onFailure(new Exception("request not 4 dot IP exception"));
                        return;
                    }
                    return;
                }
                LPDevice lPDeviceDeviceForIP = LPDeviceManager.getInstance().deviceForIP(host);
                if (lPDeviceDeviceForIP != null) {
                    HttpRequestUtils.getRequestUtils(new RequestItem.Builder().ip(lPDeviceDeviceForIP.getDeviceStatus().getIP()).security(lPDeviceDeviceForIP.getDeviceStatus().getSecurity()).build()).post(str, new HttpRequestUtils.ResultCallback(this) { // from class: com.linkplay.request.LPNetwork.2
                        @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                        public void onFailure(Exception exc) {
                            LPNetworkListener lPNetworkListener2 = lPNetworkListener;
                            if (lPNetworkListener2 != null) {
                                lPNetworkListener2.onFailure(exc);
                            }
                        }

                        @Override // com.linkplay.network.HttpRequestUtils.ResultCallback
                        public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                            if (lPNetworkListener != null) {
                                try {
                                    String str3 = new String(okHttpResponseItem.bytes);
                                    LPNetworkResponseItem lPNetworkResponseItem = new LPNetworkResponseItem();
                                    lPNetworkResponseItem.body = str3;
                                    lPNetworkListener.onSuccess(lPNetworkResponseItem);
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    lPNetworkListener.onFailure(new Exception("requese callback exception"));
                                }
                            }
                        }
                    }, list, str2);
                    return;
                } else {
                    if (lPNetworkListener != null) {
                        lPNetworkListener.onFailure(new Exception("device null exception"));
                        return;
                    }
                    return;
                }
            }
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(new Exception("request IP other exception"));
            }
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(new Exception(" url exception:" + e2.getLocalizedMessage()));
            }
        } catch (Exception e3) {
            if (lPNetworkListener != null) {
                lPNetworkListener.onFailure(e3);
            }
        }
    }

    public void post(String str, List<HttpRequestUtils.Param> list, LPNetworkListener lPNetworkListener) {
        post(str, list, "", lPNetworkListener);
    }
}
