package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.com.google.gson.GsonBuilder;

/* JADX INFO: loaded from: classes3.dex */
public class GsonBaseResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Gson f41999a = new GsonBuilder().a();
    private final String status = NetworkManager.ResponseStatus.OK.name();
}
