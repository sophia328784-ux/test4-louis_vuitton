package com.sightcall.sharemedia;

import android.content.Context;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertController;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.pratik.InstantAppWrapper;
import defpackage.cw0;
import defpackage.mc0;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\t¨\u0006\f"}, d2 = {"Lcom/sightcall/sharemedia/ShareMediaDialog;", "", "<init>", "()V", "show", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "listener", "Lkotlin/Function1;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;", "Result", "sharemedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ShareMediaDialog {
    public static final ShareMediaDialog INSTANCE = new ShareMediaDialog();

    private ShareMediaDialog() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$0(Function1 function1, DialogInterface dialogInterface, int i2) {
        Object obj;
        dialogInterface.getClass();
        if (i2 == 0) {
            obj = Result.PhotoFromCamera.INSTANCE;
        } else if (i2 == 1) {
            obj = Result.PhotoFromGallery.INSTANCE;
        } else {
            if (i2 != 2) {
                IllegalStateException illegalStateException = new IllegalStateException(pq0.k(i2, "Out of items range [0;2] current index: "));
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                throw illegalStateException;
            }
            obj = Result.VideoFromGallery.INSTANCE;
        }
        function1.invoke(obj);
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void show$lambda$1(Function1 function1, DialogInterface dialogInterface) {
        function1.invoke(Result.Cancelled.INSTANCE);
    }

    public final void show(Context context, Function1<? super Result, Unit> listener) {
        context.getClass();
        listener.getClass();
        if (!InstantAppWrapper.isInstalledApp(context)) {
            listener.invoke(Result.PhotoFromCamera.INSTANCE);
            return;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(context);
        materialAlertDialogBuilder.h(R.string.sharemedia_dialog_title);
        int i2 = R.array.sharemedia_dialog_items;
        mc0 mc0Var = new mc0(listener, 3);
        AlertController.AlertParams alertParams = materialAlertDialogBuilder.f810a;
        alertParams.p = alertParams.f796a.getResources().getTextArray(i2);
        alertParams.r = mc0Var;
        alertParams.m = new cw0(listener, 0);
        materialAlertDialogBuilder.g();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/sharemedia/ShareMediaDialog$Result;", "", "<init>", "()V", "PhotoFromCamera", "PhotoFromGallery", "VideoFromGallery", "Cancelled", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;", "sharemedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class Result {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/sharemedia/ShareMediaDialog$Result$Cancelled;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;", "<init>", "()V", "sharemedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Cancelled extends Result {
            public static final Cancelled INSTANCE = new Cancelled();

            private Cancelled() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromCamera;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;", "<init>", "()V", "sharemedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class PhotoFromCamera extends Result {
            public static final PhotoFromCamera INSTANCE = new PhotoFromCamera();

            private PhotoFromCamera() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/sharemedia/ShareMediaDialog$Result$PhotoFromGallery;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;", "<init>", "()V", "sharemedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class PhotoFromGallery extends Result {
            public static final PhotoFromGallery INSTANCE = new PhotoFromGallery();

            private PhotoFromGallery() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/sharemedia/ShareMediaDialog$Result$VideoFromGallery;", "Lcom/sightcall/sharemedia/ShareMediaDialog$Result;", "<init>", "()V", "sharemedia_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class VideoFromGallery extends Result {
            public static final VideoFromGallery INSTANCE = new VideoFromGallery();

            private VideoFromGallery() {
                super(null);
            }
        }

        public /* synthetic */ Result(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Result() {
        }
    }
}
