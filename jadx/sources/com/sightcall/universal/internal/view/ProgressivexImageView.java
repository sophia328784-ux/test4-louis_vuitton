package com.sightcall.universal.internal.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Size;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.Universal;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.internal.util.Views;
import com.sightcall.universal.model.Session;
import defpackage.ac;
import defpackage.nq0;
import defpackage.oq0;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public class ProgressivexImageView extends ImageView {
    private static boolean isReceiving;
    private static boolean isRunning;
    private static boolean isSending;
    private static Bitmap pictureBitmap;

    @Inject
    @Named
    ViewGroup advancedAnnotationsContainer;

    @Inject
    AdvancedAnnotationsWrapper advancedAnnotationsWrapper;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    private Sink.Progressivex sink;
    private int source;

    public ProgressivexImageView(Context context) {
        super(context);
        init();
    }

    private void addAdvancedAnnotationView() {
        this.advancedAnnotationsWrapper.setAnchor(this);
        Views.layoutOver(this.advancedAnnotationsContainer, this);
        this.advancedAnnotationsWrapper.selectStandaloneMode(this, AdvancedAnnotationsAPI.StandaloneMode.DrawDrop);
        this.advancedAnnotationsWrapper.resumeAnnotations(this);
    }

    private void init() {
        SDKInjector.getSdkInjector().getCallComponent().inject(this);
    }

    public static boolean isReceiving() {
        return isReceiving;
    }

    public static boolean isRunning() {
        return isRunning;
    }

    public static boolean isSending() {
        return isSending;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBitmap$0() {
        this.sink.push(pictureBitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBitmap$1(boolean z) {
        setImageBitmap(pictureBitmap);
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        if (!z) {
            isReceiving = true;
        } else {
            isSending = true;
            AsyncTask.execute(new nq0(this, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInitialData$3() {
        this.sink.push(pictureBitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadUri$2(Uri uri, boolean z) {
        loadInitialData(getContext().getApplicationContext(), uri, z);
    }

    private void loadInitialData(Context context, Uri uri, boolean z) {
        try {
            Bitmap bitmapLoadBitmapFromFile = Utils.loadBitmapFromFile(context, uri, maxPictureSize());
            pictureBitmap = bitmapLoadBitmapFromFile;
            if (bitmapLoadBitmapFromFile == null) {
                Universal.logger().e("[ProgressivexImageView] picture is null");
                return;
            }
            if (bitmapLoadBitmapFromFile.isRecycled()) {
                Universal.logger().e("[ProgressivexImageView] picture is recycled");
                return;
            }
            setImageBitmap(pictureBitmap);
            if (z) {
                AsyncTask.execute(new nq0(this, 1));
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private Size maxPictureSize() {
        Session session = Session.get();
        return (session == null || !session.usecase.takeUhdSnapshot) ? new Size(Sink.Screenshare.MAX_DIMENSION_LOW, Sink.Screenshare.MAX_DIMENSION_HIGH) : new Size(2160, 3840);
    }

    public void configure(Sink.Progressivex progressivex) {
        this.sink = progressivex;
    }

    public int getSource() {
        return this.source;
    }

    public void loadBitmap(Bitmap bitmap, boolean z) {
        isRunning = true;
        this.capabilitiesRepository.activateScreenShare();
        if (z) {
            DataChannelAction.STARTED_PICTURE.send();
        }
        pictureBitmap = bitmap;
        post(new ac(this, z, 5));
        addAdvancedAnnotationView();
    }

    public void loadUri(Uri uri, boolean z) {
        isRunning = true;
        this.capabilitiesRepository.activateScreenShare();
        if (z) {
            DataChannelAction.STARTED_PICTURE.send();
            isSending = true;
        } else {
            isReceiving = true;
        }
        post(new oq0(this, uri, z));
        addAdvancedAnnotationView();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i2, int i3) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onMeasure(i2, i3);
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        float f2 = intrinsicWidth;
        float intrinsicHeight = drawable.getIntrinsicHeight();
        float fMin = Math.min(View.MeasureSpec.getSize(i2) / f2, View.MeasureSpec.getSize(i3) / intrinsicHeight);
        setMeasuredDimension(Math.round(f2 * fMin), Math.round(intrinsicHeight * fMin));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.advancedAnnotationsWrapper.layoutOver(this, this);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.advancedAnnotationsWrapper.processTouch(new AdvancedAnnotationsAPI.Touch(motionEvent), this);
    }

    public void restore(Session session) {
        Bitmap bitmap = pictureBitmap;
        if (bitmap != null) {
            loadBitmap(bitmap, false);
            return;
        }
        Uri uri = session.parameters.screenshareContentUri;
        if (uri != null) {
            loadUri(uri, false);
        }
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public Bitmap snapshot() {
        return SnapshotKt.getSnapshot(this);
    }

    public void stop() {
        if (isRunning) {
            Bitmap bitmap = pictureBitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
            pictureBitmap = null;
            setImageDrawable(null);
            this.advancedAnnotationsWrapper.processDeleteAll();
            if (isSending()) {
                this.sink.stop();
            }
            isRunning = false;
            this.capabilitiesRepository.stopScreenShare();
            isReceiving = false;
            isSending = false;
            DataChannelAction.STOPPED_PICTURE.send();
            postInvalidate();
        }
    }

    public ProgressivexImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ProgressivexImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init();
    }
}
