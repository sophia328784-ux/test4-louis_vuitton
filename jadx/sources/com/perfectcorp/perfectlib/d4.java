package com.perfectcorp.perfectlib;

import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.EventPublisher;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.exceptions.NullBaseURLsException;
import com.perfectcorp.perfectlib.exceptions.SkinCareRecommendationIdNotSetException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.aa;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.g81;
import defpackage.ld;
import defpackage.na0;
import defpackage.o7;
import defpackage.pv0;
import defpackage.rw0;
import defpackage.sw0;
import defpackage.xv0;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d4 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40114b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EventPublisher f40115c;
    public final /* synthetic */ DownloadTaskCancelable d;

    public /* synthetic */ d4(EventPublisher eventPublisher, DownloadTaskCancelable downloadTaskCancelable) {
        this.f40115c = eventPublisher;
        this.d = downloadTaskCancelable;
    }

    /* JADX WARN: Type inference failed for: r12v0, types: [com.perfectcorp.perfectlib.rh.utility.networkcache.d$g] */
    /* JADX WARN: Type inference failed for: r15v12, types: [com.perfectcorp.perfectlib.rh.utility.networkcache.d$f] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.perfectcorp.perfectlib.rh.utility.networkcache.d$e] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        final int i2 = 1;
        final int i3 = 0;
        switch (this.f40114b) {
            case 0:
                final DownloadTaskCancelable downloadTaskCancelable = this.d;
                EventPublisher eventPublisher = this.f40115c;
                final SkinCare3RecommendationHandler.AnonymousClass1 anonymousClass1 = new SkinCare3RecommendationHandler.AnonymousClass1();
                anonymousClass1.f39887a = eventPublisher;
                final boolean z = PerfectLib.g.d == Configuration.ImageSource.FILE;
                final String str = PerfectLib.g.f39522k;
                final String str2 = PerfectLib.g.l;
                Log.g(3, "SkinCare3RecommendationHandler", "[syncServerInternal] needToDownloadThumbnail=" + z + ", surveyId=" + str + ", settingId=" + str2);
                if (TextUtils.isEmpty(str2)) {
                    throw new SkinCareRecommendationIdNotSetException("Doesn't have skin care setting ID.");
                }
                final AtomicReference atomicReference = new AtomicReference();
                final SharedPreferences.Editor editorEdit = SkinCare3RecommendationHandler.Preferences.f39889a.edit();
                PfCommons.c(new y3(anonymousClass1, 1));
                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(new aa(new SingleSource[]{new Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.d>>() { // from class: com.perfectcorp.perfectlib.rh.utility.networkcache.d$f
                    public final Single c() {
                        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(6)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new j())));
                    }
                }.c(), new Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.c>>() { // from class: com.perfectcorp.perfectlib.rh.utility.networkcache.d$e
                    public final Single c() {
                        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(5)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new i())));
                    }
                }.c(), new Factory.Builder<RequestTask.Response<com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.b>>() { // from class: com.perfectcorp.perfectlib.rh.utility.networkcache.d$g
                    public final Single c() {
                        return b(new RequestTask.Builder(new HttpRequestProviderAppender(new g81(7)), new ResponseConverter.GsonConverter(GsonBaseResponse.f41999a, new k())));
                    }
                }.c()}, Functions.a(new z0(downloadTaskCancelable, 6))).f(new xv0(anonymousClass1, 2)), new Function() { // from class: com.perfectcorp.perfectlib.f4
                    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        com.perfectcorp.thirdparty.io.reactivex.b kVar;
                        com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.d.a aVar = ((com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.d) obj).result;
                        long j2 = aVar != null ? aVar.lastModified : -1L;
                        String str3 = str;
                        String str4 = str2;
                        int i4 = 3;
                        if (j2 > 0) {
                            BasicPreferences basicPreferences = SkinCare3RecommendationHandler.Preferences.f39889a;
                            if (basicPreferences.getLong("LAST_MODIFIED", Long.MIN_VALUE) >= j2 && str3.equals(basicPreferences.getString("LAST_SURVEY_ID", null)) && str4.equals(basicPreferences.getString("LAST_SETTING_ID", null))) {
                                Log.g(3, "SkinCare3RecommendationHandler", "[syncServerInternal] up-to-date");
                                return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new m3(2));
                            }
                        }
                        SharedPreferences.Editor editor = editorEdit;
                        editor.putString("LAST_SURVEY_ID", str3).putString("LAST_SETTING_ID", str4).putLong("LAST_MODIFIED", j2);
                        if (aVar == null) {
                            Log.g(3, "SkinCare3RecommendationHandler", "[syncServerInternal] no recommendation data");
                            SkinCare3RecommendationHandler.f();
                            return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                        }
                        if (aVar.baseURLs == null) {
                            throw new NullBaseURLsException("BaseURLs is Null.");
                        }
                        boolean zIsEmpty = TextUtils.isEmpty(str3);
                        DownloadTaskCancelable downloadTaskCancelable2 = downloadTaskCancelable;
                        RecommendationHandler.SyncServerCallback syncServerCallback = anonymousClass1;
                        if (zIsEmpty) {
                            kVar = com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
                        } else {
                            String string = Uri.parse(aVar.baseURLs.surveyContentUrl).buildUpon().appendQueryParameter("surveyId", str3).build().toString();
                            downloadTaskCancelable2.c();
                            kVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new sw0(downloadTaskCancelable2, string, 0)).f(new na0(editor, syncServerCallback, 4)), new pv0(5)));
                        }
                        com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h hVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new sw0(downloadTaskCancelable2, Uri.parse(aVar.baseURLs.recommendationSettingUrlV2).buildUpon().appendQueryParameter("settingId", str4).build().toString(), 1)), new c0(editor, syncServerCallback, downloadTaskCancelable2, i4)).f(new pv0(6)), new pv0(7));
                        boolean z2 = z;
                        return Completable.d(kVar, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(hVar, new ld(downloadTaskCancelable2, syncServerCallback, z2, atomicReference)), !z2 ? com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b : new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new o7(downloadTaskCancelable2, syncServerCallback, 8)).i(Schedulers.f43170c));
                    }
                }), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new rw0(atomicReference, editorEdit, anonymousClass1, 0)).i(Schedulers.f43170c));
            default:
                final EventPublisher eventPublisher2 = this.f40115c;
                DownloadTaskCancelable downloadTaskCancelable2 = this.d;
                return Completable.d(TagHandler.b(TagHandler.Type.f39989a, downloadTaskCancelable2, new ProgressCallback() { // from class: s21
                    @Override // com.perfectcorp.common.network.ProgressCallback
                    public final void a(double d) {
                        int i4 = i3;
                        EventPublisher eventPublisher3 = eventPublisher2;
                        switch (i4) {
                            case 0:
                                eventPublisher3.a(TagHandler.SyncServerCallback.class, new kt0(d, 5), CallingThread.ANY);
                                break;
                            default:
                                eventPublisher3.a(TagHandler.SyncServerCallback.class, new kt0(d, 4), CallingThread.ANY);
                                break;
                        }
                    }
                }), TagHandler.b(TagHandler.Type.f39990b, downloadTaskCancelable2, new ProgressCallback() { // from class: s21
                    @Override // com.perfectcorp.common.network.ProgressCallback
                    public final void a(double d) {
                        int i4 = i2;
                        EventPublisher eventPublisher3 = eventPublisher2;
                        switch (i4) {
                            case 0:
                                eventPublisher3.a(TagHandler.SyncServerCallback.class, new kt0(d, 5), CallingThread.ANY);
                                break;
                            default:
                                eventPublisher3.a(TagHandler.SyncServerCallback.class, new kt0(d, 4), CallingThread.ANY);
                                break;
                        }
                    }
                }));
        }
    }

    public /* synthetic */ d4(SkinCare3RecommendationHandler skinCare3RecommendationHandler, DownloadTaskCancelable downloadTaskCancelable, EventPublisher eventPublisher) {
        this.d = downloadTaskCancelable;
        this.f40115c = eventPublisher;
    }
}
