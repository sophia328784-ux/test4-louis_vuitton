package com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.makeup;

import com.cyberlink.clgpuimage.GPUImageFilter;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import defpackage.g81;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f42018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f42019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f42020c;

    public b(String str, String str2, String str3, String str4) {
        this.f42018a = ImmutableList.A(new GPUImageFilter(str, str2), new GPUImageFilter(str3, str4));
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c a() {
        return new c().b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(1)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new d())));
    }
}
